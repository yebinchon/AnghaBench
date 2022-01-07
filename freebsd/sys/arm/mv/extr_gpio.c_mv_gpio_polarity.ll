; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_gpio.c_mv_gpio_polarity.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_gpio.c_mv_gpio_polarity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_gpio_softc = type { i64 }

@GPIO_DATA_IN_POLAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64, i64)* @mv_gpio_polarity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_gpio_polarity(i32 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.mv_gpio_softc*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @device_get_softc(i32 %12)
  %14 = inttoptr i64 %13 to %struct.mv_gpio_softc*
  store %struct.mv_gpio_softc* %14, %struct.mv_gpio_softc** %11, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %11, align 8
  %17 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %59

21:                                               ; preds = %4
  %22 = load i64, i64* @GPIO_DATA_IN_POLAR, align 8
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = load i64, i64* %9, align 8
  %28 = call i64 @mv_gpio_reg_read(i32 %26, i64 %27)
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @GPIO(i64 %29)
  %31 = and i64 %28, %30
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = load i32, i32* %5, align 4
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @mv_gpio_reg_clear(i32 %35, i64 %36, i64 %37)
  br label %44

39:                                               ; preds = %25
  %40 = load i32, i32* %5, align 4
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @mv_gpio_reg_set(i32 %40, i64 %41, i64 %42)
  br label %44

44:                                               ; preds = %39, %34
  br label %59

45:                                               ; preds = %21
  %46 = load i64, i64* %7, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i32, i32* %5, align 4
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @mv_gpio_reg_set(i32 %49, i64 %50, i64 %51)
  br label %58

53:                                               ; preds = %45
  %54 = load i32, i32* %5, align 4
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @mv_gpio_reg_clear(i32 %54, i64 %55, i64 %56)
  br label %58

58:                                               ; preds = %53, %48
  br label %59

59:                                               ; preds = %20, %58, %44
  ret void
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i64 @mv_gpio_reg_read(i32, i64) #1

declare dso_local i64 @GPIO(i64) #1

declare dso_local i32 @mv_gpio_reg_clear(i32, i64, i64) #1

declare dso_local i32 @mv_gpio_reg_set(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
