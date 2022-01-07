; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/omap4/extr_omap4_prcm_clks.c_omap4_prcm_new_pass.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/omap4/extr_omap4_prcm_clks.c_omap4_prcm_new_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap4_prcm_softc = type { i32 }

@bus_current_pass = common dso_local global i64 0, align 8
@BUS_PASS_TIMER = common dso_local global i64 0, align 8
@BUS_PASS_ORDER_EARLY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @omap4_prcm_new_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap4_prcm_new_pass(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap4_prcm_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.omap4_prcm_softc* @device_get_softc(i32 %5)
  store %struct.omap4_prcm_softc* %6, %struct.omap4_prcm_softc** %3, align 8
  %7 = load %struct.omap4_prcm_softc*, %struct.omap4_prcm_softc** %3, align 8
  %8 = getelementptr inbounds %struct.omap4_prcm_softc, %struct.omap4_prcm_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load i64, i64* @bus_current_pass, align 8
  %13 = load i64, i64* @BUS_PASS_TIMER, align 8
  %14 = load i64, i64* @BUS_PASS_ORDER_EARLY, align 8
  %15 = add nsw i64 %13, %14
  %16 = icmp slt i64 %12, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11, %1
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @bus_generic_new_pass(i32 %18)
  br label %32

20:                                               ; preds = %11
  %21 = load %struct.omap4_prcm_softc*, %struct.omap4_prcm_softc** %3, align 8
  %22 = getelementptr inbounds %struct.omap4_prcm_softc, %struct.omap4_prcm_softc* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @device_get_unit(i32 %23)
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = call i32 @omap4_clk_get_arm_fclk_freq(i32* null, i32* %4)
  %28 = load i32, i32* %4, align 4
  %29 = udiv i32 %28, 2
  %30 = call i32 @arm_tmr_change_frequency(i32 %29)
  br label %31

31:                                               ; preds = %26, %20
  br label %32

32:                                               ; preds = %31, %17
  ret void
}

declare dso_local %struct.omap4_prcm_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_generic_new_pass(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @omap4_clk_get_arm_fclk_freq(i32*, i32*) #1

declare dso_local i32 @arm_tmr_change_frequency(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
