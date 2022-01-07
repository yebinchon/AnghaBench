; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/common/extr_filter_common.c_validate_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/common/extr_filter_common.c_validate_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i64 }
%struct.TYPE_4__ = type { i64 }

@LZMA_VLI_UNKNOWN = common dso_local global i64 0, align 8
@LZMA_PROG_ERROR = common dso_local global i32 0, align 4
@features = common dso_local global %struct.TYPE_5__* null, align 8
@LZMA_OPTIONS_ERROR = common dso_local global i32 0, align 4
@LZMA_FILTERS_MAX = common dso_local global i64 0, align 8
@LZMA_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64*)* @validate_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_chain(%struct.TYPE_4__* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64* %1, i64** %5, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = icmp eq %struct.TYPE_4__* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @LZMA_VLI_UNKNOWN, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %13, %2
  %21 = load i32, i32* @LZMA_PROG_ERROR, align 4
  store i32 %21, i32* %3, align 4
  br label %98

22:                                               ; preds = %13
  store i64 0, i64* %6, align 8
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  br label %23

23:                                               ; preds = %73, %22
  store i64 0, i64* %10, align 8
  br label %24

24:                                               ; preds = %47, %23
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = load i64, i64* %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @features, align 8
  %31 = load i64, i64* %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %29, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %24
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @features, align 8
  %38 = load i64, i64* %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @LZMA_VLI_UNKNOWN, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* @LZMA_OPTIONS_ERROR, align 4
  store i32 %45, i32* %3, align 4
  br label %98

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %10, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %10, align 8
  br label %24

50:                                               ; preds = %24
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* @LZMA_OPTIONS_ERROR, align 4
  store i32 %54, i32* %3, align 4
  br label %98

55:                                               ; preds = %50
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** @features, align 8
  %57 = load i64, i64* %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %7, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** @features, align 8
  %62 = load i64, i64* %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %8, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** @features, align 8
  %67 = load i64, i64* %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %6, align 8
  %72 = add i64 %71, %70
  store i64 %72, i64* %6, align 8
  br label %73

73:                                               ; preds = %55
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %75 = load i64, i64* %9, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @LZMA_VLI_UNKNOWN, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %23, label %82

82:                                               ; preds = %73
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* @LZMA_FILTERS_MAX, align 8
  %85 = icmp ugt i64 %83, %84
  br i1 %85, label %92, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i64, i64* %6, align 8
  %91 = icmp ugt i64 %90, 3
  br i1 %91, label %92, label %94

92:                                               ; preds = %89, %86, %82
  %93 = load i32, i32* @LZMA_OPTIONS_ERROR, align 4
  store i32 %93, i32* %3, align 4
  br label %98

94:                                               ; preds = %89
  %95 = load i64, i64* %9, align 8
  %96 = load i64*, i64** %5, align 8
  store i64 %95, i64* %96, align 8
  %97 = load i32, i32* @LZMA_OK, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %94, %92, %53, %44, %20
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
