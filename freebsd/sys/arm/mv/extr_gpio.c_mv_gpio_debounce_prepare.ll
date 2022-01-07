; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_gpio.c_mv_gpio_debounce_prepare.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_gpio.c_mv_gpio_debounce_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callout = type { i32 }
%struct.mv_gpio_softc = type { %struct.callout** }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @mv_gpio_debounce_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_gpio_debounce_prepare(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.callout*, align 8
  %7 = alloca %struct.mv_gpio_softc*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @device_get_softc(i32 %8)
  %10 = inttoptr i64 %9 to %struct.mv_gpio_softc*
  store %struct.mv_gpio_softc* %10, %struct.mv_gpio_softc** %7, align 8
  %11 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %7, align 8
  %12 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %11, i32 0, i32 0
  %13 = load %struct.callout**, %struct.callout*** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.callout*, %struct.callout** %13, i64 %15
  %17 = load %struct.callout*, %struct.callout** %16, align 8
  store %struct.callout* %17, %struct.callout** %6, align 8
  %18 = load %struct.callout*, %struct.callout** %6, align 8
  %19 = icmp eq %struct.callout* %18, null
  br i1 %19, label %20, label %39

20:                                               ; preds = %2
  %21 = load i32, i32* @M_DEVBUF, align 4
  %22 = load i32, i32* @M_WAITOK, align 4
  %23 = call i64 @malloc(i32 4, i32 %21, i32 %22)
  %24 = inttoptr i64 %23 to %struct.callout*
  store %struct.callout* %24, %struct.callout** %6, align 8
  %25 = load %struct.callout*, %struct.callout** %6, align 8
  %26 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %7, align 8
  %27 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %26, i32 0, i32 0
  %28 = load %struct.callout**, %struct.callout*** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.callout*, %struct.callout** %28, i64 %30
  store %struct.callout* %25, %struct.callout** %31, align 8
  %32 = load %struct.callout*, %struct.callout** %6, align 8
  %33 = icmp eq %struct.callout* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %20
  %35 = load i32, i32* @ENOMEM, align 4
  store i32 %35, i32* %3, align 4
  br label %40

36:                                               ; preds = %20
  %37 = load %struct.callout*, %struct.callout** %6, align 8
  %38 = call i32 @callout_init(%struct.callout* %37, i32 1)
  br label %39

39:                                               ; preds = %36, %2
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %34
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @callout_init(%struct.callout*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
