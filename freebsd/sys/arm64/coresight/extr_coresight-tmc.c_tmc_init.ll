; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/coresight/extr_coresight-tmc.c_tmc_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/coresight/extr_coresight-tmc.c_tmc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmc_softc = type { i32, i32, i32 }

@CORESIGHT_LAR = common dso_local global i32 0, align 4
@CORESIGHT_UNLOCK = common dso_local global i32 0, align 4
@TMC_LAR = common dso_local global i32 0, align 4
@TMC_DEVID = common dso_local global i32 0, align 4
@DEVID_CONFIGTYPE_M = common dso_local global i32 0, align 4
@CORESIGHT_ETR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"ETR configuration found\0A\00", align 1
@CORESIGHT_ETF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"ETF configuration found\0A\00", align 1
@CORESIGHT_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tmc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmc_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tmc_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.tmc_softc* @device_get_softc(i32 %5)
  store %struct.tmc_softc* %6, %struct.tmc_softc** %3, align 8
  %7 = load %struct.tmc_softc*, %struct.tmc_softc** %3, align 8
  %8 = getelementptr inbounds %struct.tmc_softc, %struct.tmc_softc* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @CORESIGHT_LAR, align 4
  %11 = load i32, i32* @CORESIGHT_UNLOCK, align 4
  %12 = call i32 @bus_write_4(i32 %9, i32 %10, i32 %11)
  %13 = load %struct.tmc_softc*, %struct.tmc_softc** %3, align 8
  %14 = getelementptr inbounds %struct.tmc_softc, %struct.tmc_softc* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @TMC_LAR, align 4
  %17 = load i32, i32* @CORESIGHT_UNLOCK, align 4
  %18 = call i32 @bus_write_4(i32 %15, i32 %16, i32 %17)
  %19 = load %struct.tmc_softc*, %struct.tmc_softc** %3, align 8
  %20 = getelementptr inbounds %struct.tmc_softc, %struct.tmc_softc* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @TMC_DEVID, align 4
  %23 = call i32 @bus_read_4(i32 %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @DEVID_CONFIGTYPE_M, align 4
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  switch i32 %27, label %50 [
    i32 128, label %28
    i32 129, label %34
  ]

28:                                               ; preds = %1
  %29 = load i32, i32* @CORESIGHT_ETR, align 4
  %30 = load %struct.tmc_softc*, %struct.tmc_softc** %3, align 8
  %31 = getelementptr inbounds %struct.tmc_softc, %struct.tmc_softc* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @dprintf(i32 %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %54

34:                                               ; preds = %1
  %35 = load i32, i32* @CORESIGHT_ETF, align 4
  %36 = load %struct.tmc_softc*, %struct.tmc_softc** %3, align 8
  %37 = getelementptr inbounds %struct.tmc_softc, %struct.tmc_softc* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @dprintf(i32 %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.tmc_softc*, %struct.tmc_softc** %3, align 8
  %41 = getelementptr inbounds %struct.tmc_softc, %struct.tmc_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %34
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @tmc_configure_etf(i32 %45)
  %47 = load %struct.tmc_softc*, %struct.tmc_softc** %3, align 8
  %48 = getelementptr inbounds %struct.tmc_softc, %struct.tmc_softc* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %44, %34
  br label %54

50:                                               ; preds = %1
  %51 = load i32, i32* @CORESIGHT_UNKNOWN, align 4
  %52 = load %struct.tmc_softc*, %struct.tmc_softc** %3, align 8
  %53 = getelementptr inbounds %struct.tmc_softc, %struct.tmc_softc* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %50, %49, %28
  ret i32 0
}

declare dso_local %struct.tmc_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @dprintf(i32, i8*) #1

declare dso_local i32 @tmc_configure_etf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
