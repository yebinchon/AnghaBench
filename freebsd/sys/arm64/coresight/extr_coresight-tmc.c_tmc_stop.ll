; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/coresight/extr_coresight-tmc.c_tmc_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/coresight/extr_coresight-tmc.c_tmc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmc_softc = type { i32 }

@TMC_CTL = common dso_local global i32 0, align 4
@CTL_TRACECAPTEN = common dso_local global i32 0, align 4
@TMC_STS = common dso_local global i32 0, align 4
@STS_TMCREADY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tmc_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmc_stop(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tmc_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.tmc_softc* @device_get_softc(i32 %5)
  store %struct.tmc_softc* %6, %struct.tmc_softc** %3, align 8
  %7 = load %struct.tmc_softc*, %struct.tmc_softc** %3, align 8
  %8 = getelementptr inbounds %struct.tmc_softc, %struct.tmc_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @TMC_CTL, align 4
  %11 = call i32 @bus_read_4(i32 %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @CTL_TRACECAPTEN, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load %struct.tmc_softc*, %struct.tmc_softc** %3, align 8
  %17 = getelementptr inbounds %struct.tmc_softc, %struct.tmc_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @TMC_CTL, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @bus_write_4(i32 %18, i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %28, %1
  %23 = load %struct.tmc_softc*, %struct.tmc_softc** %3, align 8
  %24 = getelementptr inbounds %struct.tmc_softc, %struct.tmc_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @TMC_STS, align 4
  %27 = call i32 @bus_read_4(i32 %25, i32 %26)
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @STS_TMCREADY, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %22, label %33

33:                                               ; preds = %28
  ret i32 0
}

declare dso_local %struct.tmc_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
