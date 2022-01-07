; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_rt1310_gpio.c_rt1310_gpio_pin_getcaps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_rt1310_gpio.c_rt1310_gpio_pin_getcaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt1310_gpio_pinmap = type { i64 }

@RT_GPIO_NPINS = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64*)* @rt1310_gpio_pin_getcaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt1310_gpio_pin_getcaps(i32 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.rt1310_gpio_pinmap*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @RT_GPIO_NPINS, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @ENODEV, align 4
  store i32 %13, i32* %4, align 4
  br label %21

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = call %struct.rt1310_gpio_pinmap* @rt1310_gpio_get_pinmap(i64 %15)
  store %struct.rt1310_gpio_pinmap* %16, %struct.rt1310_gpio_pinmap** %8, align 8
  %17 = load %struct.rt1310_gpio_pinmap*, %struct.rt1310_gpio_pinmap** %8, align 8
  %18 = getelementptr inbounds %struct.rt1310_gpio_pinmap, %struct.rt1310_gpio_pinmap* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64*, i64** %7, align 8
  store i64 %19, i64* %20, align 8
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %14, %12
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

declare dso_local %struct.rt1310_gpio_pinmap* @rt1310_gpio_get_pinmap(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
