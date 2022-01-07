; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_dpp_hostapd.c_hostapd_dpp_gas_status_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_dpp_hostapd.c_hostapd_dpp_gas_status_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.dpp_authentication*, i32 }
%struct.dpp_authentication = type { i32, i64, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"DPP: Configuration exchange completed (ok=%d)\00", align 1
@hostapd_dpp_reply_wait_timeout = common dso_local global i32 0, align 4
@hostapd_dpp_auth_resp_retry_timeout = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@DPP_EVENT_CONF_SENT = common dso_local global i32 0, align 4
@DPP_EVENT_CONF_FAILED = common dso_local global i32 0, align 4
@DPP_STATUS_OK = common dso_local global i64 0, align 8
@hostapd_dpp_config_result_wait_timeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hostapd_dpp_gas_status_handler(%struct.hostapd_data* %0, i32 %1) #0 {
  %3 = alloca %struct.hostapd_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpp_authentication*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %7 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %6, i32 0, i32 0
  %8 = load %struct.dpp_authentication*, %struct.dpp_authentication** %7, align 8
  store %struct.dpp_authentication* %8, %struct.dpp_authentication** %5, align 8
  %9 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %10 = icmp ne %struct.dpp_authentication* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %47

12:                                               ; preds = %2
  %13 = load i32, i32* @MSG_DEBUG, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 (i32, i8*, ...) @wpa_printf(i32 %13, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @hostapd_dpp_reply_wait_timeout, align 4
  %17 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %18 = call i32 @eloop_cancel_timeout(i32 %16, %struct.hostapd_data* %17, i32* null)
  %19 = load i32, i32* @hostapd_dpp_auth_resp_retry_timeout, align 4
  %20 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %21 = call i32 @eloop_cancel_timeout(i32 %19, %struct.hostapd_data* %20, i32* null)
  %22 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %23 = call i32 @hostapd_drv_send_action_cancel_wait(%struct.hostapd_data* %22)
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %12
  %27 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %28 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @MSG_INFO, align 4
  %31 = load i32, i32* @DPP_EVENT_CONF_SENT, align 4
  %32 = call i32 @wpa_msg(i32 %29, i32 %30, i32 %31)
  br label %40

33:                                               ; preds = %12
  %34 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %35 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @MSG_INFO, align 4
  %38 = load i32, i32* @DPP_EVENT_CONF_FAILED, align 4
  %39 = call i32 @wpa_msg(i32 %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %33, %26
  %41 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %42 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %41, i32 0, i32 0
  %43 = load %struct.dpp_authentication*, %struct.dpp_authentication** %42, align 8
  %44 = call i32 @dpp_auth_deinit(%struct.dpp_authentication* %43)
  %45 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %46 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %45, i32 0, i32 0
  store %struct.dpp_authentication* null, %struct.dpp_authentication** %46, align 8
  br label %47

47:                                               ; preds = %40, %11
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.hostapd_data*, i32*) #1

declare dso_local i32 @hostapd_drv_send_action_cancel_wait(%struct.hostapd_data*) #1

declare dso_local i32 @wpa_msg(i32, i32, i32) #1

declare dso_local i32 @dpp_auth_deinit(%struct.dpp_authentication*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
