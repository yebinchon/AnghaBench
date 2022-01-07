; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_pwm.c_aw_pwm_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_pwm.c_aw_pwm_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_pwm_softc = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"cannot get clock\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"cannot enable clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"cannot get clock frequency\0A\00", align 1
@aw_pwm_spec = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"cannot allocate resources for device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@AW_PWM_CTRL = common dso_local global i32 0, align 4
@AW_PWM_CTRL_GATE = common dso_local global i32 0, align 4
@AW_PWM_CTRL_EN = common dso_local global i32 0, align 4
@AW_PWM_CTRL_PRESCALE_MASK = common dso_local global i32 0, align 4
@aw_pwm_clk_prescaler = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [49 x i8] c"Bad prescaler %x, cannot guess current settings\0A\00", align 1
@AW_PWM_PERIOD = common dso_local global i32 0, align 4
@NS_PER_SEC = common dso_local global i32 0, align 4
@AW_PWM_PERIOD_TOTAL_SHIFT = common dso_local global i32 0, align 4
@AW_PWM_PERIOD_TOTAL_MASK = common dso_local global i32 0, align 4
@AW_PWM_PERIOD_ACTIVE_SHIFT = common dso_local global i32 0, align 4
@AW_PWM_PERIOD_ACTIVE_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"pwmbus\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @aw_pwm_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_pwm_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.aw_pwm_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.aw_pwm_softc* @device_get_softc(i32 %9)
  store %struct.aw_pwm_softc* %10, %struct.aw_pwm_softc** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.aw_pwm_softc*, %struct.aw_pwm_softc** %4, align 8
  %13 = getelementptr inbounds %struct.aw_pwm_softc, %struct.aw_pwm_softc* %12, i32 0, i32 7
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.aw_pwm_softc*, %struct.aw_pwm_softc** %4, align 8
  %16 = getelementptr inbounds %struct.aw_pwm_softc, %struct.aw_pwm_softc* %15, i32 0, i32 6
  %17 = call i32 @clk_get_by_ofw_index(i32 %14, i32 0, i32 0, i32* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = call i32 (i32, i8*, ...) @device_printf(i32 %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %132

23:                                               ; preds = %1
  %24 = load %struct.aw_pwm_softc*, %struct.aw_pwm_softc** %4, align 8
  %25 = getelementptr inbounds %struct.aw_pwm_softc, %struct.aw_pwm_softc* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @clk_enable(i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* %3, align 4
  %32 = call i32 (i32, i8*, ...) @device_printf(i32 %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %132

33:                                               ; preds = %23
  %34 = load %struct.aw_pwm_softc*, %struct.aw_pwm_softc** %4, align 8
  %35 = getelementptr inbounds %struct.aw_pwm_softc, %struct.aw_pwm_softc* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.aw_pwm_softc*, %struct.aw_pwm_softc** %4, align 8
  %38 = getelementptr inbounds %struct.aw_pwm_softc, %struct.aw_pwm_softc* %37, i32 0, i32 0
  %39 = call i32 @clk_get_freq(i32 %36, i32* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load i32, i32* %3, align 4
  %44 = call i32 (i32, i8*, ...) @device_printf(i32 %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %132

45:                                               ; preds = %33
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @aw_pwm_spec, align 4
  %48 = load %struct.aw_pwm_softc*, %struct.aw_pwm_softc** %4, align 8
  %49 = getelementptr inbounds %struct.aw_pwm_softc, %struct.aw_pwm_softc* %48, i32 0, i32 5
  %50 = call i64 @bus_alloc_resources(i32 %46, i32 %47, i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i32, i32* %3, align 4
  %54 = call i32 (i32, i8*, ...) @device_printf(i32 %53, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %55 = load i32, i32* @ENXIO, align 4
  store i32 %55, i32* %8, align 4
  br label %132

56:                                               ; preds = %45
  %57 = load %struct.aw_pwm_softc*, %struct.aw_pwm_softc** %4, align 8
  %58 = load i32, i32* @AW_PWM_CTRL, align 4
  %59 = call i32 @AW_PWM_READ(%struct.aw_pwm_softc* %57, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @AW_PWM_CTRL_GATE, align 4
  %62 = load i32, i32* @AW_PWM_CTRL_EN, align 4
  %63 = or i32 %61, %62
  %64 = and i32 %60, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %56
  %67 = load %struct.aw_pwm_softc*, %struct.aw_pwm_softc** %4, align 8
  %68 = getelementptr inbounds %struct.aw_pwm_softc, %struct.aw_pwm_softc* %67, i32 0, i32 1
  store i32 1, i32* %68, align 4
  br label %69

69:                                               ; preds = %66, %56
  %70 = load %struct.aw_pwm_softc*, %struct.aw_pwm_softc** %4, align 8
  %71 = load i32, i32* @AW_PWM_CTRL, align 4
  %72 = call i32 @AW_PWM_READ(%struct.aw_pwm_softc* %70, i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* @AW_PWM_CTRL_PRESCALE_MASK, align 4
  %74 = load i32, i32* %6, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32*, i32** @aw_pwm_clk_prescaler, align 8
  %78 = call i32 @nitems(i32* %77)
  %79 = icmp sgt i32 %76, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %69
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 (i32, i8*, ...) @device_printf(i32 %81, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %82)
  br label %119

84:                                               ; preds = %69
  %85 = load %struct.aw_pwm_softc*, %struct.aw_pwm_softc** %4, align 8
  %86 = getelementptr inbounds %struct.aw_pwm_softc, %struct.aw_pwm_softc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** @aw_pwm_clk_prescaler, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = sdiv i32 %87, %92
  store i32 %93, i32* %5, align 4
  %94 = load %struct.aw_pwm_softc*, %struct.aw_pwm_softc** %4, align 8
  %95 = load i32, i32* @AW_PWM_PERIOD, align 4
  %96 = call i32 @AW_PWM_READ(%struct.aw_pwm_softc* %94, i32 %95)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* @NS_PER_SEC, align 4
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @AW_PWM_PERIOD_TOTAL_SHIFT, align 4
  %101 = ashr i32 %99, %100
  %102 = load i32, i32* @AW_PWM_PERIOD_TOTAL_MASK, align 4
  %103 = and i32 %101, %102
  %104 = sdiv i32 %98, %103
  %105 = sdiv i32 %97, %104
  %106 = load %struct.aw_pwm_softc*, %struct.aw_pwm_softc** %4, align 8
  %107 = getelementptr inbounds %struct.aw_pwm_softc, %struct.aw_pwm_softc* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* @NS_PER_SEC, align 4
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @AW_PWM_PERIOD_ACTIVE_SHIFT, align 4
  %112 = ashr i32 %110, %111
  %113 = load i32, i32* @AW_PWM_PERIOD_ACTIVE_MASK, align 4
  %114 = and i32 %112, %113
  %115 = sdiv i32 %109, %114
  %116 = sdiv i32 %108, %115
  %117 = load %struct.aw_pwm_softc*, %struct.aw_pwm_softc** %4, align 8
  %118 = getelementptr inbounds %struct.aw_pwm_softc, %struct.aw_pwm_softc* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 4
  br label %119

119:                                              ; preds = %84, %80
  %120 = load i32, i32* %3, align 4
  %121 = call i32 @ofw_bus_get_node(i32 %120)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @OF_xref_from_node(i32 %122)
  %124 = load i32, i32* %3, align 4
  %125 = call i32 @OF_device_register_xref(i32 %123, i32 %124)
  %126 = load i32, i32* %3, align 4
  %127 = call i32 @device_add_child(i32 %126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 -1)
  %128 = load %struct.aw_pwm_softc*, %struct.aw_pwm_softc** %4, align 8
  %129 = getelementptr inbounds %struct.aw_pwm_softc, %struct.aw_pwm_softc* %128, i32 0, i32 4
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* %3, align 4
  %131 = call i32 @bus_generic_attach(i32 %130)
  store i32 %131, i32* %2, align 4
  br label %136

132:                                              ; preds = %52, %42, %30, %20
  %133 = load i32, i32* %3, align 4
  %134 = call i32 @aw_pwm_detach(i32 %133)
  %135 = load i32, i32* %8, align 4
  store i32 %135, i32* %2, align 4
  br label %136

136:                                              ; preds = %132, %119
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local %struct.aw_pwm_softc* @device_get_softc(i32) #1

declare dso_local i32 @clk_get_by_ofw_index(i32, i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @clk_get_freq(i32, i32*) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @AW_PWM_READ(%struct.aw_pwm_softc*, i32) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_device_register_xref(i32, i32) #1

declare dso_local i32 @OF_xref_from_node(i32) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local i32 @aw_pwm_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
