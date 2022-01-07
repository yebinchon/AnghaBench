; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_gpio.c_tegra_gpio_pic_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_gpio.c_tegra_gpio_pic_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_gpio_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i64 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s,%u\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_gpio_softc*)* @tegra_gpio_pic_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_gpio_pic_attach(%struct.tegra_gpio_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_gpio_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.tegra_gpio_softc* %0, %struct.tegra_gpio_softc** %3, align 8
  %7 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %3, align 8
  %8 = getelementptr inbounds %struct.tegra_gpio_softc, %struct.tegra_gpio_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = mul i64 24, %10
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* @M_DEVBUF, align 4
  %14 = load i32, i32* @M_WAITOK, align 4
  %15 = load i32, i32* @M_ZERO, align 4
  %16 = or i32 %14, %15
  %17 = call %struct.TYPE_2__* @malloc(i32 %12, i32 %13, i32 %16)
  %18 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %3, align 8
  %19 = getelementptr inbounds %struct.tegra_gpio_softc, %struct.tegra_gpio_softc* %18, i32 0, i32 2
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %19, align 8
  %20 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %3, align 8
  %21 = getelementptr inbounds %struct.tegra_gpio_softc, %struct.tegra_gpio_softc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @device_get_nameunit(i32 %22)
  store i8* %23, i8** %6, align 8
  store i64 0, i64* %5, align 8
  br label %24

24:                                               ; preds = %62, %1
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %3, align 8
  %27 = getelementptr inbounds %struct.tegra_gpio_softc, %struct.tegra_gpio_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = icmp ult i64 %25, %29
  br i1 %30, label %31, label %65

31:                                               ; preds = %24
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %3, align 8
  %34 = getelementptr inbounds %struct.tegra_gpio_softc, %struct.tegra_gpio_softc* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i64 %32, i64* %38, align 8
  %39 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %3, align 8
  %40 = getelementptr inbounds %struct.tegra_gpio_softc, %struct.tegra_gpio_softc* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i64, i64* %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %3, align 8
  %46 = getelementptr inbounds %struct.tegra_gpio_softc, %struct.tegra_gpio_softc* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %3, align 8
  %52 = getelementptr inbounds %struct.tegra_gpio_softc, %struct.tegra_gpio_softc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i8*, i8** %6, align 8
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @intr_isrc_register(i32* %50, i32 %53, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %54, i64 %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %31
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %79

61:                                               ; preds = %31
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %5, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %5, align 8
  br label %24

65:                                               ; preds = %24
  %66 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %3, align 8
  %67 = getelementptr inbounds %struct.tegra_gpio_softc, %struct.tegra_gpio_softc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %3, align 8
  %70 = getelementptr inbounds %struct.tegra_gpio_softc, %struct.tegra_gpio_softc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ofw_bus_get_node(i32 %71)
  %73 = call i32 @OF_xref_from_node(i32 %72)
  %74 = call i32* @intr_pic_register(i32 %68, i32 %73)
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %65
  %77 = load i32, i32* @ENXIO, align 4
  store i32 %77, i32* %2, align 4
  br label %79

78:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %76, %59
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local %struct.TYPE_2__* @malloc(i32, i32, i32) #1

declare dso_local i8* @device_get_nameunit(i32) #1

declare dso_local i32 @intr_isrc_register(i32*, i32, i32, i8*, i8*, i64) #1

declare dso_local i32* @intr_pic_register(i32, i32) #1

declare dso_local i32 @OF_xref_from_node(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
