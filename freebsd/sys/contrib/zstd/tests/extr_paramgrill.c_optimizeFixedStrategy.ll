; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_paramgrill.c_optimizeFixedStrategy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_paramgrill.c_optimizeFixedStrategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32* }

@strt_ind = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"Restart\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@CUSTOM_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32, i32, i32*, i32, i32*, i32)* @optimizeFixedStrategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @optimizeFixedStrategy(i64 %0, i32 %1, i32 %2, i32* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_16__, align 4
  %9 = alloca %struct.TYPE_18__, align 4
  %10 = alloca %struct.TYPE_17__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_17__, align 8
  %18 = alloca %struct.TYPE_16__, align 4
  %19 = alloca %struct.TYPE_16__, align 4
  %20 = alloca %struct.TYPE_17__, align 8
  %21 = alloca %struct.TYPE_16__, align 4
  %22 = bitcast %struct.TYPE_18__* %9 to i64*
  store i64 %0, i64* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  store i32* %3, i32** %23, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %24 = call i32 (...) @emptyParams()
  %25 = call i64 @initWinnerInfo(i32 %24)
  %26 = bitcast %struct.TYPE_16__* %19 to i64*
  store i64 %25, i64* %26, align 4
  %27 = bitcast %struct.TYPE_16__* %8 to i8*
  %28 = bitcast %struct.TYPE_16__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 8, i1 false)
  %29 = load i32, i32* %13, align 4
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @strt_ind, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32 %29, i32* %33, align 4
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32* @cParamUnsetMin(i32* %35)
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  store i32* %36, i32** %37, align 8
  %38 = bitcast %struct.TYPE_17__* %10 to i8*
  %39 = bitcast %struct.TYPE_17__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 8, i1 false)
  %40 = bitcast %struct.TYPE_17__* %17 to i8*
  %41 = bitcast %struct.TYPE_17__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 8, i1 false)
  store i32 0, i32* %16, align 4
  br label %42

42:                                               ; preds = %100, %7
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %103

46:                                               ; preds = %42
  %47 = call i32 @DEBUGOUTPUT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %52, %46
  %49 = load i32*, i32** %14, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @randomConstrainedParams(%struct.TYPE_17__* %17, i32* %49, i32 %50)
  br label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %12, align 4
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = call i64 @redundantParams(i32* %57, i32 %53, i32 %55)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %48, label %60

60:                                               ; preds = %52
  %61 = load i32, i32* %12, align 4
  %62 = load i32*, i32** %14, align 8
  %63 = load i32, i32* %11, align 4
  %64 = bitcast %struct.TYPE_18__* %9 to i64*
  %65 = load i64, i64* %64, align 4
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = call i64 @climbOnce(i32 %61, i32* %62, i64 %65, i32 %63, i32* %67)
  %69 = bitcast %struct.TYPE_16__* %21 to i64*
  store i64 %68, i64* %69, align 4
  %70 = bitcast %struct.TYPE_16__* %18 to i8*
  %71 = bitcast %struct.TYPE_16__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 %71, i64 8, i1 false)
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %12, align 4
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @compareResultLT(i32 %73, i32 %75, i32 %76, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %60
  %82 = bitcast %struct.TYPE_16__* %8 to i8*
  %83 = bitcast %struct.TYPE_16__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %82, i8* align 4 %83, i64 8, i1 false)
  %84 = load i32, i32* @stdout, align 4
  %85 = load i32, i32* @CUSTOM_LEVEL, align 4
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %12, align 4
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @BMK_printWinnerOpt(i32 %84, i32 %85, i32 %87, i32 %89, i32 %90, i32 %92)
  store i32 0, i32* %16, align 4
  br label %100

94:                                               ; preds = %60
  %95 = bitcast %struct.TYPE_16__* %8 to i64*
  %96 = load i64, i64* %95, align 4
  %97 = call i32 @CHECKTIME(i64 %96)
  %98 = load i32, i32* %16, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %16, align 4
  br label %100

100:                                              ; preds = %94, %81
  %101 = load i32, i32* %16, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %16, align 4
  br label %42

103:                                              ; preds = %42
  %104 = bitcast %struct.TYPE_16__* %8 to i64*
  %105 = load i64, i64* %104, align 4
  ret i64 %105
}

declare dso_local i64 @initWinnerInfo(i32) #1

declare dso_local i32 @emptyParams(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @cParamUnsetMin(i32*) #1

declare dso_local i32 @DEBUGOUTPUT(i8*) #1

declare dso_local i32 @randomConstrainedParams(%struct.TYPE_17__*, i32*, i32) #1

declare dso_local i64 @redundantParams(i32*, i32, i32) #1

declare dso_local i64 @climbOnce(i32, i32*, i64, i32, i32*) #1

declare dso_local i64 @compareResultLT(i32, i32, i32, i32) #1

declare dso_local i32 @BMK_printWinnerOpt(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CHECKTIME(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
