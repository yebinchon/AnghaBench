; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, %struct.TYPE_6__*, i32*, %struct.TYPE_5__*, i64, %struct.TYPE_6__*, %struct.TYPE_4__*, i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@wpas_p2p_psk_failure_removal = common dso_local global i32 0, align 4
@wpas_p2p_group_formation_timeout = common dso_local global i32 0, align 4
@wpas_p2p_join_scan = common dso_local global i32 0, align 4
@wpas_p2p_long_listen_timeout = common dso_local global i32 0, align 4
@wpas_p2p_group_idle_timeout = common dso_local global i32 0, align 4
@wpas_p2p_group_freq_conflict = common dso_local global i32 0, align 4
@wpas_p2p_send_action_work_timeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpas_p2p_deinit(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_supplicant*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %2, align 8
  %3 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %4 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %3, i32 0, i32 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %9 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %8, i32 0, i32 7
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %14 = call i32 @wpa_drv_probe_req_report(%struct.wpa_supplicant* %13, i32 0)
  br label %15

15:                                               ; preds = %12, %7, %1
  %16 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %17 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %16, i32 0, i32 5
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %22 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %21, i32 0, i32 6
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %27 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %26, i32 0, i32 5
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @p2p_clear_provisioning_info(i32 %25, i32 %30)
  br label %32

32:                                               ; preds = %20, %15
  %33 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %34 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %33, i32 0, i32 5
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = call i32 @os_free(%struct.TYPE_6__* %35)
  %37 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %38 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %37, i32 0, i32 5
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %38, align 8
  %39 = load i32, i32* @wpas_p2p_psk_failure_removal, align 4
  %40 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %41 = call i32 @eloop_cancel_timeout(i32 %39, %struct.wpa_supplicant* %40, i32* null)
  %42 = load i32, i32* @wpas_p2p_group_formation_timeout, align 4
  %43 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %44 = call i32 @eloop_cancel_timeout(i32 %42, %struct.wpa_supplicant* %43, i32* null)
  %45 = load i32, i32* @wpas_p2p_join_scan, align 4
  %46 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %47 = call i32 @eloop_cancel_timeout(i32 %45, %struct.wpa_supplicant* %46, i32* null)
  %48 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %49 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %48, i32 0, i32 4
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* @wpas_p2p_long_listen_timeout, align 4
  %51 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %52 = call i32 @eloop_cancel_timeout(i32 %50, %struct.wpa_supplicant* %51, i32* null)
  %53 = load i32, i32* @wpas_p2p_group_idle_timeout, align 4
  %54 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %55 = call i32 @eloop_cancel_timeout(i32 %53, %struct.wpa_supplicant* %54, i32* null)
  %56 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %57 = call i32 @wpas_p2p_remove_pending_group_interface(%struct.wpa_supplicant* %56)
  %58 = load i32, i32* @wpas_p2p_group_freq_conflict, align 4
  %59 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %60 = call i32 @eloop_cancel_timeout(i32 %58, %struct.wpa_supplicant* %59, i32* null)
  %61 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %62 = call i32 @wpas_p2p_listen_work_done(%struct.wpa_supplicant* %61)
  %63 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %64 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %63, i32 0, i32 3
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = icmp ne %struct.TYPE_5__* %65, null
  br i1 %66, label %67, label %80

67:                                               ; preds = %32
  %68 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %69 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %68, i32 0, i32 3
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = call i32 @os_free(%struct.TYPE_6__* %72)
  %74 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %75 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %74, i32 0, i32 3
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = call i32 @radio_work_done(%struct.TYPE_5__* %76)
  %78 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %79 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %78, i32 0, i32 3
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %79, align 8
  br label %80

80:                                               ; preds = %67, %32
  %81 = load i32, i32* @wpas_p2p_send_action_work_timeout, align 4
  %82 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %83 = call i32 @eloop_cancel_timeout(i32 %81, %struct.wpa_supplicant* %82, i32* null)
  %84 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %85 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @wpabuf_free(i32* %86)
  %88 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %89 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %88, i32 0, i32 2
  store i32* null, i32** %89, align 8
  %90 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %91 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %90, i32 0, i32 1
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = call i32 @os_free(%struct.TYPE_6__* %92)
  %94 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %95 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %94, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %95, align 8
  %96 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %97 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %96, i32 0, i32 0
  store i64 0, i64* %97, align 8
  ret void
}

declare dso_local i32 @wpa_drv_probe_req_report(%struct.wpa_supplicant*, i32) #1

declare dso_local i32 @p2p_clear_provisioning_info(i32, i32) #1

declare dso_local i32 @os_free(%struct.TYPE_6__*) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.wpa_supplicant*, i32*) #1

declare dso_local i32 @wpas_p2p_remove_pending_group_interface(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpas_p2p_listen_work_done(%struct.wpa_supplicant*) #1

declare dso_local i32 @radio_work_done(%struct.TYPE_5__*) #1

declare dso_local i32 @wpabuf_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
