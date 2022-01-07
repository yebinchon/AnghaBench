; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_wpa_add_tdls_timeoutie.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_wpa_add_tdls_timeoutie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_tdls_timeoutie = type { i32, i32, i32, i32 }

@WLAN_EID_TIMEOUT_INTERVAL = common dso_local global i32 0, align 4
@WLAN_TIMEOUT_KEY_LIFETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i64, i32)* @wpa_add_tdls_timeoutie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @wpa_add_tdls_timeoutie(i32* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wpa_tdls_timeoutie*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = bitcast i32* %10 to %struct.wpa_tdls_timeoutie*
  store %struct.wpa_tdls_timeoutie* %11, %struct.wpa_tdls_timeoutie** %9, align 8
  %12 = load %struct.wpa_tdls_timeoutie*, %struct.wpa_tdls_timeoutie** %9, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @os_memset(%struct.wpa_tdls_timeoutie* %12, i32 0, i64 %13)
  %15 = load i32, i32* @WLAN_EID_TIMEOUT_INTERVAL, align 4
  %16 = load %struct.wpa_tdls_timeoutie*, %struct.wpa_tdls_timeoutie** %9, align 8
  %17 = getelementptr inbounds %struct.wpa_tdls_timeoutie, %struct.wpa_tdls_timeoutie* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load %struct.wpa_tdls_timeoutie*, %struct.wpa_tdls_timeoutie** %9, align 8
  %19 = getelementptr inbounds %struct.wpa_tdls_timeoutie, %struct.wpa_tdls_timeoutie* %18, i32 0, i32 0
  store i32 14, i32* %19, align 4
  %20 = load i32, i32* @WLAN_TIMEOUT_KEY_LIFETIME, align 4
  %21 = load %struct.wpa_tdls_timeoutie*, %struct.wpa_tdls_timeoutie** %9, align 8
  %22 = getelementptr inbounds %struct.wpa_tdls_timeoutie, %struct.wpa_tdls_timeoutie* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.wpa_tdls_timeoutie*, %struct.wpa_tdls_timeoutie** %9, align 8
  %24 = getelementptr inbounds %struct.wpa_tdls_timeoutie, %struct.wpa_tdls_timeoutie* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @WPA_PUT_LE32(i32 %25, i32 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @os_memcpy(i32* %28, i32* %29, i64 %30)
  %32 = load i32*, i32** %5, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  ret i32* %34
}

declare dso_local i32 @os_memset(%struct.wpa_tdls_timeoutie*, i32, i64) #1

declare dso_local i32 @WPA_PUT_LE32(i32, i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
