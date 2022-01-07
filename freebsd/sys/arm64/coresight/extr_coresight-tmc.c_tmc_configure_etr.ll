; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/coresight/extr_coresight-tmc.c_tmc_configure_etr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/coresight/extr_coresight-tmc.c_tmc_configure_etr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.endpoint = type { i32 }
%struct.coresight_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.tmc_softc = type { i32 }

@TMC_STS = common dso_local global i32 0, align 4
@STS_TMCREADY = common dso_local global i32 0, align 4
@TMC_MODE = common dso_local global i32 0, align 4
@MODE_CIRCULAR_BUFFER = common dso_local global i32 0, align 4
@AXICTL_PROT_CTRL_BIT1 = common dso_local global i32 0, align 4
@AXICTL_WRBURSTLEN_16 = common dso_local global i32 0, align 4
@AXICTL_AXCACHE_OS = common dso_local global i32 0, align 4
@TMC_AXICTL = common dso_local global i32 0, align 4
@FFCR_EN_FMT = common dso_local global i32 0, align 4
@FFCR_EN_TI = common dso_local global i32 0, align 4
@FFCR_FON_FLIN = common dso_local global i32 0, align 4
@FFCR_FON_TRIG_EVT = common dso_local global i32 0, align 4
@FFCR_TRIGON_TRIGIN = common dso_local global i32 0, align 4
@TMC_FFCR = common dso_local global i32 0, align 4
@TMC_TRG = common dso_local global i32 0, align 4
@TMC_DBALO = common dso_local global i32 0, align 4
@TMC_DBAHI = common dso_local global i32 0, align 4
@TMC_RSZ = common dso_local global i32 0, align 4
@TMC_RRP = common dso_local global i32 0, align 4
@TMC_RWP = common dso_local global i32 0, align 4
@STS_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.endpoint*, %struct.coresight_event*)* @tmc_configure_etr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmc_configure_etr(i32 %0, %struct.endpoint* %1, %struct.coresight_event* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.endpoint*, align 8
  %6 = alloca %struct.coresight_event*, align 8
  %7 = alloca %struct.tmc_softc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.endpoint* %1, %struct.endpoint** %5, align 8
  store %struct.coresight_event* %2, %struct.coresight_event** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.tmc_softc* @device_get_softc(i32 %9)
  store %struct.tmc_softc* %10, %struct.tmc_softc** %7, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @tmc_stop(i32 %11)
  br label %13

13:                                               ; preds = %19, %3
  %14 = load %struct.tmc_softc*, %struct.tmc_softc** %7, align 8
  %15 = getelementptr inbounds %struct.tmc_softc, %struct.tmc_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TMC_STS, align 4
  %18 = call i32 @bus_read_4(i32 %16, i32 %17)
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %13
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @STS_TMCREADY, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %13, label %24

24:                                               ; preds = %19
  %25 = load %struct.tmc_softc*, %struct.tmc_softc** %7, align 8
  %26 = getelementptr inbounds %struct.tmc_softc, %struct.tmc_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @TMC_MODE, align 4
  %29 = load i32, i32* @MODE_CIRCULAR_BUFFER, align 4
  %30 = call i32 @bus_write_4(i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* @AXICTL_PROT_CTRL_BIT1, align 4
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* @AXICTL_WRBURSTLEN_16, align 4
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* @AXICTL_AXCACHE_OS, align 4
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load %struct.tmc_softc*, %struct.tmc_softc** %7, align 8
  %39 = getelementptr inbounds %struct.tmc_softc, %struct.tmc_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @TMC_AXICTL, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @bus_write_4(i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* @FFCR_EN_FMT, align 4
  %45 = load i32, i32* @FFCR_EN_TI, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @FFCR_FON_FLIN, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @FFCR_FON_TRIG_EVT, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @FFCR_TRIGON_TRIGIN, align 4
  %52 = or i32 %50, %51
  store i32 %52, i32* %8, align 4
  %53 = load %struct.tmc_softc*, %struct.tmc_softc** %7, align 8
  %54 = getelementptr inbounds %struct.tmc_softc, %struct.tmc_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @TMC_FFCR, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @bus_write_4(i32 %55, i32 %56, i32 %57)
  %59 = load %struct.tmc_softc*, %struct.tmc_softc** %7, align 8
  %60 = getelementptr inbounds %struct.tmc_softc, %struct.tmc_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @TMC_TRG, align 4
  %63 = call i32 @bus_write_4(i32 %61, i32 %62, i32 8)
  %64 = load %struct.tmc_softc*, %struct.tmc_softc** %7, align 8
  %65 = getelementptr inbounds %struct.tmc_softc, %struct.tmc_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @TMC_DBALO, align 4
  %68 = load %struct.coresight_event*, %struct.coresight_event** %6, align 8
  %69 = getelementptr inbounds %struct.coresight_event, %struct.coresight_event* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @bus_write_4(i32 %66, i32 %67, i32 %71)
  %73 = load %struct.tmc_softc*, %struct.tmc_softc** %7, align 8
  %74 = getelementptr inbounds %struct.tmc_softc, %struct.tmc_softc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @TMC_DBAHI, align 4
  %77 = load %struct.coresight_event*, %struct.coresight_event** %6, align 8
  %78 = getelementptr inbounds %struct.coresight_event, %struct.coresight_event* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @bus_write_4(i32 %75, i32 %76, i32 %80)
  %82 = load %struct.tmc_softc*, %struct.tmc_softc** %7, align 8
  %83 = getelementptr inbounds %struct.tmc_softc, %struct.tmc_softc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @TMC_RSZ, align 4
  %86 = load %struct.coresight_event*, %struct.coresight_event** %6, align 8
  %87 = getelementptr inbounds %struct.coresight_event, %struct.coresight_event* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = sdiv i32 %89, 4
  %91 = call i32 @bus_write_4(i32 %84, i32 %85, i32 %90)
  %92 = load %struct.tmc_softc*, %struct.tmc_softc** %7, align 8
  %93 = getelementptr inbounds %struct.tmc_softc, %struct.tmc_softc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @TMC_RRP, align 4
  %96 = load %struct.coresight_event*, %struct.coresight_event** %6, align 8
  %97 = getelementptr inbounds %struct.coresight_event, %struct.coresight_event* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @bus_write_4(i32 %94, i32 %95, i32 %99)
  %101 = load %struct.tmc_softc*, %struct.tmc_softc** %7, align 8
  %102 = getelementptr inbounds %struct.tmc_softc, %struct.tmc_softc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @TMC_RWP, align 4
  %105 = load %struct.coresight_event*, %struct.coresight_event** %6, align 8
  %106 = getelementptr inbounds %struct.coresight_event, %struct.coresight_event* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @bus_write_4(i32 %103, i32 %104, i32 %108)
  %110 = load %struct.tmc_softc*, %struct.tmc_softc** %7, align 8
  %111 = getelementptr inbounds %struct.tmc_softc, %struct.tmc_softc* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @TMC_STS, align 4
  %114 = call i32 @bus_read_4(i32 %112, i32 %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* @STS_FULL, align 4
  %116 = xor i32 %115, -1
  %117 = load i32, i32* %8, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %8, align 4
  %119 = load %struct.tmc_softc*, %struct.tmc_softc** %7, align 8
  %120 = getelementptr inbounds %struct.tmc_softc, %struct.tmc_softc* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @TMC_STS, align 4
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @bus_write_4(i32 %121, i32 %122, i32 %123)
  %125 = load i32, i32* %4, align 4
  %126 = call i32 @tmc_start(i32 %125)
  ret i32 0
}

declare dso_local %struct.tmc_softc* @device_get_softc(i32) #1

declare dso_local i32 @tmc_stop(i32) #1

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

declare dso_local i32 @tmc_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
