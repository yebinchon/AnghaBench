; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_1x.c_ieee802_1x_free_station.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_1x.c_ieee802_1x_free_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.sta_info = type { %struct.eapol_state_machine*, %struct.TYPE_2__* }
%struct.eapol_state_machine = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ieee802_1x_wnm_notif_send = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee802_1x_free_station(%struct.hostapd_data* %0, %struct.sta_info* %1) #0 {
  %3 = alloca %struct.hostapd_data*, align 8
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca %struct.eapol_state_machine*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %3, align 8
  store %struct.sta_info* %1, %struct.sta_info** %4, align 8
  %6 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %7 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %6, i32 0, i32 0
  %8 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %7, align 8
  store %struct.eapol_state_machine* %8, %struct.eapol_state_machine** %5, align 8
  %9 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %10 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %15 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @wpabuf_free(i32 %18)
  %20 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %21 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = call i32 @os_free(%struct.TYPE_2__* %22)
  %24 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %25 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %24, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %25, align 8
  br label %26

26:                                               ; preds = %13, %2
  %27 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %5, align 8
  %28 = icmp eq %struct.eapol_state_machine* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %42

30:                                               ; preds = %26
  %31 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %32 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %31, i32 0, i32 0
  store %struct.eapol_state_machine* null, %struct.eapol_state_machine** %32, align 8
  %33 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %5, align 8
  %34 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @radius_msg_free(i32 %35)
  %37 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %5, align 8
  %38 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %37, i32 0, i32 0
  %39 = call i32 @radius_free_class(i32* %38)
  %40 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %5, align 8
  %41 = call i32 @eapol_auth_free(%struct.eapol_state_machine* %40)
  br label %42

42:                                               ; preds = %30, %29
  ret void
}

declare dso_local i32 @wpabuf_free(i32) #1

declare dso_local i32 @os_free(%struct.TYPE_2__*) #1

declare dso_local i32 @radius_msg_free(i32) #1

declare dso_local i32 @radius_free_class(i32*) #1

declare dso_local i32 @eapol_auth_free(%struct.eapol_state_machine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
