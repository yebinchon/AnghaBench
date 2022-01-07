; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_notif_pbc_overlap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_notif_pbc_overlap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, %struct.wpa_supplicant*, i32 }

@P2P_GROUP_INTERFACE_CLIENT = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"P2P: Terminate connection due to WPS PBC session overlap\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@WPS_EVENT_OVERLAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_p2p_notif_pbc_overlap(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpa_supplicant*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  %4 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %5 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @P2P_GROUP_INTERFACE_CLIENT, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %11 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %33

15:                                               ; preds = %9, %1
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %19 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %20 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %19, i32 0, i32 1
  %21 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %20, align 8
  %22 = icmp ne %struct.wpa_supplicant* %18, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %15
  %24 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %25 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %24, i32 0, i32 1
  %26 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %25, align 8
  %27 = load i32, i32* @MSG_INFO, align 4
  %28 = load i32, i32* @WPS_EVENT_OVERLAP, align 4
  %29 = call i32 @wpa_msg_ctrl(%struct.wpa_supplicant* %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %23, %15
  %31 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %32 = call i32 @wpas_p2p_group_formation_failed(%struct.wpa_supplicant* %31, i32 0)
  store i32 1, i32* %2, align 4
  br label %33

33:                                               ; preds = %30, %14
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_msg_ctrl(%struct.wpa_supplicant*, i32, i32) #1

declare dso_local i32 @wpas_p2p_group_formation_failed(%struct.wpa_supplicant*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
