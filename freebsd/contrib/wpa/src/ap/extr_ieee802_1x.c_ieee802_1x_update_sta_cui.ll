; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_1x.c_ieee802_1x_update_sta_cui.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_1x.c_ieee802_1x_update_sta_cui.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.sta_info = type { %struct.eapol_state_machine* }
%struct.eapol_state_machine = type { %struct.wpabuf* }
%struct.wpabuf = type { i32 }
%struct.radius_msg = type { i32 }

@RADIUS_ATTR_CHARGEABLE_USER_IDENTITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_data*, %struct.sta_info*, %struct.radius_msg*)* @ieee802_1x_update_sta_cui to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee802_1x_update_sta_cui(%struct.hostapd_data* %0, %struct.sta_info* %1, %struct.radius_msg* %2) #0 {
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca %struct.sta_info*, align 8
  %6 = alloca %struct.radius_msg*, align 8
  %7 = alloca %struct.eapol_state_machine*, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store %struct.sta_info* %1, %struct.sta_info** %5, align 8
  store %struct.radius_msg* %2, %struct.radius_msg** %6, align 8
  %11 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %12 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %11, i32 0, i32 0
  %13 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %12, align 8
  store %struct.eapol_state_machine* %13, %struct.eapol_state_machine** %7, align 8
  %14 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %7, align 8
  %15 = icmp eq %struct.eapol_state_machine* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %38

17:                                               ; preds = %3
  %18 = load %struct.radius_msg*, %struct.radius_msg** %6, align 8
  %19 = load i32, i32* @RADIUS_ATTR_CHARGEABLE_USER_IDENTITY, align 4
  %20 = call i64 @radius_msg_get_attr_ptr(%struct.radius_msg* %18, i32 %19, i32** %9, i64* %10, i32* null)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %38

23:                                               ; preds = %17
  %24 = load i32*, i32** %9, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call %struct.wpabuf* @wpabuf_alloc_copy(i32* %24, i64 %25)
  store %struct.wpabuf* %26, %struct.wpabuf** %8, align 8
  %27 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %28 = icmp eq %struct.wpabuf* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %38

30:                                               ; preds = %23
  %31 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %7, align 8
  %32 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %31, i32 0, i32 0
  %33 = load %struct.wpabuf*, %struct.wpabuf** %32, align 8
  %34 = call i32 @wpabuf_free(%struct.wpabuf* %33)
  %35 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %36 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %7, align 8
  %37 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %36, i32 0, i32 0
  store %struct.wpabuf* %35, %struct.wpabuf** %37, align 8
  br label %38

38:                                               ; preds = %30, %29, %22, %16
  ret void
}

declare dso_local i64 @radius_msg_get_attr_ptr(%struct.radius_msg*, i32, i32**, i64*, i32*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc_copy(i32*, i64) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
