; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_gpio.c_mv_gpio_exec_intr_handlers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_gpio.c_mv_gpio_exec_intr_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_gpio_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GPIO_PINS_PER_REG = common dso_local global i32 0, align 4
@MV_GPIO_IN_DEBOUNCE = common dso_local global i32 0, align 4
@MV_GPIO_IN_IRQ_DOUBLE_EDGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @mv_gpio_exec_intr_handlers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_gpio_exec_intr_handlers(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mv_gpio_softc*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @device_get_softc(i32 %10)
  %12 = inttoptr i64 %11 to %struct.mv_gpio_softc*
  store %struct.mv_gpio_softc* %12, %struct.mv_gpio_softc** %9, align 8
  %13 = call i32 (...) @MV_GPIO_ASSERT_LOCKED()
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %72, %3
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %77

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %72

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @GPIO_PINS_PER_REG, align 4
  %27 = add nsw i32 %25, %26
  br label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %7, align 4
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi i32 [ %27, %24 ], [ %29, %28 ]
  store i32 %31, i32* %8, align 4
  %32 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %9, align 8
  %33 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MV_GPIO_IN_DEBOUNCE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %30
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @mv_gpio_debounce_start(i32 %44, i32 %45)
  br label %71

47:                                               ; preds = %30
  %48 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %9, align 8
  %49 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MV_GPIO_IN_IRQ_DOUBLE_EDGE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %47
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @mv_gpio_polarity(i32 %60, i32 %61, i32 0, i32 1)
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @mv_gpio_intr_handler(i32 %63, i32 %64)
  br label %70

66:                                               ; preds = %47
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @mv_gpio_intr_handler(i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %59
  br label %71

71:                                               ; preds = %70, %43
  br label %72

72:                                               ; preds = %71, %17
  %73 = load i32, i32* %5, align 4
  %74 = ashr i32 %73, 1
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %14

77:                                               ; preds = %14
  ret void
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @MV_GPIO_ASSERT_LOCKED(...) #1

declare dso_local i32 @mv_gpio_debounce_start(i32, i32) #1

declare dso_local i32 @mv_gpio_polarity(i32, i32, i32, i32) #1

declare dso_local i32 @mv_gpio_intr_handler(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
