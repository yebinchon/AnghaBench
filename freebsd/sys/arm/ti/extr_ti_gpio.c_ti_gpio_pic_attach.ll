; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_gpio.c_ti_gpio_pic_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_gpio.c_ti_gpio_pic_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_gpio_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@GPIO_INTR_CONFORM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s,%u\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_gpio_softc*)* @ti_gpio_pic_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_gpio_pic_attach(%struct.ti_gpio_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ti_gpio_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.ti_gpio_softc* %0, %struct.ti_gpio_softc** %3, align 8
  %7 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = mul i64 24, %10
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* @M_DEVBUF, align 4
  %14 = load i32, i32* @M_WAITOK, align 4
  %15 = load i32, i32* @M_ZERO, align 4
  %16 = or i32 %14, %15
  %17 = call %struct.TYPE_2__* @malloc(i32 %12, i32 %13, i32 %16)
  %18 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %3, align 8
  %19 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %18, i32 0, i32 2
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %19, align 8
  %20 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %3, align 8
  %21 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @device_get_nameunit(i32 %22)
  store i8* %23, i8** %6, align 8
  store i64 0, i64* %5, align 8
  br label %24

24:                                               ; preds = %71, %1
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %3, align 8
  %27 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = icmp ult i64 %25, %29
  br i1 %30, label %31, label %74

31:                                               ; preds = %24
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %3, align 8
  %34 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i64 %32, i64* %38, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @TI_GPIO_MASK(i64 %39)
  %41 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %3, align 8
  %42 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  store i32 %40, i32* %46, align 8
  %47 = load i32, i32* @GPIO_INTR_CONFORM, align 4
  %48 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %3, align 8
  %49 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i64, i64* %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  store i32 %47, i32* %53, align 4
  %54 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %3, align 8
  %55 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i64, i64* %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %3, align 8
  %61 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %6, align 8
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @intr_isrc_register(i32* %59, i32 %62, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %63, i64 %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %31
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %88

70:                                               ; preds = %31
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %5, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %5, align 8
  br label %24

74:                                               ; preds = %24
  %75 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %3, align 8
  %76 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %3, align 8
  %79 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ofw_bus_get_node(i32 %80)
  %82 = call i32 @OF_xref_from_node(i32 %81)
  %83 = call i32* @intr_pic_register(i32 %77, i32 %82)
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %74
  %86 = load i32, i32* @ENXIO, align 4
  store i32 %86, i32* %2, align 4
  br label %88

87:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %85, %68
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.TYPE_2__* @malloc(i32, i32, i32) #1

declare dso_local i8* @device_get_nameunit(i32) #1

declare dso_local i32 @TI_GPIO_MASK(i64) #1

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
