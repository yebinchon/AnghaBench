; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_gpio.c_bcm_gpio_str_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_gpio.c_bcm_gpio_str_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"input\00", align 1
@BCM2835_FSEL_GPIO_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@BCM2835_FSEL_GPIO_OUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"alt0\00", align 1
@BCM2835_FSEL_ALT0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"alt1\00", align 1
@BCM2835_FSEL_ALT1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"alt2\00", align 1
@BCM2835_FSEL_ALT2 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"alt3\00", align 1
@BCM2835_FSEL_ALT3 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"alt4\00", align 1
@BCM2835_FSEL_ALT4 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"alt5\00", align 1
@BCM2835_FSEL_ALT5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @bcm_gpio_str_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_gpio_str_func(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i64 @strcasecmp(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @BCM2835_FSEL_GPIO_IN, align 4
  %11 = load i32*, i32** %5, align 8
  store i32 %10, i32* %11, align 4
  br label %69

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @strcasecmp(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @BCM2835_FSEL_GPIO_OUT, align 4
  %18 = load i32*, i32** %5, align 8
  store i32 %17, i32* %18, align 4
  br label %68

19:                                               ; preds = %12
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @strcasecmp(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @BCM2835_FSEL_ALT0, align 4
  %25 = load i32*, i32** %5, align 8
  store i32 %24, i32* %25, align 4
  br label %67

26:                                               ; preds = %19
  %27 = load i8*, i8** %4, align 8
  %28 = call i64 @strcasecmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @BCM2835_FSEL_ALT1, align 4
  %32 = load i32*, i32** %5, align 8
  store i32 %31, i32* %32, align 4
  br label %66

33:                                               ; preds = %26
  %34 = load i8*, i8** %4, align 8
  %35 = call i64 @strcasecmp(i8* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @BCM2835_FSEL_ALT2, align 4
  %39 = load i32*, i32** %5, align 8
  store i32 %38, i32* %39, align 4
  br label %65

40:                                               ; preds = %33
  %41 = load i8*, i8** %4, align 8
  %42 = call i64 @strcasecmp(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* @BCM2835_FSEL_ALT3, align 4
  %46 = load i32*, i32** %5, align 8
  store i32 %45, i32* %46, align 4
  br label %64

47:                                               ; preds = %40
  %48 = load i8*, i8** %4, align 8
  %49 = call i64 @strcasecmp(i8* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* @BCM2835_FSEL_ALT4, align 4
  %53 = load i32*, i32** %5, align 8
  store i32 %52, i32* %53, align 4
  br label %63

54:                                               ; preds = %47
  %55 = load i8*, i8** %4, align 8
  %56 = call i64 @strcasecmp(i8* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* @BCM2835_FSEL_ALT5, align 4
  %60 = load i32*, i32** %5, align 8
  store i32 %59, i32* %60, align 4
  br label %62

61:                                               ; preds = %54
  store i32 -1, i32* %3, align 4
  br label %70

62:                                               ; preds = %58
  br label %63

63:                                               ; preds = %62, %51
  br label %64

64:                                               ; preds = %63, %44
  br label %65

65:                                               ; preds = %64, %37
  br label %66

66:                                               ; preds = %65, %30
  br label %67

67:                                               ; preds = %66, %23
  br label %68

68:                                               ; preds = %67, %16
  br label %69

69:                                               ; preds = %68, %9
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %61
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
