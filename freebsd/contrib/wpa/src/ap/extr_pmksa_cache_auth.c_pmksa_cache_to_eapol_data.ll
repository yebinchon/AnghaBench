; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_pmksa_cache_auth.c_pmksa_cache_to_eapol_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_pmksa_cache_auth.c_pmksa_cache_to_eapol_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.rsn_pmksa_cache_entry = type { i32, i32, i32, i32, i64, i32, i64 }
%struct.eapol_state_machine = type { i32, i32, i32, %struct.TYPE_3__, i32, i32, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"STA identity from PMKSA\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Copied %lu Class attribute(s) from PMKSA\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmksa_cache_to_eapol_data(%struct.hostapd_data* %0, %struct.rsn_pmksa_cache_entry* %1, %struct.eapol_state_machine* %2) #0 {
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca %struct.rsn_pmksa_cache_entry*, align 8
  %6 = alloca %struct.eapol_state_machine*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store %struct.rsn_pmksa_cache_entry* %1, %struct.rsn_pmksa_cache_entry** %5, align 8
  store %struct.eapol_state_machine* %2, %struct.eapol_state_machine** %6, align 8
  %7 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %5, align 8
  %8 = icmp eq %struct.rsn_pmksa_cache_entry* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %6, align 8
  %11 = icmp eq %struct.eapol_state_machine* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %3
  br label %114

13:                                               ; preds = %9
  %14 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %5, align 8
  %15 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %14, i32 0, i32 6
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %58

18:                                               ; preds = %13
  %19 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %6, align 8
  %20 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %19, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @os_free(i64 %21)
  %23 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %5, align 8
  %24 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @os_malloc(i32 %25)
  %27 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %6, align 8
  %28 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %27, i32 0, i32 6
  store i64 %26, i64* %28, align 8
  %29 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %6, align 8
  %30 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %29, i32 0, i32 6
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %18
  %34 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %5, align 8
  %35 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %6, align 8
  %38 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 4
  %39 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %6, align 8
  %40 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %39, i32 0, i32 6
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %5, align 8
  %43 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %42, i32 0, i32 6
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %5, align 8
  %46 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @os_memcpy(i64 %41, i64 %44, i32 %47)
  br label %49

49:                                               ; preds = %33, %18
  %50 = load i32, i32* @MSG_DEBUG, align 4
  %51 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %6, align 8
  %52 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %51, i32 0, i32 6
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %6, align 8
  %55 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @wpa_hexdump_ascii(i32 %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %53, i32 %56)
  br label %58

58:                                               ; preds = %49, %13
  %59 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %5, align 8
  %60 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %58
  %64 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %6, align 8
  %65 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @wpabuf_free(i32 %66)
  %68 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %5, align 8
  %69 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @wpabuf_dup(i64 %70)
  %72 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %6, align 8
  %73 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %63, %58
  %75 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %6, align 8
  %76 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %75, i32 0, i32 3
  %77 = call i32 @radius_free_class(%struct.TYPE_3__* %76)
  %78 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %6, align 8
  %79 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %78, i32 0, i32 3
  %80 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %5, align 8
  %81 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %80, i32 0, i32 3
  %82 = call i32 @radius_copy_class(%struct.TYPE_3__* %79, i32* %81)
  %83 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %6, align 8
  %84 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %74
  %89 = load i32, i32* @MSG_DEBUG, align 4
  %90 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %6, align 8
  %91 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @wpa_printf(i32 %89, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %93)
  br label %95

95:                                               ; preds = %88, %74
  %96 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %5, align 8
  %97 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %6, align 8
  %100 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %102 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %6, align 8
  %103 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %5, align 8
  %106 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @ap_sta_set_vlan(%struct.hostapd_data* %101, i32 %104, i32 %107)
  %109 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %5, align 8
  %110 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %6, align 8
  %113 = getelementptr inbounds %struct.eapol_state_machine, %struct.eapol_state_machine* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  br label %114

114:                                              ; preds = %95, %12
  ret void
}

declare dso_local i32 @os_free(i64) #1

declare dso_local i64 @os_malloc(i32) #1

declare dso_local i32 @os_memcpy(i64, i64, i32) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i64, i32) #1

declare dso_local i32 @wpabuf_free(i32) #1

declare dso_local i32 @wpabuf_dup(i64) #1

declare dso_local i32 @radius_free_class(%struct.TYPE_3__*) #1

declare dso_local i32 @radius_copy_class(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i64) #1

declare dso_local i32 @ap_sta_set_vlan(%struct.hostapd_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
