; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_update_psk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_config.c_wpa_config_update_psk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_ssid = type { i32, i32, i32, i32, i32 }

@PMK_LEN = common dso_local global i32 0, align 4
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"PSK (from passphrase)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_config_update_psk(%struct.wpa_ssid* %0) #0 {
  %2 = alloca %struct.wpa_ssid*, align 8
  store %struct.wpa_ssid* %0, %struct.wpa_ssid** %2, align 8
  %3 = load %struct.wpa_ssid*, %struct.wpa_ssid** %2, align 8
  %4 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.wpa_ssid*, %struct.wpa_ssid** %2, align 8
  %7 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.wpa_ssid*, %struct.wpa_ssid** %2, align 8
  %10 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.wpa_ssid*, %struct.wpa_ssid** %2, align 8
  %13 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PMK_LEN, align 4
  %16 = call i32 @pbkdf2_sha1(i32 %5, i32 %8, i32 %11, i32 4096, i32 %14, i32 %15)
  %17 = load i32, i32* @MSG_MSGDUMP, align 4
  %18 = load %struct.wpa_ssid*, %struct.wpa_ssid** %2, align 8
  %19 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @PMK_LEN, align 4
  %22 = call i32 @wpa_hexdump_key(i32 %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load %struct.wpa_ssid*, %struct.wpa_ssid** %2, align 8
  %24 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  ret void
}

declare dso_local i32 @pbkdf2_sha1(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
