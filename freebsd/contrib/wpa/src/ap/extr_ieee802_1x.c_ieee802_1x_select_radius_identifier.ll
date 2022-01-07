; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_1x.c_ieee802_1x_select_radius_identifier.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_1x.c_ieee802_1x_select_radius_identifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.sta_info = type { %struct.eapol_state_machine* }
%struct.eapol_state_machine = type { i64 }
%struct.sta_id_search = type { i64, %struct.eapol_state_machine* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*, %struct.sta_info*, i8*)* @ieee802_1x_select_radius_identifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802_1x_select_radius_identifier(%struct.hostapd_data* %0, %struct.sta_info* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hostapd_data*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sta_id_search*, align 8
  %9 = alloca %struct.eapol_state_machine*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %5, align 8
  store %struct.sta_info* %1, %struct.sta_info** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.sta_id_search*
  store %struct.sta_id_search* %11, %struct.sta_id_search** %8, align 8
  %12 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %13 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %12, i32 0, i32 0
  %14 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %13, align 8
  store %struct.eapol_state_machine* %14, %struct.eapol_state_machine** %9, align 8
  %15 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %9, align 8
  %16 = icmp ne %struct.eapol_state_machine* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %3
  %18 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %9, align 8
  %19 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %17
  %23 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %9, align 8
  %24 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.sta_id_search*, %struct.sta_id_search** %8, align 8
  %27 = getelementptr inbounds %struct.sta_id_search, %struct.sta_id_search* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %9, align 8
  %32 = load %struct.sta_id_search*, %struct.sta_id_search** %8, align 8
  %33 = getelementptr inbounds %struct.sta_id_search, %struct.sta_id_search* %32, i32 0, i32 1
  store %struct.eapol_state_machine* %31, %struct.eapol_state_machine** %33, align 8
  store i32 1, i32* %4, align 4
  br label %35

34:                                               ; preds = %22, %17, %3
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %30
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
