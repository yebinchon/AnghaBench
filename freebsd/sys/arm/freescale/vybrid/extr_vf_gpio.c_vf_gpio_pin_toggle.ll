; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_gpio.c_vf_gpio_pin_toggle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_gpio.c_vf_gpio_pin_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vf_gpio_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @vf_gpio_pin_toggle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vf_gpio_pin_toggle(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.vf_gpio_softc*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.vf_gpio_softc* @device_get_softc(i32 %8)
  store %struct.vf_gpio_softc* %9, %struct.vf_gpio_softc** %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %29, %2
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.vf_gpio_softc*, %struct.vf_gpio_softc** %6, align 8
  %13 = getelementptr inbounds %struct.vf_gpio_softc, %struct.vf_gpio_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %10
  %17 = load %struct.vf_gpio_softc*, %struct.vf_gpio_softc** %6, align 8
  %18 = getelementptr inbounds %struct.vf_gpio_softc, %struct.vf_gpio_softc* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %32

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %10

32:                                               ; preds = %27, %10
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.vf_gpio_softc*, %struct.vf_gpio_softc** %6, align 8
  %35 = getelementptr inbounds %struct.vf_gpio_softc, %struct.vf_gpio_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sge i32 %33, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %3, align 4
  br label %52

40:                                               ; preds = %32
  %41 = load %struct.vf_gpio_softc*, %struct.vf_gpio_softc** %6, align 8
  %42 = call i32 @GPIO_LOCK(%struct.vf_gpio_softc* %41)
  %43 = load %struct.vf_gpio_softc*, %struct.vf_gpio_softc** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @GPIO_PTOR(i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = srem i32 %46, 32
  %48 = shl i32 1, %47
  %49 = call i32 @WRITE4(%struct.vf_gpio_softc* %43, i32 %45, i32 %48)
  %50 = load %struct.vf_gpio_softc*, %struct.vf_gpio_softc** %6, align 8
  %51 = call i32 @GPIO_UNLOCK(%struct.vf_gpio_softc* %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %40, %38
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.vf_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @GPIO_LOCK(%struct.vf_gpio_softc*) #1

declare dso_local i32 @WRITE4(%struct.vf_gpio_softc*, i32, i32) #1

declare dso_local i32 @GPIO_PTOR(i32) #1

declare dso_local i32 @GPIO_UNLOCK(%struct.vf_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
