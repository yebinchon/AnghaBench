; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_interworking_set_hs20_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_interworking_set_hs20_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.wpa_ssid = type { i32 }

@NO_MGMT_FRAME_PROTECTION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"WPA-EAP WPA-EAP-SHA256\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"WPA-EAP\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"key_mgmt\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"proto\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"RSN\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"ieee80211w\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"pairwise\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"CCMP\00", align 1
@WPA_DRIVER_CAPA_KEY_MGMT_FT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %struct.wpa_ssid*)* @interworking_set_hs20_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interworking_set_hs20_params(%struct.wpa_supplicant* %0, %struct.wpa_ssid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.wpa_ssid*, align 8
  %6 = alloca i8*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %5, align 8
  store i8* null, i8** %6, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %2
  %10 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %11 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NO_MGMT_FRAME_PROTECTION, align 8
  %16 = icmp ne i64 %14, %15
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)
  store i8* %18, i8** %6, align 8
  br label %19

19:                                               ; preds = %9, %2
  %20 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @wpa_config_set(%struct.wpa_ssid* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %21, i32 0)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %19
  %25 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %26 = call i64 @wpa_config_set(%struct.wpa_ssid* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %30 = call i64 @wpa_config_set(%struct.wpa_ssid* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 0)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %34 = call i64 @wpa_config_set(%struct.wpa_ssid* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 0)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %28, %24, %19
  store i32 -1, i32* %3, align 4
  br label %38

37:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @wpa_config_set(%struct.wpa_ssid*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
