; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_gpio.c_mv_gpio_debounce_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_gpio.c_mv_gpio_debounce_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callout = type { i32 }
%struct.mv_gpio_pindev = type { i32, i32, i32, i32 }
%struct.mv_gpio_softc = type { %struct.callout** }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@DEBOUNCE_CHECK_TICKS = common dso_local global i32 0, align 4
@mv_gpio_debounce = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @mv_gpio_debounce_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_gpio_debounce_start(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.callout*, align 8
  %6 = alloca %struct.mv_gpio_pindev, align 4
  %7 = alloca %struct.mv_gpio_pindev*, align 8
  %8 = alloca %struct.mv_gpio_softc*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = getelementptr inbounds %struct.mv_gpio_pindev, %struct.mv_gpio_pindev* %6, i32 0, i32 0
  %10 = load i32, i32* %3, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.mv_gpio_pindev, %struct.mv_gpio_pindev* %6, i32 0, i32 1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.mv_gpio_pindev, %struct.mv_gpio_pindev* %6, i32 0, i32 2
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.mv_gpio_pindev, %struct.mv_gpio_pindev* %6, i32 0, i32 3
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @device_get_softc(i32 %15)
  %17 = inttoptr i64 %16 to %struct.mv_gpio_softc*
  store %struct.mv_gpio_softc* %17, %struct.mv_gpio_softc** %8, align 8
  %18 = call i32 (...) @MV_GPIO_ASSERT_LOCKED()
  %19 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %8, align 8
  %20 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %19, i32 0, i32 0
  %21 = load %struct.callout**, %struct.callout*** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.callout*, %struct.callout** %21, i64 %23
  %25 = load %struct.callout*, %struct.callout** %24, align 8
  store %struct.callout* %25, %struct.callout** %5, align 8
  %26 = load %struct.callout*, %struct.callout** %5, align 8
  %27 = icmp eq %struct.callout* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = call i32 @mv_gpio_int_ack(%struct.mv_gpio_pindev* %6)
  br label %61

30:                                               ; preds = %2
  %31 = load %struct.callout*, %struct.callout** %5, align 8
  %32 = call i64 @callout_pending(%struct.callout* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load %struct.callout*, %struct.callout** %5, align 8
  %36 = call i64 @callout_active(%struct.callout* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34, %30
  %39 = call i32 @mv_gpio_int_ack(%struct.mv_gpio_pindev* %6)
  br label %61

40:                                               ; preds = %34
  %41 = load i32, i32* @M_DEVBUF, align 4
  %42 = load i32, i32* @M_WAITOK, align 4
  %43 = call i64 @malloc(i32 16, i32 %41, i32 %42)
  %44 = inttoptr i64 %43 to %struct.mv_gpio_pindev*
  store %struct.mv_gpio_pindev* %44, %struct.mv_gpio_pindev** %7, align 8
  %45 = load %struct.mv_gpio_pindev*, %struct.mv_gpio_pindev** %7, align 8
  %46 = icmp eq %struct.mv_gpio_pindev* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = call i32 @mv_gpio_int_ack(%struct.mv_gpio_pindev* %6)
  br label %61

49:                                               ; preds = %40
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.mv_gpio_pindev*, %struct.mv_gpio_pindev** %7, align 8
  %52 = getelementptr inbounds %struct.mv_gpio_pindev, %struct.mv_gpio_pindev* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %3, align 4
  %54 = load %struct.mv_gpio_pindev*, %struct.mv_gpio_pindev** %7, align 8
  %55 = getelementptr inbounds %struct.mv_gpio_pindev, %struct.mv_gpio_pindev* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.callout*, %struct.callout** %5, align 8
  %57 = load i32, i32* @DEBOUNCE_CHECK_TICKS, align 4
  %58 = load i32, i32* @mv_gpio_debounce, align 4
  %59 = load %struct.mv_gpio_pindev*, %struct.mv_gpio_pindev** %7, align 8
  %60 = call i32 @callout_reset(%struct.callout* %56, i32 %57, i32 %58, %struct.mv_gpio_pindev* %59)
  br label %61

61:                                               ; preds = %49, %47, %38, %28
  ret void
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @MV_GPIO_ASSERT_LOCKED(...) #1

declare dso_local i32 @mv_gpio_int_ack(%struct.mv_gpio_pindev*) #1

declare dso_local i64 @callout_pending(%struct.callout*) #1

declare dso_local i64 @callout_active(%struct.callout*) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @callout_reset(%struct.callout*, i32, i32, %struct.mv_gpio_pindev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
