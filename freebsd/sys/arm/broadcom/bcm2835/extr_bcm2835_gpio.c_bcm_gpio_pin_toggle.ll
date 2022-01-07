; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_gpio.c_bcm_gpio_pin_toggle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_gpio.c_bcm_gpio_pin_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_gpio_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @bcm_gpio_pin_toggle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_gpio_pin_toggle(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bcm_gpio_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.bcm_gpio_softc* @device_get_softc(i32 %11)
  store %struct.bcm_gpio_softc* %12, %struct.bcm_gpio_softc** %6, align 8
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %32, %2
  %14 = load i32, i32* %10, align 4
  %15 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %6, align 8
  %16 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %13
  %20 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %6, align 8
  %21 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %35

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %10, align 4
  br label %13

35:                                               ; preds = %30, %13
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %6, align 8
  %38 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sge i32 %36, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %3, align 4
  br label %78

43:                                               ; preds = %35
  %44 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %6, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @bcm_gpio_pin_is_ro(%struct.bcm_gpio_softc* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* %3, align 4
  br label %78

50:                                               ; preds = %43
  %51 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %6, align 8
  %52 = call i32 @BCM_GPIO_LOCK(%struct.bcm_gpio_softc* %51)
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @BCM_GPIO_BANK(i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @BCM_GPIO_GPLEV(i32 %56)
  %58 = call i32 @BCM_GPIO_READ(%struct.bcm_gpio_softc* %55, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @BCM_GPIO_MASK(i32 %60)
  %62 = and i32 %59, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %50
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @BCM_GPIO_GPCLR(i32 %65)
  store i32 %66, i32* %9, align 4
  br label %70

67:                                               ; preds = %50
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @BCM_GPIO_GPSET(i32 %68)
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %67, %64
  %71 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %6, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @BCM_GPIO_MASK(i32 %73)
  %75 = call i32 @BCM_GPIO_WRITE(%struct.bcm_gpio_softc* %71, i32 %72, i32 %74)
  %76 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %6, align 8
  %77 = call i32 @BCM_GPIO_UNLOCK(%struct.bcm_gpio_softc* %76)
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %70, %48, %41
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.bcm_gpio_softc* @device_get_softc(i32) #1

declare dso_local i64 @bcm_gpio_pin_is_ro(%struct.bcm_gpio_softc*, i32) #1

declare dso_local i32 @BCM_GPIO_LOCK(%struct.bcm_gpio_softc*) #1

declare dso_local i32 @BCM_GPIO_BANK(i32) #1

declare dso_local i32 @BCM_GPIO_READ(%struct.bcm_gpio_softc*, i32) #1

declare dso_local i32 @BCM_GPIO_GPLEV(i32) #1

declare dso_local i32 @BCM_GPIO_MASK(i32) #1

declare dso_local i32 @BCM_GPIO_GPCLR(i32) #1

declare dso_local i32 @BCM_GPIO_GPSET(i32) #1

declare dso_local i32 @BCM_GPIO_WRITE(%struct.bcm_gpio_softc*, i32, i32) #1

declare dso_local i32 @BCM_GPIO_UNLOCK(%struct.bcm_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
