; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_events.c_wpa_supplicant_dynamic_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_events.c_wpa_supplicant_dynamic_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@WPA_KEY_MGMT_NONE = common dso_local global i64 0, align 8
@WPA_KEY_MGMT_WPA_NONE = common dso_local global i64 0, align 8
@EAPOL_FLAG_REQUIRE_KEY_BROADCAST = common dso_local global i32 0, align 4
@EAPOL_FLAG_REQUIRE_KEY_UNICAST = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_IEEE8021X_NO_WPA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*)* @wpa_supplicant_dynamic_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_supplicant_dynamic_keys(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpa_supplicant*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  %4 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %5 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @WPA_KEY_MGMT_NONE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %11 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @WPA_KEY_MGMT_WPA_NONE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9, %1
  store i32 0, i32* %2, align 4
  br label %17

16:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %17

17:                                               ; preds = %16, %15
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
