; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_gpio.c_mv_gpio_configure.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_gpio.c_mv_gpio_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_gpio_softc = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GPIO_PIN_INPUT = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@MV_GPIO_IN_DEBOUNCE = common dso_local global i32 0, align 4
@GPIO_PIN_OPENDRAIN = common dso_local global i32 0, align 4
@MV_GPIO_OUT_BLINK = common dso_local global i32 0, align 4
@MV_GPIO_IN_POL_LOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv_gpio_configure(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mv_gpio_softc*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @device_get_softc(i32 %12)
  %14 = inttoptr i64 %13 to %struct.mv_gpio_softc*
  store %struct.mv_gpio_softc* %14, %struct.mv_gpio_softc** %11, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %11, align 8
  %17 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sge i32 %15, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %5, align 4
  br label %159

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %27 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %31 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %32 = or i32 %30, %31
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %22
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %5, align 4
  br label %159

36:                                               ; preds = %22
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @MV_GPIO_IN_DEBOUNCE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %36
  %42 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %11, align 8
  %43 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @EINVAL, align 4
  store i32 %47, i32* %5, align 4
  br label %159

48:                                               ; preds = %41
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @mv_gpio_debounce_prepare(i32 %49, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %5, align 4
  br label %159

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %36
  %58 = call i32 (...) @MV_GPIO_LOCK()
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %8, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %57
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @mv_gpio_out_en(i32 %66, i32 %67, i32 0)
  br label %69

69:                                               ; preds = %65, %57
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %8, align 4
  %72 = and i32 %70, %71
  %73 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %95

76:                                               ; preds = %69
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @GPIO_PIN_OPENDRAIN, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %76
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @mv_gpio_value_set(i32 %84, i32 %85, i32 0)
  br label %91

87:                                               ; preds = %76
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @mv_gpio_value_set(i32 %88, i32 %89, i32 1)
  br label %91

91:                                               ; preds = %87, %83
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @mv_gpio_out_en(i32 %92, i32 %93, i32 1)
  br label %95

95:                                               ; preds = %91, %69
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @MV_GPIO_OUT_BLINK, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %95
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @MV_GPIO_OUT_BLINK, align 4
  %105 = and i32 %103, %104
  %106 = call i32 @mv_gpio_blink(i32 %101, i32 %102, i32 %105)
  br label %107

107:                                              ; preds = %100, %95
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @MV_GPIO_IN_POL_LOW, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %107
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @MV_GPIO_IN_POL_LOW, align 4
  %117 = and i32 %115, %116
  %118 = call i32 @mv_gpio_polarity(i32 %113, i32 %114, i32 %117, i32 0)
  br label %119

119:                                              ; preds = %112, %107
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* @MV_GPIO_IN_DEBOUNCE, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %119
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @mv_gpio_debounce_setup(i32 %125, i32 %126)
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %10, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %124
  %131 = call i32 (...) @MV_GPIO_UNLOCK()
  %132 = load i32, i32* %10, align 4
  store i32 %132, i32* %5, align 4
  br label %159

133:                                              ; preds = %124
  br label %134

134:                                              ; preds = %133, %119
  %135 = load i32, i32* %9, align 4
  %136 = xor i32 %135, -1
  %137 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %11, align 8
  %138 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %137, i32 0, i32 2
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = and i32 %144, %136
  store i32 %145, i32* %143, align 4
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* %9, align 4
  %148 = and i32 %146, %147
  %149 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %11, align 8
  %150 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %149, i32 0, i32 2
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %148
  store i32 %157, i32* %155, align 4
  %158 = call i32 (...) @MV_GPIO_UNLOCK()
  store i32 0, i32* %5, align 4
  br label %159

159:                                              ; preds = %134, %130, %54, %46, %34, %20
  %160 = load i32, i32* %5, align 4
  ret i32 %160
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @mv_gpio_debounce_prepare(i32, i32) #1

declare dso_local i32 @MV_GPIO_LOCK(...) #1

declare dso_local i32 @mv_gpio_out_en(i32, i32, i32) #1

declare dso_local i32 @mv_gpio_value_set(i32, i32, i32) #1

declare dso_local i32 @mv_gpio_blink(i32, i32, i32) #1

declare dso_local i32 @mv_gpio_polarity(i32, i32, i32, i32) #1

declare dso_local i32 @mv_gpio_debounce_setup(i32, i32) #1

declare dso_local i32 @MV_GPIO_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
