; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_rx_teardown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_rx_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_softc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [21 x i8] c"starting RX teardown\00", align 1
@CPSW_CPDMA_RX_TEARDOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Unable to cleanly shutdown receiver\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"finished RX teardown (%d retries)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpsw_softc*)* @cpsw_rx_teardown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpsw_rx_teardown(%struct.cpsw_softc* %0) #0 {
  %2 = alloca %struct.cpsw_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.cpsw_softc* %0, %struct.cpsw_softc** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %5 = call i32 @CPSW_RX_LOCK(%struct.cpsw_softc* %4)
  %6 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %7 = call i32 @CPSW_DEBUGF(%struct.cpsw_softc* %6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %9 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %12 = load i32, i32* @CPSW_CPDMA_RX_TEARDOWN, align 4
  %13 = call i32 @cpsw_write_4(%struct.cpsw_softc* %11, i32 %12, i32 0)
  %14 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %15 = call i32 @CPSW_RX_UNLOCK(%struct.cpsw_softc* %14)
  br label %16

16:                                               ; preds = %31, %1
  %17 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %18 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %16
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  %25 = icmp sgt i32 %24, 10
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %28 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %45

31:                                               ; preds = %22
  %32 = call i32 @DELAY(i32 200)
  br label %16

33:                                               ; preds = %16
  %34 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %35 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = call i32 @CPSW_DEBUGF(%struct.cpsw_softc* %40, i8* %43)
  br label %45

45:                                               ; preds = %26, %39, %33
  ret void
}

declare dso_local i32 @CPSW_RX_LOCK(%struct.cpsw_softc*) #1

declare dso_local i32 @CPSW_DEBUGF(%struct.cpsw_softc*, i8*) #1

declare dso_local i32 @cpsw_write_4(%struct.cpsw_softc*, i32, i32) #1

declare dso_local i32 @CPSW_RX_UNLOCK(%struct.cpsw_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
