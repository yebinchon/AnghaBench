; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_pmksa_cache_auth.c_pmksa_cache_from_eapol_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_pmksa_cache_auth.c_pmksa_cache_from_eapol_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsn_pmksa_cache_entry = type { i32, %struct.vlan_description*, i32, i32, i32, i64, i32 }
%struct.vlan_description = type { i64 }
%struct.eapol_state_machine = type { i32, i64, i32, i32, i64, i32, i64 }
%struct.sta_info = type { %struct.vlan_description* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsn_pmksa_cache_entry*, %struct.eapol_state_machine*)* @pmksa_cache_from_eapol_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmksa_cache_from_eapol_data(%struct.rsn_pmksa_cache_entry* %0, %struct.eapol_state_machine* %1) #0 {
  %3 = alloca %struct.rsn_pmksa_cache_entry*, align 8
  %4 = alloca %struct.eapol_state_machine*, align 8
  %5 = alloca %struct.vlan_description*, align 8
  store %struct.rsn_pmksa_cache_entry* %0, %struct.rsn_pmksa_cache_entry** %3, align 8
  store %struct.eapol_state_machine* %1, %struct.eapol_state_machine** %4, align 8
  %6 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %4, align 8
  %7 = icmp eq %struct.eapol_state_machine* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %103

9:                                                ; preds = %2
  %10 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %4, align 8
  %11 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %42

14:                                               ; preds = %9
  %15 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %4, align 8
  %16 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @os_malloc(i32 %17)
  %19 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %3, align 8
  %20 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %19, i32 0, i32 5
  store i64 %18, i64* %20, align 8
  %21 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %3, align 8
  %22 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %14
  %26 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %4, align 8
  %27 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %3, align 8
  %30 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 8
  %31 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %3, align 8
  %32 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %4, align 8
  %35 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %34, i32 0, i32 6
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %4, align 8
  %38 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @os_memcpy(i64 %33, i64 %36, i32 %39)
  br label %41

41:                                               ; preds = %25, %14
  br label %42

42:                                               ; preds = %41, %9
  %43 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %4, align 8
  %44 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %4, align 8
  %49 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @wpabuf_dup(i64 %50)
  %52 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %3, align 8
  %53 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %47, %42
  %55 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %3, align 8
  %56 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %55, i32 0, i32 3
  %57 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %4, align 8
  %58 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %57, i32 0, i32 3
  %59 = call i32 @radius_copy_class(i32* %56, i32* %58)
  %60 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %4, align 8
  %61 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %3, align 8
  %64 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %4, align 8
  %66 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to %struct.sta_info*
  %69 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %68, i32 0, i32 0
  %70 = load %struct.vlan_description*, %struct.vlan_description** %69, align 8
  store %struct.vlan_description* %70, %struct.vlan_description** %5, align 8
  %71 = load %struct.vlan_description*, %struct.vlan_description** %5, align 8
  %72 = icmp ne %struct.vlan_description* %71, null
  br i1 %72, label %73, label %94

73:                                               ; preds = %54
  %74 = load %struct.vlan_description*, %struct.vlan_description** %5, align 8
  %75 = getelementptr inbounds %struct.vlan_description, %struct.vlan_description* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %94

78:                                               ; preds = %73
  %79 = call %struct.vlan_description* @os_zalloc(i32 8)
  %80 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %3, align 8
  %81 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %80, i32 0, i32 1
  store %struct.vlan_description* %79, %struct.vlan_description** %81, align 8
  %82 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %3, align 8
  %83 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %82, i32 0, i32 1
  %84 = load %struct.vlan_description*, %struct.vlan_description** %83, align 8
  %85 = icmp ne %struct.vlan_description* %84, null
  br i1 %85, label %86, label %93

86:                                               ; preds = %78
  %87 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %3, align 8
  %88 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %87, i32 0, i32 1
  %89 = load %struct.vlan_description*, %struct.vlan_description** %88, align 8
  %90 = load %struct.vlan_description*, %struct.vlan_description** %5, align 8
  %91 = bitcast %struct.vlan_description* %89 to i8*
  %92 = bitcast %struct.vlan_description* %90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %91, i8* align 8 %92, i64 8, i1 false)
  br label %93

93:                                               ; preds = %86, %78
  br label %97

94:                                               ; preds = %73, %54
  %95 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %3, align 8
  %96 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %95, i32 0, i32 1
  store %struct.vlan_description* null, %struct.vlan_description** %96, align 8
  br label %97

97:                                               ; preds = %94, %93
  %98 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %4, align 8
  %99 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %3, align 8
  %102 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  br label %103

103:                                              ; preds = %97, %8
  ret void
}

declare dso_local i64 @os_malloc(i32) #1

declare dso_local i32 @os_memcpy(i64, i64, i32) #1

declare dso_local i32 @wpabuf_dup(i64) #1

declare dso_local i32 @radius_copy_class(i32*, i32*) #1

declare dso_local %struct.vlan_description* @os_zalloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
