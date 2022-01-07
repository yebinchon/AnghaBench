; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ibss_rsn.c_auth_for_each_sta.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ibss_rsn.c_auth_for_each_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_state_machine = type opaque
%struct.ibss_rsn = type { %struct.ibss_rsn_peer* }
%struct.ibss_rsn_peer = type { %struct.wpa_state_machine*, %struct.ibss_rsn_peer* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"AUTH: for_each_sta\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32 (%struct.wpa_state_machine*, i8*)*, i8*)* @auth_for_each_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auth_for_each_sta(i8* %0, i32 (%struct.wpa_state_machine*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32 (%struct.wpa_state_machine*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ibss_rsn*, align 8
  %9 = alloca %struct.ibss_rsn_peer*, align 8
  store i8* %0, i8** %5, align 8
  store i32 (%struct.wpa_state_machine*, i8*)* %1, i32 (%struct.wpa_state_machine*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.ibss_rsn*
  store %struct.ibss_rsn* %11, %struct.ibss_rsn** %8, align 8
  %12 = load i32, i32* @MSG_DEBUG, align 4
  %13 = call i32 @wpa_printf(i32 %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.ibss_rsn*, %struct.ibss_rsn** %8, align 8
  %15 = getelementptr inbounds %struct.ibss_rsn, %struct.ibss_rsn* %14, i32 0, i32 0
  %16 = load %struct.ibss_rsn_peer*, %struct.ibss_rsn_peer** %15, align 8
  store %struct.ibss_rsn_peer* %16, %struct.ibss_rsn_peer** %9, align 8
  br label %17

17:                                               ; preds = %35, %3
  %18 = load %struct.ibss_rsn_peer*, %struct.ibss_rsn_peer** %9, align 8
  %19 = icmp ne %struct.ibss_rsn_peer* %18, null
  br i1 %19, label %20, label %39

20:                                               ; preds = %17
  %21 = load %struct.ibss_rsn_peer*, %struct.ibss_rsn_peer** %9, align 8
  %22 = getelementptr inbounds %struct.ibss_rsn_peer, %struct.ibss_rsn_peer* %21, i32 0, i32 0
  %23 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %22, align 8
  %24 = icmp ne %struct.wpa_state_machine* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load i32 (%struct.wpa_state_machine*, i8*)*, i32 (%struct.wpa_state_machine*, i8*)** %6, align 8
  %27 = load %struct.ibss_rsn_peer*, %struct.ibss_rsn_peer** %9, align 8
  %28 = getelementptr inbounds %struct.ibss_rsn_peer, %struct.ibss_rsn_peer* %27, i32 0, i32 0
  %29 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %28, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 %26(%struct.wpa_state_machine* %29, i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 1, i32* %4, align 4
  br label %40

34:                                               ; preds = %25, %20
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.ibss_rsn_peer*, %struct.ibss_rsn_peer** %9, align 8
  %37 = getelementptr inbounds %struct.ibss_rsn_peer, %struct.ibss_rsn_peer* %36, i32 0, i32 1
  %38 = load %struct.ibss_rsn_peer*, %struct.ibss_rsn_peer** %37, align 8
  store %struct.ibss_rsn_peer* %38, %struct.ibss_rsn_peer** %9, align 8
  br label %17

39:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %33
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
