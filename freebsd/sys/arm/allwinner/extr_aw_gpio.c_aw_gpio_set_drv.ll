; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_gpio.c_aw_gpio_set_drv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_gpio.c_aw_gpio_set_drv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_gpio_softc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@AW_GPIO_DRV_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aw_gpio_softc*, i64, i64)* @aw_gpio_set_drv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aw_gpio_set_drv(%struct.aw_gpio_softc* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.aw_gpio_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.aw_gpio_softc* %0, %struct.aw_gpio_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i64 @aw_gpio_get_drv(%struct.aw_gpio_softc* %10, i64 %11)
  %13 = load i64, i64* %6, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %64

16:                                               ; preds = %3
  %17 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %4, align 8
  %18 = call i32 @AW_GPIO_LOCK_ASSERT(%struct.aw_gpio_softc* %17)
  %19 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %4, align 8
  %20 = getelementptr inbounds %struct.aw_gpio_softc, %struct.aw_gpio_softc* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %7, align 8
  %28 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %4, align 8
  %29 = getelementptr inbounds %struct.aw_gpio_softc, %struct.aw_gpio_softc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %5, align 8
  %38 = and i64 %37, 15
  %39 = shl i64 %38, 1
  store i64 %39, i64* %8, align 8
  %40 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %4, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %5, align 8
  %43 = lshr i64 %42, 4
  %44 = call i32 @AW_GPIO_GP_DRV(i64 %41, i64 %43)
  %45 = call i64 @AW_GPIO_READ(%struct.aw_gpio_softc* %40, i32 %44)
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* @AW_GPIO_DRV_MASK, align 8
  %47 = load i64, i64* %8, align 8
  %48 = shl i64 %46, %47
  %49 = xor i64 %48, -1
  %50 = load i64, i64* %9, align 8
  %51 = and i64 %50, %49
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* %8, align 8
  %54 = shl i64 %52, %53
  %55 = load i64, i64* %9, align 8
  %56 = or i64 %55, %54
  store i64 %56, i64* %9, align 8
  %57 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %4, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* %5, align 8
  %60 = lshr i64 %59, 4
  %61 = call i32 @AW_GPIO_GP_DRV(i64 %58, i64 %60)
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @AW_GPIO_WRITE(%struct.aw_gpio_softc* %57, i32 %61, i64 %62)
  br label %64

64:                                               ; preds = %16, %15
  ret void
}

declare dso_local i64 @aw_gpio_get_drv(%struct.aw_gpio_softc*, i64) #1

declare dso_local i32 @AW_GPIO_LOCK_ASSERT(%struct.aw_gpio_softc*) #1

declare dso_local i64 @AW_GPIO_READ(%struct.aw_gpio_softc*, i32) #1

declare dso_local i32 @AW_GPIO_GP_DRV(i64, i64) #1

declare dso_local i32 @AW_GPIO_WRITE(%struct.aw_gpio_softc*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
