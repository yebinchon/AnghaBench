; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_gpio.c_bcm_gpio_pin_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_gpio.c_bcm_gpio_pin_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_gpio_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32*)* @bcm_gpio_pin_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_gpio_pin_get(i32 %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.bcm_gpio_softc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.bcm_gpio_softc* @device_get_softc(i32 %12)
  store %struct.bcm_gpio_softc* %13, %struct.bcm_gpio_softc** %8, align 8
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %33, %3
  %15 = load i32, i32* %11, align 4
  %16 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %8, align 8
  %17 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %8, align 8
  %22 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %36

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %11, align 4
  br label %14

36:                                               ; preds = %31, %14
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %8, align 8
  %39 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sge i32 %37, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* %4, align 4
  br label %63

44:                                               ; preds = %36
  %45 = load i64, i64* %6, align 8
  %46 = call i64 @BCM_GPIO_BANK(i64 %45)
  store i64 %46, i64* %9, align 8
  %47 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %8, align 8
  %48 = call i32 @BCM_GPIO_LOCK(%struct.bcm_gpio_softc* %47)
  %49 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %8, align 8
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @BCM_GPIO_GPLEV(i64 %50)
  %52 = call i64 @BCM_GPIO_READ(%struct.bcm_gpio_softc* %49, i32 %51)
  store i64 %52, i64* %10, align 8
  %53 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %8, align 8
  %54 = call i32 @BCM_GPIO_UNLOCK(%struct.bcm_gpio_softc* %53)
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* %6, align 8
  %57 = call i64 @BCM_GPIO_MASK(i64 %56)
  %58 = and i64 %55, %57
  %59 = icmp ne i64 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 1, i32 0
  %62 = load i32*, i32** %7, align 8
  store i32 %61, i32* %62, align 4
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %44, %42
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.bcm_gpio_softc* @device_get_softc(i32) #1

declare dso_local i64 @BCM_GPIO_BANK(i64) #1

declare dso_local i32 @BCM_GPIO_LOCK(%struct.bcm_gpio_softc*) #1

declare dso_local i64 @BCM_GPIO_READ(%struct.bcm_gpio_softc*, i32) #1

declare dso_local i32 @BCM_GPIO_GPLEV(i64) #1

declare dso_local i32 @BCM_GPIO_UNLOCK(%struct.bcm_gpio_softc*) #1

declare dso_local i64 @BCM_GPIO_MASK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
