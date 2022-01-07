; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_gpio.c_imx51_gpio_pin_getname.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_gpio.c_imx51_gpio_pin_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx51_gpio_softc = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GPIOMAXNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i8*)* @imx51_gpio_pin_getname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx51_gpio_pin_getname(i32 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.imx51_gpio_softc*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.imx51_gpio_softc* @device_get_softc(i32 %9)
  store %struct.imx51_gpio_softc* %10, %struct.imx51_gpio_softc** %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %8, align 8
  %13 = getelementptr inbounds %struct.imx51_gpio_softc, %struct.imx51_gpio_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp uge i64 %11, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %4, align 4
  br label %35

18:                                               ; preds = %3
  %19 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %8, align 8
  %20 = getelementptr inbounds %struct.imx51_gpio_softc, %struct.imx51_gpio_softc* %19, i32 0, i32 1
  %21 = call i32 @mtx_lock_spin(i32* %20)
  %22 = load i8*, i8** %7, align 8
  %23 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %8, align 8
  %24 = getelementptr inbounds %struct.imx51_gpio_softc, %struct.imx51_gpio_softc* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @GPIOMAXNAME, align 4
  %31 = call i32 @memcpy(i8* %22, i32 %29, i32 %30)
  %32 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %8, align 8
  %33 = getelementptr inbounds %struct.imx51_gpio_softc, %struct.imx51_gpio_softc* %32, i32 0, i32 1
  %34 = call i32 @mtx_unlock_spin(i32* %33)
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %18, %16
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.imx51_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
