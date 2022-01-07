; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgparse.c_parse_query_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgparse.c_parse_query_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_parse = type { i32, i8*, i8*, i32, i32 }

@LDNS_RCODE_FORMERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.msg_parse*)* @parse_query_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_query_section(i32* %0, %struct.msg_parse* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.msg_parse*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.msg_parse* %1, %struct.msg_parse** %5, align 8
  %6 = load %struct.msg_parse*, %struct.msg_parse** %5, align 8
  %7 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %58

11:                                               ; preds = %2
  %12 = load %struct.msg_parse*, %struct.msg_parse** %5, align 8
  %13 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* @LDNS_RCODE_FORMERR, align 4
  store i32 %17, i32* %3, align 4
  br label %58

18:                                               ; preds = %11
  %19 = load %struct.msg_parse*, %struct.msg_parse** %5, align 8
  %20 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 1
  %23 = zext i1 %22 to i32
  %24 = call i32 @log_assert(i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @sldns_buffer_remaining(i32* %25)
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* @LDNS_RCODE_FORMERR, align 4
  store i32 %29, i32* %3, align 4
  br label %58

30:                                               ; preds = %18
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @sldns_buffer_current(i32* %31)
  %33 = load %struct.msg_parse*, %struct.msg_parse** %5, align 8
  %34 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @pkt_dname_len(i32* %35)
  %37 = load %struct.msg_parse*, %struct.msg_parse** %5, align 8
  %38 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = icmp eq i32 %36, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* @LDNS_RCODE_FORMERR, align 4
  store i32 %41, i32* %3, align 4
  br label %58

42:                                               ; preds = %30
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @sldns_buffer_remaining(i32* %43)
  %45 = sext i32 %44 to i64
  %46 = icmp ult i64 %45, 8
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @LDNS_RCODE_FORMERR, align 4
  store i32 %48, i32* %3, align 4
  br label %58

49:                                               ; preds = %42
  %50 = load i32*, i32** %4, align 8
  %51 = call i8* @sldns_buffer_read_u16(i32* %50)
  %52 = load %struct.msg_parse*, %struct.msg_parse** %5, align 8
  %53 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = call i8* @sldns_buffer_read_u16(i32* %54)
  %56 = load %struct.msg_parse*, %struct.msg_parse** %5, align 8
  %57 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %49, %47, %40, %28, %16, %10
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @sldns_buffer_remaining(i32*) #1

declare dso_local i32 @sldns_buffer_current(i32*) #1

declare dso_local i32 @pkt_dname_len(i32*) #1

declare dso_local i8* @sldns_buffer_read_u16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
