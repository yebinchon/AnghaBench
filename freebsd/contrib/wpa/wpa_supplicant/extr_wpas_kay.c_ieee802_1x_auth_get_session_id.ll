; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpas_kay.c_ieee802_1x_auth_get_session_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpas_kay.c_ieee802_1x_auth_get_session_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Failed to get SessionID from EAPOL state machines\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"EAP Session-Id not long enough\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i32*, i32*, i64*)* @ieee802_1x_auth_get_session_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee802_1x_auth_get_session_id(%struct.wpa_supplicant* %0, i32* %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_supplicant*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %14 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32* @eapol_sm_get_session_id(i32 %15, i64* %11)
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @MSG_DEBUG, align 4
  %21 = call i32 @wpa_printf(i32 %20, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %36

22:                                               ; preds = %4
  store i64 65, i64* %12, align 8
  %23 = load i64, i64* %12, align 8
  %24 = load i64, i64* %11, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @MSG_DEBUG, align 4
  %28 = call i32 @wpa_printf(i32 %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %36

29:                                               ; preds = %22
  %30 = load i32*, i32** %8, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load i64, i64* %12, align 8
  %33 = call i32 @os_memcpy(i32* %30, i32* %31, i64 %32)
  %34 = load i64, i64* %12, align 8
  %35 = load i64*, i64** %9, align 8
  store i64 %34, i64* %35, align 8
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %29, %26, %19
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32* @eapol_sm_get_session_id(i32, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
