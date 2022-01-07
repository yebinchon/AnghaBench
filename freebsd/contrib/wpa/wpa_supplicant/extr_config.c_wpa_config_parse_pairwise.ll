; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_parse_pairwise.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_parse_pairwise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_data = type { i32 }
%struct.wpa_ssid = type { i32 }

@WPA_ALLOWED_PAIRWISE_CIPHERS = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Line %d: not allowed pairwise cipher (0x%x).\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"pairwise: 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parse_data*, %struct.wpa_ssid*, i32, i8*)* @wpa_config_parse_pairwise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_config_parse_pairwise(%struct.parse_data* %0, %struct.wpa_ssid* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.parse_data*, align 8
  %7 = alloca %struct.wpa_ssid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.parse_data* %0, %struct.parse_data** %6, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load i32, i32* %8, align 4
  %12 = load i8*, i8** %9, align 8
  %13 = call i32 @wpa_config_parse_cipher(i32 %11, i8* %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %42

17:                                               ; preds = %4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @WPA_ALLOWED_PAIRWISE_CIPHERS, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load i32, i32* @MSG_ERROR, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %24, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  store i32 -1, i32* %5, align 4
  br label %42

28:                                               ; preds = %17
  %29 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %30 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 1, i32* %5, align 4
  br label %42

35:                                               ; preds = %28
  %36 = load i32, i32* @MSG_MSGDUMP, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %41 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %35, %34, %23, %16
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @wpa_config_parse_cipher(i32, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
