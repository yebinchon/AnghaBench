; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/rockchip/extr_rk30xx_gpio.c_rk30_gpios_prop_handle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/rockchip/extr_rk30xx_gpio.c_rk30_gpios_prop_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk30_gpio_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@rk30_gpio_sc = common dso_local global %struct.rk30_gpio_softc* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"#gpio-cells\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GPIO_PIN_INPUT = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rk30_gpios_prop_handle(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rk30_gpio_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %20 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** @rk30_gpio_sc, align 8
  store %struct.rk30_gpio_softc* %20, %struct.rk30_gpio_softc** %8, align 8
  %21 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %8, align 8
  %22 = icmp eq %struct.rk30_gpio_softc* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %4, align 4
  br label %136

25:                                               ; preds = %3
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @OF_getencprop(i32 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %9, i32 4)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %4, align 4
  br label %136

31:                                               ; preds = %25
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 2
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @ENXIO, align 4
  store i32 %35, i32* %4, align 4
  br label %136

36:                                               ; preds = %31
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 4
  %40 = add i64 %39, 4
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %13, align 4
  %44 = sdiv i32 %42, %43
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @fdt_regsize(i32 %45, i32* %18, i32* %19)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %36
  %49 = load i32, i32* @ENXIO, align 4
  store i32 %49, i32* %4, align 4
  br label %136

50:                                               ; preds = %36
  store i32 1, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32* %54, i32** %6, align 8
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %132, %50
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %135

59:                                               ; preds = %55
  %60 = load i32*, i32** %6, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %16, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %14, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %69

69:                                               ; preds = %88, %59
  %70 = load i32, i32* %17, align 4
  %71 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %8, align 8
  %72 = getelementptr inbounds %struct.rk30_gpio_softc, %struct.rk30_gpio_softc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %91

75:                                               ; preds = %69
  %76 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %8, align 8
  %77 = getelementptr inbounds %struct.rk30_gpio_softc, %struct.rk30_gpio_softc* %76, i32 0, i32 2
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i32, i32* %17, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %16, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %75
  br label %91

87:                                               ; preds = %75
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %17, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %17, align 4
  br label %69

91:                                               ; preds = %86, %69
  %92 = load i32, i32* %17, align 4
  %93 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %8, align 8
  %94 = getelementptr inbounds %struct.rk30_gpio_softc, %struct.rk30_gpio_softc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp sge i32 %92, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i32, i32* @EINVAL, align 4
  store i32 %98, i32* %4, align 4
  br label %136

99:                                               ; preds = %91
  %100 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %8, align 8
  %101 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %8, align 8
  %102 = getelementptr inbounds %struct.rk30_gpio_softc, %struct.rk30_gpio_softc* %101, i32 0, i32 2
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i32, i32* %17, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = load i32, i32* %15, align 4
  %108 = call i32 @rk30_gpio_pin_configure(%struct.rk30_gpio_softc* %100, %struct.TYPE_2__* %106, i32 %107)
  %109 = load i32, i32* %14, align 4
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %118

111:                                              ; preds = %99
  %112 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %8, align 8
  %113 = getelementptr inbounds %struct.rk30_gpio_softc, %struct.rk30_gpio_softc* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %117 = call i32 @rk30_gpio_pin_set(i32 %114, i32 %115, i32 %116)
  br label %125

118:                                              ; preds = %99
  %119 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %8, align 8
  %120 = getelementptr inbounds %struct.rk30_gpio_softc, %struct.rk30_gpio_softc* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %124 = call i32 @rk30_gpio_pin_set(i32 %121, i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %118, %111
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %126, %127
  %129 = load i32*, i32** %6, align 8
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  store i32* %131, i32** %6, align 8
  br label %132

132:                                              ; preds = %125
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %11, align 4
  br label %55

135:                                              ; preds = %55
  store i32 0, i32* %4, align 4
  br label %136

136:                                              ; preds = %135, %97, %48, %34, %29, %23
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i64 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i64 @fdt_regsize(i32, i32*, i32*) #1

declare dso_local i32 @rk30_gpio_pin_configure(%struct.rk30_gpio_softc*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @rk30_gpio_pin_set(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
