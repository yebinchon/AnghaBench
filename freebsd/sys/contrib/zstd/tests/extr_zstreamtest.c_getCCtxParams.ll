; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_zstreamtest.c_getCCtxParams.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_zstreamtest.c_getCCtxParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }

@ZSTD_c_windowLog = common dso_local global i32 0, align 4
@ZSTD_c_hashLog = common dso_local global i32 0, align 4
@ZSTD_c_chainLog = common dso_local global i32 0, align 4
@ZSTD_c_searchLog = common dso_local global i32 0, align 4
@ZSTD_c_minMatch = common dso_local global i32 0, align 4
@ZSTD_c_targetLength = common dso_local global i32 0, align 4
@ZSTD_c_strategy = common dso_local global i32 0, align 4
@ZSTD_c_checksumFlag = common dso_local global i32 0, align 4
@ZSTD_c_contentSizeFlag = common dso_local global i32 0, align 4
@ZSTD_c_dictIDFlag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_7__*)* @getCCtxParams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @getCCtxParams(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* @ZSTD_c_windowLog, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 6
  %11 = call i32 @ZSTD_CCtx_getParameter(i32* %6, i32 %7, i32* %10)
  %12 = call i32 @CHECK_RET_Z(i32 %11)
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* @ZSTD_c_hashLog, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 5
  %18 = call i32 @ZSTD_CCtx_getParameter(i32* %13, i32 %14, i32* %17)
  %19 = call i32 @CHECK_RET_Z(i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* @ZSTD_c_chainLog, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 4
  %25 = call i32 @ZSTD_CCtx_getParameter(i32* %20, i32 %21, i32* %24)
  %26 = call i32 @CHECK_RET_Z(i32 %25)
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* @ZSTD_c_searchLog, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 3
  %32 = call i32 @ZSTD_CCtx_getParameter(i32* %27, i32 %28, i32* %31)
  %33 = call i32 @CHECK_RET_Z(i32 %32)
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* @ZSTD_c_minMatch, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = call i32 @ZSTD_CCtx_getParameter(i32* %34, i32 %35, i32* %38)
  %40 = call i32 @CHECK_RET_Z(i32 %39)
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* @ZSTD_c_targetLength, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = call i32 @ZSTD_CCtx_getParameter(i32* %41, i32 %42, i32* %45)
  %47 = call i32 @CHECK_RET_Z(i32 %46)
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* @ZSTD_c_strategy, align 4
  %50 = call i32 @ZSTD_CCtx_getParameter(i32* %48, i32 %49, i32* %5)
  %51 = call i32 @CHECK_RET_Z(i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  %56 = load i32*, i32** %3, align 8
  %57 = load i32, i32* @ZSTD_c_checksumFlag, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = call i32 @ZSTD_CCtx_getParameter(i32* %56, i32 %57, i32* %60)
  %62 = call i32 @CHECK_RET_Z(i32 %61)
  %63 = load i32*, i32** %3, align 8
  %64 = load i32, i32* @ZSTD_c_contentSizeFlag, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = call i32 @ZSTD_CCtx_getParameter(i32* %63, i32 %64, i32* %67)
  %69 = call i32 @CHECK_RET_Z(i32 %68)
  %70 = load i32*, i32** %3, align 8
  %71 = load i32, i32* @ZSTD_c_dictIDFlag, align 4
  %72 = call i32 @ZSTD_CCtx_getParameter(i32* %70, i32 %71, i32* %5)
  %73 = call i32 @CHECK_RET_Z(i32 %72)
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  store i32 %77, i32* %80, align 4
  ret i64 0
}

declare dso_local i32 @CHECK_RET_Z(i32) #1

declare dso_local i32 @ZSTD_CCtx_getParameter(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
