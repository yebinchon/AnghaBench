; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_sm_pmksa_cache_add_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_sm_pmksa_cache_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i32 }
%struct.rsn_pmksa_cache_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rsn_pmksa_cache_entry* @wpa_sm_pmksa_cache_add_entry(%struct.wpa_sm* %0, %struct.rsn_pmksa_cache_entry* %1) #0 {
  %3 = alloca %struct.wpa_sm*, align 8
  %4 = alloca %struct.rsn_pmksa_cache_entry*, align 8
  store %struct.wpa_sm* %0, %struct.wpa_sm** %3, align 8
  store %struct.rsn_pmksa_cache_entry* %1, %struct.rsn_pmksa_cache_entry** %4, align 8
  %5 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %6 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %4, align 8
  %9 = call %struct.rsn_pmksa_cache_entry* @pmksa_cache_add_entry(i32 %7, %struct.rsn_pmksa_cache_entry* %8)
  ret %struct.rsn_pmksa_cache_entry* %9
}

declare dso_local %struct.rsn_pmksa_cache_entry* @pmksa_cache_add_entry(i32, %struct.rsn_pmksa_cache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
