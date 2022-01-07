; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgpio/extr_gpio.c_gpio_pin_set_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgpio/extr_gpio.c_gpio_pin_set_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_pin = type { i32, i32 }

@GPIOMAXNAME = common dso_local global i32 0, align 4
@GPIOSETNAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gpio_pin_set_name(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.gpio_pin, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %27

12:                                               ; preds = %3
  %13 = call i32 @bzero(%struct.gpio_pin* %8, i32 8)
  %14 = load i32, i32* %6, align 4
  %15 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %8, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %8, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* @GPIOMAXNAME, align 4
  %20 = call i32 @strlcpy(i32 %17, i8* %18, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @GPIOSETNAME, align 4
  %23 = call i64 @ioctl(i32 %21, i32 %22, %struct.gpio_pin* %8)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %12
  store i32 -1, i32* %4, align 4
  br label %27

26:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %25, %11
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @bzero(%struct.gpio_pin*, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.gpio_pin*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
