; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_phy_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_awg_phy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"allwinner,reset-gpio\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"allwinner,reset-delays-us\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GPIO_PIN_LOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"allwinner,reset-active-low\00", align 1
@GPIO_PIN_HIGH = common dso_local global i32 0, align 4
@GPIO_ACTIVE_LOW = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @awg_phy_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @awg_phy_reset(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [4 x i32], align 16
  %5 = alloca [3 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @ofw_bus_get_node(i32* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %16 = call i64 @OF_getencprop(i32 %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %15, i32 16)
  %17 = icmp sle i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %95

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %22 = call i64 @OF_getencprop(i32 %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32* %21, i32 12)
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %2, align 4
  br label %95

26:                                               ; preds = %19
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %28 = load i32, i32* %27, align 16
  %29 = call i32 @OF_node_from_xref(i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %31 = load i32, i32* %30, align 16
  %32 = call i32* @OF_device_from_xref(i32 %31)
  store i32* %32, i32** %8, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* @ENXIO, align 4
  store i32 %35, i32* %2, align 4
  br label %95

36:                                               ; preds = %26
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %41 = call i64 @nitems(i32* %40)
  %42 = sub nsw i64 %41, 1
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = call i64 @GPIO_MAP_GPIOS(i32* %37, i32 %38, i32 %39, i64 %42, i32* %44, i32* %9, i32* %10)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i32, i32* @ENXIO, align 4
  store i32 %48, i32* %2, align 4
  br label %95

49:                                               ; preds = %36
  %50 = load i32, i32* @GPIO_PIN_LOW, align 4
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i64 @OF_hasprop(i32 %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @GPIO_PIN_HIGH, align 4
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %54, %49
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @GPIO_ACTIVE_LOW, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %61, %56
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %70 = call i32 @GPIO_PIN_SETFLAGS(i32* %67, i32 %68, i32 %69)
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @GPIO_PIN_SET(i32* %71, i32 %72, i32 %73)
  %75 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @DELAY(i32 %76)
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i32 @GPIO_PIN_SET(i32* %78, i32 %79, i32 %83)
  %85 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @DELAY(i32 %86)
  %88 = load i32*, i32** %8, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @GPIO_PIN_SET(i32* %88, i32 %89, i32 %90)
  %92 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @DELAY(i32 %93)
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %66, %47, %34, %24, %18
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @ofw_bus_get_node(i32*) #1

declare dso_local i64 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @OF_node_from_xref(i32) #1

declare dso_local i32* @OF_device_from_xref(i32) #1

declare dso_local i64 @GPIO_MAP_GPIOS(i32*, i32, i32, i64, i32*, i32*, i32*) #1

declare dso_local i64 @nitems(i32*) #1

declare dso_local i64 @OF_hasprop(i32, i8*) #1

declare dso_local i32 @GPIO_PIN_SETFLAGS(i32*, i32, i32) #1

declare dso_local i32 @GPIO_PIN_SET(i32*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
