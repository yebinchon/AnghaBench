; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_gpio.c_mv_gpio_out_en.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_gpio.c_mv_gpio_out_en.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_gpio_softc = type { i64 }

@GPIO_DATA_OUT_EN_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64)* @mv_gpio_out_en to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_gpio_out_en(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mv_gpio_softc*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @device_get_softc(i32 %9)
  %11 = inttoptr i64 %10 to %struct.mv_gpio_softc*
  store %struct.mv_gpio_softc* %11, %struct.mv_gpio_softc** %8, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %8, align 8
  %14 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %32

18:                                               ; preds = %3
  %19 = load i64, i64* @GPIO_DATA_OUT_EN_CTRL, align 8
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @mv_gpio_reg_clear(i32 %23, i64 %24, i64 %25)
  br label %32

27:                                               ; preds = %18
  %28 = load i32, i32* %4, align 4
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @mv_gpio_reg_set(i32 %28, i64 %29, i64 %30)
  br label %32

32:                                               ; preds = %17, %27, %22
  ret void
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @mv_gpio_reg_clear(i32, i64, i64) #1

declare dso_local i32 @mv_gpio_reg_set(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
