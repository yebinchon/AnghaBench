; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth_glue.c_hostapd_wpa_auth_for_each_sta.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth_glue.c_hostapd_wpa_auth_for_each_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_state_machine = type opaque
%struct.hostapd_data = type { %struct.sta_info* }
%struct.sta_info = type { %struct.wpa_state_machine*, %struct.sta_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32 (%struct.wpa_state_machine*, i8*)*, i8*)* @hostapd_wpa_auth_for_each_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_wpa_auth_for_each_sta(i8* %0, i32 (%struct.wpa_state_machine*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32 (%struct.wpa_state_machine*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hostapd_data*, align 8
  %9 = alloca %struct.sta_info*, align 8
  store i8* %0, i8** %5, align 8
  store i32 (%struct.wpa_state_machine*, i8*)* %1, i32 (%struct.wpa_state_machine*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.hostapd_data*
  store %struct.hostapd_data* %11, %struct.hostapd_data** %8, align 8
  %12 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %13 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %12, i32 0, i32 0
  %14 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  store %struct.sta_info* %14, %struct.sta_info** %9, align 8
  br label %15

15:                                               ; preds = %33, %3
  %16 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %17 = icmp ne %struct.sta_info* %16, null
  br i1 %17, label %18, label %37

18:                                               ; preds = %15
  %19 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %20 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %19, i32 0, i32 0
  %21 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %20, align 8
  %22 = icmp ne %struct.wpa_state_machine* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load i32 (%struct.wpa_state_machine*, i8*)*, i32 (%struct.wpa_state_machine*, i8*)** %6, align 8
  %25 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %26 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %25, i32 0, i32 0
  %27 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %26, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 %24(%struct.wpa_state_machine* %27, i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 1, i32* %4, align 4
  br label %38

32:                                               ; preds = %23, %18
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %35 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %34, i32 0, i32 1
  %36 = load %struct.sta_info*, %struct.sta_info** %35, align 8
  store %struct.sta_info* %36, %struct.sta_info** %9, align 8
  br label %15

37:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %31
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
