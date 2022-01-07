; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_prcm.c_am335x_prcm_new_pass.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_prcm.c_am335x_prcm_new_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.am335x_prcm_softc = type { i32 }

@bus_current_pass = common dso_local global i64 0, align 8
@BUS_PASS_TIMER = common dso_local global i64 0, align 8
@BUS_PASS_ORDER_EARLY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Clocks: System %u.%01u MHz, CPU %u MHz\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"can't read frequencies yet (SCM device not ready?)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @am335x_prcm_new_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @am335x_prcm_new_pass(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.am335x_prcm_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.am335x_prcm_softc* @device_get_softc(i32 %6)
  store %struct.am335x_prcm_softc* %7, %struct.am335x_prcm_softc** %3, align 8
  %8 = load i32, i32* %2, align 4
  %9 = call %struct.am335x_prcm_softc* @device_get_softc(i32 %8)
  store %struct.am335x_prcm_softc* %9, %struct.am335x_prcm_softc** %3, align 8
  %10 = load %struct.am335x_prcm_softc*, %struct.am335x_prcm_softc** %3, align 8
  %11 = getelementptr inbounds %struct.am335x_prcm_softc, %struct.am335x_prcm_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load i64, i64* @bus_current_pass, align 8
  %16 = load i64, i64* @BUS_PASS_TIMER, align 8
  %17 = load i64, i64* @BUS_PASS_ORDER_EARLY, align 8
  %18 = add nsw i64 %16, %17
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14, %1
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @bus_generic_new_pass(i32 %21)
  br label %56

23:                                               ; preds = %14
  %24 = load %struct.am335x_prcm_softc*, %struct.am335x_prcm_softc** %3, align 8
  %25 = getelementptr inbounds %struct.am335x_prcm_softc, %struct.am335x_prcm_softc* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = call i64 @am335x_clk_get_sysclk_freq(i32* null, i32* %4)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %28, %23
  %30 = call i64 @am335x_clk_get_arm_fclk_freq(i32* null, i32* %5)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* %4, align 4
  %42 = udiv i32 %41, 1000000
  %43 = load i32, i32* %4, align 4
  %44 = urem i32 %43, 1000000
  %45 = udiv i32 %44, 100000
  %46 = load i32, i32* %5, align 4
  %47 = udiv i32 %46, 1000000
  %48 = call i32 (i32, i8*, ...) @device_printf(i32 %40, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45, i32 %47)
  br label %52

49:                                               ; preds = %36, %33
  %50 = load i32, i32* %2, align 4
  %51 = call i32 (i32, i8*, ...) @device_printf(i32 %50, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %53

52:                                               ; preds = %39
  br label %56

53:                                               ; preds = %49
  %54 = load i32, i32* %2, align 4
  %55 = call i32 @device_detach(i32 %54)
  br label %56

56:                                               ; preds = %53, %52, %20
  ret void
}

declare dso_local %struct.am335x_prcm_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_generic_new_pass(i32) #1

declare dso_local i64 @am335x_clk_get_sysclk_freq(i32*, i32*) #1

declare dso_local i64 @am335x_clk_get_arm_fclk_freq(i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @device_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
