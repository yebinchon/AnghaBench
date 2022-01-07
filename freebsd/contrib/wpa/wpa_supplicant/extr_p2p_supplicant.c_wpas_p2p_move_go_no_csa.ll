; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_move_go_no_csa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_move_go_no_csa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i64, %struct.wpa_ssid*, %struct.TYPE_2__*, %struct.wpa_ssid* }
%struct.TYPE_2__ = type { i32 }
%struct.wpa_ssid = type { i64 }
%struct.p2p_go_neg_results = type { i64 }

@MSG_INFO = common dso_local global i32 0, align 4
@P2P_EVENT_REMOVE_AND_REFORM_GROUP = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"P2P: Move GO from freq=%d MHz\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"P2P: Failed to reselect freq\00", align 1
@P2P_GROUP_REMOVAL_GO_LEAVE_CHANNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"P2P: New freq selected for the GO (%u MHz)\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"P2P: Selected freq (%u MHz) is not valid for P2P\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*)* @wpas_p2p_move_go_no_csa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_p2p_move_go_no_csa(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_supplicant*, align 8
  %3 = alloca %struct.p2p_go_neg_results, align 8
  %4 = alloca %struct.wpa_ssid*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %2, align 8
  %5 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %6 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %5, i32 0, i32 4
  %7 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  store %struct.wpa_ssid* %7, %struct.wpa_ssid** %4, align 8
  %8 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %9 = load i32, i32* @MSG_INFO, align 4
  %10 = load i32, i32* @P2P_EVENT_REMOVE_AND_REFORM_GROUP, align 4
  %11 = call i32 @wpa_msg_global(%struct.wpa_supplicant* %8, i32 %9, i32 %10)
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %13 = load i32, i32* @MSG_DEBUG, align 4
  %14 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %15 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %12, i32 %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %19 = call i32 @wpa_supplicant_ap_deinit(%struct.wpa_supplicant* %18)
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %21 = call i64 @wpas_p2p_init_go_params(%struct.wpa_supplicant* %20, %struct.p2p_go_neg_results* %3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32* null)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %24, i32 %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %28 = load i32, i32* @P2P_GROUP_REMOVAL_GO_LEAVE_CHANNEL, align 4
  %29 = call i32 @wpas_p2p_group_delete(%struct.wpa_supplicant* %27, i32 %28)
  br label %71

30:                                               ; preds = %1
  %31 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %32 = load i32, i32* @MSG_DEBUG, align 4
  %33 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %3, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %31, i32 %32, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %34)
  %36 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %3, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %30
  %40 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %41 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %40, i32 0, i32 3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %3, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @p2p_supported_freq_go(i32 %44, i64 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %39
  %50 = load i32, i32* @MSG_DEBUG, align 4
  %51 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %3, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @wpa_printf(i32 %50, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i64 %52)
  %54 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %55 = load i32, i32* @P2P_GROUP_REMOVAL_GO_LEAVE_CHANNEL, align 4
  %56 = call i32 @wpas_p2p_group_delete(%struct.wpa_supplicant* %54, i32 %55)
  br label %71

57:                                               ; preds = %39, %30
  %58 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %3, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %61 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.wpa_ssid*, %struct.wpa_ssid** %4, align 8
  %63 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %64 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %63, i32 0, i32 2
  store %struct.wpa_ssid* %62, %struct.wpa_ssid** %64, align 8
  %65 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %66 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %68 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  %69 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %70 = call i32 @wpa_supplicant_req_scan(%struct.wpa_supplicant* %69, i32 0, i32 0)
  br label %71

71:                                               ; preds = %57, %49, %23
  ret void
}

declare dso_local i32 @wpa_msg_global(%struct.wpa_supplicant*, i32, i32) #1

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*, ...) #1

declare dso_local i32 @wpa_supplicant_ap_deinit(%struct.wpa_supplicant*) #1

declare dso_local i64 @wpas_p2p_init_go_params(%struct.wpa_supplicant*, %struct.p2p_go_neg_results*, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @wpas_p2p_group_delete(%struct.wpa_supplicant*, i32) #1

declare dso_local i32 @p2p_supported_freq_go(i32, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*, i64) #1

declare dso_local i32 @wpa_supplicant_req_scan(%struct.wpa_supplicant*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
