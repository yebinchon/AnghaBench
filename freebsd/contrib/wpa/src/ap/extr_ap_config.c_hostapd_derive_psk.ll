; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_config.c_hostapd_derive_psk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_config.c_hostapd_derive_psk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_ssid = type { %struct.TYPE_2__*, i32, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unable to alloc space for PSK\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"SSID\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"PSK (ASCII passphrase)\00", align 1
@PMK_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"PSK (from passphrase)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_ssid*)* @hostapd_derive_psk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostapd_derive_psk(%struct.hostapd_ssid* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hostapd_ssid*, align 8
  store %struct.hostapd_ssid* %0, %struct.hostapd_ssid** %3, align 8
  %4 = call %struct.TYPE_2__* @os_zalloc(i32 4)
  %5 = load %struct.hostapd_ssid*, %struct.hostapd_ssid** %3, align 8
  %6 = getelementptr inbounds %struct.hostapd_ssid, %struct.hostapd_ssid* %5, i32 0, i32 0
  store %struct.TYPE_2__* %4, %struct.TYPE_2__** %6, align 8
  %7 = load %struct.hostapd_ssid*, %struct.hostapd_ssid** %3, align 8
  %8 = getelementptr inbounds %struct.hostapd_ssid, %struct.hostapd_ssid* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp eq %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @MSG_ERROR, align 4
  %13 = call i32 @wpa_printf(i32 %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %58

14:                                               ; preds = %1
  %15 = load i32, i32* @MSG_DEBUG, align 4
  %16 = load %struct.hostapd_ssid*, %struct.hostapd_ssid** %3, align 8
  %17 = getelementptr inbounds %struct.hostapd_ssid, %struct.hostapd_ssid* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i32*
  %20 = load %struct.hostapd_ssid*, %struct.hostapd_ssid** %3, align 8
  %21 = getelementptr inbounds %struct.hostapd_ssid, %struct.hostapd_ssid* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @wpa_hexdump_ascii(i32 %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %19, i32 %22)
  %24 = load i32, i32* @MSG_DEBUG, align 4
  %25 = load %struct.hostapd_ssid*, %struct.hostapd_ssid** %3, align 8
  %26 = getelementptr inbounds %struct.hostapd_ssid, %struct.hostapd_ssid* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i32*
  %29 = load %struct.hostapd_ssid*, %struct.hostapd_ssid** %3, align 8
  %30 = getelementptr inbounds %struct.hostapd_ssid, %struct.hostapd_ssid* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @os_strlen(i64 %31)
  %33 = call i32 @wpa_hexdump_ascii_key(i32 %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32* %28, i32 %32)
  %34 = load %struct.hostapd_ssid*, %struct.hostapd_ssid** %3, align 8
  %35 = getelementptr inbounds %struct.hostapd_ssid, %struct.hostapd_ssid* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.hostapd_ssid*, %struct.hostapd_ssid** %3, align 8
  %38 = getelementptr inbounds %struct.hostapd_ssid, %struct.hostapd_ssid* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.hostapd_ssid*, %struct.hostapd_ssid** %3, align 8
  %41 = getelementptr inbounds %struct.hostapd_ssid, %struct.hostapd_ssid* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.hostapd_ssid*, %struct.hostapd_ssid** %3, align 8
  %44 = getelementptr inbounds %struct.hostapd_ssid, %struct.hostapd_ssid* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @PMK_LEN, align 4
  %49 = call i32 @pbkdf2_sha1(i64 %36, i64 %39, i32 %42, i32 4096, i32 %47, i32 %48)
  %50 = load i32, i32* @MSG_DEBUG, align 4
  %51 = load %struct.hostapd_ssid*, %struct.hostapd_ssid** %3, align 8
  %52 = getelementptr inbounds %struct.hostapd_ssid, %struct.hostapd_ssid* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PMK_LEN, align 4
  %57 = call i32 @wpa_hexdump_key(i32 %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %55, i32 %56)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %14, %11
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.TYPE_2__* @os_zalloc(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i32) #1

declare dso_local i32 @wpa_hexdump_ascii_key(i32, i8*, i32*, i32) #1

declare dso_local i32 @os_strlen(i64) #1

declare dso_local i32 @pbkdf2_sha1(i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
