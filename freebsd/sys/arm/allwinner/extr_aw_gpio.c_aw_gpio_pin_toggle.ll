; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_gpio.c_aw_gpio_pin_toggle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_gpio.c_aw_gpio_pin_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_gpio_softc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @aw_gpio_pin_toggle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_gpio_pin_toggle(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.aw_gpio_softc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.aw_gpio_softc* @device_get_softc(i32 %9)
  store %struct.aw_gpio_softc* %10, %struct.aw_gpio_softc** %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %6, align 8
  %13 = getelementptr inbounds %struct.aw_gpio_softc, %struct.aw_gpio_softc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ugt i64 %11, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %3, align 4
  br label %75

20:                                               ; preds = %2
  %21 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %6, align 8
  %22 = getelementptr inbounds %struct.aw_gpio_softc, %struct.aw_gpio_softc* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %7, align 8
  %30 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %6, align 8
  %31 = getelementptr inbounds %struct.aw_gpio_softc, %struct.aw_gpio_softc* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %5, align 8
  %39 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %6, align 8
  %40 = call i32 @AW_GPIO_LOCK(%struct.aw_gpio_softc* %39)
  %41 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @AW_GPIO_GP_DAT(i64 %42)
  %44 = call i64 @AW_GPIO_READ(%struct.aw_gpio_softc* %41, i32 %43)
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %5, align 8
  %47 = trunc i64 %46 to i32
  %48 = shl i32 1, %47
  %49 = sext i32 %48 to i64
  %50 = and i64 %45, %49
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %20
  %53 = load i64, i64* %5, align 8
  %54 = trunc i64 %53 to i32
  %55 = shl i32 1, %54
  %56 = xor i32 %55, -1
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %8, align 8
  %59 = and i64 %58, %57
  store i64 %59, i64* %8, align 8
  br label %67

60:                                               ; preds = %20
  %61 = load i64, i64* %5, align 8
  %62 = trunc i64 %61 to i32
  %63 = shl i32 1, %62
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %8, align 8
  %66 = or i64 %65, %64
  store i64 %66, i64* %8, align 8
  br label %67

67:                                               ; preds = %60, %52
  %68 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %6, align 8
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @AW_GPIO_GP_DAT(i64 %69)
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @AW_GPIO_WRITE(%struct.aw_gpio_softc* %68, i32 %70, i64 %71)
  %73 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %6, align 8
  %74 = call i32 @AW_GPIO_UNLOCK(%struct.aw_gpio_softc* %73)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %67, %18
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.aw_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @AW_GPIO_LOCK(%struct.aw_gpio_softc*) #1

declare dso_local i64 @AW_GPIO_READ(%struct.aw_gpio_softc*, i32) #1

declare dso_local i32 @AW_GPIO_GP_DAT(i64) #1

declare dso_local i32 @AW_GPIO_WRITE(%struct.aw_gpio_softc*, i32, i64) #1

declare dso_local i32 @AW_GPIO_UNLOCK(%struct.aw_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
