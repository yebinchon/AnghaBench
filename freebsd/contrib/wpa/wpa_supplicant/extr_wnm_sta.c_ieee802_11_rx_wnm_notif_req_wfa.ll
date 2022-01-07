; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wnm_sta.c_ieee802_11_rx_wnm_notif_req_wfa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wnm_sta.c_ieee802_11_rx_wnm_notif_req_wfa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"WNM: WFA subelement %u len %u\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"WNM: Not enough room for subelement\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"WNM: Subelement OUI %06x type %u\00", align 1
@HS20_WNM_DEAUTH_IMMINENT_NOTICE = common dso_local global i32 0, align 4
@HS20_WNM_SUB_REM_NEEDED = common dso_local global i32 0, align 4
@HS20_WNM_T_C_ACCEPTANCE = common dso_local global i32 0, align 4
@OUI_WFA = common dso_local global i64 0, align 8
@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, i32*, i32*, i32)* @ieee802_11_rx_wnm_notif_req_wfa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee802_11_rx_wnm_notif_req_wfa(%struct.wpa_supplicant* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i32*, i32** %7, align 8
  store i32* %14, i32** %9, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  store i32* %18, i32** %10, align 8
  br label %19

19:                                               ; preds = %59, %57, %4
  %20 = load i32*, i32** %10, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = ptrtoint i32* %20 to i64
  %23 = ptrtoint i32* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 4
  %26 = icmp sgt i64 %25, 1
  br i1 %26, label %27, label %68

27:                                               ; preds = %19
  %28 = load i32*, i32** %9, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %9, align 8
  %30 = load i32, i32* %28, align 4
  store i32 %30, i32* %12, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %9, align 8
  %33 = load i32, i32* %31, align 4
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* @MSG_DEBUG, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %13, align 4
  %37 = call i32 (i32, i8*, ...) @wpa_printf(i32 %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = load i32*, i32** %10, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = ptrtoint i32* %40 to i64
  %43 = ptrtoint i32* %41 to i64
  %44 = sub i64 %42, %43
  %45 = sdiv exact i64 %44, 4
  %46 = icmp sgt i64 %39, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %27
  %48 = load i32, i32* @MSG_DEBUG, align 4
  %49 = call i32 (i32, i8*, ...) @wpa_printf(i32 %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %68

50:                                               ; preds = %27
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32* %54, i32** %11, align 8
  %55 = load i32, i32* %13, align 4
  %56 = icmp slt i32 %55, 4
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32*, i32** %11, align 8
  store i32* %58, i32** %9, align 8
  br label %19

59:                                               ; preds = %50
  %60 = load i32, i32* @MSG_DEBUG, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = call i64 @WPA_GET_BE24(i32* %61)
  %63 = load i32*, i32** %9, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i32, i8*, ...) @wpa_printf(i32 %60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %62, i32 %65)
  %67 = load i32*, i32** %11, align 8
  store i32* %67, i32** %9, align 8
  br label %19

68:                                               ; preds = %47, %19
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @WPA_GET_BE24(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
