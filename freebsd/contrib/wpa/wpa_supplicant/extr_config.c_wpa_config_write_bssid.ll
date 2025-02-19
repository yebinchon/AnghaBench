; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_write_bssid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_write_bssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_data = type { i32 }
%struct.wpa_ssid = type { i32, i32 }

@MACSTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.parse_data*, %struct.wpa_ssid*)* @wpa_config_write_bssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @wpa_config_write_bssid(%struct.parse_data* %0, %struct.wpa_ssid* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.parse_data*, align 8
  %5 = alloca %struct.wpa_ssid*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.parse_data* %0, %struct.parse_data** %4, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %5, align 8
  %8 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %9 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %36

13:                                               ; preds = %2
  %14 = call i8* @os_malloc(i32 20)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i8* null, i8** %3, align 8
  br label %36

18:                                               ; preds = %13
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* @MACSTR, align 4
  %21 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %22 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @MAC2STR(i32 %23)
  %25 = call i32 @os_snprintf(i8* %19, i32 20, i32 %20, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i64 @os_snprintf_error(i32 20, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @os_free(i8* %30)
  store i8* null, i8** %3, align 8
  br label %36

32:                                               ; preds = %18
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 19
  store i8 0, i8* %34, align 1
  %35 = load i8*, i8** %6, align 8
  store i8* %35, i8** %3, align 8
  br label %36

36:                                               ; preds = %32, %29, %17, %12
  %37 = load i8*, i8** %3, align 8
  ret i8* %37
}

declare dso_local i8* @os_malloc(i32) #1

declare dso_local i32 @os_snprintf(i8*, i32, i32, i32) #1

declare dso_local i32 @MAC2STR(i32) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
