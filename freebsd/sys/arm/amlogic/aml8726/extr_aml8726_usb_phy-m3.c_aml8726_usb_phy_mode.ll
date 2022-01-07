; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_usb_phy-m3.c_aml8726_usb_phy_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_usb_phy-m3.c_aml8726_usb_phy_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"synopsys,designware-hs-otg2\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"dr_mode\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@AML_USB_PHY_MISC_ID_OVERIDE_EN = common dso_local global i32 0, align 4
@AML_USB_PHY_MISC_ID_OVERIDE_HOST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"peripheral\00", align 1
@AML_USB_PHY_MISC_ID_OVERIDE_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @aml8726_usb_phy_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_usb_phy_mode(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @OF_finddevice(i8* %9)
  store i32 %10, i32* %7, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @ENXIO, align 4
  store i32 %13, i32* %3, align 4
  br label %49

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @fdt_is_compatible_strict(i32 %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %3, align 4
  br label %49

20:                                               ; preds = %14
  %21 = load i32*, i32** %5, align 8
  store i32 0, i32* %21, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @OF_getprop_alloc(i32 %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %6)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp sle i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %49

27:                                               ; preds = %20
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @strcasecmp(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i32, i32* @AML_USB_PHY_MISC_ID_OVERIDE_EN, align 4
  %33 = load i32, i32* @AML_USB_PHY_MISC_ID_OVERIDE_HOST, align 4
  %34 = or i32 %32, %33
  %35 = load i32*, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  br label %46

36:                                               ; preds = %27
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @strcasecmp(i8* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i32, i32* @AML_USB_PHY_MISC_ID_OVERIDE_EN, align 4
  %42 = load i32, i32* @AML_USB_PHY_MISC_ID_OVERIDE_DEVICE, align 4
  %43 = or i32 %41, %42
  %44 = load i32*, i32** %5, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %40, %36
  br label %46

46:                                               ; preds = %45, %31
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @OF_prop_free(i8* %47)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %46, %26, %18, %12
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i64 @fdt_is_compatible_strict(i32, i8*) #1

declare dso_local i64 @OF_getprop_alloc(i32, i8*, i8**) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @OF_prop_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
