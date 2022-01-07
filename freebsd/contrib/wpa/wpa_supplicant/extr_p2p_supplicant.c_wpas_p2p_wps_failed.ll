; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_wps_failed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_wps_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32, %struct.wpa_supplicant*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.wps_event_fail = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"P2P: Ignore WPS fail event - P2P provisioning not in progress\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"P2P: WPS step failed during group formation - reject connection from timeout\00", align 1
@wpas_p2p_group_formation_timeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpas_p2p_wps_failed(%struct.wpa_supplicant* %0, %struct.wps_event_fail* %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.wps_event_fail*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store %struct.wps_event_fail* %1, %struct.wps_event_fail** %4, align 8
  %5 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %6 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @MSG_DEBUG, align 4
  %11 = call i32 @wpa_printf(i32 %10, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  br label %52

12:                                               ; preds = %2
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %14 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %19 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %24 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @p2p_clear_provisioning_info(i32 %22, i32 %27)
  br label %29

29:                                               ; preds = %17, %12
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %31 = load %struct.wps_event_fail*, %struct.wps_event_fail** %4, align 8
  %32 = call i32 @wpas_notify_p2p_wps_failed(%struct.wpa_supplicant* %30, %struct.wps_event_fail* %31)
  %33 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %34 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %35 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %37, align 8
  %39 = icmp eq %struct.wpa_supplicant* %33, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %29
  %41 = load i32, i32* @MSG_DEBUG, align 4
  %42 = call i32 @wpa_printf(i32 %41, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %44 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load i32, i32* @wpas_p2p_group_formation_timeout, align 4
  %48 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %49 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @eloop_deplete_timeout(i32 0, i32 50000, i32 %47, i32 %50, i32* null)
  br label %52

52:                                               ; preds = %9, %40, %29
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @p2p_clear_provisioning_info(i32, i32) #1

declare dso_local i32 @wpas_notify_p2p_wps_failed(%struct.wpa_supplicant*, %struct.wps_event_fail*) #1

declare dso_local i32 @eloop_deplete_timeout(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
