; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_dtsec.c_InitFmMacControllerDriver.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_dtsec.c_InitFmMacControllerDriver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32*, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32 }

@DtsecInit = common dso_local global i32 0, align 4
@DtsecFree = common dso_local global i32 0, align 4
@DtsecSetStatistics = common dso_local global i32 0, align 4
@DtsecConfigLoopback = common dso_local global i32 0, align 4
@DtsecConfigMaxFrameLength = common dso_local global i32 0, align 4
@DtsecConfigPadAndCrc = common dso_local global i32 0, align 4
@DtsecConfigHalfDuplex = common dso_local global i32 0, align 4
@DtsecConfigLengthCheck = common dso_local global i32 0, align 4
@DtsecConfigTbiPhyAddr = common dso_local global i32 0, align 4
@DtsecConfigException = common dso_local global i32 0, align 4
@DtsecEnable = common dso_local global i32 0, align 4
@DtsecDisable = common dso_local global i32 0, align 4
@DtsecSetException = common dso_local global i32 0, align 4
@DtsecSetPromiscuous = common dso_local global i32 0, align 4
@DtsecAdjustLink = common dso_local global i32 0, align 4
@DtsecSetWakeOnLan = common dso_local global i32 0, align 4
@DtsecRestartAutoneg = common dso_local global i32 0, align 4
@DtsecEnable1588TimeStamp = common dso_local global i32 0, align 4
@DtsecDisable1588TimeStamp = common dso_local global i32 0, align 4
@DtsecTxMacPause = common dso_local global i32 0, align 4
@DtsecSetTxPauseFrames = common dso_local global i32 0, align 4
@DtsecRxIgnoreMacPause = common dso_local global i32 0, align 4
@DtsecResetCounters = common dso_local global i32 0, align 4
@DtsecGetStatistics = common dso_local global i32 0, align 4
@DtsecModifyMacAddress = common dso_local global i32 0, align 4
@DtsecAddHashMacAddress = common dso_local global i32 0, align 4
@DtsecDelHashMacAddress = common dso_local global i32 0, align 4
@DtsecAddExactMatchMacAddress = common dso_local global i32 0, align 4
@DtsecDelExactMatchMacAddress = common dso_local global i32 0, align 4
@DtsecGetId = common dso_local global i32 0, align 4
@DtsecGetVersion = common dso_local global i32 0, align 4
@DtsecGetMaxFrameLength = common dso_local global i32 0, align 4
@DTSEC_MII_WritePhyReg = common dso_local global i32 0, align 4
@DTSEC_MII_ReadPhyReg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @InitFmMacControllerDriver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InitFmMacControllerDriver(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load i32, i32* @DtsecInit, align 4
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 36
  store i32 %3, i32* %5, align 8
  %6 = load i32, i32* @DtsecFree, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 35
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @DtsecSetStatistics, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 34
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @DtsecConfigLoopback, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 33
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @DtsecConfigMaxFrameLength, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 32
  store i32 %15, i32* %17, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 31
  store i32* null, i32** %19, align 8
  %20 = load i32, i32* @DtsecConfigPadAndCrc, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 30
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @DtsecConfigHalfDuplex, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 29
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @DtsecConfigLengthCheck, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 28
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @DtsecConfigTbiPhyAddr, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 27
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @DtsecConfigException, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 26
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 25
  store i32* null, i32** %36, align 8
  %37 = load i32, i32* @DtsecEnable, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 24
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @DtsecDisable, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 23
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 22
  store i32* null, i32** %44, align 8
  %45 = load i32, i32* @DtsecSetException, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 21
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @DtsecSetPromiscuous, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 20
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @DtsecAdjustLink, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 19
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @DtsecSetWakeOnLan, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 18
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @DtsecRestartAutoneg, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 17
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @DtsecEnable1588TimeStamp, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 16
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @DtsecDisable1588TimeStamp, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 15
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @DtsecTxMacPause, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 14
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @DtsecSetTxPauseFrames, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 13
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @DtsecRxIgnoreMacPause, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 12
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @DtsecResetCounters, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 11
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @DtsecGetStatistics, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 10
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* @DtsecModifyMacAddress, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 9
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @DtsecAddHashMacAddress, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 8
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* @DtsecDelHashMacAddress, align 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 7
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @DtsecAddExactMatchMacAddress, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 6
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* @DtsecDelExactMatchMacAddress, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 5
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @DtsecGetId, align 4
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* @DtsecGetVersion, align 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @DtsecGetMaxFrameLength, align 4
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* @DTSEC_MII_WritePhyReg, align 4
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* @DTSEC_MII_ReadPhyReg, align 4
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
