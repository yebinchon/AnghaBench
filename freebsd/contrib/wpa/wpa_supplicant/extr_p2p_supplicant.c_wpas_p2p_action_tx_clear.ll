; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_action_tx_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_action_tx_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.send_action_work* }
%struct.send_action_work = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"P2P: Clear Action TX work @%p (wait_time=%u)\00", align 1
@wpas_p2p_send_action_work_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*)* @wpas_p2p_action_tx_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_p2p_action_tx_clear(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_supplicant*, align 8
  %3 = alloca %struct.send_action_work*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %2, align 8
  %4 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %5 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %41

8:                                                ; preds = %1
  %9 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %10 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.send_action_work*, %struct.send_action_work** %12, align 8
  store %struct.send_action_work* %13, %struct.send_action_work** %3, align 8
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %16 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load %struct.send_action_work*, %struct.send_action_work** %3, align 8
  %19 = getelementptr inbounds %struct.send_action_work, %struct.send_action_work* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @wpa_printf(i32 %14, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.TYPE_2__* %17, i32 %20)
  %22 = load %struct.send_action_work*, %struct.send_action_work** %3, align 8
  %23 = getelementptr inbounds %struct.send_action_work, %struct.send_action_work* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %8
  %27 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %28 = call i32 @wpas_p2p_free_send_action_work(%struct.wpa_supplicant* %27)
  br label %40

29:                                               ; preds = %8
  %30 = load i32, i32* @wpas_p2p_send_action_work_timeout, align 4
  %31 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %32 = call i32 @eloop_cancel_timeout(i32 %30, %struct.wpa_supplicant* %31, i32* null)
  %33 = load %struct.send_action_work*, %struct.send_action_work** %3, align 8
  %34 = getelementptr inbounds %struct.send_action_work, %struct.send_action_work* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %35, 1000
  %37 = load i32, i32* @wpas_p2p_send_action_work_timeout, align 4
  %38 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %39 = call i32 @eloop_register_timeout(i32 0, i32 %36, i32 %37, %struct.wpa_supplicant* %38, i32* null)
  br label %40

40:                                               ; preds = %29, %26
  br label %41

41:                                               ; preds = %40, %1
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @wpas_p2p_free_send_action_work(%struct.wpa_supplicant*) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.wpa_supplicant*, i32*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.wpa_supplicant*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
