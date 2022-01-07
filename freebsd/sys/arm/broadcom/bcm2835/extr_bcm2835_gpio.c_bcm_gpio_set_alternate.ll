; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_gpio.c_bcm_gpio_set_alternate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_gpio.c_bcm_gpio_set_alternate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_gpio_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @bcm_gpio_set_alternate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_gpio_set_alternate(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bcm_gpio_softc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.bcm_gpio_softc* @device_get_softc(i32 %9)
  store %struct.bcm_gpio_softc* %10, %struct.bcm_gpio_softc** %7, align 8
  %11 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %7, align 8
  %12 = call i32 @BCM_GPIO_LOCK(%struct.bcm_gpio_softc* %11)
  %13 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @bcm_gpio_set_function(%struct.bcm_gpio_softc* %13, i32 %14, i32 %15)
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %36, %3
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %7, align 8
  %20 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %17
  %24 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %7, align 8
  %25 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %39

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %17

39:                                               ; preds = %34, %17
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %7, align 8
  %42 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @bcm_gpio_func_flag(i32 %46)
  %48 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %7, align 8
  %49 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %47, i32* %54, align 4
  br label %55

55:                                               ; preds = %45, %39
  %56 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %7, align 8
  %57 = call i32 @BCM_GPIO_UNLOCK(%struct.bcm_gpio_softc* %56)
  ret void
}

declare dso_local %struct.bcm_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @BCM_GPIO_LOCK(%struct.bcm_gpio_softc*) #1

declare dso_local i32 @bcm_gpio_set_function(%struct.bcm_gpio_softc*, i32, i32) #1

declare dso_local i32 @bcm_gpio_func_flag(i32) #1

declare dso_local i32 @BCM_GPIO_UNLOCK(%struct.bcm_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
