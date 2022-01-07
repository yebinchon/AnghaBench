; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_emac.c_emac_txeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_emac.c_emac_txeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_softc = type { i32, i64, %struct.ifnet* }
%struct.ifnet = type { i32 }

@EMAC_TX_FIFO0 = common dso_local global i32 0, align 4
@EMAC_TX_FIFO1 = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emac_softc*, i32)* @emac_txeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_txeof(%struct.emac_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.emac_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  store %struct.emac_softc* %0, %struct.emac_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %7 = call i32 @EMAC_ASSERT_LOCKED(%struct.emac_softc* %6)
  %8 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %9 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %8, i32 0, i32 2
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %5, align 8
  %11 = load i32, i32* @EMAC_TX_FIFO0, align 4
  %12 = load i32, i32* @EMAC_TX_FIFO1, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %19 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @EMAC_TX_FIFO0, align 4
  %24 = load i32, i32* @EMAC_TX_FIFO1, align 4
  %25 = or i32 %23, %24
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %29 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %30 = call i32 @if_inc_counter(%struct.ifnet* %28, i32 %29, i32 2)
  br label %35

31:                                               ; preds = %2
  %32 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %33 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %34 = call i32 @if_inc_counter(%struct.ifnet* %32, i32 %33, i32 1)
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %39 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.emac_softc*, %struct.emac_softc** %3, align 8
  %43 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  ret void
}

declare dso_local i32 @EMAC_ASSERT_LOCKED(%struct.emac_softc*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
