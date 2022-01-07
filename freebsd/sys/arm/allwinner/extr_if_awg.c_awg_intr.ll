; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.awg_softc = type { i32 }

@EMAC_INT_STA = common dso_local global i32 0, align 4
@RX_INT = common dso_local global i32 0, align 4
@TX_INT = common dso_local global i32 0, align 4
@TX_BUF_UA_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @awg_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @awg_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.awg_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.awg_softc*
  store %struct.awg_softc* %6, %struct.awg_softc** %3, align 8
  %7 = load %struct.awg_softc*, %struct.awg_softc** %3, align 8
  %8 = call i32 @AWG_LOCK(%struct.awg_softc* %7)
  %9 = load %struct.awg_softc*, %struct.awg_softc** %3, align 8
  %10 = load i32, i32* @EMAC_INT_STA, align 4
  %11 = call i32 @RD4(%struct.awg_softc* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.awg_softc*, %struct.awg_softc** %3, align 8
  %13 = load i32, i32* @EMAC_INT_STA, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @WR4(%struct.awg_softc* %12, i32 %13, i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @RX_INT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.awg_softc*, %struct.awg_softc** %3, align 8
  %22 = call i32 @awg_rxintr(%struct.awg_softc* %21)
  br label %23

23:                                               ; preds = %20, %1
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @TX_INT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.awg_softc*, %struct.awg_softc** %3, align 8
  %30 = call i32 @awg_txeof(%struct.awg_softc* %29)
  br label %31

31:                                               ; preds = %28, %23
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @TX_INT, align 4
  %34 = load i32, i32* @TX_BUF_UA_INT, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %31
  %39 = load %struct.awg_softc*, %struct.awg_softc** %3, align 8
  %40 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @if_sendq_empty(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load %struct.awg_softc*, %struct.awg_softc** %3, align 8
  %46 = call i32 @awg_start_locked(%struct.awg_softc* %45)
  br label %47

47:                                               ; preds = %44, %38
  br label %48

48:                                               ; preds = %47, %31
  %49 = load %struct.awg_softc*, %struct.awg_softc** %3, align 8
  %50 = call i32 @AWG_UNLOCK(%struct.awg_softc* %49)
  ret void
}

declare dso_local i32 @AWG_LOCK(%struct.awg_softc*) #1

declare dso_local i32 @RD4(%struct.awg_softc*, i32) #1

declare dso_local i32 @WR4(%struct.awg_softc*, i32, i32) #1

declare dso_local i32 @awg_rxintr(%struct.awg_softc*) #1

declare dso_local i32 @awg_txeof(%struct.awg_softc*) #1

declare dso_local i32 @if_sendq_empty(i32) #1

declare dso_local i32 @awg_start_locked(%struct.awg_softc*) #1

declare dso_local i32 @AWG_UNLOCK(%struct.awg_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
