; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgpio/extr_gpio.c_gpio_pin_set_flag.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgpio/extr_gpio.c_gpio_pin_set_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @gpio_pin_set_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_pin_set_flag(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = call i32 @bzero(%struct.TYPE_5__* %8, i32 8)
  %10 = load i32, i32* %6, align 4
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @gpio_pin_config(i32 %12, %struct.TYPE_5__* %8)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %21

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @gpio_pin_set_flags(i32 %19, %struct.TYPE_5__* %8)
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %16, %15
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

declare dso_local i32 @bzero(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @gpio_pin_config(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @gpio_pin_set_flags(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
