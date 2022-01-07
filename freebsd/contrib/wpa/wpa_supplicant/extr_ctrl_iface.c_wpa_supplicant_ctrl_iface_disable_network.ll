; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpa_supplicant_ctrl_iface_disable_network.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpa_supplicant_ctrl_iface_disable_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.wpa_ssid = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"all\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"CTRL_IFACE: DISABLE_NETWORK all\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"CTRL_IFACE: DISABLE_NETWORK id=%d\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"CTRL_IFACE: Could not find network id=%d\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"CTRL_IFACE: Cannot use DISABLE_NETWORK with persistent P2P group\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i8*)* @wpa_supplicant_ctrl_iface_disable_network to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_supplicant_ctrl_iface_disable_network(%struct.wpa_supplicant* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpa_ssid*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i64 @os_strcmp(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @MSG_DEBUG, align 4
  %13 = call i32 (i32, i8*, ...) @wpa_printf(i32 %12, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store %struct.wpa_ssid* null, %struct.wpa_ssid** %7, align 8
  br label %40

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @atoi(i8* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 (i32, i8*, ...) @wpa_printf(i32 %17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %21 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.wpa_ssid* @wpa_config_get_network(i32 %22, i32 %23)
  store %struct.wpa_ssid* %24, %struct.wpa_ssid** %7, align 8
  %25 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %26 = icmp eq %struct.wpa_ssid* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %14
  %28 = load i32, i32* @MSG_DEBUG, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 (i32, i8*, ...) @wpa_printf(i32 %28, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  store i32 -1, i32* %3, align 4
  br label %44

31:                                               ; preds = %14
  %32 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %33 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @MSG_DEBUG, align 4
  %38 = call i32 (i32, i8*, ...) @wpa_printf(i32 %37, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %44

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %11
  %41 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %42 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %43 = call i32 @wpa_supplicant_disable_network(%struct.wpa_supplicant* %41, %struct.wpa_ssid* %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %36, %27
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i64 @os_strcmp(i8*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local %struct.wpa_ssid* @wpa_config_get_network(i32, i32) #1

declare dso_local i32 @wpa_supplicant_disable_network(%struct.wpa_supplicant*, %struct.wpa_ssid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
