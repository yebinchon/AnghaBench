; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_intr_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_intr_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_softc = type { i32 }

@CPSW_CPDMA_CPDMA_EOI_VECTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cpsw_intr_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpsw_intr_tx(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cpsw_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.cpsw_softc*
  store %struct.cpsw_softc* %5, %struct.cpsw_softc** %3, align 8
  %6 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %7 = call i32 @CPSW_TX_LOCK(%struct.cpsw_softc* %6)
  %8 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %9 = call i32 @CPSW_CPDMA_TX_CP(i32 0)
  %10 = call i32 @cpsw_read_4(%struct.cpsw_softc* %8, i32 %9)
  %11 = icmp eq i32 %10, -4
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %14 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %15 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %14, i32 0, i32 0
  %16 = call i32 @cpsw_write_cp(%struct.cpsw_softc* %13, i32* %15, i32 -4)
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %19 = call i32 @cpsw_tx_dequeue(%struct.cpsw_softc* %18)
  %20 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %21 = load i32, i32* @CPSW_CPDMA_CPDMA_EOI_VECTOR, align 4
  %22 = call i32 @cpsw_write_4(%struct.cpsw_softc* %20, i32 %21, i32 2)
  %23 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %24 = call i32 @CPSW_TX_UNLOCK(%struct.cpsw_softc* %23)
  ret void
}

declare dso_local i32 @CPSW_TX_LOCK(%struct.cpsw_softc*) #1

declare dso_local i32 @cpsw_read_4(%struct.cpsw_softc*, i32) #1

declare dso_local i32 @CPSW_CPDMA_TX_CP(i32) #1

declare dso_local i32 @cpsw_write_cp(%struct.cpsw_softc*, i32*, i32) #1

declare dso_local i32 @cpsw_tx_dequeue(%struct.cpsw_softc*) #1

declare dso_local i32 @cpsw_write_4(%struct.cpsw_softc*, i32, i32) #1

declare dso_local i32 @CPSW_TX_UNLOCK(%struct.cpsw_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
