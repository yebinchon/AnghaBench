; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_intr_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_intr_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_softc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.ifnet = type { i32 (%struct.ifnet*, %struct.mbuf*)* }
%struct.mbuf = type { %struct.TYPE_3__, %struct.mbuf* }
%struct.TYPE_3__ = type { %struct.ifnet* }

@CPSW_CPDMA_CPDMA_EOI_VECTOR = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cpsw_intr_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpsw_intr_rx(i8* %0) #0 {
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
  %12 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %1
  %17 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %18 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %21 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %24 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %25 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %24, i32 0, i32 0
  %26 = call i32 @cpsw_write_cp(%struct.cpsw_softc* %23, %struct.TYPE_4__* %25, i32 -4)
  br label %27

27:                                               ; preds = %16, %1
  %28 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %29 = call %struct.mbuf* @cpsw_rx_dequeue(%struct.cpsw_softc* %28)
  store %struct.mbuf* %29, %struct.mbuf** %5, align 8
  %30 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %31 = call i32 @cpsw_rx_enqueue(%struct.cpsw_softc* %30)
  %32 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %33 = load i32, i32* @CPSW_CPDMA_CPDMA_EOI_VECTOR, align 4
  %34 = call i32 @cpsw_write_4(%struct.cpsw_softc* %32, i32 %33, i32 1)
  %35 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %36 = call i32 @CPSW_RX_UNLOCK(%struct.cpsw_softc* %35)
  br label %37

37:                                               ; preds = %40, %27
  %38 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %39 = icmp ne %struct.mbuf* %38, null
  br i1 %39, label %40, label %60

40:                                               ; preds = %37
  %41 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %42 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %41, i32 0, i32 1
  %43 = load %struct.mbuf*, %struct.mbuf** %42, align 8
  store %struct.mbuf* %43, %struct.mbuf** %6, align 8
  %44 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %45 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %44, i32 0, i32 1
  store %struct.mbuf* null, %struct.mbuf** %45, align 8
  %46 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %47 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load %struct.ifnet*, %struct.ifnet** %48, align 8
  store %struct.ifnet* %49, %struct.ifnet** %4, align 8
  %50 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %51 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %50, i32 0, i32 0
  %52 = load i32 (%struct.ifnet*, %struct.mbuf*)*, i32 (%struct.ifnet*, %struct.mbuf*)** %51, align 8
  %53 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %54 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %55 = call i32 %52(%struct.ifnet* %53, %struct.mbuf* %54)
  %56 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %57 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %58 = call i32 @if_inc_counter(%struct.ifnet* %56, i32 %57, i32 1)
  %59 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  store %struct.mbuf* %59, %struct.mbuf** %5, align 8
  br label %37

60:                                               ; preds = %37
  ret void
}

declare dso_local i32 @CPSW_RX_LOCK(%struct.cpsw_softc*) #1

declare dso_local i32 @cpsw_write_cp(%struct.cpsw_softc*, %struct.TYPE_4__*, i32) #1

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
