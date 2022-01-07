; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_zone_parse_notify_serial.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_zone_parse_notify_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_info = type { i32 }

@LDNS_RR_TYPE_SOA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auth_zone_parse_notify_serial(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.query_info, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = call i32 @memset(%struct.query_info* %6, i32 0, i32 4)
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @sldns_buffer_set_position(i32* %9, i32 0)
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @query_info_parse(%struct.query_info* %6, i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %67

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @sldns_buffer_begin(i32* %16)
  %18 = call i64 @LDNS_ANCOUNT(i32 %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %67

21:                                               ; preds = %15
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @sldns_buffer_remaining(i32* %22)
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %67

26:                                               ; preds = %21
  %27 = load i32*, i32** %4, align 8
  %28 = call i64 @pkt_dname_len(i32* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %67

31:                                               ; preds = %26
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @sldns_buffer_remaining(i32* %32)
  %34 = icmp slt i32 %33, 10
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %67

36:                                               ; preds = %31
  %37 = load i32*, i32** %4, align 8
  %38 = call i64 @sldns_buffer_read_u16(i32* %37)
  %39 = load i64, i64* @LDNS_RR_TYPE_SOA, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %67

42:                                               ; preds = %36
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @sldns_buffer_skip(i32* %43, i32 2)
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @sldns_buffer_skip(i32* %45, i32 4)
  %47 = load i32*, i32** %4, align 8
  %48 = call i64 @sldns_buffer_read_u16(i32* %47)
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %7, align 4
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @sldns_buffer_remaining(i32* %50)
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %67

55:                                               ; preds = %42
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 22
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %67

59:                                               ; preds = %55
  %60 = load i32*, i32** %4, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sub nsw i32 %61, 20
  %63 = call i32 @sldns_buffer_skip(i32* %60, i32 %62)
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @sldns_buffer_read_u32(i32* %64)
  %66 = load i32*, i32** %5, align 8
  store i32 %65, i32* %66, align 4
  store i32 1, i32* %3, align 4
  br label %67

67:                                               ; preds = %59, %58, %54, %41, %35, %30, %25, %20, %14
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @memset(%struct.query_info*, i32, i32) #1

declare dso_local i32 @sldns_buffer_set_position(i32*, i32) #1

declare dso_local i32 @query_info_parse(%struct.query_info*, i32*) #1

declare dso_local i64 @LDNS_ANCOUNT(i32) #1

declare dso_local i32 @sldns_buffer_begin(i32*) #1

declare dso_local i32 @sldns_buffer_remaining(i32*) #1

declare dso_local i64 @pkt_dname_len(i32*) #1

declare dso_local i64 @sldns_buffer_read_u16(i32*) #1

declare dso_local i32 @sldns_buffer_skip(i32*, i32) #1

declare dso_local i32 @sldns_buffer_read_u32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
