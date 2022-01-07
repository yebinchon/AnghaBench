; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpa_supplicant_ctrl_iface_bssid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpa_supplicant_ctrl_iface_bssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.wpa_ssid = type { i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"CTRL_IFACE: id=%d bssid='%s'\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"CTRL_IFACE: invalid BSSID '%s'\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"CTRL_IFACE: Could not find SSID id=%d to update\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i8*)* @wpa_supplicant_ctrl_iface_bssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_supplicant_ctrl_iface_bssid(%struct.wpa_supplicant* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpa_ssid*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i32, i32* @ETH_ALEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i8* @os_strchr(i8* %16, i8 signext 32)
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %61

21:                                               ; preds = %2
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %6, align 8
  store i8 0, i8* %22, align 1
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @atoi(i8* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @MSG_DEBUG, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 (i32, i8*, ...) @wpa_printf(i32 %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %27, i8* %28)
  %30 = load i8*, i8** %6, align 8
  %31 = call i64 @hwaddr_aton(i8* %30, i32* %15)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %21
  %34 = load i32, i32* @MSG_DEBUG, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 (i32, i8*, ...) @wpa_printf(i32 %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %61

37:                                               ; preds = %21
  %38 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %39 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call %struct.wpa_ssid* @wpa_config_get_network(i32 %40, i32 %41)
  store %struct.wpa_ssid* %42, %struct.wpa_ssid** %8, align 8
  %43 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  %44 = icmp eq %struct.wpa_ssid* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load i32, i32* @MSG_DEBUG, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 (i32, i8*, ...) @wpa_printf(i32 %46, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %61

49:                                               ; preds = %37
  %50 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  %51 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ETH_ALEN, align 4
  %54 = call i32 @os_memcpy(i32 %52, i32* %15, i32 %53)
  %55 = call i32 @is_zero_ether_addr(i32* %15)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  %60 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %61

61:                                               ; preds = %49, %45, %33, %20
  %62 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i64 @hwaddr_aton(i8*, i32*) #2

declare dso_local %struct.wpa_ssid* @wpa_config_get_network(i32, i32) #2

declare dso_local i32 @os_memcpy(i32, i32*, i32) #2

declare dso_local i32 @is_zero_ether_addr(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
