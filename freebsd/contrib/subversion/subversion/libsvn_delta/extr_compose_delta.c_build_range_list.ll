; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_compose_delta.c_build_range_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_compose_delta.c_build_range_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, i64, %struct.TYPE_6__* }

@range_from_source = common dso_local global i32 0, align 4
@range_from_target = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64, i64, %struct.TYPE_5__*)* @build_range_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @build_range_list(i64 %0, i64 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %10, align 8
  br label %15

15:                                               ; preds = %107, %3
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %108

19:                                               ; preds = %15
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %21 = icmp eq %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %24 = load i32, i32* @range_from_source, align 4
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32* @alloc_range_list(i32** %8, i32** %9, %struct.TYPE_5__* %23, i32 %24, i64 %25, i64 %26, i64 0)
  store i32* %27, i32** %4, align 8
  br label %110

28:                                               ; preds = %19
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %29, %32
  br i1 %33, label %34, label %58

34:                                               ; preds = %28
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sle i64 %35, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %42 = load i32, i32* @range_from_source, align 4
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32* @alloc_range_list(i32** %8, i32** %9, %struct.TYPE_5__* %41, i32 %42, i64 %43, i64 %44, i64 0)
  store i32* %45, i32** %4, align 8
  br label %110

46:                                               ; preds = %34
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %48 = load i32, i32* @range_from_source, align 4
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32* @alloc_range_list(i32** %8, i32** %9, %struct.TYPE_5__* %47, i32 %48, i64 %49, i64 %52, i64 0)
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %5, align 8
  br label %57

57:                                               ; preds = %46
  br label %107

58:                                               ; preds = %28
  %59 = load i64, i64* %5, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp sge i64 %59, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  store %struct.TYPE_6__* %67, %struct.TYPE_6__** %10, align 8
  br label %106

68:                                               ; preds = %58
  %69 = load i64, i64* %5, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %69, %72
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %73, %76
  store i64 %77, i64* %11, align 8
  %78 = load i64, i64* %6, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp sle i64 %78, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %68
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %85 = load i32, i32* @range_from_target, align 4
  %86 = load i64, i64* %5, align 8
  %87 = load i64, i64* %6, align 8
  %88 = load i64, i64* %11, align 8
  %89 = call i32* @alloc_range_list(i32** %8, i32** %9, %struct.TYPE_5__* %84, i32 %85, i64 %86, i64 %87, i64 %88)
  store i32* %89, i32** %4, align 8
  br label %110

90:                                               ; preds = %68
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %92 = load i32, i32* @range_from_target, align 4
  %93 = load i64, i64* %5, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %11, align 8
  %98 = call i32* @alloc_range_list(i32** %8, i32** %9, %struct.TYPE_5__* %91, i32 %92, i64 %93, i64 %96, i64 %97)
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %5, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  store %struct.TYPE_6__* %104, %struct.TYPE_6__** %10, align 8
  br label %105

105:                                              ; preds = %90
  br label %106

106:                                              ; preds = %105, %64
  br label %107

107:                                              ; preds = %106, %57
  br label %15

108:                                              ; preds = %15
  %109 = call i32 (...) @SVN_ERR_MALFUNCTION_NO_RETURN()
  br label %110

110:                                              ; preds = %108, %83, %40, %22
  %111 = load i32*, i32** %4, align 8
  ret i32* %111
}

declare dso_local i32* @alloc_range_list(i32**, i32**, %struct.TYPE_5__*, i32, i64, i64, i64) #1

declare dso_local i32 @SVN_ERR_MALFUNCTION_NO_RETURN(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
