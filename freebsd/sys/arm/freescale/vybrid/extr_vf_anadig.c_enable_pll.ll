; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_anadig.c_enable_pll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_anadig.c_enable_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anadig_softc = type { i32 }

@CTRL_BYPASS = common dso_local global i32 0, align 4
@CTRL_PWR = common dso_local global i32 0, align 4
@ANADIG_PLL3_CTRL = common dso_local global i32 0, align 4
@ANADIG_PLL7_CTRL = common dso_local global i32 0, align 4
@EN_USB_CLKS = common dso_local global i32 0, align 4
@ANADIG_PLL_LOCKED = common dso_local global i32 0, align 4
@CTRL_PLL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.anadig_softc*, i32)* @enable_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_pll(%struct.anadig_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.anadig_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.anadig_softc* %0, %struct.anadig_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.anadig_softc*, %struct.anadig_softc** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @READ4(%struct.anadig_softc* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @CTRL_BYPASS, align 4
  %10 = load i32, i32* @CTRL_PWR, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @ANADIG_PLL3_CTRL, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @ANADIG_PLL7_CTRL, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %18, %2
  %23 = load i32, i32* @CTRL_PWR, align 4
  %24 = load i32, i32* @EN_USB_CLKS, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %22, %18
  %29 = load %struct.anadig_softc*, %struct.anadig_softc** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @WRITE4(%struct.anadig_softc* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %41, %28
  %34 = load %struct.anadig_softc*, %struct.anadig_softc** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @READ4(%struct.anadig_softc* %34, i32 %35)
  %37 = load i32, i32* @ANADIG_PLL_LOCKED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %33

42:                                               ; preds = %33
  %43 = load %struct.anadig_softc*, %struct.anadig_softc** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @READ4(%struct.anadig_softc* %43, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* @CTRL_PLL_EN, align 4
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load %struct.anadig_softc*, %struct.anadig_softc** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @WRITE4(%struct.anadig_softc* %49, i32 %50, i32 %51)
  ret i32 0
}

declare dso_local i32 @READ4(%struct.anadig_softc*, i32) #1

declare dso_local i32 @WRITE4(%struct.anadig_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
