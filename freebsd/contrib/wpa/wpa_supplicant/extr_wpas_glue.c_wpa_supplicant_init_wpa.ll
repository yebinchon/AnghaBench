; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpas_glue.c_wpa_supplicant_init_wpa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpas_glue.c_wpa_supplicant_init_wpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32* }
%struct.wpa_sm_ctx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.wpa_supplicant*, %struct.wpa_supplicant* }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to allocate WPA context.\00", align 1
@_wpa_supplicant_set_state = common dso_local global i32 0, align 4
@_wpa_supplicant_get_state = common dso_local global i32 0, align 4
@_wpa_supplicant_deauthenticate = common dso_local global i32 0, align 4
@wpa_supplicant_set_key = common dso_local global i32 0, align 4
@wpa_supplicant_get_network_ctx = common dso_local global i32 0, align 4
@wpa_supplicant_get_bssid = common dso_local global i32 0, align 4
@_wpa_ether_send = common dso_local global i32 0, align 4
@wpa_supplicant_get_beacon_ie = common dso_local global i32 0, align 4
@_wpa_alloc_eapol = common dso_local global i32 0, align 4
@_wpa_supplicant_cancel_auth_timeout = common dso_local global i32 0, align 4
@wpa_supplicant_add_pmkid = common dso_local global i32 0, align 4
@wpa_supplicant_remove_pmkid = common dso_local global i32 0, align 4
@wpa_supplicant_set_config_blob = common dso_local global i32 0, align 4
@wpa_supplicant_get_config_blob = common dso_local global i32 0, align 4
@wpa_supplicant_mlme_setprotection = common dso_local global i32 0, align 4
@wpa_supplicant_set_rekey_offload = common dso_local global i32 0, align 4
@wpa_supplicant_key_mgmt_set_pmk = common dso_local global i32 0, align 4
@wpa_supplicant_fils_hlp_rx = common dso_local global i32 0, align 4
@wpa_supplicant_channel_info = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to initialize WPA state machine\00", align 1
@wpa_supplicant_mark_authenticated = common dso_local global i32 0, align 4
@wpa_supplicant_send_ft_action = common dso_local global i32 0, align 4
@wpa_supplicant_send_tdls_mgmt = common dso_local global i32 0, align 4
@wpa_supplicant_tdls_disable_channel_switch = common dso_local global i32 0, align 4
@wpa_supplicant_tdls_enable_channel_switch = common dso_local global i32 0, align 4
@wpa_supplicant_tdls_get_capa = common dso_local global i32 0, align 4
@wpa_supplicant_tdls_oper = common dso_local global i32 0, align 4
@wpa_supplicant_tdls_peer_addset = common dso_local global i32 0, align 4
@wpa_supplicant_update_ft_ies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_supplicant_init_wpa(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.wpa_sm_ctx*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  %5 = call %struct.wpa_sm_ctx* @os_zalloc(i32 128)
  store %struct.wpa_sm_ctx* %5, %struct.wpa_sm_ctx** %4, align 8
  %6 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %4, align 8
  %7 = icmp eq %struct.wpa_sm_ctx* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @MSG_ERROR, align 4
  %10 = call i32 @wpa_printf(i32 %9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %89

11:                                               ; preds = %1
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %13 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %4, align 8
  %14 = getelementptr inbounds %struct.wpa_sm_ctx, %struct.wpa_sm_ctx* %13, i32 0, i32 29
  store %struct.wpa_supplicant* %12, %struct.wpa_supplicant** %14, align 8
  %15 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %16 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.wpa_sm_ctx, %struct.wpa_sm_ctx* %16, i32 0, i32 28
  store %struct.wpa_supplicant* %15, %struct.wpa_supplicant** %17, align 8
  %18 = load i32, i32* @_wpa_supplicant_set_state, align 4
  %19 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.wpa_sm_ctx, %struct.wpa_sm_ctx* %19, i32 0, i32 27
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @_wpa_supplicant_get_state, align 4
  %22 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %4, align 8
  %23 = getelementptr inbounds %struct.wpa_sm_ctx, %struct.wpa_sm_ctx* %22, i32 0, i32 26
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @_wpa_supplicant_deauthenticate, align 4
  %25 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %4, align 8
  %26 = getelementptr inbounds %struct.wpa_sm_ctx, %struct.wpa_sm_ctx* %25, i32 0, i32 25
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @wpa_supplicant_set_key, align 4
  %28 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %4, align 8
  %29 = getelementptr inbounds %struct.wpa_sm_ctx, %struct.wpa_sm_ctx* %28, i32 0, i32 24
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @wpa_supplicant_get_network_ctx, align 4
  %31 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %4, align 8
  %32 = getelementptr inbounds %struct.wpa_sm_ctx, %struct.wpa_sm_ctx* %31, i32 0, i32 23
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @wpa_supplicant_get_bssid, align 4
  %34 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %4, align 8
  %35 = getelementptr inbounds %struct.wpa_sm_ctx, %struct.wpa_sm_ctx* %34, i32 0, i32 22
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @_wpa_ether_send, align 4
  %37 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %4, align 8
  %38 = getelementptr inbounds %struct.wpa_sm_ctx, %struct.wpa_sm_ctx* %37, i32 0, i32 21
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @wpa_supplicant_get_beacon_ie, align 4
  %40 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %4, align 8
  %41 = getelementptr inbounds %struct.wpa_sm_ctx, %struct.wpa_sm_ctx* %40, i32 0, i32 20
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @_wpa_alloc_eapol, align 4
  %43 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %4, align 8
  %44 = getelementptr inbounds %struct.wpa_sm_ctx, %struct.wpa_sm_ctx* %43, i32 0, i32 19
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @_wpa_supplicant_cancel_auth_timeout, align 4
  %46 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %4, align 8
  %47 = getelementptr inbounds %struct.wpa_sm_ctx, %struct.wpa_sm_ctx* %46, i32 0, i32 18
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @wpa_supplicant_add_pmkid, align 4
  %49 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %4, align 8
  %50 = getelementptr inbounds %struct.wpa_sm_ctx, %struct.wpa_sm_ctx* %49, i32 0, i32 17
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @wpa_supplicant_remove_pmkid, align 4
  %52 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %4, align 8
  %53 = getelementptr inbounds %struct.wpa_sm_ctx, %struct.wpa_sm_ctx* %52, i32 0, i32 16
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @wpa_supplicant_set_config_blob, align 4
  %55 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %4, align 8
  %56 = getelementptr inbounds %struct.wpa_sm_ctx, %struct.wpa_sm_ctx* %55, i32 0, i32 15
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @wpa_supplicant_get_config_blob, align 4
  %58 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %4, align 8
  %59 = getelementptr inbounds %struct.wpa_sm_ctx, %struct.wpa_sm_ctx* %58, i32 0, i32 14
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @wpa_supplicant_mlme_setprotection, align 4
  %61 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %4, align 8
  %62 = getelementptr inbounds %struct.wpa_sm_ctx, %struct.wpa_sm_ctx* %61, i32 0, i32 13
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @wpa_supplicant_set_rekey_offload, align 4
  %64 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %4, align 8
  %65 = getelementptr inbounds %struct.wpa_sm_ctx, %struct.wpa_sm_ctx* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @wpa_supplicant_key_mgmt_set_pmk, align 4
  %67 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %4, align 8
  %68 = getelementptr inbounds %struct.wpa_sm_ctx, %struct.wpa_sm_ctx* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @wpa_supplicant_fils_hlp_rx, align 4
  %70 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %4, align 8
  %71 = getelementptr inbounds %struct.wpa_sm_ctx, %struct.wpa_sm_ctx* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @wpa_supplicant_channel_info, align 4
  %73 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %4, align 8
  %74 = getelementptr inbounds %struct.wpa_sm_ctx, %struct.wpa_sm_ctx* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %4, align 8
  %76 = call i32* @wpa_sm_init(%struct.wpa_sm_ctx* %75)
  %77 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %78 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %77, i32 0, i32 0
  store i32* %76, i32** %78, align 8
  %79 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %80 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %11
  %84 = load i32, i32* @MSG_ERROR, align 4
  %85 = call i32 @wpa_printf(i32 %84, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %86 = load %struct.wpa_sm_ctx*, %struct.wpa_sm_ctx** %4, align 8
  %87 = call i32 @os_free(%struct.wpa_sm_ctx* %86)
  store i32 -1, i32* %2, align 4
  br label %89

88:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %88, %83, %8
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.wpa_sm_ctx* @os_zalloc(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32* @wpa_sm_init(%struct.wpa_sm_ctx*) #1

declare dso_local i32 @os_free(%struct.wpa_sm_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
