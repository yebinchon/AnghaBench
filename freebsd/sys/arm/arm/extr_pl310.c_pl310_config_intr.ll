; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pl310.c_pl310_config_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pl310.c_pl310_config_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl310_softc = type { i32*, i32, i32, i32 }

@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@pl310_filter = common dso_local global i32 0, align 4
@PL310_EVENT_COUNTER0_CONF = common dso_local global i32 0, align 4
@EVENT_COUNTER_CONF_INCR = common dso_local global i32 0, align 4
@EVENT_COUNTER_CONF_CO = common dso_local global i32 0, align 4
@PL310_EVENT_COUNTER1_CONF = common dso_local global i32 0, align 4
@EVENT_COUNTER_CONF_DRREQ = common dso_local global i32 0, align 4
@PL310_INTR_CLEAR = common dso_local global i32 0, align 4
@INTR_MASK_ECNTR = common dso_local global i32 0, align 4
@PL310_INTR_MASK = common dso_local global i32 0, align 4
@INTR_MASK_ALL = common dso_local global i32 0, align 4
@PL310_EVENT_COUNTER_CTRL = common dso_local global i32 0, align 4
@EVENT_COUNTER_CTRL_ENABLED = common dso_local global i32 0, align 4
@EVENT_COUNTER_CTRL_C0_RESET = common dso_local global i32 0, align 4
@EVENT_COUNTER_CTRL_C1_RESET = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @pl310_config_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl310_config_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pl310_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.pl310_softc*
  store %struct.pl310_softc* %5, %struct.pl310_softc** %3, align 8
  %6 = load %struct.pl310_softc*, %struct.pl310_softc** %3, align 8
  %7 = getelementptr inbounds %struct.pl310_softc, %struct.pl310_softc* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.pl310_softc*, %struct.pl310_softc** %3, align 8
  %10 = getelementptr inbounds %struct.pl310_softc, %struct.pl310_softc* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @INTR_TYPE_MISC, align 4
  %13 = load i32, i32* @INTR_MPSAFE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @pl310_filter, align 4
  %16 = load %struct.pl310_softc*, %struct.pl310_softc** %3, align 8
  %17 = load %struct.pl310_softc*, %struct.pl310_softc** %3, align 8
  %18 = getelementptr inbounds %struct.pl310_softc, %struct.pl310_softc* %17, i32 0, i32 1
  %19 = call i32 @bus_setup_intr(i32 %8, i32 %11, i32 %14, i32 %15, i32* null, %struct.pl310_softc* %16, i32* %18)
  %20 = load %struct.pl310_softc*, %struct.pl310_softc** %3, align 8
  %21 = load i32, i32* @PL310_EVENT_COUNTER0_CONF, align 4
  %22 = load i32, i32* @EVENT_COUNTER_CONF_INCR, align 4
  %23 = load i32, i32* @EVENT_COUNTER_CONF_CO, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @pl310_write4(%struct.pl310_softc* %20, i32 %21, i32 %24)
  %26 = load %struct.pl310_softc*, %struct.pl310_softc** %3, align 8
  %27 = load i32, i32* @PL310_EVENT_COUNTER1_CONF, align 4
  %28 = load i32, i32* @EVENT_COUNTER_CONF_INCR, align 4
  %29 = load i32, i32* @EVENT_COUNTER_CONF_DRREQ, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @pl310_write4(%struct.pl310_softc* %26, i32 %27, i32 %30)
  %32 = load %struct.pl310_softc*, %struct.pl310_softc** %3, align 8
  %33 = load i32, i32* @PL310_INTR_CLEAR, align 4
  %34 = load i32, i32* @INTR_MASK_ECNTR, align 4
  %35 = call i32 @pl310_write4(%struct.pl310_softc* %32, i32 %33, i32 %34)
  %36 = load %struct.pl310_softc*, %struct.pl310_softc** %3, align 8
  %37 = load i32, i32* @PL310_INTR_MASK, align 4
  %38 = load i32, i32* @INTR_MASK_ALL, align 4
  %39 = call i32 @pl310_write4(%struct.pl310_softc* %36, i32 %37, i32 %38)
  %40 = load %struct.pl310_softc*, %struct.pl310_softc** %3, align 8
  %41 = load i32, i32* @PL310_EVENT_COUNTER_CTRL, align 4
  %42 = load i32, i32* @EVENT_COUNTER_CTRL_ENABLED, align 4
  %43 = load i32, i32* @EVENT_COUNTER_CTRL_C0_RESET, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @EVENT_COUNTER_CTRL_C1_RESET, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @pl310_write4(%struct.pl310_softc* %40, i32 %41, i32 %46)
  %48 = load %struct.pl310_softc*, %struct.pl310_softc** %3, align 8
  %49 = getelementptr inbounds %struct.pl310_softc, %struct.pl310_softc* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @config_intrhook_disestablish(i32* %50)
  %52 = load %struct.pl310_softc*, %struct.pl310_softc** %3, align 8
  %53 = getelementptr inbounds %struct.pl310_softc, %struct.pl310_softc* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* @M_DEVBUF, align 4
  %56 = call i32 @free(i32* %54, i32 %55)
  %57 = load %struct.pl310_softc*, %struct.pl310_softc** %3, align 8
  %58 = getelementptr inbounds %struct.pl310_softc, %struct.pl310_softc* %57, i32 0, i32 0
  store i32* null, i32** %58, align 8
  ret void
}

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32, i32*, %struct.pl310_softc*, i32*) #1

declare dso_local i32 @pl310_write4(%struct.pl310_softc*, i32, i32) #1

declare dso_local i32 @config_intrhook_disestablish(i32*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
