; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_gpio.c_aw_gpio_pin_set_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_gpio.c_aw_gpio_pin_set_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_gpio_softc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aw_gpio_softc*, i64, i32)* @aw_gpio_pin_set_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_gpio_pin_set_locked(%struct.aw_gpio_softc* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aw_gpio_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.aw_gpio_softc* %0, %struct.aw_gpio_softc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %5, align 8
  %11 = call i32 @AW_GPIO_LOCK_ASSERT(%struct.aw_gpio_softc* %10)
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %5, align 8
  %14 = getelementptr inbounds %struct.aw_gpio_softc, %struct.aw_gpio_softc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ugt i64 %12, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %4, align 4
  br label %67

21:                                               ; preds = %3
  %22 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %5, align 8
  %23 = getelementptr inbounds %struct.aw_gpio_softc, %struct.aw_gpio_softc* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %8, align 8
  %31 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %5, align 8
  %32 = getelementptr inbounds %struct.aw_gpio_softc, %struct.aw_gpio_softc* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %6, align 8
  %40 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %5, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @AW_GPIO_GP_DAT(i64 %41)
  %43 = call i64 @AW_GPIO_READ(%struct.aw_gpio_softc* %40, i32 %42)
  store i64 %43, i64* %9, align 8
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %21
  %47 = load i64, i64* %6, align 8
  %48 = trunc i64 %47 to i32
  %49 = shl i32 1, %48
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %9, align 8
  %52 = or i64 %51, %50
  store i64 %52, i64* %9, align 8
  br label %61

53:                                               ; preds = %21
  %54 = load i64, i64* %6, align 8
  %55 = trunc i64 %54 to i32
  %56 = shl i32 1, %55
  %57 = xor i32 %56, -1
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %9, align 8
  %60 = and i64 %59, %58
  store i64 %60, i64* %9, align 8
  br label %61

61:                                               ; preds = %53, %46
  %62 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %5, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @AW_GPIO_GP_DAT(i64 %63)
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @AW_GPIO_WRITE(%struct.aw_gpio_softc* %62, i32 %64, i64 %65)
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %61, %19
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @AW_GPIO_LOCK_ASSERT(%struct.aw_gpio_softc*) #1

declare dso_local i64 @AW_GPIO_READ(%struct.aw_gpio_softc*, i32) #1

declare dso_local i32 @AW_GPIO_GP_DAT(i64) #1

declare dso_local i32 @AW_GPIO_WRITE(%struct.aw_gpio_softc*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
