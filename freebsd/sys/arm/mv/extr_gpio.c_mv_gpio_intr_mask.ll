; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_gpio.c_mv_gpio_intr_mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_gpio.c_mv_gpio_intr_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_gpio_pindev = type { i64, i32 }
%struct.mv_gpio_softc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MV_GPIO_IN_IRQ_EDGE = common dso_local global i32 0, align 4
@MV_GPIO_IN_IRQ_DOUBLE_EDGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv_gpio_pindev*)* @mv_gpio_intr_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_gpio_intr_mask(%struct.mv_gpio_pindev* %0) #0 {
  %2 = alloca %struct.mv_gpio_pindev*, align 8
  %3 = alloca %struct.mv_gpio_softc*, align 8
  store %struct.mv_gpio_pindev* %0, %struct.mv_gpio_pindev** %2, align 8
  %4 = load %struct.mv_gpio_pindev*, %struct.mv_gpio_pindev** %2, align 8
  %5 = getelementptr inbounds %struct.mv_gpio_pindev, %struct.mv_gpio_pindev* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call i64 @device_get_softc(i32 %6)
  %8 = inttoptr i64 %7 to %struct.mv_gpio_softc*
  store %struct.mv_gpio_softc* %8, %struct.mv_gpio_softc** %3, align 8
  %9 = load %struct.mv_gpio_pindev*, %struct.mv_gpio_pindev** %2, align 8
  %10 = getelementptr inbounds %struct.mv_gpio_pindev, %struct.mv_gpio_pindev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %3, align 8
  %13 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp uge i64 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %53

17:                                               ; preds = %1
  %18 = call i32 (...) @MV_GPIO_LOCK()
  %19 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %3, align 8
  %20 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load %struct.mv_gpio_pindev*, %struct.mv_gpio_pindev** %2, align 8
  %23 = getelementptr inbounds %struct.mv_gpio_pindev, %struct.mv_gpio_pindev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MV_GPIO_IN_IRQ_EDGE, align 4
  %29 = load i32, i32* @MV_GPIO_IN_IRQ_DOUBLE_EDGE, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %17
  %34 = load %struct.mv_gpio_pindev*, %struct.mv_gpio_pindev** %2, align 8
  %35 = getelementptr inbounds %struct.mv_gpio_pindev, %struct.mv_gpio_pindev* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.mv_gpio_pindev*, %struct.mv_gpio_pindev** %2, align 8
  %38 = getelementptr inbounds %struct.mv_gpio_pindev, %struct.mv_gpio_pindev* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @mv_gpio_edge(i32 %36, i64 %39, i32 0)
  br label %49

41:                                               ; preds = %17
  %42 = load %struct.mv_gpio_pindev*, %struct.mv_gpio_pindev** %2, align 8
  %43 = getelementptr inbounds %struct.mv_gpio_pindev, %struct.mv_gpio_pindev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.mv_gpio_pindev*, %struct.mv_gpio_pindev** %2, align 8
  %46 = getelementptr inbounds %struct.mv_gpio_pindev, %struct.mv_gpio_pindev* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @mv_gpio_level(i32 %44, i64 %47, i32 0)
  br label %49

49:                                               ; preds = %41, %33
  %50 = load %struct.mv_gpio_pindev*, %struct.mv_gpio_pindev** %2, align 8
  %51 = call i32 @mv_gpio_int_ack(%struct.mv_gpio_pindev* %50)
  %52 = call i32 (...) @MV_GPIO_UNLOCK()
  br label %53

53:                                               ; preds = %49, %16
  ret void
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @MV_GPIO_LOCK(...) #1

declare dso_local i32 @mv_gpio_edge(i32, i64, i32) #1

declare dso_local i32 @mv_gpio_level(i32, i64, i32) #1

declare dso_local i32 @mv_gpio_int_ack(%struct.mv_gpio_pindev*) #1

declare dso_local i32 @MV_GPIO_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
