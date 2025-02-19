; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_events.c_wpas_event_dfs_cac_started.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_events.c_wpas_event_dfs_cac_started.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, i64 }
%struct.dfs_event = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, %struct.dfs_event*)* @wpas_event_dfs_cac_started to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_event_dfs_cac_started(%struct.wpa_supplicant* %0, %struct.dfs_event* %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.dfs_event*, align 8
  %5 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store %struct.dfs_event* %1, %struct.dfs_event** %4, align 8
  %6 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %7 = load %struct.dfs_event*, %struct.dfs_event** %4, align 8
  %8 = getelementptr inbounds %struct.dfs_event, %struct.dfs_event* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @wpas_event_cac_ms(%struct.wpa_supplicant* %6, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = udiv i32 %11, 1000
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 600, i32* %5, align 4
  br label %16

16:                                               ; preds = %15, %2
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @wpas_auth_timeout_restart(%struct.wpa_supplicant* %17, i32 %18)
  ret void
}

declare dso_local i32 @wpas_event_cac_ms(%struct.wpa_supplicant*, i32) #1

declare dso_local i32 @wpas_auth_timeout_restart(%struct.wpa_supplicant*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
