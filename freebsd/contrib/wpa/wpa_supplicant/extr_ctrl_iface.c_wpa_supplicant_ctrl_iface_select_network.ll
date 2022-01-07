; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpa_supplicant_ctrl_iface_select_network.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpa_supplicant_ctrl_iface_select_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.wpa_ssid = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"any\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"CTRL_IFACE: SELECT_NETWORK any\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"CTRL_IFACE: SELECT_NETWORK id=%d\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"CTRL_IFACE: Could not find network id=%d\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"CTRL_IFACE: Cannot use SELECT_NETWORK with persistent P2P group\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c" freq=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i8*)* @wpa_supplicant_ctrl_iface_select_network to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_supplicant_ctrl_iface_select_network(%struct.wpa_supplicant* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpa_ssid*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @os_strncmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = call i32 (i32, i8*, ...) @wpa_printf(i32 %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store %struct.wpa_ssid* null, %struct.wpa_ssid** %7, align 8
  br label %42

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @atoi(i8* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @MSG_DEBUG, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 (i32, i8*, ...) @wpa_printf(i32 %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %20)
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %23 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call %struct.wpa_ssid* @wpa_config_get_network(i32 %24, i32 %25)
  store %struct.wpa_ssid* %26, %struct.wpa_ssid** %7, align 8
  %27 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %28 = icmp eq %struct.wpa_ssid* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %16
  %30 = load i32, i32* @MSG_DEBUG, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 (i32, i8*, ...) @wpa_printf(i32 %30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  store i32 -1, i32* %3, align 4
  br label %73

33:                                               ; preds = %16
  %34 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %35 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = call i32 (i32, i8*, ...) @wpa_printf(i32 %39, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %73

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41, %13
  %43 = load i8*, i8** %5, align 8
  %44 = call i8* @os_strstr(i8* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i8* %44, i8** %8, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %63

47:                                               ; preds = %42
  %48 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 6
  %51 = call i32* @freq_range_to_channel_list(%struct.wpa_supplicant* %48, i8* %50)
  store i32* %51, i32** %9, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %47
  %55 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %56 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @os_free(i32* %57)
  %59 = load i32*, i32** %9, align 8
  %60 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %61 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %60, i32 0, i32 0
  store i32* %59, i32** %61, align 8
  br label %62

62:                                               ; preds = %54, %47
  br label %63

63:                                               ; preds = %62, %42
  %64 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %65 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %68 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  %70 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %71 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %72 = call i32 @wpa_supplicant_select_network(%struct.wpa_supplicant* %70, %struct.wpa_ssid* %71)
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %63, %38, %29
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local %struct.wpa_ssid* @wpa_config_get_network(i32, i32) #1

declare dso_local i8* @os_strstr(i8*, i8*) #1

declare dso_local i32* @freq_range_to_channel_list(%struct.wpa_supplicant*, i8*) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @wpa_supplicant_select_network(%struct.wpa_supplicant*, %struct.wpa_ssid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
