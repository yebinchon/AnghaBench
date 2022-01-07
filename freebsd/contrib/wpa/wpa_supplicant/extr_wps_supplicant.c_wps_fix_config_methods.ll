; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wps_supplicant.c_wps_fix_config_methods.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wps_supplicant.c_wps_fix_config_methods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WPS_CONFIG_DISPLAY = common dso_local global i32 0, align 4
@WPS_CONFIG_VIRT_DISPLAY = common dso_local global i32 0, align 4
@WPS_CONFIG_PHY_DISPLAY = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"WPS: Converting display to virtual_display for WPS 2.0 compliance\00", align 1
@WPS_CONFIG_PUSHBUTTON = common dso_local global i32 0, align 4
@WPS_CONFIG_VIRT_PUSHBUTTON = common dso_local global i32 0, align 4
@WPS_CONFIG_PHY_PUSHBUTTON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"WPS: Converting push_button to virtual_push_button for WPS 2.0 compliance\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @wps_fix_config_methods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_fix_config_methods(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @WPS_CONFIG_DISPLAY, align 4
  %5 = load i32, i32* @WPS_CONFIG_VIRT_DISPLAY, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @WPS_CONFIG_PHY_DISPLAY, align 4
  %8 = or i32 %6, %7
  %9 = and i32 %3, %8
  %10 = load i32, i32* @WPS_CONFIG_DISPLAY, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load i32, i32* @MSG_INFO, align 4
  %14 = call i32 @wpa_printf(i32 %13, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @WPS_CONFIG_VIRT_DISPLAY, align 4
  %16 = load i32, i32* %2, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %12, %1
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @WPS_CONFIG_PUSHBUTTON, align 4
  %21 = load i32, i32* @WPS_CONFIG_VIRT_PUSHBUTTON, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @WPS_CONFIG_PHY_PUSHBUTTON, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %19, %24
  %26 = load i32, i32* @WPS_CONFIG_PUSHBUTTON, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %18
  %29 = load i32, i32* @MSG_INFO, align 4
  %30 = call i32 @wpa_printf(i32 %29, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @WPS_CONFIG_VIRT_PUSHBUTTON, align 4
  %32 = load i32, i32* %2, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %28, %18
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
