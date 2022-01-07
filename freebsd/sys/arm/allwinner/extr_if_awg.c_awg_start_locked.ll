; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_start_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_start_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.awg_softc = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mbuf = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@EMAC_TX_CTL_1 = common dso_local global i32 0, align 4
@TX_DMA_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.awg_softc*)* @awg_start_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @awg_start_locked(%struct.awg_softc* %0) #0 {
  %2 = alloca %struct.awg_softc*, align 8
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.awg_softc* %0, %struct.awg_softc** %2, align 8
  %8 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %9 = call i32 @AWG_ASSERT_LOCKED(%struct.awg_softc* %8)
  %10 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %11 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %88

15:                                               ; preds = %1
  %16 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %17 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @if_getdrvflags(i32 %19)
  %21 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %22 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  br label %88

28:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %60, %28
  %30 = load i32, i32* %5, align 4
  %31 = call %struct.mbuf* @if_dequeue(i32 %30)
  store %struct.mbuf* %31, %struct.mbuf** %3, align 8
  %32 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %33 = icmp eq %struct.mbuf* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %63

35:                                               ; preds = %29
  %36 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %37 = call i32 @awg_encap(%struct.awg_softc* %36, %struct.mbuf** %3)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %35
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @ENOBUFS, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %47 = call i32 @if_setdrvflagbits(i32 %45, i32 %46, i32 0)
  br label %48

48:                                               ; preds = %44, %40
  %49 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %50 = icmp ne %struct.mbuf* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %54 = call i32 @if_sendq_prepend(i32 %52, %struct.mbuf* %53)
  br label %55

55:                                               ; preds = %51, %48
  br label %63

56:                                               ; preds = %35
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %59 = call i32 @if_bpfmtap(i32 %57, %struct.mbuf* %58)
  br label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %29

63:                                               ; preds = %55, %34
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %88

66:                                               ; preds = %63
  %67 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %68 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %72 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %76 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @bus_dmamap_sync(i32 %70, i32 %74, i32 %77)
  %79 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %80 = load i32, i32* @EMAC_TX_CTL_1, align 4
  %81 = call i32 @RD4(%struct.awg_softc* %79, i32 %80)
  store i32 %81, i32* %4, align 4
  %82 = load %struct.awg_softc*, %struct.awg_softc** %2, align 8
  %83 = load i32, i32* @EMAC_TX_CTL_1, align 4
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @TX_DMA_START, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @WR4(%struct.awg_softc* %82, i32 %83, i32 %86)
  br label %88

88:                                               ; preds = %14, %27, %66, %63
  ret void
}

declare dso_local i32 @AWG_ASSERT_LOCKED(%struct.awg_softc*) #1

declare dso_local i32 @if_getdrvflags(i32) #1

declare dso_local %struct.mbuf* @if_dequeue(i32) #1

declare dso_local i32 @awg_encap(%struct.awg_softc*, %struct.mbuf**) #1

declare dso_local i32 @if_setdrvflagbits(i32, i32, i32) #1

declare dso_local i32 @if_sendq_prepend(i32, %struct.mbuf*) #1

declare dso_local i32 @if_bpfmtap(i32, %struct.mbuf*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @RD4(%struct.awg_softc*, i32) #1

declare dso_local i32 @WR4(%struct.awg_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
