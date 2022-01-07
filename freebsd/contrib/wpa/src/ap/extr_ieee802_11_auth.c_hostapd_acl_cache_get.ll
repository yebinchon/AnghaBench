; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_auth.c_hostapd_acl_cache_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11_auth.c_hostapd_acl_cache_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.hostapd_cached_radius_acl* }
%struct.hostapd_cached_radius_acl = type { i64, i64, i64, i32, %struct.vlan_description, i32, i32, i32, i32, %struct.hostapd_cached_radius_acl* }
%struct.vlan_description = type { i32 }
%struct.hostapd_sta_wpa_psk_short = type { i32 }
%struct.os_reltime = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@RADIUS_ACL_TIMEOUT = common dso_local global i32 0, align 4
@HOSTAPD_ACL_ACCEPT_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*, i32*, i32*, i32*, %struct.vlan_description*, %struct.hostapd_sta_wpa_psk_short**, i8**, i8**)* @hostapd_acl_cache_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_acl_cache_get(%struct.hostapd_data* %0, i32* %1, i32* %2, i32* %3, %struct.vlan_description* %4, %struct.hostapd_sta_wpa_psk_short** %5, i8** %6, i8** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.hostapd_data*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.vlan_description*, align 8
  %15 = alloca %struct.hostapd_sta_wpa_psk_short**, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i8**, align 8
  %18 = alloca %struct.hostapd_cached_radius_acl*, align 8
  %19 = alloca %struct.os_reltime, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store %struct.vlan_description* %4, %struct.vlan_description** %14, align 8
  store %struct.hostapd_sta_wpa_psk_short** %5, %struct.hostapd_sta_wpa_psk_short*** %15, align 8
  store i8** %6, i8*** %16, align 8
  store i8** %7, i8*** %17, align 8
  %20 = call i32 @os_get_reltime(%struct.os_reltime* %19)
  %21 = load %struct.hostapd_data*, %struct.hostapd_data** %10, align 8
  %22 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %21, i32 0, i32 0
  %23 = load %struct.hostapd_cached_radius_acl*, %struct.hostapd_cached_radius_acl** %22, align 8
  store %struct.hostapd_cached_radius_acl* %23, %struct.hostapd_cached_radius_acl** %18, align 8
  br label %24

24:                                               ; preds = %119, %8
  %25 = load %struct.hostapd_cached_radius_acl*, %struct.hostapd_cached_radius_acl** %18, align 8
  %26 = icmp ne %struct.hostapd_cached_radius_acl* %25, null
  br i1 %26, label %27, label %123

27:                                               ; preds = %24
  %28 = load %struct.hostapd_cached_radius_acl*, %struct.hostapd_cached_radius_acl** %18, align 8
  %29 = getelementptr inbounds %struct.hostapd_cached_radius_acl, %struct.hostapd_cached_radius_acl* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* @ETH_ALEN, align 4
  %33 = call i64 @os_memcmp(i32 %30, i32* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %119

36:                                               ; preds = %27
  %37 = load %struct.hostapd_cached_radius_acl*, %struct.hostapd_cached_radius_acl** %18, align 8
  %38 = getelementptr inbounds %struct.hostapd_cached_radius_acl, %struct.hostapd_cached_radius_acl* %37, i32 0, i32 7
  %39 = load i32, i32* @RADIUS_ACL_TIMEOUT, align 4
  %40 = call i64 @os_reltime_expired(%struct.os_reltime* %19, i32* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 -1, i32* %9, align 4
  br label %124

43:                                               ; preds = %36
  %44 = load %struct.hostapd_cached_radius_acl*, %struct.hostapd_cached_radius_acl** %18, align 8
  %45 = getelementptr inbounds %struct.hostapd_cached_radius_acl, %struct.hostapd_cached_radius_acl* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @HOSTAPD_ACL_ACCEPT_TIMEOUT, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = load i32*, i32** %12, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load %struct.hostapd_cached_radius_acl*, %struct.hostapd_cached_radius_acl** %18, align 8
  %54 = getelementptr inbounds %struct.hostapd_cached_radius_acl, %struct.hostapd_cached_radius_acl* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %12, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %52, %49
  br label %58

58:                                               ; preds = %57, %43
  %59 = load i32*, i32** %13, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load %struct.hostapd_cached_radius_acl*, %struct.hostapd_cached_radius_acl** %18, align 8
  %63 = getelementptr inbounds %struct.hostapd_cached_radius_acl, %struct.hostapd_cached_radius_acl* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = load i32*, i32** %13, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %61, %58
  %67 = load %struct.vlan_description*, %struct.vlan_description** %14, align 8
  %68 = icmp ne %struct.vlan_description* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load %struct.vlan_description*, %struct.vlan_description** %14, align 8
  %71 = load %struct.hostapd_cached_radius_acl*, %struct.hostapd_cached_radius_acl** %18, align 8
  %72 = getelementptr inbounds %struct.hostapd_cached_radius_acl, %struct.hostapd_cached_radius_acl* %71, i32 0, i32 4
  %73 = bitcast %struct.vlan_description* %70 to i8*
  %74 = bitcast %struct.vlan_description* %72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %73, i8* align 4 %74, i64 4, i1 false)
  br label %75

75:                                               ; preds = %69, %66
  %76 = load %struct.hostapd_sta_wpa_psk_short**, %struct.hostapd_sta_wpa_psk_short*** %15, align 8
  %77 = load %struct.hostapd_cached_radius_acl*, %struct.hostapd_cached_radius_acl** %18, align 8
  %78 = getelementptr inbounds %struct.hostapd_cached_radius_acl, %struct.hostapd_cached_radius_acl* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @copy_psk_list(%struct.hostapd_sta_wpa_psk_short** %76, i32 %79)
  %81 = load i8**, i8*** %16, align 8
  %82 = icmp ne i8** %81, null
  br i1 %82, label %83, label %97

83:                                               ; preds = %75
  %84 = load %struct.hostapd_cached_radius_acl*, %struct.hostapd_cached_radius_acl** %18, align 8
  %85 = getelementptr inbounds %struct.hostapd_cached_radius_acl, %struct.hostapd_cached_radius_acl* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load %struct.hostapd_cached_radius_acl*, %struct.hostapd_cached_radius_acl** %18, align 8
  %90 = getelementptr inbounds %struct.hostapd_cached_radius_acl, %struct.hostapd_cached_radius_acl* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = call i8* @os_strdup(i64 %91)
  %93 = load i8**, i8*** %16, align 8
  store i8* %92, i8** %93, align 8
  br label %96

94:                                               ; preds = %83
  %95 = load i8**, i8*** %16, align 8
  store i8* null, i8** %95, align 8
  br label %96

96:                                               ; preds = %94, %88
  br label %97

97:                                               ; preds = %96, %75
  %98 = load i8**, i8*** %17, align 8
  %99 = icmp ne i8** %98, null
  br i1 %99, label %100, label %114

100:                                              ; preds = %97
  %101 = load %struct.hostapd_cached_radius_acl*, %struct.hostapd_cached_radius_acl** %18, align 8
  %102 = getelementptr inbounds %struct.hostapd_cached_radius_acl, %struct.hostapd_cached_radius_acl* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load %struct.hostapd_cached_radius_acl*, %struct.hostapd_cached_radius_acl** %18, align 8
  %107 = getelementptr inbounds %struct.hostapd_cached_radius_acl, %struct.hostapd_cached_radius_acl* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = call i8* @os_strdup(i64 %108)
  %110 = load i8**, i8*** %17, align 8
  store i8* %109, i8** %110, align 8
  br label %113

111:                                              ; preds = %100
  %112 = load i8**, i8*** %17, align 8
  store i8* null, i8** %112, align 8
  br label %113

113:                                              ; preds = %111, %105
  br label %114

114:                                              ; preds = %113, %97
  %115 = load %struct.hostapd_cached_radius_acl*, %struct.hostapd_cached_radius_acl** %18, align 8
  %116 = getelementptr inbounds %struct.hostapd_cached_radius_acl, %struct.hostapd_cached_radius_acl* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %9, align 4
  br label %124

119:                                              ; preds = %35
  %120 = load %struct.hostapd_cached_radius_acl*, %struct.hostapd_cached_radius_acl** %18, align 8
  %121 = getelementptr inbounds %struct.hostapd_cached_radius_acl, %struct.hostapd_cached_radius_acl* %120, i32 0, i32 9
  %122 = load %struct.hostapd_cached_radius_acl*, %struct.hostapd_cached_radius_acl** %121, align 8
  store %struct.hostapd_cached_radius_acl* %122, %struct.hostapd_cached_radius_acl** %18, align 8
  br label %24

123:                                              ; preds = %24
  store i32 -1, i32* %9, align 4
  br label %124

124:                                              ; preds = %123, %114, %42
  %125 = load i32, i32* %9, align 4
  ret i32 %125
}

declare dso_local i32 @os_get_reltime(%struct.os_reltime*) #1

declare dso_local i64 @os_memcmp(i32, i32*, i32) #1

declare dso_local i64 @os_reltime_expired(%struct.os_reltime*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @copy_psk_list(%struct.hostapd_sta_wpa_psk_short**, i32) #1

declare dso_local i8* @os_strdup(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
