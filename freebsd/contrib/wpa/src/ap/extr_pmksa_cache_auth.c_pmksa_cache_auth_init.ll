; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_pmksa_cache_auth.c_pmksa_cache_auth_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_pmksa_cache_auth.c_pmksa_cache_auth_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsn_pmksa_cache = type { void (%struct.rsn_pmksa_cache_entry*, i8*)*, i8* }
%struct.rsn_pmksa_cache_entry = type opaque
%struct.rsn_pmksa_cache_entry.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rsn_pmksa_cache* @pmksa_cache_auth_init(void (%struct.rsn_pmksa_cache_entry.0*, i8*)* %0, i8* %1) #0 {
  %3 = alloca void (%struct.rsn_pmksa_cache_entry.0*, i8*)*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rsn_pmksa_cache*, align 8
  store void (%struct.rsn_pmksa_cache_entry.0*, i8*)* %0, void (%struct.rsn_pmksa_cache_entry.0*, i8*)** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call %struct.rsn_pmksa_cache* @os_zalloc(i32 16)
  store %struct.rsn_pmksa_cache* %6, %struct.rsn_pmksa_cache** %5, align 8
  %7 = load %struct.rsn_pmksa_cache*, %struct.rsn_pmksa_cache** %5, align 8
  %8 = icmp ne %struct.rsn_pmksa_cache* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load void (%struct.rsn_pmksa_cache_entry.0*, i8*)*, void (%struct.rsn_pmksa_cache_entry.0*, i8*)** %3, align 8
  %11 = bitcast void (%struct.rsn_pmksa_cache_entry.0*, i8*)* %10 to void (%struct.rsn_pmksa_cache_entry*, i8*)*
  %12 = load %struct.rsn_pmksa_cache*, %struct.rsn_pmksa_cache** %5, align 8
  %13 = getelementptr inbounds %struct.rsn_pmksa_cache, %struct.rsn_pmksa_cache* %12, i32 0, i32 0
  store void (%struct.rsn_pmksa_cache_entry*, i8*)* %11, void (%struct.rsn_pmksa_cache_entry*, i8*)** %13, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load %struct.rsn_pmksa_cache*, %struct.rsn_pmksa_cache** %5, align 8
  %16 = getelementptr inbounds %struct.rsn_pmksa_cache, %struct.rsn_pmksa_cache* %15, i32 0, i32 1
  store i8* %14, i8** %16, align 8
  br label %17

17:                                               ; preds = %9, %2
  %18 = load %struct.rsn_pmksa_cache*, %struct.rsn_pmksa_cache** %5, align 8
  ret %struct.rsn_pmksa_cache* %18
}

declare dso_local %struct.rsn_pmksa_cache* @os_zalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
