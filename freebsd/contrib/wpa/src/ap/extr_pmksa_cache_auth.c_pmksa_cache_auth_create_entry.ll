; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_pmksa_cache_auth.c_pmksa_cache_auth_create_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_pmksa_cache_auth.c_pmksa_cache_auth_create_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsn_pmksa_cache_entry = type { i64, i32, i32, i32, i32, i32 }
%struct.eapol_state_machine = type { i32 }
%struct.os_reltime = type { i32 }

@PMK_LEN_MAX = common dso_local global i64 0, align 8
@PMKID_LEN = common dso_local global i64 0, align 8
@WPA_KEY_MGMT_IEEE8021X_SUITE_B_192 = common dso_local global i32 0, align 4
@dot11RSNAConfigPMKLifetime = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rsn_pmksa_cache_entry* @pmksa_cache_auth_create_entry(i32* %0, i64 %1, i32* %2, i32* %3, i64 %4, i32* %5, i32* %6, i32 %7, %struct.eapol_state_machine* %8, i32 %9) #0 {
  %11 = alloca %struct.rsn_pmksa_cache_entry*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.eapol_state_machine*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.rsn_pmksa_cache_entry*, align 8
  %23 = alloca %struct.os_reltime, align 4
  store i32* %0, i32** %12, align 8
  store i64 %1, i64* %13, align 8
  store i32* %2, i32** %14, align 8
  store i32* %3, i32** %15, align 8
  store i64 %4, i64* %16, align 8
  store i32* %5, i32** %17, align 8
  store i32* %6, i32** %18, align 8
  store i32 %7, i32* %19, align 4
  store %struct.eapol_state_machine* %8, %struct.eapol_state_machine** %20, align 8
  store i32 %9, i32* %21, align 4
  %24 = load i64, i64* %13, align 8
  %25 = load i64, i64* @PMK_LEN_MAX, align 8
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %10
  store %struct.rsn_pmksa_cache_entry* null, %struct.rsn_pmksa_cache_entry** %11, align 8
  br label %134

28:                                               ; preds = %10
  %29 = load i32, i32* %21, align 4
  %30 = call i64 @wpa_key_mgmt_suite_b(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32*, i32** %15, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  store %struct.rsn_pmksa_cache_entry* null, %struct.rsn_pmksa_cache_entry** %11, align 8
  br label %134

36:                                               ; preds = %32, %28
  %37 = call %struct.rsn_pmksa_cache_entry* @os_zalloc(i32 32)
  store %struct.rsn_pmksa_cache_entry* %37, %struct.rsn_pmksa_cache_entry** %22, align 8
  %38 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %22, align 8
  %39 = icmp eq %struct.rsn_pmksa_cache_entry* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store %struct.rsn_pmksa_cache_entry* null, %struct.rsn_pmksa_cache_entry** %11, align 8
  br label %134

41:                                               ; preds = %36
  %42 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %22, align 8
  %43 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = load i64, i64* %13, align 8
  %47 = call i32 @os_memcpy(i32 %44, i32* %45, i64 %46)
  %48 = load i64, i64* %13, align 8
  %49 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %22, align 8
  %50 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %41
  %54 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %22, align 8
  %55 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %14, align 8
  %58 = load i64, i64* @PMKID_LEN, align 8
  %59 = call i32 @os_memcpy(i32 %56, i32* %57, i64 %58)
  br label %98

60:                                               ; preds = %41
  %61 = load i32, i32* %21, align 4
  %62 = load i32, i32* @WPA_KEY_MGMT_IEEE8021X_SUITE_B_192, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = load i32*, i32** %15, align 8
  %66 = load i64, i64* %16, align 8
  %67 = load i32*, i32** %17, align 8
  %68 = load i32*, i32** %18, align 8
  %69 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %22, align 8
  %70 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @rsn_pmkid_suite_b_192(i32* %65, i64 %66, i32* %67, i32* %68, i32 %71)
  br label %97

73:                                               ; preds = %60
  %74 = load i32, i32* %21, align 4
  %75 = call i64 @wpa_key_mgmt_suite_b(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %73
  %78 = load i32*, i32** %15, align 8
  %79 = load i64, i64* %16, align 8
  %80 = load i32*, i32** %17, align 8
  %81 = load i32*, i32** %18, align 8
  %82 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %22, align 8
  %83 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @rsn_pmkid_suite_b(i32* %78, i64 %79, i32* %80, i32* %81, i32 %84)
  br label %96

86:                                               ; preds = %73
  %87 = load i32*, i32** %12, align 8
  %88 = load i64, i64* %13, align 8
  %89 = load i32*, i32** %17, align 8
  %90 = load i32*, i32** %18, align 8
  %91 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %22, align 8
  %92 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %21, align 4
  %95 = call i32 @rsn_pmkid(i32* %87, i64 %88, i32* %89, i32* %90, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %86, %77
  br label %97

97:                                               ; preds = %96, %64
  br label %98

98:                                               ; preds = %97, %53
  %99 = call i32 @os_get_reltime(%struct.os_reltime* %23)
  %100 = getelementptr inbounds %struct.os_reltime, %struct.os_reltime* %23, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %22, align 8
  %103 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* %19, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %98
  %107 = load i32, i32* %19, align 4
  %108 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %22, align 8
  %109 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, %107
  store i32 %111, i32* %109, align 8
  br label %120

112:                                              ; preds = %98
  %113 = load i64, i64* @dot11RSNAConfigPMKLifetime, align 8
  %114 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %22, align 8
  %115 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %117, %113
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %115, align 8
  br label %120

120:                                              ; preds = %112, %106
  %121 = load i32, i32* %21, align 4
  %122 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %22, align 8
  %123 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 4
  %124 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %22, align 8
  %125 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = load i32*, i32** %18, align 8
  %128 = load i64, i64* @ETH_ALEN, align 8
  %129 = call i32 @os_memcpy(i32 %126, i32* %127, i64 %128)
  %130 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %22, align 8
  %131 = load %struct.eapol_state_machine*, %struct.eapol_state_machine** %20, align 8
  %132 = call i32 @pmksa_cache_from_eapol_data(%struct.rsn_pmksa_cache_entry* %130, %struct.eapol_state_machine* %131)
  %133 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %22, align 8
  store %struct.rsn_pmksa_cache_entry* %133, %struct.rsn_pmksa_cache_entry** %11, align 8
  br label %134

134:                                              ; preds = %120, %40, %35, %27
  %135 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %11, align 8
  ret %struct.rsn_pmksa_cache_entry* %135
}

declare dso_local i64 @wpa_key_mgmt_suite_b(i32) #1

declare dso_local %struct.rsn_pmksa_cache_entry* @os_zalloc(i32) #1

declare dso_local i32 @os_memcpy(i32, i32*, i64) #1

declare dso_local i32 @rsn_pmkid_suite_b_192(i32*, i64, i32*, i32*, i32) #1

declare dso_local i32 @rsn_pmkid_suite_b(i32*, i64, i32*, i32*, i32) #1

declare dso_local i32 @rsn_pmkid(i32*, i64, i32*, i32*, i32, i32) #1

declare dso_local i32 @os_get_reltime(%struct.os_reltime*) #1

declare dso_local i32 @pmksa_cache_from_eapol_data(%struct.rsn_pmksa_cache_entry*, %struct.eapol_state_machine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
