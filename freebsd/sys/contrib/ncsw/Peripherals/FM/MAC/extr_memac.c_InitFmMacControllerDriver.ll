; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_memac.c_InitFmMacControllerDriver.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_memac.c_InitFmMacControllerDriver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32*, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32*, i32, i32 }

@MemacInit = common dso_local global i32 0, align 4
@MemacFree = common dso_local global i32 0, align 4
@MemacConfigLoopback = common dso_local global i32 0, align 4
@MemacConfigMaxFrameLength = common dso_local global i32 0, align 4
@MemacConfigWan = common dso_local global i32 0, align 4
@MemacConfigPad = common dso_local global i32 0, align 4
@MemacConfigLengthCheck = common dso_local global i32 0, align 4
@MemacConfigException = common dso_local global i32 0, align 4
@MemacConfigResetOnInit = common dso_local global i32 0, align 4
@MemacSetException = common dso_local global i32 0, align 4
@MemacEnable1588TimeStamp = common dso_local global i32 0, align 4
@MemacSetPromiscuous = common dso_local global i32 0, align 4
@MemacAdjustLink = common dso_local global i32 0, align 4
@MemacEnable = common dso_local global i32 0, align 4
@MemacDisable = common dso_local global i32 0, align 4
@MemacInitInternalPhy = common dso_local global i32 0, align 4
@MemacSetTxAutoPauseFrames = common dso_local global i32 0, align 4
@MemacSetTxPauseFrames = common dso_local global i32 0, align 4
@MemacSetRxIgnorePauseFrames = common dso_local global i32 0, align 4
@MemacSetWakeOnLan = common dso_local global i32 0, align 4
@MemacResetCounters = common dso_local global i32 0, align 4
@MemacGetStatistics = common dso_local global i32 0, align 4
@MemacModifyMacAddress = common dso_local global i32 0, align 4
@MemacAddHashMacAddress = common dso_local global i32 0, align 4
@MemacDelHashMacAddress = common dso_local global i32 0, align 4
@MemacAddExactMatchMacAddress = common dso_local global i32 0, align 4
@MemacDelExactMatchMacAddress = common dso_local global i32 0, align 4
@MemacGetId = common dso_local global i32 0, align 4
@MemacGetMaxFrameLength = common dso_local global i32 0, align 4
@MEMAC_MII_WritePhyReg = common dso_local global i32 0, align 4
@MEMAC_MII_ReadPhyReg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @InitFmMacControllerDriver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InitFmMacControllerDriver(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load i32, i32* @MemacInit, align 4
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 35
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* @MemacFree, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 34
  store i32 %6, i32* %8, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 33
  store i32* null, i32** %10, align 8
  %11 = load i32, i32* @MemacConfigLoopback, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 32
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @MemacConfigMaxFrameLength, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 31
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @MemacConfigWan, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 30
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @MemacConfigPad, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 29
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 28
  store i32* null, i32** %24, align 8
  %25 = load i32, i32* @MemacConfigLengthCheck, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 27
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @MemacConfigException, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 26
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @MemacConfigResetOnInit, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 25
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @MemacSetException, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 24
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @MemacEnable1588TimeStamp, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 23
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 22
  store i32* null, i32** %41, align 8
  %42 = load i32, i32* @MemacSetPromiscuous, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 21
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @MemacAdjustLink, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 20
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 19
  store i32* null, i32** %49, align 8
  %50 = load i32, i32* @MemacEnable, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 18
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @MemacDisable, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 17
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @MemacInitInternalPhy, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 16
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @MemacSetTxAutoPauseFrames, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 15
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @MemacSetTxPauseFrames, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 14
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @MemacSetRxIgnorePauseFrames, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 13
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @MemacSetWakeOnLan, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 12
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @MemacResetCounters, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 11
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @MemacGetStatistics, align 4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 10
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* @MemacModifyMacAddress, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 9
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @MemacAddHashMacAddress, align 4
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 8
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* @MemacDelHashMacAddress, align 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 7
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @MemacAddExactMatchMacAddress, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 6
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* @MemacDelExactMatchMacAddress, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @MemacGetId, align 4
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 3
  store i32* null, i32** %96, align 8
  %97 = load i32, i32* @MemacGetMaxFrameLength, align 4
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* @MEMAC_MII_WritePhyReg, align 4
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* @MEMAC_MII_ReadPhyReg, align 4
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
