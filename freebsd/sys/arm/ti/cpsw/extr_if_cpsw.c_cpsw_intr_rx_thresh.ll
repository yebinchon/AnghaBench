; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_intr_rx_thresh.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_intr_rx_thresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_softc = type { i32 }
%struct.ifnet = type { i32 (%struct.ifnet*, %struct.mbuf*)* }
%struct.mbuf = type { %struct.TYPE_2__, %struct.mbuf* }
%struct.TYPE_2__ = type { %struct.ifnet* }

@CPSW_CPDMA_CPDMA_EOI_VECTOR = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cpsw_intr_rx_thresh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpsw_intr_rx_thresh(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cpsw_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.mbuf*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.cpsw_softc*
  store %struct.cpsw_softc* %8, %struct.cpsw_softc** %3, align 8
  %9 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %10 = call i32 @CPSW_RX_LOCK(%struct.cpsw_softc* %9)
  %11 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %12 = call %struct.mbuf* @cpsw_rx_dequeue(%struct.cpsw_softc* %11)
  store %struct.mbuf* %12, %struct.mbuf** %5, align 8
  %13 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %14 = call i32 @cpsw_rx_enqueue(%struct.cpsw_softc* %13)
  %15 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %16 = load i32, i32* @CPSW_CPDMA_CPDMA_EOI_VECTOR, align 4
  %17 = call i32 @cpsw_write_4(%struct.cpsw_softc* %15, i32 %16, i32 0)
  %18 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %19 = call i32 @CPSW_RX_UNLOCK(%struct.cpsw_softc* %18)
  br label %20

20:                                               ; preds = %23, %1
  %21 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %22 = icmp ne %struct.mbuf* %21, null
  br i1 %22, label %23, label %43

23:                                               ; preds = %20
  %24 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %25 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %24, i32 0, i32 1
  %26 = load %struct.mbuf*, %struct.mbuf** %25, align 8
  store %struct.mbuf* %26, %struct.mbuf** %6, align 8
  %27 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %28 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %27, i32 0, i32 1
  store %struct.mbuf* null, %struct.mbuf** %28, align 8
  %29 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %30 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.ifnet*, %struct.ifnet** %31, align 8
  store %struct.ifnet* %32, %struct.ifnet** %4, align 8
  %33 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %34 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %33, i32 0, i32 0
  %35 = load i32 (%struct.ifnet*, %struct.mbuf*)*, i32 (%struct.ifnet*, %struct.mbuf*)** %34, align 8
  %36 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %37 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %38 = call i32 %35(%struct.ifnet* %36, %struct.mbuf* %37)
  %39 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %40 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %41 = call i32 @if_inc_counter(%struct.ifnet* %39, i32 %40, i32 1)
  %42 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  store %struct.mbuf* %42, %struct.mbuf** %5, align 8
  br label %20

43:                                               ; preds = %20
  ret void
}

declare dso_local i32 @CPSW_RX_LOCK(%struct.cpsw_softc*) #1

declare dso_local %struct.mbuf* @cpsw_rx_dequeue(%struct.cpsw_softc*) #1

declare dso_local i32 @cpsw_rx_enqueue(%struct.cpsw_softc*) #1

declare dso_local i32 @cpsw_write_4(%struct.cpsw_softc*, i32, i32) #1

declare dso_local i32 @CPSW_RX_UNLOCK(%struct.cpsw_softc*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
