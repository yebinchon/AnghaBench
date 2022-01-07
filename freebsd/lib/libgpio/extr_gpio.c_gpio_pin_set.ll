; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgpio/extr_gpio.c_gpio_pin_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgpio/extr_gpio.c_gpio_pin_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_req = type { i64, i32 }

@GPIO_VALUE_INVALID = common dso_local global i64 0, align 8
@GPIOSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gpio_pin_set(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.gpio_req, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* @GPIO_VALUE_INVALID, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %25

13:                                               ; preds = %3
  %14 = call i32 @bzero(%struct.gpio_req* %8, i32 16)
  %15 = load i32, i32* %6, align 4
  %16 = getelementptr inbounds %struct.gpio_req, %struct.gpio_req* %8, i32 0, i32 1
  store i32 %15, i32* %16, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds %struct.gpio_req, %struct.gpio_req* %8, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @GPIOSET, align 4
  %21 = call i64 @ioctl(i32 %19, i32 %20, %struct.gpio_req* %8)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  store i32 -1, i32* %4, align 4
  br label %25

24:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %24, %23, %12
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @bzero(%struct.gpio_req*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.gpio_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
