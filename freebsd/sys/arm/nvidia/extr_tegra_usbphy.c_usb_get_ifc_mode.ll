; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_usbphy.c_usb_get_ifc_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_usbphy.c_usb_get_ifc_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USB_IFC_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"utmi\00", align 1
@USB_IFC_TYPE_UTMI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"ulpi\00", align 1
@USB_IFC_TYPE_ULPI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Unsupported phy type: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @usb_get_ifc_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_get_ifc_mode(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @OF_getprop_alloc(i32 %11, i8* %12, i8** %8)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @USB_IFC_TYPE_UNKNOWN, align 4
  store i32 %17, i32* %4, align 4
  br label %40

18:                                               ; preds = %3
  %19 = load i32, i32* @USB_IFC_TYPE_UNKNOWN, align 4
  store i32 %19, i32* %10, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @USB_IFC_TYPE_UTMI, align 4
  store i32 %24, i32* %10, align 4
  br label %36

25:                                               ; preds = %18
  %26 = load i8*, i8** %8, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @USB_IFC_TYPE_ULPI, align 4
  store i32 %30, i32* %10, align 4
  br label %35

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @device_printf(i32 %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %31, %29
  br label %36

36:                                               ; preds = %35, %23
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @OF_prop_free(i8* %37)
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %36, %16
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @OF_getprop_alloc(i32, i8*, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @device_printf(i32, i8*, i8*) #1

declare dso_local i32 @OF_prop_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
