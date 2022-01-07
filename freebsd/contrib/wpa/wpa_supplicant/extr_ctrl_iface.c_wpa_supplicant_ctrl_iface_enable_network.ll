; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpa_supplicant_ctrl_iface_enable_network.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpa_supplicant_ctrl_iface_enable_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.wpa_ssid = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"all\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"CTRL_IFACE: ENABLE_NETWORK all\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"CTRL_IFACE: ENABLE_NETWORK id=%d\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"CTRL_IFACE: Could not find network id=%d\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"CTRL_IFACE: Cannot use ENABLE_NETWORK with persistent P2P group\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c" no-connect\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i8*)* @wpa_supplicant_ctrl_iface_enable_network to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_supplicant_ctrl_iface_enable_network(%struct.wpa_supplicant* %0, i8* %1) #0 {
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
  %13 = call i32 (i32, i8*, ...) @wpa_printf(i32 %12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store %struct.wpa_ssid* null, %struct.wpa_ssid** %7, align 8
  br label %47

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @atoi(i8* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 (i32, i8*, ...) @wpa_printf(i32 %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %21 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
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
  br label %57

31:                                               ; preds = %14
  %32 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %33 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @MSG_DEBUG, align 4
  %38 = call i32 (i32, i8*, ...) @wpa_printf(i32 %37, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %57

39:                                               ; preds = %31
  %40 = load i8*, i8** %5, align 8
  %41 = call i64 @os_strstr(i8* %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %45 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %44, i32 0, i32 0
  store i32 0, i32* %45, align 4
  store i32 0, i32* %3, align 4
  br label %57

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %11
  %48 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %49 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %52 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %55 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %56 = call i32 @wpa_supplicant_enable_network(%struct.wpa_supplicant* %54, %struct.wpa_ssid* %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %47, %43, %36, %27
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @os_strcmp(i8*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local %struct.wpa_ssid* @wpa_config_get_network(i32, i32) #1

declare dso_local i64 @os_strstr(i8*, i8*) #1

declare dso_local i32 @wpa_supplicant_enable_network(%struct.wpa_supplicant*, %struct.wpa_ssid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
