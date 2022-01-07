; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_auth_sta_clear_pmksa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_auth_sta_clear_pmksa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_state_machine = type { %struct.rsn_pmksa_cache_entry* }
%struct.rsn_pmksa_cache_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_auth_sta_clear_pmksa(%struct.wpa_state_machine* %0, %struct.rsn_pmksa_cache_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_state_machine*, align 8
  %5 = alloca %struct.rsn_pmksa_cache_entry*, align 8
  store %struct.wpa_state_machine* %0, %struct.wpa_state_machine** %4, align 8
  store %struct.rsn_pmksa_cache_entry* %1, %struct.rsn_pmksa_cache_entry** %5, align 8
  %6 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %7 = icmp eq %struct.wpa_state_machine* %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %10 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %9, i32 0, i32 0
  %11 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %10, align 8
  %12 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %5, align 8
  %13 = icmp ne %struct.rsn_pmksa_cache_entry* %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8, %2
  store i32 -1, i32* %3, align 4
  br label %18

15:                                               ; preds = %8
  %16 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %4, align 8
  %17 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %16, i32 0, i32 0
  store %struct.rsn_pmksa_cache_entry* null, %struct.rsn_pmksa_cache_entry** %17, align 8
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %15, %14
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
