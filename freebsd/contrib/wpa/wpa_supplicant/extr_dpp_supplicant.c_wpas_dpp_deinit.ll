; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_dpp_supplicant.c_wpas_dpp_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_dpp_supplicant.c_wpas_dpp_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32*, i32, i32*, i32, i64, i32*, i32*, i32* }

@wpas_dpp_pkex_retry_timeout = common dso_local global i32 0, align 4
@wpas_dpp_reply_wait_timeout = common dso_local global i32 0, align 4
@wpas_dpp_init_timeout = common dso_local global i32 0, align 4
@wpas_dpp_auth_resp_retry_timeout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@wpas_dpp_config_result_wait_timeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpas_dpp_deinit(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_supplicant*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %2, align 8
  %3 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %4 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %44

8:                                                ; preds = %1
  %9 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %10 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @dpp_global_clear(i32 %11)
  %13 = load i32, i32* @wpas_dpp_pkex_retry_timeout, align 4
  %14 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %15 = call i32 @eloop_cancel_timeout(i32 %13, %struct.wpa_supplicant* %14, i32* null)
  %16 = load i32, i32* @wpas_dpp_reply_wait_timeout, align 4
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %18 = call i32 @eloop_cancel_timeout(i32 %16, %struct.wpa_supplicant* %17, i32* null)
  %19 = load i32, i32* @wpas_dpp_init_timeout, align 4
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %21 = call i32 @eloop_cancel_timeout(i32 %19, %struct.wpa_supplicant* %20, i32* null)
  %22 = load i32, i32* @wpas_dpp_auth_resp_retry_timeout, align 4
  %23 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %24 = call i32 @eloop_cancel_timeout(i32 %22, %struct.wpa_supplicant* %23, i32* null)
  %25 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %26 = call i32 @offchannel_send_action_done(%struct.wpa_supplicant* %25)
  %27 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %28 = call i32 @wpas_dpp_listen_stop(%struct.wpa_supplicant* %27)
  %29 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %30 = call i32 @wpas_dpp_stop(%struct.wpa_supplicant* %29)
  %31 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %32 = call i32 @wpas_dpp_pkex_remove(%struct.wpa_supplicant* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %34 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @ETH_ALEN, align 4
  %37 = call i32 @os_memset(i32 %35, i32 0, i32 %36)
  %38 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %39 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @os_free(i32* %40)
  %42 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %43 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @dpp_global_clear(i32) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.wpa_supplicant*, i32*) #1

declare dso_local i32 @offchannel_send_action_done(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpas_dpp_listen_stop(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpas_dpp_stop(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpas_dpp_pkex_remove(%struct.wpa_supplicant*, i8*) #1

declare dso_local i32 @os_memset(i32, i32, i32) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
