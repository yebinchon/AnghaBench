; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_gpio.c_ti_gpio_pic_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_gpio.c_ti_gpio_pic_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_irqsrc = type { i64 }
%struct.resource = type { i32 }
%struct.intr_map_data = type { i32 }
%struct.ti_gpio_softc = type { i32 }
%struct.ti_gpio_irqsrc = type { i64, i64 }

@ENOTSUP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.intr_irqsrc*, %struct.resource*, %struct.intr_map_data*)* @ti_gpio_pic_setup_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_gpio_pic_setup_intr(i32 %0, %struct.intr_irqsrc* %1, %struct.resource* %2, %struct.intr_map_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.intr_irqsrc*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.intr_map_data*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ti_gpio_softc*, align 8
  %13 = alloca %struct.ti_gpio_irqsrc*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.intr_irqsrc* %1, %struct.intr_irqsrc** %7, align 8
  store %struct.resource* %2, %struct.resource** %8, align 8
  store %struct.intr_map_data* %3, %struct.intr_map_data** %9, align 8
  %14 = load %struct.intr_map_data*, %struct.intr_map_data** %9, align 8
  %15 = icmp eq %struct.intr_map_data* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOTSUP, align 4
  store i32 %17, i32* %5, align 4
  br label %56

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  %20 = call %struct.ti_gpio_softc* @device_get_softc(i32 %19)
  store %struct.ti_gpio_softc* %20, %struct.ti_gpio_softc** %12, align 8
  %21 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %7, align 8
  %22 = bitcast %struct.intr_irqsrc* %21 to %struct.ti_gpio_irqsrc*
  store %struct.ti_gpio_irqsrc* %22, %struct.ti_gpio_irqsrc** %13, align 8
  %23 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %12, align 8
  %24 = load %struct.intr_map_data*, %struct.intr_map_data** %9, align 8
  %25 = call i64 @ti_gpio_pic_map(%struct.ti_gpio_softc* %23, %struct.intr_map_data* %24, i64* %10, i64* %11)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %18
  %28 = load %struct.ti_gpio_irqsrc*, %struct.ti_gpio_irqsrc** %13, align 8
  %29 = getelementptr inbounds %struct.ti_gpio_irqsrc, %struct.ti_gpio_irqsrc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %10, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27, %18
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %5, align 4
  br label %56

35:                                               ; preds = %27
  %36 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %7, align 8
  %37 = getelementptr inbounds %struct.intr_irqsrc, %struct.intr_irqsrc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load %struct.ti_gpio_irqsrc*, %struct.ti_gpio_irqsrc** %13, align 8
  %42 = getelementptr inbounds %struct.ti_gpio_irqsrc, %struct.ti_gpio_irqsrc* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %11, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @EINVAL, align 4
  br label %49

49:                                               ; preds = %47, %46
  %50 = phi i32 [ 0, %46 ], [ %48, %47 ]
  store i32 %50, i32* %5, align 4
  br label %56

51:                                               ; preds = %35
  %52 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %12, align 8
  %53 = load %struct.ti_gpio_irqsrc*, %struct.ti_gpio_irqsrc** %13, align 8
  %54 = load i64, i64* %11, align 8
  %55 = call i32 @ti_gpio_pic_config_intr(%struct.ti_gpio_softc* %52, %struct.ti_gpio_irqsrc* %53, i64 %54)
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %51, %49, %33, %16
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local %struct.ti_gpio_softc* @device_get_softc(i32) #1

declare dso_local i64 @ti_gpio_pic_map(%struct.ti_gpio_softc*, %struct.intr_map_data*, i64*, i64*) #1

declare dso_local i32 @ti_gpio_pic_config_intr(%struct.ti_gpio_softc*, %struct.ti_gpio_irqsrc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
