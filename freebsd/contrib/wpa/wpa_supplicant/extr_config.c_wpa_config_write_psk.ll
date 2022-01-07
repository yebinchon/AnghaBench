; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_write_psk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_write_psk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_data = type { i32 }
%struct.wpa_ssid = type { i32, i64, i64, i64 }

@PMK_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.parse_data*, %struct.wpa_ssid*)* @wpa_config_write_psk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @wpa_config_write_psk(%struct.parse_data* %0, %struct.wpa_ssid* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.parse_data*, align 8
  %5 = alloca %struct.wpa_ssid*, align 8
  store %struct.parse_data* %0, %struct.parse_data** %4, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %5, align 8
  %6 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %7 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %12 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i32*
  %15 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %16 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @os_strlen(i64 %17)
  %19 = call i8* @wpa_config_write_string_ascii(i32* %14, i32 %18)
  store i8* %19, i8** %3, align 8
  br label %32

20:                                               ; preds = %2
  %21 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %22 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %27 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @PMK_LEN, align 4
  %30 = call i8* @wpa_config_write_string_hex(i32 %28, i32 %29)
  store i8* %30, i8** %3, align 8
  br label %32

31:                                               ; preds = %20
  store i8* null, i8** %3, align 8
  br label %32

32:                                               ; preds = %31, %25, %10
  %33 = load i8*, i8** %3, align 8
  ret i8* %33
}

declare dso_local i8* @wpa_config_write_string_ascii(i32*, i32) #1

declare dso_local i32 @os_strlen(i64) #1

declare dso_local i8* @wpa_config_write_string_hex(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
