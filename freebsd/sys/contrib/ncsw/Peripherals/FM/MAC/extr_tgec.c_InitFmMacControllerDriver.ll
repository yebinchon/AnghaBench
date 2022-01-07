; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_tgec.c_InitFmMacControllerDriver.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_tgec.c_InitFmMacControllerDriver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32*, i32, i32, i32*, i32*, i32, i32, i32, i32*, i32, i32 }

@TgecInit = common dso_local global i32 0, align 4
@TgecFree = common dso_local global i32 0, align 4
@TgecConfigLoopback = common dso_local global i32 0, align 4
@TgecConfigMaxFrameLength = common dso_local global i32 0, align 4
@TgecConfigWan = common dso_local global i32 0, align 4
@TgecConfigLengthCheck = common dso_local global i32 0, align 4
@TgecConfigException = common dso_local global i32 0, align 4
@TgecSetExcpetion = common dso_local global i32 0, align 4
@TgecEnable1588TimeStamp = common dso_local global i32 0, align 4
@TgecDisable1588TimeStamp = common dso_local global i32 0, align 4
@TgecSetPromiscuous = common dso_local global i32 0, align 4
@TgecEnable = common dso_local global i32 0, align 4
@TgecDisable = common dso_local global i32 0, align 4
@TgecTxMacPause = common dso_local global i32 0, align 4
@TgecSetTxPauseFrames = common dso_local global i32 0, align 4
@TgecRxIgnoreMacPause = common dso_local global i32 0, align 4
@TgecResetCounters = common dso_local global i32 0, align 4
@TgecGetStatistics = common dso_local global i32 0, align 4
@TgecModifyMacAddress = common dso_local global i32 0, align 4
@TgecAddHashMacAddress = common dso_local global i32 0, align 4
@TgecDelHashMacAddress = common dso_local global i32 0, align 4
@TgecAddExactMatchMacAddress = common dso_local global i32 0, align 4
@TgecDelExactMatchMacAddress = common dso_local global i32 0, align 4
@TgecGetId = common dso_local global i32 0, align 4
@TgecGetVersion = common dso_local global i32 0, align 4
@TgecGetMaxFrameLength = common dso_local global i32 0, align 4
@TGEC_MII_WritePhyReg = common dso_local global i32 0, align 4
@TGEC_MII_ReadPhyReg = common dso_local global i32 0, align 4
@TgecConfigSkipFman11Workaround = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @InitFmMacControllerDriver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InitFmMacControllerDriver(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load i32, i32* @TgecInit, align 4
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 36
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* @TgecFree, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 35
  store i32 %6, i32* %8, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 34
  store i32* null, i32** %10, align 8
  %11 = load i32, i32* @TgecConfigLoopback, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 33
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* @TgecConfigMaxFrameLength, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 32
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @TgecConfigWan, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 31
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 30
  store i32* null, i32** %21, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 29
  store i32* null, i32** %23, align 8
  %24 = load i32, i32* @TgecConfigLengthCheck, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 28
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @TgecConfigException, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 27
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 26
  store i32* null, i32** %31, align 8
  %32 = load i32, i32* @TgecSetExcpetion, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 24
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @TgecEnable1588TimeStamp, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 23
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @TgecDisable1588TimeStamp, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 22
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @TgecSetPromiscuous, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 21
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 20
  store i32* null, i32** %45, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 19
  store i32* null, i32** %47, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 18
  store i32* null, i32** %49, align 8
  %50 = load i32, i32* @TgecEnable, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 17
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @TgecDisable, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 16
  store i32 %53, i32* %55, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 15
  store i32* null, i32** %57, align 8
  %58 = load i32, i32* @TgecTxMacPause, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 14
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @TgecSetTxPauseFrames, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 13
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @TgecRxIgnoreMacPause, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 12
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @TgecResetCounters, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 11
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @TgecGetStatistics, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 10
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* @TgecModifyMacAddress, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 9
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @TgecAddHashMacAddress, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 8
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* @TgecDelHashMacAddress, align 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 7
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @TgecAddExactMatchMacAddress, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 6
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* @TgecDelExactMatchMacAddress, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @TgecGetId, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* @TgecGetVersion, align 4
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @TgecGetMaxFrameLength, align 4
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* @TGEC_MII_WritePhyReg, align 4
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* @TGEC_MII_ReadPhyReg, align 4
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
