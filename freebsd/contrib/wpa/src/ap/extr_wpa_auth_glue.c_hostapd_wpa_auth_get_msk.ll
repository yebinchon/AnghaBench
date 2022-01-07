; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth_glue.c_hostapd_wpa_auth_get_msk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth_glue.c_hostapd_wpa_auth_get_msk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.sta_info = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"AUTH_GET_MSK: Cannot find STA\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"AUTH_GET_MSK: Key is null, eapol_sm: %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i64*)* @hostapd_wpa_auth_get_msk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_wpa_auth_get_msk(i8* %0, i32* %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.hostapd_data*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.sta_info*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.hostapd_data*
  store %struct.hostapd_data* %15, %struct.hostapd_data** %10, align 8
  %16 = load %struct.hostapd_data*, %struct.hostapd_data** %10, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call %struct.sta_info* @ap_get_sta(%struct.hostapd_data* %16, i32* %17)
  store %struct.sta_info* %18, %struct.sta_info** %13, align 8
  %19 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %20 = icmp eq %struct.sta_info* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @MSG_DEBUG, align 4
  %23 = call i32 (i32, i8*, ...) @wpa_printf(i32 %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %52

24:                                               ; preds = %4
  %25 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %26 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32* @ieee802_1x_get_key(i32 %27, i64* %12)
  store i32* %28, i32** %11, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load i32, i32* @MSG_DEBUG, align 4
  %33 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %34 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, i8*, ...) @wpa_printf(i32 %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  store i32 -1, i32* %5, align 4
  br label %52

37:                                               ; preds = %24
  %38 = load i64, i64* %12, align 8
  %39 = load i64*, i64** %9, align 8
  %40 = load i64, i64* %39, align 8
  %41 = icmp ugt i64 %38, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i64*, i64** %9, align 8
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %12, align 8
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i32*, i32** %8, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = load i64, i64* %12, align 8
  %49 = call i32 @os_memcpy(i32* %46, i32* %47, i64 %48)
  %50 = load i64, i64* %12, align 8
  %51 = load i64*, i64** %9, align 8
  store i64 %50, i64* %51, align 8
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %45, %31, %21
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local %struct.sta_info* @ap_get_sta(%struct.hostapd_data*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32* @ieee802_1x_get_key(i32, i64*) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
