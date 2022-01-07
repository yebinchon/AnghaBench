; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ibss_rsn.c_ibss_rsn_eapol_dst_supp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ibss_rsn.c_ibss_rsn_eapol_dst_supp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802_1x_hdr = type { i64, i64, i32 }
%struct.wpa_eapol_key = type { i64, i32 }

@EAPOL_VERSION = common dso_local global i64 0, align 8
@IEEE802_1X_TYPE_EAPOL_KEY = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"RSN: EAPOL frame (type %u) discarded, not a Key frame\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"RSN: EAPOL frame payload size %lu invalid (frame size %lu)\00", align 1
@EAPOL_KEY_TYPE_RSN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"RSN: EAPOL-Key type (%d) unknown, discarded\00", align 1
@WPA_KEY_INFO_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @ibss_rsn_eapol_dst_supp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibss_rsn_eapol_dst_supp(i32* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ieee802_1x_hdr*, align 8
  %7 = alloca %struct.wpa_eapol_key*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp ult i64 %10, 40
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %78

13:                                               ; preds = %2
  %14 = load i32*, i32** %4, align 8
  %15 = bitcast i32* %14 to %struct.ieee802_1x_hdr*
  store %struct.ieee802_1x_hdr* %15, %struct.ieee802_1x_hdr** %6, align 8
  %16 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %6, align 8
  %17 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %16, i64 1
  %18 = bitcast %struct.ieee802_1x_hdr* %17 to %struct.wpa_eapol_key*
  store %struct.wpa_eapol_key* %18, %struct.wpa_eapol_key** %7, align 8
  %19 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %6, align 8
  %20 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @be_to_host16(i32 %21)
  store i64 %22, i64* %9, align 8
  %23 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %6, align 8
  %24 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @EAPOL_VERSION, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %13
  br label %29

29:                                               ; preds = %28, %13
  %30 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %6, align 8
  %31 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IEEE802_1X_TYPE_EAPOL_KEY, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load i32, i32* @MSG_DEBUG, align 4
  %37 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %6, align 8
  %38 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 (i32, i8*, i64, ...) @wpa_printf(i32 %36, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %39)
  store i32 -1, i32* %3, align 4
  br label %78

41:                                               ; preds = %29
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %5, align 8
  %44 = sub i64 %43, 24
  %45 = icmp ugt i64 %42, %44
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i64, i64* %9, align 8
  %48 = icmp ult i64 %47, 16
  br i1 %48, label %49, label %54

49:                                               ; preds = %46, %41
  %50 = load i32, i32* @MSG_DEBUG, align 4
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %5, align 8
  %53 = call i32 (i32, i8*, i64, ...) @wpa_printf(i32 %50, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i64 %51, i64 %52)
  store i32 -1, i32* %3, align 4
  br label %78

54:                                               ; preds = %46
  %55 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %7, align 8
  %56 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @EAPOL_KEY_TYPE_RSN, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load i32, i32* @MSG_DEBUG, align 4
  %62 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %7, align 8
  %63 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 (i32, i8*, i64, ...) @wpa_printf(i32 %61, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i64 %64)
  store i32 -1, i32* %3, align 4
  br label %78

66:                                               ; preds = %54
  %67 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %7, align 8
  %68 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @WPA_GET_BE16(i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @WPA_KEY_INFO_ACK, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %66, %60, %49, %35, %12
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i64 @be_to_host16(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i64, ...) #1

declare dso_local i32 @WPA_GET_BE16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
