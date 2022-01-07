; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_auth_pmksa_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_auth_pmksa_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsn_pmksa_cache_entry = type { i32 }
%struct.wpa_authenticator = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rsn_pmksa_cache_entry* @wpa_auth_pmksa_get(%struct.wpa_authenticator* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.rsn_pmksa_cache_entry*, align 8
  %5 = alloca %struct.wpa_authenticator*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.wpa_authenticator* %0, %struct.wpa_authenticator** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %5, align 8
  %9 = icmp ne %struct.wpa_authenticator* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %5, align 8
  %12 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %3
  store %struct.rsn_pmksa_cache_entry* null, %struct.rsn_pmksa_cache_entry** %4, align 8
  br label %23

16:                                               ; preds = %10
  %17 = load %struct.wpa_authenticator*, %struct.wpa_authenticator** %5, align 8
  %18 = getelementptr inbounds %struct.wpa_authenticator, %struct.wpa_authenticator* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call %struct.rsn_pmksa_cache_entry* @pmksa_cache_auth_get(i32 %19, i32* %20, i32* %21)
  store %struct.rsn_pmksa_cache_entry* %22, %struct.rsn_pmksa_cache_entry** %4, align 8
  br label %23

23:                                               ; preds = %16, %15
  %24 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %4, align 8
  ret %struct.rsn_pmksa_cache_entry* %24
}

declare dso_local %struct.rsn_pmksa_cache_entry* @pmksa_cache_auth_get(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
