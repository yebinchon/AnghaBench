; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgparse.c_sig_is_double.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgparse.c_sig_is_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrset_parse = type { %struct.rr_parse* }
%struct.rr_parse = type { %struct.rr_parse*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.rrset_parse*, i32*)* @sig_is_double to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sig_is_double(i32* %0, %struct.rrset_parse* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.rrset_parse*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.rr_parse*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.rrset_parse* %1, %struct.rrset_parse** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i64 @sldns_buffer_position(i32* %12)
  store i64 %13, i64* %10, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @sldns_buffer_remaining(i32* %14)
  %16 = icmp slt i32 %15, 6
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %72

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @sldns_buffer_skip(i32* %19, i32 4)
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @sldns_buffer_read_u16(i32* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @sldns_buffer_remaining(i32* %23)
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load i32*, i32** %5, align 8
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @sldns_buffer_set_position(i32* %28, i64 %29)
  store i32 0, i32* %4, align 4
  br label %72

31:                                               ; preds = %18
  %32 = load i32*, i32** %5, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @sldns_buffer_set_position(i32* %32, i64 %33)
  %35 = load %struct.rrset_parse*, %struct.rrset_parse** %6, align 8
  %36 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %35, i32 0, i32 0
  %37 = load %struct.rr_parse*, %struct.rr_parse** %36, align 8
  store %struct.rr_parse* %37, %struct.rr_parse** %11, align 8
  br label %38

38:                                               ; preds = %67, %31
  %39 = load %struct.rr_parse*, %struct.rr_parse** %11, align 8
  %40 = icmp ne %struct.rr_parse* %39, null
  br i1 %40, label %41, label %71

41:                                               ; preds = %38
  %42 = load %struct.rr_parse*, %struct.rr_parse** %11, align 8
  %43 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 4
  %46 = call i32 @memmove(i32* %9, i64 %45, i32 4)
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @ntohs(i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %41
  %53 = load i32, i32* %9, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  %56 = load %struct.rr_parse*, %struct.rr_parse** %11, align 8
  %57 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 6
  %60 = load i32*, i32** %7, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 6
  %62 = load i32, i32* %9, align 4
  %63 = call i64 @memcmp(i64 %59, i32* %61, i32 %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  store i32 1, i32* %4, align 4
  br label %72

66:                                               ; preds = %55, %52
  br label %67

67:                                               ; preds = %66, %41
  %68 = load %struct.rr_parse*, %struct.rr_parse** %11, align 8
  %69 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %68, i32 0, i32 0
  %70 = load %struct.rr_parse*, %struct.rr_parse** %69, align 8
  store %struct.rr_parse* %70, %struct.rr_parse** %11, align 8
  br label %38

71:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %65, %27, %17
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i64 @sldns_buffer_position(i32*) #1

declare dso_local i32 @sldns_buffer_remaining(i32*) #1

declare dso_local i32 @sldns_buffer_skip(i32*, i32) #1

declare dso_local i32 @sldns_buffer_read_u16(i32*) #1

declare dso_local i32 @sldns_buffer_set_position(i32*, i64) #1

declare dso_local i32 @memmove(i32*, i64, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @memcmp(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
