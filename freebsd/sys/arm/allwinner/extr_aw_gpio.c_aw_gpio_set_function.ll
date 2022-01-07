; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_gpio.c_aw_gpio_set_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_gpio.c_aw_gpio_set_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_gpio_softc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i32** }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aw_gpio_softc*, i64, i64)* @aw_gpio_set_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_gpio_set_function(%struct.aw_gpio_softc* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aw_gpio_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.aw_gpio_softc* %0, %struct.aw_gpio_softc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %5, align 8
  %12 = getelementptr inbounds %struct.aw_gpio_softc, %struct.aw_gpio_softc* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i32**, i32*** %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds i32*, i32** %19, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %4, align 4
  br label %75

26:                                               ; preds = %3
  %27 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %5, align 8
  %28 = call i32 @AW_GPIO_LOCK_ASSERT(%struct.aw_gpio_softc* %27)
  %29 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %5, align 8
  %30 = getelementptr inbounds %struct.aw_gpio_softc, %struct.aw_gpio_softc* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %8, align 8
  %38 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %5, align 8
  %39 = getelementptr inbounds %struct.aw_gpio_softc, %struct.aw_gpio_softc* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %6, align 8
  %48 = and i64 %47, 7
  %49 = shl i64 %48, 2
  store i64 %49, i64* %10, align 8
  %50 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %5, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %6, align 8
  %53 = lshr i64 %52, 3
  %54 = call i32 @AW_GPIO_GP_CFG(i64 %51, i64 %53)
  %55 = call i64 @AW_GPIO_READ(%struct.aw_gpio_softc* %50, i32 %54)
  store i64 %55, i64* %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = trunc i64 %56 to i32
  %58 = shl i32 7, %57
  %59 = xor i32 %58, -1
  %60 = sext i32 %59 to i64
  %61 = load i64, i64* %9, align 8
  %62 = and i64 %61, %60
  store i64 %62, i64* %9, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %10, align 8
  %65 = shl i64 %63, %64
  %66 = load i64, i64* %9, align 8
  %67 = or i64 %66, %65
  store i64 %67, i64* %9, align 8
  %68 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %5, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* %6, align 8
  %71 = lshr i64 %70, 3
  %72 = call i32 @AW_GPIO_GP_CFG(i64 %69, i64 %71)
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @AW_GPIO_WRITE(%struct.aw_gpio_softc* %68, i32 %72, i64 %73)
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %26, %24
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @AW_GPIO_LOCK_ASSERT(%struct.aw_gpio_softc*) #1

declare dso_local i64 @AW_GPIO_READ(%struct.aw_gpio_softc*, i32) #1

declare dso_local i32 @AW_GPIO_GP_CFG(i64, i64) #1

declare dso_local i32 @AW_GPIO_WRITE(%struct.aw_gpio_softc*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
