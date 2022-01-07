; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_gpio.c_aw_gpio_get_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_gpio.c_aw_gpio_get_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_gpio_softc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.aw_gpio_softc*, i64)* @aw_gpio_get_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @aw_gpio_get_function(%struct.aw_gpio_softc* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.aw_gpio_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.aw_gpio_softc* %0, %struct.aw_gpio_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %4, align 8
  %10 = call i32 @AW_GPIO_LOCK_ASSERT(%struct.aw_gpio_softc* %9)
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %4, align 8
  %13 = getelementptr inbounds %struct.aw_gpio_softc, %struct.aw_gpio_softc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ugt i64 %11, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %51

19:                                               ; preds = %2
  %20 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %4, align 8
  %21 = getelementptr inbounds %struct.aw_gpio_softc, %struct.aw_gpio_softc* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %6, align 8
  %29 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %4, align 8
  %30 = getelementptr inbounds %struct.aw_gpio_softc, %struct.aw_gpio_softc* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* %5, align 8
  %39 = and i64 %38, 7
  %40 = shl i64 %39, 2
  store i64 %40, i64* %8, align 8
  %41 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %4, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %5, align 8
  %44 = lshr i64 %43, 3
  %45 = call i32 @AW_GPIO_GP_CFG(i64 %42, i64 %44)
  %46 = call i64 @AW_GPIO_READ(%struct.aw_gpio_softc* %41, i32 %45)
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = lshr i64 %47, %48
  %50 = and i64 %49, 7
  store i64 %50, i64* %3, align 8
  br label %51

51:                                               ; preds = %19, %18
  %52 = load i64, i64* %3, align 8
  ret i64 %52
}

declare dso_local i32 @AW_GPIO_LOCK_ASSERT(%struct.aw_gpio_softc*) #1

declare dso_local i64 @AW_GPIO_READ(%struct.aw_gpio_softc*, i32) #1

declare dso_local i32 @AW_GPIO_GP_CFG(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
