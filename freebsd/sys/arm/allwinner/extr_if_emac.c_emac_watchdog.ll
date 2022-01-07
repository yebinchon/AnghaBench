; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_emac.c_emac_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_emac.c_emac_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_softc = type { i64, i64, %struct.ifnet* }
%struct.ifnet = type { i32, i32 }

@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"watchdog timeout (missed link)\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"watchdog timeout -- resetting\0A\00", align 1
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emac_softc*)* @emac_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_watchdog(%struct.emac_softc* %0) #0 {
  %2 = alloca %struct.emac_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  store %struct.emac_softc* %0, %struct.emac_softc** %2, align 8
  %4 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %5 = call i32 @EMAC_ASSERT_LOCKED(%struct.emac_softc* %4)
  %6 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %7 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %12 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, -1
  store i64 %14, i64* %12, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %1
  br label %58

17:                                               ; preds = %10
  %18 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %19 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %18, i32 0, i32 2
  %20 = load %struct.ifnet*, %struct.ifnet** %19, align 8
  store %struct.ifnet* %20, %struct.ifnet** %3, align 8
  %21 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %22 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %17
  %26 = load i64, i64* @bootverbose, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %30 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %29, i32 0, i32 2
  %31 = load %struct.ifnet*, %struct.ifnet** %30, align 8
  %32 = call i32 @if_printf(%struct.ifnet* %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %28, %25
  br label %39

34:                                               ; preds = %17
  %35 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %36 = getelementptr inbounds %struct.emac_softc, %struct.emac_softc* %35, i32 0, i32 2
  %37 = load %struct.ifnet*, %struct.ifnet** %36, align 8
  %38 = call i32 @if_printf(%struct.ifnet* %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %34, %33
  %40 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %41 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %42 = call i32 @if_inc_counter(%struct.ifnet* %40, i32 %41, i32 1)
  %43 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %46 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load %struct.emac_softc*, %struct.emac_softc** %2, align 8
  %50 = call i32 @emac_init_locked(%struct.emac_softc* %49)
  %51 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %52 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %51, i32 0, i32 0
  %53 = call i32 @IFQ_DRV_IS_EMPTY(i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %39
  %56 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %57 = call i32 @emac_start_locked(%struct.ifnet* %56)
  br label %58

58:                                               ; preds = %16, %55, %39
  ret void
}

declare dso_local i32 @EMAC_ASSERT_LOCKED(%struct.emac_softc*) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @emac_init_locked(%struct.emac_softc*) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @emac_start_locked(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
