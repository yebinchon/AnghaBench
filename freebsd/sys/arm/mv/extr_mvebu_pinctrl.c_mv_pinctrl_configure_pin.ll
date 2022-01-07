; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mvebu_pinctrl.c_mv_pinctrl_configure_pin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mvebu_pinctrl.c_mv_pinctrl_configure_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_pinctrl_softc = type { i32 }

@PINS_PER_REG = common dso_local global i32 0, align 4
@BITS_PER_PIN = common dso_local global i32 0, align 4
@PINS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv_pinctrl_softc*, i32, i32)* @mv_pinctrl_configure_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_pinctrl_configure_pin(%struct.mv_pinctrl_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mv_pinctrl_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mv_pinctrl_softc* %0, %struct.mv_pinctrl_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @PINS_PER_REG, align 4
  %12 = sdiv i32 %10, %11
  %13 = load i32, i32* @BITS_PER_PIN, align 4
  %14 = mul nsw i32 %12, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @PINS_PER_REG, align 4
  %17 = srem i32 %15, %16
  %18 = load i32, i32* @BITS_PER_PIN, align 4
  %19 = mul nsw i32 %17, %18
  store i32 %19, i32* %8, align 4
  %20 = load %struct.mv_pinctrl_softc*, %struct.mv_pinctrl_softc** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @RD4(%struct.mv_pinctrl_softc* %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* @PINS_MASK, align 4
  %24 = load i32, i32* %8, align 4
  %25 = shl i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %8, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* %9, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %9, align 4
  %34 = load %struct.mv_pinctrl_softc*, %struct.mv_pinctrl_softc** %4, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @WR4(%struct.mv_pinctrl_softc* %34, i32 %35, i32 %36)
  ret void
}

declare dso_local i32 @RD4(%struct.mv_pinctrl_softc*, i32) #1

declare dso_local i32 @WR4(%struct.mv_pinctrl_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
