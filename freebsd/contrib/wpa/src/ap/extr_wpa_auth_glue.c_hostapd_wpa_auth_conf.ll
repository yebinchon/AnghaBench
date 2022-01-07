; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth_glue.c_hostapd_wpa_auth_conf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth_glue.c_hostapd_wpa_auth_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_bss_config = type { i32, i32, i32, i32, i64, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i64, i8*, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i32, i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.hostapd_config = type { i32 }
%struct.wpa_auth_config = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8*, i8*, i64, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@FILS_CACHE_ID_LEN = common dso_local global i32 0, align 4
@FT_R0KH_ID_MAX_LEN = common dso_local global i64 0, align 8
@FT_R1KH_ID_LEN = common dso_local global i32 0, align 4
@MAX_OWN_IE_OVERRIDE = common dso_local global i64 0, align 8
@MOBILITY_DOMAIN_ID_LEN = common dso_local global i32 0, align 4
@SSID_MAX_LEN = common dso_local global i64 0, align 8
@WPA_CIPHER_CCMP = common dso_local global i8* null, align 8
@WPA_KEY_MGMT_OSEN = common dso_local global i32 0, align 4
@WPA_PROTO_OSEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_bss_config*, %struct.hostapd_config*, %struct.wpa_auth_config*)* @hostapd_wpa_auth_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostapd_wpa_auth_conf(%struct.hostapd_bss_config* %0, %struct.hostapd_config* %1, %struct.wpa_auth_config* %2) #0 {
  %4 = alloca %struct.hostapd_bss_config*, align 8
  %5 = alloca %struct.hostapd_config*, align 8
  %6 = alloca %struct.wpa_auth_config*, align 8
  store %struct.hostapd_bss_config* %0, %struct.hostapd_bss_config** %4, align 8
  store %struct.hostapd_config* %1, %struct.hostapd_config** %5, align 8
  store %struct.wpa_auth_config* %2, %struct.wpa_auth_config** %6, align 8
  %7 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %6, align 8
  %8 = call i32 @os_memset(%struct.wpa_auth_config* %7, i32 0, i32 240)
  %9 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %4, align 8
  %10 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %9, i32 0, i32 46
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %6, align 8
  %13 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %12, i32 0, i32 20
  store i32 %11, i32* %13, align 4
  %14 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %4, align 8
  %15 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %14, i32 0, i32 45
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %6, align 8
  %18 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %17, i32 0, i32 19
  store i32 %16, i32* %18, align 8
  %19 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %4, align 8
  %20 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %19, i32 0, i32 44
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %6, align 8
  %23 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %22, i32 0, i32 18
  store i64 %21, i64* %23, align 8
  %24 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %4, align 8
  %25 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %24, i32 0, i32 43
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %6, align 8
  %28 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %27, i32 0, i32 17
  store i8* %26, i8** %28, align 8
  %29 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %4, align 8
  %30 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %29, i32 0, i32 42
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %6, align 8
  %33 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %32, i32 0, i32 49
  store i32 %31, i32* %33, align 4
  %34 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %4, align 8
  %35 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %34, i32 0, i32 41
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %6, align 8
  %38 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %37, i32 0, i32 48
  store i32 %36, i32* %38, align 8
  %39 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %4, align 8
  %40 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %39, i32 0, i32 40
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %6, align 8
  %43 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %42, i32 0, i32 47
  store i32 %41, i32* %43, align 4
  %44 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %4, align 8
  %45 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %44, i32 0, i32 39
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %6, align 8
  %48 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %47, i32 0, i32 46
  store i32 %46, i32* %48, align 8
  %49 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %4, align 8
  %50 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %49, i32 0, i32 38
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %6, align 8
  %53 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %52, i32 0, i32 45
  store i32 %51, i32* %53, align 4
  %54 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %4, align 8
  %55 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %54, i32 0, i32 37
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %6, align 8
  %58 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %57, i32 0, i32 44
  store i32 %56, i32* %58, align 8
  %59 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %4, align 8
  %60 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %59, i32 0, i32 36
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %6, align 8
  %63 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %62, i32 0, i32 43
  store i32 %61, i32* %63, align 4
  %64 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %4, align 8
  %65 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %64, i32 0, i32 35
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %6, align 8
  %68 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %67, i32 0, i32 16
  store i8* %66, i8** %68, align 8
  %69 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %4, align 8
  %70 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %69, i32 0, i32 34
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %6, align 8
  %73 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %72, i32 0, i32 15
  store i64 %71, i64* %73, align 8
  %74 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %4, align 8
  %75 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %6, align 8
  %78 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %4, align 8
  %80 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %79, i32 0, i32 33
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %6, align 8
  %83 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %82, i32 0, i32 42
  store i32 %81, i32* %83, align 8
  %84 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %4, align 8
  %85 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %84, i32 0, i32 32
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %6, align 8
  %88 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %87, i32 0, i32 41
  store i32 %86, i32* %88, align 4
  %89 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %4, align 8
  %90 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %6, align 8
  %93 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %4, align 8
  %95 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %94, i32 0, i32 30
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %6, align 8
  %98 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %97, i32 0, i32 39
  store i32 %96, i32* %98, align 4
  ret void
}

declare dso_local i32 @os_memset(%struct.wpa_auth_config*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
