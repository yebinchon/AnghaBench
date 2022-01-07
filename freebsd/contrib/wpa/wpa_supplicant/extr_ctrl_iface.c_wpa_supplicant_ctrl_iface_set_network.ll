; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpa_supplicant_ctrl_iface_set_network.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpa_supplicant_ctrl_iface_set_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.wpa_ssid = type { i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"CTRL_IFACE: SET_NETWORK id=%d name='%s'\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"CTRL_IFACE: value\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"CTRL_IFACE: Could not find network id=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i8*)* @wpa_supplicant_ctrl_iface_set_network to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_supplicant_ctrl_iface_set_network(%struct.wpa_supplicant* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wpa_ssid*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i8* %1, i8** %5, align 8
  %16 = load i32, i32* @ETH_ALEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %13, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %14, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i8* @os_strchr(i8* %20, i8 signext 32)
  store i8* %21, i8** %11, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %115

25:                                               ; preds = %2
  %26 = load i8*, i8** %11, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %11, align 8
  store i8 0, i8* %26, align 1
  %28 = load i8*, i8** %11, align 8
  %29 = call i8* @os_strchr(i8* %28, i8 signext 32)
  store i8* %29, i8** %12, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %115

33:                                               ; preds = %25
  %34 = load i8*, i8** %12, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %12, align 8
  store i8 0, i8* %34, align 1
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @atoi(i8* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* @MSG_DEBUG, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i8*, i8** %11, align 8
  %41 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %39, i8* %40)
  %42 = load i32, i32* @MSG_DEBUG, align 4
  %43 = load i8*, i8** %12, align 8
  %44 = bitcast i8* %43 to i32*
  %45 = load i8*, i8** %12, align 8
  %46 = call i32 @os_strlen(i8* %45)
  %47 = call i32 @wpa_hexdump_ascii_key(i32 %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %44, i32 %46)
  %48 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %49 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call %struct.wpa_ssid* @wpa_config_get_network(i32 %50, i32 %51)
  store %struct.wpa_ssid* %52, %struct.wpa_ssid** %10, align 8
  %53 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %54 = icmp eq %struct.wpa_ssid* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %33
  %56 = load i32, i32* @MSG_DEBUG, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %56, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %115

59:                                               ; preds = %33
  %60 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %61 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %8, align 4
  %63 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %64 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %9, align 4
  %66 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %67 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ETH_ALEN, align 4
  %70 = call i32 @os_memcpy(i32* %19, i32 %68, i32 %69)
  %71 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %72 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = call i32 @wpa_supplicant_ctrl_iface_update_network(%struct.wpa_supplicant* %71, %struct.wpa_ssid* %72, i8* %73, i8* %74)
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %59
  %79 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %80 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %91, label %84

84:                                               ; preds = %78
  %85 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %86 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @ETH_ALEN, align 4
  %89 = call i64 @os_memcmp(i32 %87, i32* %19, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %84, %78
  %92 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %93 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %94 = call i32 @wpas_notify_network_bssid_set_changed(%struct.wpa_supplicant* %92, %struct.wpa_ssid* %93)
  br label %95

95:                                               ; preds = %91, %84, %59
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %98 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %96, %99
  br i1 %100, label %101, label %113

101:                                              ; preds = %95
  %102 = load i32, i32* %9, align 4
  %103 = icmp eq i32 %102, 2
  br i1 %103, label %109, label %104

104:                                              ; preds = %101
  %105 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %106 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 2
  br i1 %108, label %109, label %113

109:                                              ; preds = %104, %101
  %110 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %111 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %112 = call i32 @wpas_notify_network_type_changed(%struct.wpa_supplicant* %110, %struct.wpa_ssid* %111)
  br label %113

113:                                              ; preds = %109, %104, %95
  %114 = load i32, i32* %7, align 4
  store i32 %114, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %115

115:                                              ; preds = %113, %55, %32, %24
  %116 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %116)
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @os_strchr(i8*, i8 signext) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @wpa_printf(i32, i8*, i32, ...) #2

declare dso_local i32 @wpa_hexdump_ascii_key(i32, i8*, i32*, i32) #2

declare dso_local i32 @os_strlen(i8*) #2

declare dso_local %struct.wpa_ssid* @wpa_config_get_network(i32, i32) #2

declare dso_local i32 @os_memcpy(i32*, i32, i32) #2

declare dso_local i32 @wpa_supplicant_ctrl_iface_update_network(%struct.wpa_supplicant*, %struct.wpa_ssid*, i8*, i8*) #2

declare dso_local i64 @os_memcmp(i32, i32*, i32) #2

declare dso_local i32 @wpas_notify_network_bssid_set_changed(%struct.wpa_supplicant*, %struct.wpa_ssid*) #2

declare dso_local i32 @wpas_notify_network_type_changed(%struct.wpa_supplicant*, %struct.wpa_ssid*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
