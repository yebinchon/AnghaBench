; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth_ie.c_wpa_write_osen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth_ie.c_wpa_write_osen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_auth_config = type { i64, i64, i64 }

@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@OUI_WFA = common dso_local global i32 0, align 4
@HS20_OSEN_OUI_TYPE = common dso_local global i32 0, align 4
@RSN_CIPHER_SUITE_NO_GROUP_ADDRESSED = common dso_local global i32 0, align 4
@RSN_SELECTOR_LEN = common dso_local global i32 0, align 4
@RSN_CIPHER_SUITE_CCMP = common dso_local global i32 0, align 4
@RSN_AUTH_KEY_MGMT_OSEN = common dso_local global i32 0, align 4
@RSN_NUM_REPLAY_COUNTERS_16 = common dso_local global i32 0, align 4
@MGMT_FRAME_PROTECTION_REQUIRED = common dso_local global i64 0, align 8
@NO_MGMT_FRAME_PROTECTION = common dso_local global i64 0, align 8
@WPA_CAPABILITY_MFPC = common dso_local global i32 0, align 4
@WPA_CAPABILITY_MFPR = common dso_local global i32 0, align 4
@WPA_CAPABILITY_OCVC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.wpa_auth_config*, i32*)* @wpa_write_osen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @wpa_write_osen(%struct.wpa_auth_config* %0, i32* %1) #0 {
  %3 = alloca %struct.wpa_auth_config*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.wpa_auth_config* %0, %struct.wpa_auth_config** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = getelementptr inbounds i32, i32* %8, i32 1
  store i32* %9, i32** %4, align 8
  store i32 %7, i32* %8, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = getelementptr inbounds i32, i32* %10, i32 1
  store i32* %11, i32** %4, align 8
  store i32* %10, i32** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* @OUI_WFA, align 4
  %14 = call i32 @WPA_PUT_BE24(i32* %12, i32 %13)
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 3
  store i32* %16, i32** %4, align 8
  %17 = load i32, i32* @HS20_OSEN_OUI_TYPE, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %4, align 8
  store i32 %17, i32* %18, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* @RSN_CIPHER_SUITE_NO_GROUP_ADDRESSED, align 4
  %22 = call i32 @RSN_SELECTOR_PUT(i32* %20, i32 %21)
  %23 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32* %26, i32** %4, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @WPA_PUT_LE16(i32* %27, i32 1)
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  store i32* %30, i32** %4, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* @RSN_CIPHER_SUITE_CCMP, align 4
  %33 = call i32 @RSN_SELECTOR_PUT(i32* %31, i32 %32)
  %34 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32* %37, i32** %4, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @WPA_PUT_LE16(i32* %38, i32 1)
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  store i32* %41, i32** %4, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* @RSN_AUTH_KEY_MGMT_OSEN, align 4
  %44 = call i32 @RSN_SELECTOR_PUT(i32* %42, i32 %43)
  %45 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32* %48, i32** %4, align 8
  store i32 0, i32* %6, align 4
  %49 = load %struct.wpa_auth_config*, %struct.wpa_auth_config** %3, align 8
  %50 = getelementptr inbounds %struct.wpa_auth_config, %struct.wpa_auth_config* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %2
  %54 = load i32, i32* @RSN_NUM_REPLAY_COUNTERS_16, align 4
  %55 = shl i32 %54, 2
  %56 = load i32, i32* %6, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %53, %2
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @WPA_PUT_LE16(i32* %59, i32 %60)
  %62 = load i32*, i32** %4, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  store i32* %63, i32** %4, align 8
  %64 = load i32*, i32** %4, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = ptrtoint i32* %64 to i64
  %67 = ptrtoint i32* %65 to i64
  %68 = sub i64 %66, %67
  %69 = sdiv exact i64 %68, 4
  %70 = sub nsw i64 %69, 1
  %71 = trunc i64 %70 to i32
  %72 = load i32*, i32** %5, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32*, i32** %4, align 8
  ret i32* %73
}

declare dso_local i32 @WPA_PUT_BE24(i32*, i32) #1

declare dso_local i32 @RSN_SELECTOR_PUT(i32*, i32) #1

declare dso_local i32 @WPA_PUT_LE16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
