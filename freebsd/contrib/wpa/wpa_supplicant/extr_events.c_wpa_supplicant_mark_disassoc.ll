; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_events.c_wpa_supplicant_mark_disassoc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_events.c_wpa_supplicant_mark_disassoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, i64, i64, i64, i32, i32, i64, i32, i32*, i64, i64, i32*, i32, i32, %struct.TYPE_3__, i32, i32* }
%struct.TYPE_3__ = type { i64, i64 }

@WPA_INTERFACE_DISABLED = common dso_local global i64 0, align 8
@WPA_DISCONNECTED = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_OWE = common dso_local global i64 0, align 8
@WPA_KEY_MGMT_DPP = common dso_local global i64 0, align 8
@WPA_ALG_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_supplicant_mark_disassoc(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_supplicant*, align 8
  %3 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %2, align 8
  %4 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %5 = call i32 @wnm_bss_keep_alive_deinit(%struct.wpa_supplicant* %4)
  %6 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %7 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @WPA_INTERFACE_DISABLED, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %127

12:                                               ; preds = %1
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %14 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %13, i32 0, i32 14
  %15 = call i64 @os_reltime_initialized(%struct.TYPE_3__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %12
  %18 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %19 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %18, i32 0, i32 14
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %21 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %20, i32 0, i32 15
  %22 = call i32 @os_reltime_age(%struct.TYPE_3__* %19, i32* %21)
  %23 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %24 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %23, i32 0, i32 14
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %27 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %26, i32 0, i32 14
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %30 = call i32 @wpas_notify_session_length(%struct.wpa_supplicant* %29)
  br label %31

31:                                               ; preds = %17, %12
  %32 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %33 = load i32, i32* @WPA_DISCONNECTED, align 4
  %34 = call i32 @wpa_supplicant_set_state(%struct.wpa_supplicant* %32, i32 %33)
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %36 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %35, i32 0, i32 13
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @is_zero_ether_addr(i32 %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %3, align 4
  %42 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %43 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %42, i32 0, i32 13
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ETH_ALEN, align 4
  %46 = call i32 @os_memset(i32 %44, i32 0, i32 %45)
  %47 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %48 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %47, i32 0, i32 12
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @ETH_ALEN, align 4
  %51 = call i32 @os_memset(i32 %49, i32 0, i32 %50)
  %52 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %53 = call i32 @sme_clear_on_disassoc(%struct.wpa_supplicant* %52)
  %54 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %55 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %54, i32 0, i32 11
  store i32* null, i32** %55, align 8
  %56 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %57 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %56, i32 0, i32 10
  store i64 0, i64* %57, align 8
  %58 = load i32, i32* %3, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %31
  %61 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %62 = call i32 @wpas_notify_bssid_changed(%struct.wpa_supplicant* %61)
  br label %63

63:                                               ; preds = %60, %31
  %64 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %65 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @FALSE, align 4
  %68 = call i32 @eapol_sm_notify_portEnabled(i32 %66, i32 %67)
  %69 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %70 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @FALSE, align 4
  %73 = call i32 @eapol_sm_notify_portValid(i32 %71, i32 %72)
  %74 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %75 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @wpa_key_mgmt_wpa_psk(i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %91, label %79

79:                                               ; preds = %63
  %80 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %81 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @WPA_KEY_MGMT_OWE, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %91, label %85

85:                                               ; preds = %79
  %86 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %87 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @WPA_KEY_MGMT_DPP, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %85, %79, %63
  %92 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %93 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @FALSE, align 4
  %96 = call i32 @eapol_sm_notify_eap_success(i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %91, %85
  %98 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %99 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %98, i32 0, i32 9
  store i64 0, i64* %99, align 8
  %100 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %101 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %100, i32 0, i32 8
  store i32* null, i32** %101, align 8
  %102 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %103 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @eapol_sm_notify_config(i32 %104, i32* null, i32* null)
  %106 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %107 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %106, i32 0, i32 1
  store i64 0, i64* %107, align 8
  %108 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %109 = call i32 @wpas_rrm_reset(%struct.wpa_supplicant* %108)
  %110 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %111 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %110, i32 0, i32 6
  store i64 0, i64* %111, align 8
  %112 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %113 = call i32 @wnm_clear_coloc_intf_reporting(%struct.wpa_supplicant* %112)
  %114 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %115 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %114, i32 0, i32 3
  store i64 0, i64* %115, align 8
  %116 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %117 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %97
  %121 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %122 = call i64 @wpa_drv_set_4addr_mode(%struct.wpa_supplicant* %121, i32 0)
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %126 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %125, i32 0, i32 2
  store i64 0, i64* %126, align 8
  br label %127

127:                                              ; preds = %11, %124, %120, %97
  ret void
}

declare dso_local i32 @wnm_bss_keep_alive_deinit(%struct.wpa_supplicant*) #1

declare dso_local i64 @os_reltime_initialized(%struct.TYPE_3__*) #1

declare dso_local i32 @os_reltime_age(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @wpas_notify_session_length(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpa_supplicant_set_state(%struct.wpa_supplicant*, i32) #1

declare dso_local i32 @is_zero_ether_addr(i32) #1

declare dso_local i32 @os_memset(i32, i32, i32) #1

declare dso_local i32 @sme_clear_on_disassoc(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpas_notify_bssid_changed(%struct.wpa_supplicant*) #1

declare dso_local i32 @eapol_sm_notify_portEnabled(i32, i32) #1

declare dso_local i32 @eapol_sm_notify_portValid(i32, i32) #1

declare dso_local i64 @wpa_key_mgmt_wpa_psk(i64) #1

declare dso_local i32 @eapol_sm_notify_eap_success(i32, i32) #1

declare dso_local i32 @eapol_sm_notify_config(i32, i32*, i32*) #1

declare dso_local i32 @wpas_rrm_reset(%struct.wpa_supplicant*) #1

declare dso_local i32 @wnm_clear_coloc_intf_reporting(%struct.wpa_supplicant*) #1

declare dso_local i64 @wpa_drv_set_4addr_mode(%struct.wpa_supplicant*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
