; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_gpio.c_aw_gpio_pin_config_32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_gpio.c_aw_gpio_pin_config_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_gpio_softc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@GPIO_PIN_INPUT = common dso_local global i64 0, align 8
@GPIO_PIN_OUTPUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, i64*)* @aw_gpio_pin_config_32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_gpio_pin_config_32(i32 %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.aw_gpio_softc*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.aw_gpio_softc* @device_get_softc(i32 %14)
  store %struct.aw_gpio_softc* %15, %struct.aw_gpio_softc** %10, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %10, align 8
  %18 = getelementptr inbounds %struct.aw_gpio_softc, %struct.aw_gpio_softc* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ugt i64 %16, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %5, align 4
  br label %82

25:                                               ; preds = %4
  %26 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %10, align 8
  %27 = getelementptr inbounds %struct.aw_gpio_softc, %struct.aw_gpio_softc* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %11, align 8
  %35 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %10, align 8
  %36 = getelementptr inbounds %struct.aw_gpio_softc, %struct.aw_gpio_softc* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %25
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %5, align 4
  br label %82

47:                                               ; preds = %25
  store i32 0, i32* %13, align 4
  %48 = load i64, i64* %7, align 8
  store i64 %48, i64* %12, align 8
  br label %49

49:                                               ; preds = %77, %47
  %50 = load i32, i32* %13, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* %8, align 8
  %55 = icmp ult i64 %53, %54
  br label %56

56:                                               ; preds = %52, %49
  %57 = phi i1 [ false, %49 ], [ %55, %52 ]
  br i1 %57, label %58, label %80

58:                                               ; preds = %56
  %59 = load i64*, i64** %9, align 8
  %60 = load i64, i64* %12, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @GPIO_PIN_INPUT, align 8
  %64 = load i64, i64* @GPIO_PIN_OUTPUT, align 8
  %65 = or i64 %63, %64
  %66 = and i64 %62, %65
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %58
  %69 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %10, align 8
  %70 = load i64, i64* %12, align 8
  %71 = load i64*, i64** %9, align 8
  %72 = load i64, i64* %12, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @aw_gpio_pin_configure(%struct.aw_gpio_softc* %69, i64 %70, i64 %74)
  store i32 %75, i32* %13, align 4
  br label %76

76:                                               ; preds = %68, %58
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %12, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %12, align 8
  br label %49

80:                                               ; preds = %56
  %81 = load i32, i32* %13, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %80, %45, %23
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local %struct.aw_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @aw_gpio_pin_configure(%struct.aw_gpio_softc*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
