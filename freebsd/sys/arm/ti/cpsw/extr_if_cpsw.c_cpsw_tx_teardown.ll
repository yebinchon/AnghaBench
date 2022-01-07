; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_tx_teardown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_tx_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_softc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [21 x i8] c"starting TX teardown\00", align 1
@CPSW_CPDMA_TX_TEARDOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Unable to cleanly shutdown transmitter\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"finished TX teardown (%d retries, %d idle buffers)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpsw_softc*)* @cpsw_tx_teardown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpsw_tx_teardown(%struct.cpsw_softc* %0) #0 {
  %2 = alloca %struct.cpsw_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.cpsw_softc* %0, %struct.cpsw_softc** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %5 = call i32 @CPSW_TX_LOCK(%struct.cpsw_softc* %4)
  %6 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %7 = call i32 @CPSW_DEBUGF(%struct.cpsw_softc* %6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %9 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 3
  %11 = call i32* @STAILQ_FIRST(i32* %10)
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %15 = load i32, i32* @CPSW_CPDMA_TX_TEARDOWN, align 4
  %16 = call i32 @cpsw_write_4(%struct.cpsw_softc* %14, i32 %15, i32 0)
  br label %21

17:                                               ; preds = %1
  %18 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %19 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  br label %21

21:                                               ; preds = %17, %13
  %22 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %23 = call i32 @cpsw_tx_dequeue(%struct.cpsw_softc* %22)
  br label %24

24:                                               ; preds = %36, %21
  %25 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %26 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  %33 = icmp slt i32 %32, 10
  br label %34

34:                                               ; preds = %30, %24
  %35 = phi i1 [ false, %24 ], [ %33, %30 ]
  br i1 %35, label %36, label %40

36:                                               ; preds = %34
  %37 = call i32 @DELAY(i32 200)
  %38 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %39 = call i32 @cpsw_tx_dequeue(%struct.cpsw_softc* %38)
  br label %24

40:                                               ; preds = %34
  %41 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %42 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %48 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %46, %40
  %52 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %53 = load i32, i32* %3, align 4
  %54 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %55 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = call i32 @CPSW_DEBUGF(%struct.cpsw_softc* %52, i8* %59)
  %61 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %62 = call i32 @CPSW_TX_UNLOCK(%struct.cpsw_softc* %61)
  ret void
}

declare dso_local i32 @CPSW_TX_LOCK(%struct.cpsw_softc*) #1

declare dso_local i32 @CPSW_DEBUGF(%struct.cpsw_softc*, i8*) #1

declare dso_local i32* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @cpsw_write_4(%struct.cpsw_softc*, i32, i32) #1

declare dso_local i32 @cpsw_tx_dequeue(%struct.cpsw_softc*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @CPSW_TX_UNLOCK(%struct.cpsw_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
