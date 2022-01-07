; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_pmksa_cache_auth.c__pmksa_cache_free_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_pmksa_cache_auth.c__pmksa_cache_free_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsn_pmksa_cache_entry = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsn_pmksa_cache_entry*)* @_pmksa_cache_free_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_pmksa_cache_free_entry(%struct.rsn_pmksa_cache_entry* %0) #0 {
  %2 = alloca %struct.rsn_pmksa_cache_entry*, align 8
  store %struct.rsn_pmksa_cache_entry* %0, %struct.rsn_pmksa_cache_entry** %2, align 8
  %3 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %2, align 8
  %4 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @os_free(i32 %5)
  %7 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %2, align 8
  %8 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @os_free(i32 %9)
  %11 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %2, align 8
  %12 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @wpabuf_free(i32 %13)
  %15 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %2, align 8
  %16 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %15, i32 0, i32 0
  %17 = call i32 @radius_free_class(i32* %16)
  %18 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %2, align 8
  %19 = call i32 @bin_clear_free(%struct.rsn_pmksa_cache_entry* %18, i32 16)
  ret void
}

declare dso_local i32 @os_free(i32) #1

declare dso_local i32 @wpabuf_free(i32) #1

declare dso_local i32 @radius_free_class(i32*) #1

declare dso_local i32 @bin_clear_free(%struct.rsn_pmksa_cache_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
