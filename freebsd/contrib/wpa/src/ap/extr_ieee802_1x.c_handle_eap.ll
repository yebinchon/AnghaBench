; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_1x.c_handle_eap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_1x.c_handle_eap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.sta_info = type { i32 }
%struct.eap_hdr = type { i32, i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"   too short EAP packet\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"EAP: code=%d identifier=%d length=%d\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"   Invalid EAP length\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"   Too short frame to contain this EAP packet\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"   Ignoring %lu extra bytes after EAP packet\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c" (request)\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c" (response)\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c" (success)\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c" (failure)\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c" (initiate)\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c" (finish)\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c" (unknown code)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_data*, %struct.sta_info*, i32*, i64)* @handle_eap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_eap(%struct.hostapd_data* %0, %struct.sta_info* %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.hostapd_data*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.eap_hdr*, align 8
  %10 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %5, align 8
  store %struct.sta_info* %1, %struct.sta_info** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = icmp ult i64 %11, 12
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i32, i32* @MSG_INFO, align 4
  %15 = call i32 (i32, i8*, ...) @wpa_printf(i32 %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %95

16:                                               ; preds = %4
  %17 = load i32*, i32** %7, align 8
  %18 = bitcast i32* %17 to %struct.eap_hdr*
  store %struct.eap_hdr* %18, %struct.eap_hdr** %9, align 8
  %19 = load %struct.eap_hdr*, %struct.eap_hdr** %9, align 8
  %20 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @be_to_host16(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* @MSG_DEBUG, align 4
  %24 = load %struct.eap_hdr*, %struct.eap_hdr** %9, align 8
  %25 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.eap_hdr*, %struct.eap_hdr** %9, align 8
  %28 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 (i32, i8*, ...) @wpa_printf(i32 %23, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %29, i32 %30)
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp ult i64 %33, 12
  br i1 %34, label %35, label %38

35:                                               ; preds = %16
  %36 = load i32, i32* @MSG_DEBUG, align 4
  %37 = call i32 (i32, i8*, ...) @wpa_printf(i32 %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %95

38:                                               ; preds = %16
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %8, align 8
  %42 = icmp ugt i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @MSG_DEBUG, align 4
  %45 = call i32 (i32, i8*, ...) @wpa_printf(i32 %44, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %95

46:                                               ; preds = %38
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %8, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load i32, i32* @MSG_DEBUG, align 4
  %53 = load i64, i64* %8, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = sub i64 %53, %55
  %57 = call i32 (i32, i8*, ...) @wpa_printf(i32 %52, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i64 %56)
  br label %58

58:                                               ; preds = %51, %46
  br label %59

59:                                               ; preds = %58
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.eap_hdr*, %struct.eap_hdr** %9, align 8
  %62 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  switch i32 %63, label %92 [
    i32 130, label %64
    i32 129, label %67
    i32 128, label %75
    i32 133, label %78
    i32 131, label %81
    i32 132, label %89
  ]

64:                                               ; preds = %60
  %65 = load i32, i32* @MSG_DEBUG, align 4
  %66 = call i32 (i32, i8*, ...) @wpa_printf(i32 %65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %95

67:                                               ; preds = %60
  %68 = load i32, i32* @MSG_DEBUG, align 4
  %69 = call i32 (i32, i8*, ...) @wpa_printf(i32 %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %70 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %71 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %72 = load %struct.eap_hdr*, %struct.eap_hdr** %9, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @handle_eap_response(%struct.hostapd_data* %70, %struct.sta_info* %71, %struct.eap_hdr* %72, i32 %73)
  br label %95

75:                                               ; preds = %60
  %76 = load i32, i32* @MSG_DEBUG, align 4
  %77 = call i32 (i32, i8*, ...) @wpa_printf(i32 %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %95

78:                                               ; preds = %60
  %79 = load i32, i32* @MSG_DEBUG, align 4
  %80 = call i32 (i32, i8*, ...) @wpa_printf(i32 %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  br label %95

81:                                               ; preds = %60
  %82 = load i32, i32* @MSG_DEBUG, align 4
  %83 = call i32 (i32, i8*, ...) @wpa_printf(i32 %82, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %84 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %85 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %86 = load %struct.eap_hdr*, %struct.eap_hdr** %9, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @handle_eap_initiate(%struct.hostapd_data* %84, %struct.sta_info* %85, %struct.eap_hdr* %86, i32 %87)
  br label %95

89:                                               ; preds = %60
  %90 = load i32, i32* @MSG_DEBUG, align 4
  %91 = call i32 (i32, i8*, ...) @wpa_printf(i32 %90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  br label %95

92:                                               ; preds = %60
  %93 = load i32, i32* @MSG_DEBUG, align 4
  %94 = call i32 (i32, i8*, ...) @wpa_printf(i32 %93, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  br label %95

95:                                               ; preds = %13, %35, %43, %64, %75, %78, %92, %89, %81, %67
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @be_to_host16(i32) #1

declare dso_local i32 @handle_eap_response(%struct.hostapd_data*, %struct.sta_info*, %struct.eap_hdr*, i32) #1

declare dso_local i32 @handle_eap_initiate(%struct.hostapd_data*, %struct.sta_info*, %struct.eap_hdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
