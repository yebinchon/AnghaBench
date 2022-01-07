; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_gpio.c_aw_gpio_parse_bias.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_gpio.c_aw_gpio_parse_bias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"pull\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"allwinner,pull\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"bias-disable\00", align 1
@AW_GPIO_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"bias-pull-up\00", align 1
@AW_GPIO_PULLUP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"bias-pull-down\00", align 1
@AW_GPIO_PULLDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @aw_gpio_parse_bias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_gpio_parse_bias(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @OF_getencprop(i32 %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %4, i32 4)
  %7 = icmp ne i32 %6, -1
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* %2, align 4
  br label %36

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @OF_getencprop(i32 %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %4, i32 4)
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %36

16:                                               ; preds = %10
  %17 = load i32, i32* %3, align 4
  %18 = call i64 @OF_hasprop(i32 %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @AW_GPIO_NONE, align 4
  store i32 %21, i32* %2, align 4
  br label %36

22:                                               ; preds = %16
  %23 = load i32, i32* %3, align 4
  %24 = call i64 @OF_hasprop(i32 %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @AW_GPIO_PULLUP, align 4
  store i32 %27, i32* %2, align 4
  br label %36

28:                                               ; preds = %22
  %29 = load i32, i32* %3, align 4
  %30 = call i64 @OF_hasprop(i32 %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @AW_GPIO_PULLDOWN, align 4
  store i32 %33, i32* %2, align 4
  br label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @AW_GPIO_NONE, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %32, %26, %20, %14, %8
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i64 @OF_hasprop(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
