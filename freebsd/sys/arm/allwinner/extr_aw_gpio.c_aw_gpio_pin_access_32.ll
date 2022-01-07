; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_gpio.c_aw_gpio_pin_access_32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_gpio.c_aw_gpio_pin_access_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_gpio_softc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, i64, i64*)* @aw_gpio_pin_access_32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_gpio_pin_access_32(i32 %0, i64 %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.aw_gpio_softc*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.aw_gpio_softc* @device_get_softc(i32 %16)
  store %struct.aw_gpio_softc* %17, %struct.aw_gpio_softc** %12, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %12, align 8
  %20 = getelementptr inbounds %struct.aw_gpio_softc, %struct.aw_gpio_softc* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ugt i64 %18, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %6, align 4
  br label %81

27:                                               ; preds = %5
  %28 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %12, align 8
  %29 = getelementptr inbounds %struct.aw_gpio_softc, %struct.aw_gpio_softc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %13, align 8
  %37 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %12, align 8
  %38 = getelementptr inbounds %struct.aw_gpio_softc, %struct.aw_gpio_softc* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %15, align 8
  %46 = load i64, i64* %15, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %27
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* %6, align 4
  br label %81

50:                                               ; preds = %27
  %51 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %12, align 8
  %52 = call i32 @AW_GPIO_LOCK(%struct.aw_gpio_softc* %51)
  %53 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %12, align 8
  %54 = load i64, i64* %13, align 8
  %55 = call i32 @AW_GPIO_GP_DAT(i64 %54)
  %56 = call i64 @AW_GPIO_READ(%struct.aw_gpio_softc* %53, i32 %55)
  store i64 %56, i64* %14, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %10, align 8
  %59 = or i64 %57, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %50
  %62 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %12, align 8
  %63 = load i64, i64* %13, align 8
  %64 = call i32 @AW_GPIO_GP_DAT(i64 %63)
  %65 = load i64, i64* %14, align 8
  %66 = load i64, i64* %9, align 8
  %67 = xor i64 %66, -1
  %68 = and i64 %65, %67
  %69 = load i64, i64* %10, align 8
  %70 = xor i64 %68, %69
  %71 = call i32 @AW_GPIO_WRITE(%struct.aw_gpio_softc* %62, i32 %64, i64 %70)
  br label %72

72:                                               ; preds = %61, %50
  %73 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %12, align 8
  %74 = call i32 @AW_GPIO_UNLOCK(%struct.aw_gpio_softc* %73)
  %75 = load i64*, i64** %11, align 8
  %76 = icmp ne i64* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i64, i64* %14, align 8
  %79 = load i64*, i64** %11, align 8
  store i64 %78, i64* %79, align 8
  br label %80

80:                                               ; preds = %77, %72
  store i32 0, i32* %6, align 4
  br label %81

81:                                               ; preds = %80, %48, %25
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local %struct.aw_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @AW_GPIO_LOCK(%struct.aw_gpio_softc*) #1

declare dso_local i64 @AW_GPIO_READ(%struct.aw_gpio_softc*, i32) #1

declare dso_local i32 @AW_GPIO_GP_DAT(i64) #1

declare dso_local i32 @AW_GPIO_WRITE(%struct.aw_gpio_softc*, i32, i64) #1

declare dso_local i32 @AW_GPIO_UNLOCK(%struct.aw_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
