; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_interworking_reconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_interworking.c_interworking_reconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, i32, i32, i32, i64 }

@WPA_AUTHENTICATING = common dso_local global i64 0, align 8
@WLAN_REASON_DEAUTH_LEAVING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*)* @interworking_reconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @interworking_reconnect(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_supplicant*, align 8
  %3 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %2, align 8
  %4 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %5 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @WPA_AUTHENTICATING, align 8
  %8 = icmp sge i64 %6, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %11 = call i32 @wpa_supplicant_cancel_sched_scan(%struct.wpa_supplicant* %10)
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %13 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %12, i32 0, i32 1
  store i32 1, i32* %13, align 8
  %14 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %15 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %16 = call i32 @wpa_supplicant_deauthenticate(%struct.wpa_supplicant* %14, i32 %15)
  br label %17

17:                                               ; preds = %9, %1
  %18 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %19 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %18, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %21 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %20, i32 0, i32 2
  store i32 1, i32* %21, align 4
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %23 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %3, align 4
  %25 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %26 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %25, i32 0, i32 3
  store i32 1, i32* %26, align 8
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %17
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %31 = call i64 @wpa_supplicant_fast_associate(%struct.wpa_supplicant* %30)
  %32 = icmp sge i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %39

34:                                               ; preds = %29, %17
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %36 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %35, i32 0, i32 3
  store i32 0, i32* %36, align 8
  %37 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %2, align 8
  %38 = call i32 @wpa_supplicant_req_scan(%struct.wpa_supplicant* %37, i32 0, i32 0)
  br label %39

39:                                               ; preds = %34, %33
  ret void
}

declare dso_local i32 @wpa_supplicant_cancel_sched_scan(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpa_supplicant_deauthenticate(%struct.wpa_supplicant*, i32) #1

declare dso_local i64 @wpa_supplicant_fast_associate(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpa_supplicant_req_scan(%struct.wpa_supplicant*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
