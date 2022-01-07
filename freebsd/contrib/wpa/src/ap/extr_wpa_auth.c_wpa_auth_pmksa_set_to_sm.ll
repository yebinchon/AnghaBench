; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_auth_pmksa_set_to_sm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_auth_pmksa_set_to_sm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsn_pmksa_cache_entry = type { i32, i32 }
%struct.wpa_state_machine = type { %struct.rsn_pmksa_cache_entry* }
%struct.wpa_authenticator = type { i32* }

@PMK_LEN = common dso_local global i32 0, align 4
@PMKID_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_auth_pmksa_set_to_sm(%struct.rsn_pmksa_cache_entry* %0, %struct.wpa_state_machine* %1, %struct.wpa_authenticator* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.rsn_pmksa_cache_entry*, align 8
  %7 = alloca %struct.wpa_state_machine*, align 8
  %8 = alloca %struct.wpa_authenticator*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.rsn_pmksa_cache_entry* %0, %struct.rsn_pmksa_cache_entry** %6, align 8
  store %struct.wpa_state_machine* %1, %struct.wpa_state_machine** %7, align 8
  store %struct.wpa_authenticator* %2, %struct.wpa_authenticator** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %7, align 8
  %12 = icmp ne %struct.wpa_state_machine* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %5
  br label %38

14:                                               ; preds = %5
  %15 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %6, align 8
  %16 = load %struct.wpa_state_machine*, %struct.wpa_state_machine** %7, align 8
  %17 = getelementptr inbounds %struct.wpa_state_machine, %struct.wpa_state_machine* %16, i32 0, i32 0
  store %struct.rsn_pmksa_cache_entry* %15, %struct.rsn_pmksa_cache_entry** %17, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %6, align 8
  %20 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PMK_LEN, align 4
  %23 = call i32 @os_memcpy(i32* %18, i32 %21, i32 %22)
  %24 = load i32*, i32** %9, align 8
  %25 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %6, align 8
  %26 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PMKID_LEN, align 4
  %29 = call i32 @os_memcpy(i32* %24, i32 %27, i32 %28)
  %30 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %8, align 8
  %31 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %6, align 8
  %34 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PMKID_LEN, align 4
  %37 = call i32 @os_memcpy(i32* %32, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @os_memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
