; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_prcm.c_am335x_clk_pruss_activate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_prcm.c_am335x_clk_pruss_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.am335x_prcm_softc = type { i32 }
%struct.ti_clock_dev = type { i32 }

@am335x_prcm_sc = common dso_local global %struct.am335x_prcm_softc* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@CM_PER_PRUSS_CLKCTRL = common dso_local global i32 0, align 4
@CM_PER_PRUSS_CLKSTCTRL = common dso_local global i32 0, align 4
@CLKSEL_PRUSS_OCP_CLK = common dso_local global i32 0, align 4
@PRM_PER_RSTCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_clock_dev*)* @am335x_clk_pruss_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am335x_clk_pruss_activate(%struct.ti_clock_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ti_clock_dev*, align 8
  %4 = alloca %struct.am335x_prcm_softc*, align 8
  store %struct.ti_clock_dev* %0, %struct.ti_clock_dev** %3, align 8
  %5 = load %struct.am335x_prcm_softc*, %struct.am335x_prcm_softc** @am335x_prcm_sc, align 8
  store %struct.am335x_prcm_softc* %5, %struct.am335x_prcm_softc** %4, align 8
  %6 = load %struct.am335x_prcm_softc*, %struct.am335x_prcm_softc** %4, align 8
  %7 = icmp eq %struct.am335x_prcm_softc* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @ENXIO, align 4
  store i32 %9, i32* %2, align 4
  br label %62

10:                                               ; preds = %1
  %11 = load i32, i32* @CM_PER_PRUSS_CLKCTRL, align 4
  %12 = call i32 @prcm_write_4(i32 %11, i32 2)
  br label %13

13:                                               ; preds = %18, %10
  %14 = load i32, i32* @CM_PER_PRUSS_CLKCTRL, align 4
  %15 = call i32 @prcm_read_4(i32 %14)
  %16 = and i32 %15, 3
  %17 = icmp ne i32 %16, 2
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = call i32 @DELAY(i32 10)
  br label %13

20:                                               ; preds = %13
  %21 = load i32, i32* @CM_PER_PRUSS_CLKSTCTRL, align 4
  %22 = call i32 @prcm_write_4(i32 %21, i32 2)
  br label %23

23:                                               ; preds = %28, %20
  %24 = load i32, i32* @CM_PER_PRUSS_CLKSTCTRL, align 4
  %25 = call i32 @prcm_read_4(i32 %24)
  %26 = and i32 %25, 16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 @DELAY(i32 10)
  br label %23

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %36, %30
  %32 = load i32, i32* @CM_PER_PRUSS_CLKSTCTRL, align 4
  %33 = call i32 @prcm_read_4(i32 %32)
  %34 = and i32 %33, 32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 @DELAY(i32 10)
  br label %31

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %44, %38
  %40 = load i32, i32* @CM_PER_PRUSS_CLKSTCTRL, align 4
  %41 = call i32 @prcm_read_4(i32 %40)
  %42 = and i32 %41, 64
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = call i32 @DELAY(i32 10)
  br label %39

46:                                               ; preds = %39
  %47 = load i32, i32* @CLKSEL_PRUSS_OCP_CLK, align 4
  %48 = call i32 @prcm_write_4(i32 %47, i32 0)
  br label %49

49:                                               ; preds = %54, %46
  %50 = load i32, i32* @CLKSEL_PRUSS_OCP_CLK, align 4
  %51 = call i32 @prcm_read_4(i32 %50)
  %52 = and i32 %51, 3
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call i32 @DELAY(i32 10)
  br label %49

56:                                               ; preds = %49
  %57 = load i32, i32* @PRM_PER_RSTCTRL, align 4
  %58 = load i32, i32* @PRM_PER_RSTCTRL, align 4
  %59 = call i32 @prcm_read_4(i32 %58)
  %60 = and i32 %59, -3
  %61 = call i32 @prcm_write_4(i32 %57, i32 %60)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %56, %8
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @prcm_write_4(i32, i32) #1

declare dso_local i32 @prcm_read_4(i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
