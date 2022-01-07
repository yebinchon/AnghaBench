; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_1x.c_handle_eap_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_1x.c_handle_eap_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.sta_info = type { %struct.eapol_state_machine* }
%struct.eapol_state_machine = type { i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.eap_hdr = type { i32, i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"handle_eap_response: too short response data\00", align 1
@HOSTAPD_MODULE_IEEE8021X = common dso_local global i32 0, align 4
@HOSTAPD_LEVEL_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"received EAP packet (code=%d id=%d len=%d) from STA: EAP Response-%s (%d)\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_data*, %struct.sta_info*, %struct.eap_hdr*, i64)* @handle_eap_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_eap_response(%struct.hostapd_data* %0, %struct.sta_info* %1, %struct.eap_hdr* %2, i64 %3) #0 {
  %5 = alloca %struct.hostapd_data*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca %struct.eap_hdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.eapol_state_machine*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %5, align 8
  store %struct.sta_info* %1, %struct.sta_info** %6, align 8
  store %struct.eap_hdr* %2, %struct.eap_hdr** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %13 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %12, i32 0, i32 0
  %14 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %13, align 8
  store %struct.eapol_state_machine* %14, %struct.eapol_state_machine** %11, align 8
  %15 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %11, align 8
  %16 = icmp eq %struct.eapol_state_machine* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %73

18:                                               ; preds = %4
  %19 = load %struct.eap_hdr*, %struct.eap_hdr** %7, align 8
  %20 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %19, i64 1
  %21 = bitcast %struct.eap_hdr* %20 to i32*
  store i32* %21, i32** %10, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ult i64 %22, 13
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @MSG_INFO, align 4
  %26 = call i32 @wpa_printf(i32 %25, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %73

27:                                               ; preds = %18
  %28 = load i32*, i32** %10, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %11, align 8
  %32 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %34 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %11, align 8
  %35 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @HOSTAPD_MODULE_IEEE8021X, align 4
  %38 = load i32, i32* @HOSTAPD_LEVEL_DEBUG, align 4
  %39 = load %struct.eap_hdr*, %struct.eap_hdr** %7, align 8
  %40 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.eap_hdr*, %struct.eap_hdr** %7, align 8
  %43 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.eap_hdr*, %struct.eap_hdr** %7, align 8
  %46 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @be_to_host16(i32 %47)
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @eap_server_get_name(i32 0, i32 %49)
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @hostapd_logger(%struct.hostapd_data* %33, i32 %36, i32 %37, i32 %38, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %44, i32 %48, i32 %50, i32 %51)
  %53 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %11, align 8
  %54 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  %57 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %11, align 8
  %58 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @wpabuf_free(i32 %61)
  %63 = load %struct.eap_hdr*, %struct.eap_hdr** %7, align 8
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @wpabuf_alloc_copy(%struct.eap_hdr* %63, i64 %64)
  %66 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %11, align 8
  %67 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32 %65, i32* %69, align 4
  %70 = load i32, i32* @TRUE, align 4
  %71 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %11, align 8
  %72 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %27, %24, %17
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @hostapd_logger(%struct.hostapd_data*, i32, i32, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @be_to_host16(i32) #1

declare dso_local i32 @eap_server_get_name(i32, i32) #1

declare dso_local i32 @wpabuf_free(i32) #1

declare dso_local i32 @wpabuf_alloc_copy(%struct.eap_hdr*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
