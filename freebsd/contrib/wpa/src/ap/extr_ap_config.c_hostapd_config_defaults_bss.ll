; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_config.c_hostapd_config_defaults_bss.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_config.c_hostapd_config_defaults_bss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_bss_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i64, i8*, i8*, i32, i32, i8*, i8*, i32 }

@HOSTAPD_LEVEL_INFO = common dso_local global i8* null, align 8
@WPA_AUTH_ALG_OPEN = common dso_local global i32 0, align 4
@WPA_AUTH_ALG_SHARED = common dso_local global i32 0, align 4
@DEFAULT_WPA_DISABLE_EAPOL_KEY_RETRIES = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_PSK = common dso_local global i32 0, align 4
@WPA_CIPHER_TKIP = common dso_local global i8* null, align 8
@MAX_STA_COUNT = common dso_local global i32 0, align 4
@AP_MAX_INACTIVITY = common dso_local global i32 0, align 4
@EAPOL_VERSION = common dso_local global i32 0, align 4
@TLS_CONN_DISABLE_TLSv1_3 = common dso_local global i32 0, align 4
@DEFAULT_PRIO_NOT_KEY_SERVER = common dso_local global i32 0, align 4
@DHCP_SERVER_PORT = common dso_local global i8* null, align 8
@HS20_VERSION = common dso_local global i32 0, align 4
@WPA_CIPHER_AES_128_CMAC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hostapd_config_defaults_bss(%struct.hostapd_bss_config* %0) #0 {
  %2 = alloca %struct.hostapd_bss_config*, align 8
  store %struct.hostapd_bss_config* %0, %struct.hostapd_bss_config** %2, align 8
  %3 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %4 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %3, i32 0, i32 56
  %5 = call i32 @dl_list_init(i32* %4)
  %6 = load i8*, i8** @HOSTAPD_LEVEL_INFO, align 8
  %7 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %8 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %7, i32 0, i32 55
  store i8* %6, i8** %8, align 8
  %9 = load i8*, i8** @HOSTAPD_LEVEL_INFO, align 8
  %10 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %11 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %10, i32 0, i32 54
  store i8* %9, i8** %11, align 8
  %12 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %13 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %12, i32 0, i32 0
  store i32 -1, i32* %13, align 8
  %14 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %15 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %14, i32 0, i32 1
  store i32 -1, i32* %15, align 4
  %16 = load i32, i32* @WPA_AUTH_ALG_OPEN, align 4
  %17 = load i32, i32* @WPA_AUTH_ALG_SHARED, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %20 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %22 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %21, i32 0, i32 3
  store i32 300, i32* %22, align 4
  %23 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %24 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %23, i32 0, i32 4
  store i32 1, i32* %24, align 8
  %25 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %26 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %25, i32 0, i32 5
  store i32 2, i32* %26, align 4
  %27 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %28 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %27, i32 0, i32 6
  store i32 3600, i32* %28, align 8
  %29 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %30 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %29, i32 0, i32 7
  store i32 600, i32* %30, align 4
  %31 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %32 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %31, i32 0, i32 8
  store i32 86400, i32* %32, align 8
  %33 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %34 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %33, i32 0, i32 9
  store i32 4, i32* %34, align 4
  %35 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %36 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %35, i32 0, i32 10
  store i32 4, i32* %36, align 8
  %37 = load i32, i32* @DEFAULT_WPA_DISABLE_EAPOL_KEY_RETRIES, align 4
  %38 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %39 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %38, i32 0, i32 53
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @WPA_KEY_MGMT_PSK, align 4
  %41 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %42 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %41, i32 0, i32 52
  store i32 %40, i32* %42, align 8
  %43 = load i8*, i8** @WPA_CIPHER_TKIP, align 8
  %44 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %45 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %44, i32 0, i32 51
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** @WPA_CIPHER_TKIP, align 8
  %47 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %48 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %47, i32 0, i32 50
  store i8* %46, i8** %48, align 8
  %49 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %50 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %49, i32 0, i32 49
  store i64 0, i64* %50, align 8
  %51 = load i32, i32* @MAX_STA_COUNT, align 4
  %52 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %53 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %52, i32 0, i32 48
  store i32 %51, i32* %53, align 8
  %54 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %55 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %54, i32 0, i32 11
  store i32 2, i32* %55, align 4
  %56 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %57 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %56, i32 0, i32 12
  store i32 1812, i32* %57, align 8
  %58 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %59 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %58, i32 0, i32 13
  store i32 1, i32* %59, align 4
  %60 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %61 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %60, i32 0, i32 14
  store i32 3, i32* %61, align 8
  %62 = load i32, i32* @AP_MAX_INACTIVITY, align 4
  %63 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %64 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %63, i32 0, i32 47
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @EAPOL_VERSION, align 4
  %66 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %67 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %66, i32 0, i32 46
  store i32 %65, i32* %67, align 8
  %68 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %69 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %68, i32 0, i32 15
  store i32 65535, i32* %69, align 4
  %70 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %71 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %70, i32 0, i32 16
  store i32 19, i32* %71, align 8
  %72 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %73 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %72, i32 0, i32 22
  store i32 -1, i32* %73, align 8
  %74 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %75 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %74, i32 0, i32 29
  store i32 300, i32* %75, align 4
  %76 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %77 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %76, i32 0, i32 30
  store i32 5, i32* %77, align 8
  %78 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %79 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %78, i32 0, i32 31
  store i32 5, i32* %79, align 4
  %80 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %81 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %80, i32 0, i32 32
  store i32 1400, i32* %81, align 8
  %82 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %83 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %82, i32 0, i32 34
  store i32 1, i32* %83, align 8
  %84 = load i32, i32* @TLS_CONN_DISABLE_TLSv1_3, align 4
  %85 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %86 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %85, i32 0, i32 41
  store i32 %84, i32* %86, align 4
  %87 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %88 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %87, i32 0, i32 36
  store i32 1, i32* %88, align 8
  %89 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %2, align 8
  %90 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %89, i32 0, i32 39
  store i32 1, i32* %90, align 4
  ret void
}

declare dso_local i32 @dl_list_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
