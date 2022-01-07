; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_gpio.c_bcm_gpio_pic_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_gpio.c_bcm_gpio_pic_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_gpio_softc = type { i32 }
%struct.intr_map_data = type { i32 }
%struct.intr_map_data_fdt = type { i32 }
%struct.intr_map_data_gpio = type { i32 }

@ENOTSUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_gpio_softc*, %struct.intr_map_data*, i32*, i32*)* @bcm_gpio_pic_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_gpio_pic_map(%struct.bcm_gpio_softc* %0, %struct.intr_map_data* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bcm_gpio_softc*, align 8
  %7 = alloca %struct.intr_map_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.bcm_gpio_softc* %0, %struct.bcm_gpio_softc** %6, align 8
  store %struct.intr_map_data* %1, %struct.intr_map_data** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load %struct.intr_map_data*, %struct.intr_map_data** %7, align 8
  %11 = getelementptr inbounds %struct.intr_map_data, %struct.intr_map_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %27 [
    i32 129, label %13
    i32 128, label %20
  ]

13:                                               ; preds = %4
  %14 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %6, align 8
  %15 = load %struct.intr_map_data*, %struct.intr_map_data** %7, align 8
  %16 = bitcast %struct.intr_map_data* %15 to %struct.intr_map_data_fdt*
  %17 = load i32*, i32** %8, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = call i32 @bcm_gpio_pic_map_fdt(%struct.bcm_gpio_softc* %14, %struct.intr_map_data_fdt* %16, i32* %17, i32* %18)
  store i32 %19, i32* %5, align 4
  br label %29

20:                                               ; preds = %4
  %21 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %6, align 8
  %22 = load %struct.intr_map_data*, %struct.intr_map_data** %7, align 8
  %23 = bitcast %struct.intr_map_data* %22 to %struct.intr_map_data_gpio*
  %24 = load i32*, i32** %8, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @bcm_gpio_pic_map_gpio(%struct.bcm_gpio_softc* %21, %struct.intr_map_data_gpio* %23, i32* %24, i32* %25)
  store i32 %26, i32* %5, align 4
  br label %29

27:                                               ; preds = %4
  %28 = load i32, i32* @ENOTSUP, align 4
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %27, %20, %13
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local i32 @bcm_gpio_pic_map_fdt(%struct.bcm_gpio_softc*, %struct.intr_map_data_fdt*, i32*, i32*) #1

declare dso_local i32 @bcm_gpio_pic_map_gpio(%struct.bcm_gpio_softc*, %struct.intr_map_data_gpio*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
