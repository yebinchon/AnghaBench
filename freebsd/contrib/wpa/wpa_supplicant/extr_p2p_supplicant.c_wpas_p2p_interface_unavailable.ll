; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_interface_unavailable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_interface_unavailable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"P2P: Remove group due to driver resource not being available anymore\00", align 1
@P2P_GROUP_REMOVAL_UNAVAILABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpas_p2p_interface_unavailable(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_supplicant*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %2, align 8
  %3 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %4 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = icmp eq %struct.TYPE_2__* %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %9 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %7, %1
  br label %21

15:                                               ; preds = %7
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %19 = load i32, i32* @P2P_GROUP_REMOVAL_UNAVAILABLE, align 4
  %20 = call i32 @wpas_p2p_group_delete(%struct.wpa_supplicant* %18, i32 %19)
  br label %21

21:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpas_p2p_group_delete(%struct.wpa_supplicant*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
