; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_parse_create_qinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgreply.c_parse_create_qinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_parse = type { i32, i32, i32, i64 }
%struct.query_info = type { i32*, i32, i32, i32, i32* }
%struct.regional = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.msg_parse*, %struct.query_info*, %struct.regional*)* @parse_create_qinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_create_qinfo(i32* %0, %struct.msg_parse* %1, %struct.query_info* %2, %struct.regional* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.msg_parse*, align 8
  %8 = alloca %struct.query_info*, align 8
  %9 = alloca %struct.regional*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.msg_parse* %1, %struct.msg_parse** %7, align 8
  store %struct.query_info* %2, %struct.query_info** %8, align 8
  store %struct.regional* %3, %struct.regional** %9, align 8
  %10 = load %struct.msg_parse*, %struct.msg_parse** %7, align 8
  %11 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %49

14:                                               ; preds = %4
  %15 = load %struct.regional*, %struct.regional** %9, align 8
  %16 = icmp ne %struct.regional* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = load %struct.regional*, %struct.regional** %9, align 8
  %19 = load %struct.msg_parse*, %struct.msg_parse** %7, align 8
  %20 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @regional_alloc(%struct.regional* %18, i32 %21)
  %23 = inttoptr i64 %22 to i32*
  %24 = load %struct.query_info*, %struct.query_info** %8, align 8
  %25 = getelementptr inbounds %struct.query_info, %struct.query_info* %24, i32 0, i32 4
  store i32* %23, i32** %25, align 8
  br label %34

26:                                               ; preds = %14
  %27 = load %struct.msg_parse*, %struct.msg_parse** %7, align 8
  %28 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @malloc(i32 %29)
  %31 = inttoptr i64 %30 to i32*
  %32 = load %struct.query_info*, %struct.query_info** %8, align 8
  %33 = getelementptr inbounds %struct.query_info, %struct.query_info* %32, i32 0, i32 4
  store i32* %31, i32** %33, align 8
  br label %34

34:                                               ; preds = %26, %17
  %35 = load %struct.query_info*, %struct.query_info** %8, align 8
  %36 = getelementptr inbounds %struct.query_info, %struct.query_info* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %70

40:                                               ; preds = %34
  %41 = load i32*, i32** %6, align 8
  %42 = load %struct.query_info*, %struct.query_info** %8, align 8
  %43 = getelementptr inbounds %struct.query_info, %struct.query_info* %42, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.msg_parse*, %struct.msg_parse** %7, align 8
  %46 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @dname_pkt_copy(i32* %41, i32* %44, i64 %47)
  br label %52

49:                                               ; preds = %4
  %50 = load %struct.query_info*, %struct.query_info** %8, align 8
  %51 = getelementptr inbounds %struct.query_info, %struct.query_info* %50, i32 0, i32 4
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %49, %40
  %53 = load %struct.msg_parse*, %struct.msg_parse** %7, align 8
  %54 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.query_info*, %struct.query_info** %8, align 8
  %57 = getelementptr inbounds %struct.query_info, %struct.query_info* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load %struct.msg_parse*, %struct.msg_parse** %7, align 8
  %59 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.query_info*, %struct.query_info** %8, align 8
  %62 = getelementptr inbounds %struct.query_info, %struct.query_info* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load %struct.msg_parse*, %struct.msg_parse** %7, align 8
  %64 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.query_info*, %struct.query_info** %8, align 8
  %67 = getelementptr inbounds %struct.query_info, %struct.query_info* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load %struct.query_info*, %struct.query_info** %8, align 8
  %69 = getelementptr inbounds %struct.query_info, %struct.query_info* %68, i32 0, i32 0
  store i32* null, i32** %69, align 8
  store i32 1, i32* %5, align 4
  br label %70

70:                                               ; preds = %52, %39
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i64 @regional_alloc(%struct.regional*, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @dname_pkt_copy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
