; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_dpp_supplicant.c_wpas_dpp_gas_status_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_dpp_supplicant.c_wpas_dpp_gas_status_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wpa_supplicant = type { %struct.dpp_authentication* }
%struct.dpp_authentication = type { i32, i64, i32, %struct.wpabuf* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"DPP: Ignore GAS status report (ok=%d) for unknown response\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"DPP: Configuration exchange completed (ok=%d)\00", align 1
@wpas_dpp_reply_wait_timeout = common dso_local global i32 0, align 4
@wpas_dpp_auth_resp_retry_timeout = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@DPP_EVENT_CONF_SENT = common dso_local global i32 0, align 4
@DPP_EVENT_CONF_FAILED = common dso_local global i32 0, align 4
@DPP_STATUS_OK = common dso_local global i64 0, align 8
@wpas_dpp_config_result_wait_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wpabuf*, i32)* @wpas_dpp_gas_status_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_dpp_gas_status_handler(i8* %0, %struct.wpabuf* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpa_supplicant*, align 8
  %8 = alloca %struct.dpp_authentication*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.wpa_supplicant*
  store %struct.wpa_supplicant* %10, %struct.wpa_supplicant** %7, align 8
  %11 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %12 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %11, i32 0, i32 0
  %13 = load %struct.dpp_authentication*, %struct.dpp_authentication** %12, align 8
  store %struct.dpp_authentication* %13, %struct.dpp_authentication** %8, align 8
  %14 = load %struct.dpp_authentication*, %struct.dpp_authentication** %8, align 8
  %15 = icmp ne %struct.dpp_authentication* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %18 = call i32 @wpabuf_free(%struct.wpabuf* %17)
  br label %66

19:                                               ; preds = %3
  %20 = load %struct.dpp_authentication*, %struct.dpp_authentication** %8, align 8
  %21 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %20, i32 0, i32 3
  %22 = load %struct.wpabuf*, %struct.wpabuf** %21, align 8
  %23 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %24 = icmp ne %struct.wpabuf* %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load i32, i32* @MSG_DEBUG, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 (i32, i8*, ...) @wpa_printf(i32 %26, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %30 = call i32 @wpabuf_free(%struct.wpabuf* %29)
  br label %66

31:                                               ; preds = %19
  %32 = load i32, i32* @MSG_DEBUG, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 (i32, i8*, ...) @wpa_printf(i32 %32, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @wpas_dpp_reply_wait_timeout, align 4
  %36 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %37 = call i32 @eloop_cancel_timeout(i32 %35, %struct.wpa_supplicant* %36, i32* null)
  %38 = load i32, i32* @wpas_dpp_auth_resp_retry_timeout, align 4
  %39 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %40 = call i32 @eloop_cancel_timeout(i32 %38, %struct.wpa_supplicant* %39, i32* null)
  %41 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %42 = call i32 @offchannel_send_action_done(%struct.wpa_supplicant* %41)
  %43 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %44 = call i32 @wpas_dpp_listen_stop(%struct.wpa_supplicant* %43)
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %31
  %48 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %49 = load i32, i32* @MSG_INFO, align 4
  %50 = load i32, i32* @DPP_EVENT_CONF_SENT, align 4
  %51 = call i32 @wpa_msg(%struct.wpa_supplicant* %48, i32 %49, i32 %50)
  br label %57

52:                                               ; preds = %31
  %53 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %54 = load i32, i32* @MSG_INFO, align 4
  %55 = load i32, i32* @DPP_EVENT_CONF_FAILED, align 4
  %56 = call i32 @wpa_msg(%struct.wpa_supplicant* %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %47
  %58 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %59 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %58, i32 0, i32 0
  %60 = load %struct.dpp_authentication*, %struct.dpp_authentication** %59, align 8
  %61 = call i32 @dpp_auth_deinit(%struct.dpp_authentication* %60)
  %62 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %63 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %62, i32 0, i32 0
  store %struct.dpp_authentication* null, %struct.dpp_authentication** %63, align 8
  %64 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %65 = call i32 @wpabuf_free(%struct.wpabuf* %64)
  br label %66

66:                                               ; preds = %57, %25, %16
  ret void
}

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.wpa_supplicant*, i32*) #1

declare dso_local i32 @offchannel_send_action_done(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpas_dpp_listen_stop(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpa_msg(%struct.wpa_supplicant*, i32, i32) #1

declare dso_local i32 @dpp_auth_deinit(%struct.dpp_authentication*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
