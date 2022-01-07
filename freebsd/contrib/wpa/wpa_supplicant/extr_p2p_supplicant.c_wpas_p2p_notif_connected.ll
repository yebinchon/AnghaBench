; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_notif_connected.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_notif_connected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@WPAS_MODE_INFRA = common dso_local global i64 0, align 8
@wpas_p2p_group_idle_timeout = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"P2P: Cancelled P2P group idle timeout\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpas_p2p_notif_connected(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_supplicant*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %2, align 8
  %3 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %4 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %1
  %8 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %9 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp eq %struct.TYPE_2__* %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %7
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %14 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @WPAS_MODE_INFRA, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %12
  %21 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %22 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20, %12, %7, %1
  %26 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %27 = call i32 @wpas_p2p_disable_cross_connect(%struct.wpa_supplicant* %26)
  br label %31

28:                                               ; preds = %20
  %29 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %30 = call i32 @wpas_p2p_enable_cross_connect(%struct.wpa_supplicant* %29)
  br label %31

31:                                               ; preds = %28, %25
  %32 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %33 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @wpas_p2p_group_idle_timeout, align 4
  %38 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %39 = call i64 @eloop_cancel_timeout(i32 %37, %struct.wpa_supplicant* %38, i32* null)
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @MSG_DEBUG, align 4
  %43 = call i32 @wpa_printf(i32 %42, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %36, %31
  ret void
}

declare dso_local i32 @wpas_p2p_disable_cross_connect(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpas_p2p_enable_cross_connect(%struct.wpa_supplicant*) #1

declare dso_local i64 @eloop_cancel_timeout(i32, %struct.wpa_supplicant*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
