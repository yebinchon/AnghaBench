; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_gpio.c_mv_gpio_in.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_gpio.c_mv_gpio_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_gpio_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MV_GPIO_IN_DEBOUNCE = common dso_local global i32 0, align 4
@MV_GPIO_IN_POL_LOW = common dso_local global i32 0, align 4
@MV_GPIO_IN_IRQ_DOUBLE_EDGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv_gpio_in(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mv_gpio_softc*, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @device_get_softc(i32 %7)
  %9 = inttoptr i64 %8 to %struct.mv_gpio_softc*
  store %struct.mv_gpio_softc* %9, %struct.mv_gpio_softc** %6, align 8
  %10 = call i32 (...) @MV_GPIO_ASSERT_LOCKED()
  %11 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %6, align 8
  %12 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MV_GPIO_IN_DEBOUNCE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %47

21:                                               ; preds = %2
  %22 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %6, align 8
  %23 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MV_GPIO_IN_POL_LOW, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %21
  %33 = load i32, i32* %3, align 4
  %34 = load i64, i64* %4, align 8
  %35 = call i64 @mv_gpio_debounced_state_get(i32 %33, i64 %34)
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 0, i32 1
  store i32 %38, i32* %5, align 4
  br label %46

39:                                               ; preds = %21
  %40 = load i32, i32* %3, align 4
  %41 = load i64, i64* %4, align 8
  %42 = call i64 @mv_gpio_debounced_state_get(i32 %40, i64 %41)
  %43 = icmp ne i64 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 1, i32 0
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %39, %32
  br label %92

47:                                               ; preds = %2
  %48 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %6, align 8
  %49 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i64, i64* %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @MV_GPIO_IN_IRQ_DOUBLE_EDGE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %84

58:                                               ; preds = %47
  %59 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %6, align 8
  %60 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i64, i64* %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @MV_GPIO_IN_POL_LOW, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %58
  %70 = load i32, i32* %3, align 4
  %71 = load i64, i64* %4, align 8
  %72 = call i64 @mv_gpio_value_get(i32 %70, i64 %71, i32 1)
  %73 = icmp ne i64 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 0, i32 1
  store i32 %75, i32* %5, align 4
  br label %83

76:                                               ; preds = %58
  %77 = load i32, i32* %3, align 4
  %78 = load i64, i64* %4, align 8
  %79 = call i64 @mv_gpio_value_get(i32 %77, i64 %78, i32 1)
  %80 = icmp ne i64 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 1, i32 0
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %76, %69
  br label %91

84:                                               ; preds = %47
  %85 = load i32, i32* %3, align 4
  %86 = load i64, i64* %4, align 8
  %87 = call i64 @mv_gpio_value_get(i32 %85, i64 %86, i32 0)
  %88 = icmp ne i64 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 1, i32 0
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %84, %83
  br label %92

92:                                               ; preds = %91, %46
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @MV_GPIO_ASSERT_LOCKED(...) #1

declare dso_local i64 @mv_gpio_debounced_state_get(i32, i64) #1

declare dso_local i64 @mv_gpio_value_get(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
