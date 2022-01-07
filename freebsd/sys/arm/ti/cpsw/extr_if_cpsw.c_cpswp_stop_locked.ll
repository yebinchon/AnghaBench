; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpswp_stop_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpswp_stop_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpswp_softc = type { i32, i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@CPSW_SL_MACTL_GMII_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpswp_softc*)* @cpswp_stop_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpswp_stop_locked(%struct.cpswp_softc* %0) #0 {
  %2 = alloca %struct.cpswp_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  store %struct.cpswp_softc* %0, %struct.cpswp_softc** %2, align 8
  %5 = load %struct.cpswp_softc*, %struct.cpswp_softc** %2, align 8
  %6 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %5, i32 0, i32 3
  %7 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  store %struct.ifnet* %7, %struct.ifnet** %3, align 8
  %8 = load %struct.cpswp_softc*, %struct.cpswp_softc** %2, align 8
  %9 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @CPSW_DEBUGF(i32 %10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.cpswp_softc*, %struct.cpswp_softc** %2, align 8
  %13 = call i32 @CPSW_PORT_LOCK_ASSERT(%struct.cpswp_softc* %12)
  %14 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %15 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %90

21:                                               ; preds = %1
  %22 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %25 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %29 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %30 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load %struct.cpswp_softc*, %struct.cpswp_softc** %2, align 8
  %34 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %33, i32 0, i32 2
  %35 = call i32 @callout_stop(i32* %34)
  %36 = load %struct.cpswp_softc*, %struct.cpswp_softc** %2, align 8
  %37 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @cpsw_ports_down(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %21
  %42 = load %struct.cpswp_softc*, %struct.cpswp_softc** %2, align 8
  %43 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @cpsw_rx_teardown(i32 %44)
  %46 = load %struct.cpswp_softc*, %struct.cpswp_softc** %2, align 8
  %47 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @cpsw_tx_teardown(i32 %48)
  br label %50

50:                                               ; preds = %41, %21
  %51 = load %struct.cpswp_softc*, %struct.cpswp_softc** %2, align 8
  %52 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.cpswp_softc*, %struct.cpswp_softc** %2, align 8
  %55 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @CPSW_SL_MACCONTROL(i32 %56)
  %58 = call i32 @cpsw_read_4(i32 %53, i32 %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* @CPSW_SL_MACTL_GMII_ENABLE, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %4, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %4, align 4
  %63 = load %struct.cpswp_softc*, %struct.cpswp_softc** %2, align 8
  %64 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.cpswp_softc*, %struct.cpswp_softc** %2, align 8
  %67 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @CPSW_SL_MACCONTROL(i32 %68)
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @cpsw_write_4(i32 %65, i32 %69, i32 %70)
  %72 = load %struct.cpswp_softc*, %struct.cpswp_softc** %2, align 8
  %73 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @cpsw_ports_down(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %50
  %78 = load %struct.cpswp_softc*, %struct.cpswp_softc** %2, align 8
  %79 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @cpsw_stats_collect(i32 %80)
  %82 = load %struct.cpswp_softc*, %struct.cpswp_softc** %2, align 8
  %83 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @cpsw_reset(i32 %84)
  %86 = load %struct.cpswp_softc*, %struct.cpswp_softc** %2, align 8
  %87 = getelementptr inbounds %struct.cpswp_softc, %struct.cpswp_softc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @cpsw_init(i32 %88)
  br label %90

90:                                               ; preds = %20, %77, %50
  ret void
}

declare dso_local i32 @CPSW_DEBUGF(i32, i8*) #1

declare dso_local i32 @CPSW_PORT_LOCK_ASSERT(%struct.cpswp_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i64 @cpsw_ports_down(i32) #1

declare dso_local i32 @cpsw_rx_teardown(i32) #1

declare dso_local i32 @cpsw_tx_teardown(i32) #1

declare dso_local i32 @cpsw_read_4(i32, i32) #1

declare dso_local i32 @CPSW_SL_MACCONTROL(i32) #1

declare dso_local i32 @cpsw_write_4(i32, i32, i32) #1

declare dso_local i32 @cpsw_stats_collect(i32) #1

declare dso_local i32 @cpsw_reset(i32) #1

declare dso_local i32 @cpsw_init(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
