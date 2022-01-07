; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_gpio.c_ar9300_gpio_cfg_output_mux.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_gpio.c_ar9300_gpio_cfg_output_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@AR_GPIO_OUTPUT_MUX3 = common dso_local global i32 0, align 4
@AR_GPIO_OUTPUT_MUX2 = common dso_local global i32 0, align 4
@AR_GPIO_OUTPUT_MUX1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*, i32, i32)* @ar9300_gpio_cfg_output_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9300_gpio_cfg_output_mux(%struct.ath_hal* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp sgt i32 %9, 11
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %13 = load i32, i32* @AR_GPIO_OUTPUT_MUX3, align 4
  %14 = call i32 @AR_HOSTIF_REG(%struct.ath_hal* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  br label %27

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = icmp sgt i32 %16, 5
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %20 = load i32, i32* @AR_GPIO_OUTPUT_MUX2, align 4
  %21 = call i32 @AR_HOSTIF_REG(%struct.ath_hal* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  br label %26

22:                                               ; preds = %15
  %23 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %24 = load i32, i32* @AR_GPIO_OUTPUT_MUX1, align 4
  %25 = call i32 @AR_HOSTIF_REG(%struct.ath_hal* %23, i32 %24)
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %22, %18
  br label %27

27:                                               ; preds = %26, %11
  %28 = load i32, i32* %5, align 4
  %29 = srem i32 %28, 6
  %30 = mul nsw i32 %29, 5
  store i32 %30, i32* %8, align 4
  %31 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %8, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* %8, align 4
  %37 = shl i32 31, %36
  %38 = call i32 @OS_REG_RMW(%struct.ath_hal* %31, i32 %32, i32 %35, i32 %37)
  ret void
}

declare dso_local i32 @AR_HOSTIF_REG(%struct.ath_hal*, i32) #1

declare dso_local i32 @OS_REG_RMW(%struct.ath_hal*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
