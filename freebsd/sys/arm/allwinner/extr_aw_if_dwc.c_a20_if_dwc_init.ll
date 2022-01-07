; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_if_dwc.c_a20_if_dwc_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_if_dwc.c_a20_if_dwc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"phy-mode\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"allwinner_gmac_tx\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"could not get tx clk\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"rgmii\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"gmac_int_tx\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"mii_phy_tx\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"could not get clock '%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"could not set tx clk parent\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"phy-supply\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"could not enable PHY regulator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @a20_if_dwc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a20_if_dwc_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @ofw_bus_get_node(i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call i64 @OF_getprop_alloc(i32 %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %5)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @clk_get_by_ofw_name(i32 %17, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* %3, align 4
  %23 = call i32 (i32, i8*, ...) @device_printf(i32 %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %2, align 4
  br label %68

25:                                               ; preds = %16
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  br label %31

30:                                               ; preds = %25
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  br label %31

31:                                               ; preds = %30, %29
  %32 = load i32, i32* %3, align 4
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @clk_get_by_name(i32 %32, i8* %33, i32* %7)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load i32, i32* %3, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 (i32, i8*, ...) @device_printf(i32 %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %2, align 4
  br label %68

42:                                               ; preds = %31
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @clk_set_parent_by_clk(i32 %43, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i32, i32* %3, align 4
  %50 = call i32 (i32, i8*, ...) @device_printf(i32 %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %2, align 4
  br label %68

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52, %1
  %54 = load i32, i32* %3, align 4
  %55 = call i64 @regulator_get_by_ofw_property(i32 %54, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32* %8)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @regulator_enable(i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* %3, align 4
  %64 = call i32 (i32, i8*, ...) @device_printf(i32 %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %2, align 4
  br label %68

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66, %53
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %62, %48, %37, %21
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @OF_getprop_alloc(i32, i8*, i8**) #1

declare dso_local i32 @clk_get_by_ofw_name(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @clk_get_by_name(i32, i8*, i32*) #1

declare dso_local i32 @clk_set_parent_by_clk(i32, i32) #1

declare dso_local i64 @regulator_get_by_ofw_property(i32, i32, i8*, i32*) #1

declare dso_local i32 @regulator_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
