; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_tx_watchdog_full_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_tx_watchdog_full_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_softc = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.cpswp_softc = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"CPSW watchdog\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"watchdog timeout\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"CPSW_CPDMA_TX%d_HDP=0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"CPSW_CPDMA_TX%d_CP=0x%x\0A\00", align 1
@CPSW_PORTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpsw_softc*)* @cpsw_tx_watchdog_full_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpsw_tx_watchdog_full_reset(%struct.cpsw_softc* %0) #0 {
  %2 = alloca %struct.cpsw_softc*, align 8
  %3 = alloca %struct.cpswp_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.cpsw_softc* %0, %struct.cpsw_softc** %2, align 8
  %5 = call i32 @cpsw_debugf_head(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %7 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @device_printf(i32 %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %10 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %11 = call i32 @CPSW_CPDMA_TX_HDP(i32 0)
  %12 = call i32 @cpsw_read_4(%struct.cpsw_softc* %10, i32 %11)
  %13 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 %12)
  %14 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %15 = call i32 @CPSW_CPDMA_TX_CP(i32 0)
  %16 = call i32 @cpsw_read_4(%struct.cpsw_softc* %14, i32 %15)
  %17 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 %16)
  %18 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %19 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %20 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = call i32 @cpsw_dump_queue(%struct.cpsw_softc* %18, i32* %21)
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %55, %1
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @CPSW_PORTS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %58

27:                                               ; preds = %23
  %28 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %29 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %35 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %55

39:                                               ; preds = %32, %27
  %40 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %41 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.cpswp_softc* @device_get_softc(i32 %47)
  store %struct.cpswp_softc* %48, %struct.cpswp_softc** %3, align 8
  %49 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %50 = call i32 @CPSW_PORT_LOCK(%struct.cpswp_softc* %49)
  %51 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %52 = call i32 @cpswp_stop_locked(%struct.cpswp_softc* %51)
  %53 = load %struct.cpswp_softc*, %struct.cpswp_softc** %3, align 8
  %54 = call i32 @CPSW_PORT_UNLOCK(%struct.cpswp_softc* %53)
  br label %55

55:                                               ; preds = %39, %38
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %23

58:                                               ; preds = %23
  ret void
}

declare dso_local i32 @cpsw_debugf_head(i8*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @cpsw_read_4(%struct.cpsw_softc*, i32) #1

declare dso_local i32 @CPSW_CPDMA_TX_HDP(i32) #1

declare dso_local i32 @CPSW_CPDMA_TX_CP(i32) #1

declare dso_local i32 @cpsw_dump_queue(%struct.cpsw_softc*, i32*) #1

declare dso_local %struct.cpswp_softc* @device_get_softc(i32) #1

declare dso_local i32 @CPSW_PORT_LOCK(%struct.cpswp_softc*) #1

declare dso_local i32 @cpswp_stop_locked(%struct.cpswp_softc*) #1

declare dso_local i32 @CPSW_PORT_UNLOCK(%struct.cpswp_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
