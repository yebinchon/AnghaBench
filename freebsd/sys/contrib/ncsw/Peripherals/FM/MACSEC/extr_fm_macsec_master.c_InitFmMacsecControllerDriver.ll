; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MACSEC/extr_fm_macsec_master.c_InitFmMacsecControllerDriver.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MACSEC/extr_fm_macsec_master.c_InitFmMacsecControllerDriver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MacsecInit = common dso_local global i32 0, align 4
@MacsecFree = common dso_local global i32 0, align 4
@MacsecConfigUnknownSciFrameTreatment = common dso_local global i32 0, align 4
@MacsecConfigInvalidTagsFrameTreatment = common dso_local global i32 0, align 4
@MacsecConfigEncryptWithNoChangedTextFrameTreatment = common dso_local global i32 0, align 4
@MacsecConfigUntagFrameTreatment = common dso_local global i32 0, align 4
@MacsecConfigChangedTextWithNoEncryptFrameTreatment = common dso_local global i32 0, align 4
@MacsecConfigOnlyScbIsSetFrameTreatment = common dso_local global i32 0, align 4
@MacsecConfigPnExhaustionThreshold = common dso_local global i32 0, align 4
@MacsecConfigKeysUnreadable = common dso_local global i32 0, align 4
@MacsecConfigSectagWithoutSCI = common dso_local global i32 0, align 4
@MacsecConfigException = common dso_local global i32 0, align 4
@MacsecGetRevision = common dso_local global i32 0, align 4
@MacsecEnable = common dso_local global i32 0, align 4
@MacsecDisable = common dso_local global i32 0, align 4
@MacsecSetException = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @InitFmMacsecControllerDriver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InitFmMacsecControllerDriver(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load i32, i32* @MacsecInit, align 4
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 15
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* @MacsecFree, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 14
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @MacsecConfigUnknownSciFrameTreatment, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 13
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @MacsecConfigInvalidTagsFrameTreatment, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 12
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @MacsecConfigEncryptWithNoChangedTextFrameTreatment, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 11
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @MacsecConfigUntagFrameTreatment, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 10
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @MacsecConfigChangedTextWithNoEncryptFrameTreatment, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 9
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @MacsecConfigOnlyScbIsSetFrameTreatment, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 8
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @MacsecConfigPnExhaustionThreshold, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 7
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @MacsecConfigKeysUnreadable, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @MacsecConfigSectagWithoutSCI, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @MacsecConfigException, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @MacsecGetRevision, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @MacsecEnable, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @MacsecDisable, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @MacsecSetException, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
