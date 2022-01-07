; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_pmksa_cache_auth.c_pmksa_cache_auth_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_pmksa_cache_auth.c_pmksa_cache_auth_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsn_pmksa_cache_entry = type { i32 }
%struct.rsn_pmksa_cache = type { i32 }
%struct.eapol_state_machine = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rsn_pmksa_cache_entry* @pmksa_cache_auth_add(%struct.rsn_pmksa_cache* %0, i32* %1, i64 %2, i32* %3, i32* %4, i64 %5, i32* %6, i32* %7, i32 %8, %struct.eapol_state_machine* %9, i32 %10) #0 {
  %12 = alloca %struct.rsn_pmksa_cache_entry*, align 8
  %13 = alloca %struct.rsn_pmksa_cache*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.eapol_state_machine*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.rsn_pmksa_cache_entry*, align 8
  store %struct.rsn_pmksa_cache* %0, %struct.rsn_pmksa_cache** %13, align 8
  store i32* %1, i32** %14, align 8
  store i64 %2, i64* %15, align 8
  store i32* %3, i32** %16, align 8
  store i32* %4, i32** %17, align 8
  store i64 %5, i64* %18, align 8
  store i32* %6, i32** %19, align 8
  store i32* %7, i32** %20, align 8
  store i32 %8, i32* %21, align 4
  store %struct.eapol_state_machine* %9, %struct.eapol_state_machine** %22, align 8
  store i32 %10, i32* %23, align 4
  %25 = load i32*, i32** %14, align 8
  %26 = load i64, i64* %15, align 8
  %27 = load i32*, i32** %16, align 8
  %28 = load i32*, i32** %17, align 8
  %29 = load i64, i64* %18, align 8
  %30 = load i32*, i32** %19, align 8
  %31 = load i32*, i32** %20, align 8
  %32 = load i32, i32* %21, align 4
  %33 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %22, align 8
  %34 = load i32, i32* %23, align 4
  %35 = call %struct.rsn_pmksa_cache_entry* @pmksa_cache_auth_create_entry(i32* %25, i64 %26, i32* %27, i32* %28, i64 %29, i32* %30, i32* %31, i32 %32, %struct.eapol_state_machine* %33, i32 %34)
  store %struct.rsn_pmksa_cache_entry* %35, %struct.rsn_pmksa_cache_entry** %24, align 8
  %36 = load %struct.rsn_pmksa_cache*, %struct.rsn_pmksa_cache** %13, align 8
  %37 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %24, align 8
  %38 = call i64 @pmksa_cache_auth_add_entry(%struct.rsn_pmksa_cache* %36, %struct.rsn_pmksa_cache_entry* %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %11
  store %struct.rsn_pmksa_cache_entry* null, %struct.rsn_pmksa_cache_entry** %12, align 8
  br label %43

41:                                               ; preds = %11
  %42 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %24, align 8
  store %struct.rsn_pmksa_cache_entry* %42, %struct.rsn_pmksa_cache_entry** %12, align 8
  br label %43

43:                                               ; preds = %41, %40
  %44 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %12, align 8
  ret %struct.rsn_pmksa_cache_entry* %44
}

declare dso_local %struct.rsn_pmksa_cache_entry* @pmksa_cache_auth_create_entry(i32*, i64, i32*, i32*, i64, i32*, i32*, i32, %struct.eapol_state_machine*, i32) #1

declare dso_local i64 @pmksa_cache_auth_add_entry(%struct.rsn_pmksa_cache*, %struct.rsn_pmksa_cache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
