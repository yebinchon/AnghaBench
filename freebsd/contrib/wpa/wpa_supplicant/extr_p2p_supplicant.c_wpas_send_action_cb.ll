; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_send_action_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_send_action_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_radio_work = type { i64, %struct.send_action_work*, %struct.wpa_supplicant* }
%struct.send_action_work = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.wpa_supplicant = type { %struct.wpa_radio_work* }

@wpas_p2p_send_action_work_timeout = common dso_local global i32 0, align 4
@wpas_p2p_send_action_tx_status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_radio_work*, i32)* @wpas_send_action_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_send_action_cb(%struct.wpa_radio_work* %0, i32 %1) #0 {
  %3 = alloca %struct.wpa_radio_work*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca %struct.send_action_work*, align 8
  store %struct.wpa_radio_work* %0, %struct.wpa_radio_work** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %3, align 8
  %8 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %7, i32 0, i32 2
  %9 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %8, align 8
  store %struct.wpa_supplicant* %9, %struct.wpa_supplicant** %5, align 8
  %10 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %3, align 8
  %11 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %10, i32 0, i32 1
  %12 = load %struct.send_action_work*, %struct.send_action_work** %11, align 8
  store %struct.send_action_work* %12, %struct.send_action_work** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %3, align 8
  %17 = getelementptr inbounds %struct.wpa_radio_work, %struct.wpa_radio_work* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load i32, i32* @wpas_p2p_send_action_work_timeout, align 4
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %23 = call i32 @eloop_cancel_timeout(i32 %21, %struct.wpa_supplicant* %22, i32* null)
  %24 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %25 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %24, i32 0, i32 0
  store %struct.wpa_radio_work* null, %struct.wpa_radio_work** %25, align 8
  %26 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %27 = call i32 @offchannel_send_action_done(%struct.wpa_supplicant* %26)
  br label %28

28:                                               ; preds = %20, %15
  %29 = load %struct.send_action_work*, %struct.send_action_work** %6, align 8
  %30 = call i32 @os_free(%struct.send_action_work* %29)
  br label %66

31:                                               ; preds = %2
  %32 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %33 = load %struct.send_action_work*, %struct.send_action_work** %6, align 8
  %34 = getelementptr inbounds %struct.send_action_work, %struct.send_action_work* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.send_action_work*, %struct.send_action_work** %6, align 8
  %37 = getelementptr inbounds %struct.send_action_work, %struct.send_action_work* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.send_action_work*, %struct.send_action_work** %6, align 8
  %40 = getelementptr inbounds %struct.send_action_work, %struct.send_action_work* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.send_action_work*, %struct.send_action_work** %6, align 8
  %43 = getelementptr inbounds %struct.send_action_work, %struct.send_action_work* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.send_action_work*, %struct.send_action_work** %6, align 8
  %46 = getelementptr inbounds %struct.send_action_work, %struct.send_action_work* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.send_action_work*, %struct.send_action_work** %6, align 8
  %49 = getelementptr inbounds %struct.send_action_work, %struct.send_action_work* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.send_action_work*, %struct.send_action_work** %6, align 8
  %52 = getelementptr inbounds %struct.send_action_work, %struct.send_action_work* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @wpas_p2p_send_action_tx_status, align 4
  %55 = call i64 @offchannel_send_action(%struct.wpa_supplicant* %32, i32 %35, i32 %38, i32 %41, i32 %44, i32 %47, i32 %50, i32 %53, i32 %54, i32 1)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %31
  %58 = load %struct.send_action_work*, %struct.send_action_work** %6, align 8
  %59 = call i32 @os_free(%struct.send_action_work* %58)
  %60 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %3, align 8
  %61 = call i32 @radio_work_done(%struct.wpa_radio_work* %60)
  br label %66

62:                                               ; preds = %31
  %63 = load %struct.wpa_radio_work*, %struct.wpa_radio_work** %3, align 8
  %64 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %65 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %64, i32 0, i32 0
  store %struct.wpa_radio_work* %63, %struct.wpa_radio_work** %65, align 8
  br label %66

66:                                               ; preds = %62, %57, %28
  ret void
}

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.wpa_supplicant*, i32*) #1

declare dso_local i32 @offchannel_send_action_done(%struct.wpa_supplicant*) #1

declare dso_local i32 @os_free(%struct.send_action_work*) #1

declare dso_local i64 @offchannel_send_action(%struct.wpa_supplicant*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @radio_work_done(%struct.wpa_radio_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
