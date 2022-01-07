; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_pinctrl.c_rk_pinctrl_handle_io.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_pinctrl.c_rk_pinctrl_handle_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_pinctrl_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.rk_pinctrl_gpio* }
%struct.rk_pinctrl_gpio = type { i64, i32* }

@.str = private unnamed_addr constant [15 x i8] c"output-disable\00", align 1
@GPIO_PIN_INPUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"output-enable\00", align 1
@GPIO_PIN_OUTPUT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"output-low\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"output-high\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Cannot find GPIO bank %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"No GPIO subdevice found for bank %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Cannot set GPIO value: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Cannot set GPIO direction: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rk_pinctrl_softc*, i32, i64, i64)* @rk_pinctrl_handle_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_pinctrl_handle_io(%struct.rk_pinctrl_softc* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rk_pinctrl_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.rk_pinctrl_gpio*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.rk_pinctrl_softc* %0, %struct.rk_pinctrl_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @OF_hasprop(i32 %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %22 = load i64, i64* @GPIO_PIN_INPUT, align 8
  store i64 %22, i64* %13, align 8
  br label %23

23:                                               ; preds = %21, %4
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @OF_hasprop(i32 %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %28 = load i64, i64* @GPIO_PIN_OUTPUT, align 8
  store i64 %28, i64* %13, align 8
  br label %29

29:                                               ; preds = %27, %23
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @OF_hasprop(i32 %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %34 = load i64, i64* @GPIO_PIN_OUTPUT, align 8
  store i64 %34, i64* %13, align 8
  store i32 1, i32* %12, align 4
  store i64 0, i64* %14, align 8
  br label %35

35:                                               ; preds = %33, %29
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @OF_hasprop(i32 %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %40 = load i64, i64* @GPIO_PIN_OUTPUT, align 8
  store i64 %40, i64* %13, align 8
  store i32 1, i32* %12, align 4
  store i64 1, i64* %14, align 8
  br label %41

41:                                               ; preds = %39, %35
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %145

45:                                               ; preds = %41
  store %struct.rk_pinctrl_gpio* null, %struct.rk_pinctrl_gpio** %15, align 8
  store i32 0, i32* %16, align 4
  br label %46

46:                                               ; preds = %77, %45
  %47 = load i32, i32* %16, align 4
  %48 = load %struct.rk_pinctrl_softc*, %struct.rk_pinctrl_softc** %6, align 8
  %49 = getelementptr inbounds %struct.rk_pinctrl_softc, %struct.rk_pinctrl_softc* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %47, %52
  br i1 %53, label %54, label %80

54:                                               ; preds = %46
  %55 = load i64, i64* %8, align 8
  %56 = load %struct.rk_pinctrl_softc*, %struct.rk_pinctrl_softc** %6, align 8
  %57 = getelementptr inbounds %struct.rk_pinctrl_softc, %struct.rk_pinctrl_softc* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load %struct.rk_pinctrl_gpio*, %struct.rk_pinctrl_gpio** %59, align 8
  %61 = load i32, i32* %16, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.rk_pinctrl_gpio, %struct.rk_pinctrl_gpio* %60, i64 %62
  %64 = getelementptr inbounds %struct.rk_pinctrl_gpio, %struct.rk_pinctrl_gpio* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %55, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %54
  %68 = load %struct.rk_pinctrl_softc*, %struct.rk_pinctrl_softc** %6, align 8
  %69 = getelementptr inbounds %struct.rk_pinctrl_softc, %struct.rk_pinctrl_softc* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load %struct.rk_pinctrl_gpio*, %struct.rk_pinctrl_gpio** %71, align 8
  %73 = load i32, i32* %16, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.rk_pinctrl_gpio, %struct.rk_pinctrl_gpio* %72, i64 %74
  store %struct.rk_pinctrl_gpio* %75, %struct.rk_pinctrl_gpio** %15, align 8
  br label %80

76:                                               ; preds = %54
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %16, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %16, align 4
  br label %46

80:                                               ; preds = %67, %46
  %81 = load %struct.rk_pinctrl_gpio*, %struct.rk_pinctrl_gpio** %15, align 8
  %82 = icmp eq %struct.rk_pinctrl_gpio* %81, null
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load %struct.rk_pinctrl_softc*, %struct.rk_pinctrl_softc** %6, align 8
  %85 = getelementptr inbounds %struct.rk_pinctrl_softc, %struct.rk_pinctrl_softc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i64, i64* %8, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 @device_printf(i32 %86, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @ENXIO, align 4
  store i32 %90, i32* %5, align 4
  br label %145

91:                                               ; preds = %80
  %92 = load %struct.rk_pinctrl_gpio*, %struct.rk_pinctrl_gpio** %15, align 8
  %93 = getelementptr inbounds %struct.rk_pinctrl_gpio, %struct.rk_pinctrl_gpio* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %104

96:                                               ; preds = %91
  %97 = load %struct.rk_pinctrl_softc*, %struct.rk_pinctrl_softc** %6, align 8
  %98 = getelementptr inbounds %struct.rk_pinctrl_softc, %struct.rk_pinctrl_softc* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i64, i64* %8, align 8
  %101 = trunc i64 %100 to i32
  %102 = call i32 @device_printf(i32 %99, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* @ENXIO, align 4
  store i32 %103, i32* %5, align 4
  br label %145

104:                                              ; preds = %91
  store i32 0, i32* %17, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %124

107:                                              ; preds = %104
  %108 = load %struct.rk_pinctrl_gpio*, %struct.rk_pinctrl_gpio** %15, align 8
  %109 = getelementptr inbounds %struct.rk_pinctrl_gpio, %struct.rk_pinctrl_gpio* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* %9, align 8
  %112 = load i64, i64* %14, align 8
  %113 = call i32 @GPIO_PIN_SET(i32* %110, i64 %111, i64 %112)
  store i32 %113, i32* %17, align 4
  %114 = load i32, i32* %17, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %107
  %117 = load %struct.rk_pinctrl_softc*, %struct.rk_pinctrl_softc** %6, align 8
  %118 = getelementptr inbounds %struct.rk_pinctrl_softc, %struct.rk_pinctrl_softc* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %17, align 4
  %121 = call i32 @device_printf(i32 %119, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* %17, align 4
  store i32 %122, i32* %5, align 4
  br label %145

123:                                              ; preds = %107
  br label %124

124:                                              ; preds = %123, %104
  %125 = load i32, i32* %11, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %144

127:                                              ; preds = %124
  %128 = load %struct.rk_pinctrl_gpio*, %struct.rk_pinctrl_gpio** %15, align 8
  %129 = getelementptr inbounds %struct.rk_pinctrl_gpio, %struct.rk_pinctrl_gpio* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i64, i64* %9, align 8
  %132 = load i64, i64* %13, align 8
  %133 = call i32 @GPIO_PIN_SETFLAGS(i32* %130, i64 %131, i64 %132)
  store i32 %133, i32* %17, align 4
  %134 = load i32, i32* %17, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %127
  %137 = load %struct.rk_pinctrl_softc*, %struct.rk_pinctrl_softc** %6, align 8
  %138 = getelementptr inbounds %struct.rk_pinctrl_softc, %struct.rk_pinctrl_softc* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %17, align 4
  %141 = call i32 @device_printf(i32 %139, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %140)
  %142 = load i32, i32* %17, align 4
  store i32 %142, i32* %5, align 4
  br label %145

143:                                              ; preds = %127
  br label %144

144:                                              ; preds = %143, %124
  store i32 0, i32* %5, align 4
  br label %145

145:                                              ; preds = %144, %136, %116, %96, %83, %44
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local i64 @OF_hasprop(i32, i8*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @GPIO_PIN_SET(i32*, i64, i64) #1

declare dso_local i32 @GPIO_PIN_SETFLAGS(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
