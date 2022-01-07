; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_if_fv.c_fv_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_if_fv.c_fv_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fv_softc = type { i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@CSR_INTEN = common dso_local global i32 0, align 4
@CSR_OPMODE = common dso_local global i32 0, align 4
@CSR_RXLIST = common dso_local global i32 0, align 4
@CSR_TXLIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fv_softc*)* @fv_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fv_stop(%struct.fv_softc* %0) #0 {
  %2 = alloca %struct.fv_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  store %struct.fv_softc* %0, %struct.fv_softc** %2, align 8
  %4 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %5 = call i32 @FV_LOCK_ASSERT(%struct.fv_softc* %4)
  %6 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %7 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %6, i32 0, i32 1
  %8 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  store %struct.ifnet* %8, %struct.ifnet** %3, align 8
  %9 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %10 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %18 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %17, i32 0, i32 0
  %19 = call i32 @callout_stop(i32* %18)
  %20 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %21 = load i32, i32* @CSR_INTEN, align 4
  %22 = call i32 @CSR_WRITE_4(%struct.fv_softc* %20, i32 %21, i32 0)
  %23 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %24 = load i32, i32* @CSR_OPMODE, align 4
  %25 = call i32 @CSR_WRITE_4(%struct.fv_softc* %23, i32 %24, i32 0)
  %26 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %27 = load i32, i32* @CSR_RXLIST, align 4
  %28 = call i32 @CSR_WRITE_4(%struct.fv_softc* %26, i32 %27, i32 0)
  %29 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %30 = load i32, i32* @CSR_TXLIST, align 4
  %31 = call i32 @CSR_WRITE_4(%struct.fv_softc* %29, i32 %30, i32 0)
  ret void
}

declare dso_local i32 @FV_LOCK_ASSERT(%struct.fv_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.fv_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
