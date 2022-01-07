; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_wpa_common.c_rsn_key_mgmt_to_bitfield.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_wpa_common.c_rsn_key_mgmt_to_bitfield.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RSN_AUTH_KEY_MGMT_UNSPEC_802_1X = common dso_local global i64 0, align 8
@WPA_KEY_MGMT_IEEE8021X = common dso_local global i32 0, align 4
@RSN_AUTH_KEY_MGMT_PSK_OVER_802_1X = common dso_local global i64 0, align 8
@WPA_KEY_MGMT_PSK = common dso_local global i32 0, align 4
@RSN_AUTH_KEY_MGMT_802_1X_SUITE_B = common dso_local global i64 0, align 8
@WPA_KEY_MGMT_IEEE8021X_SUITE_B = common dso_local global i32 0, align 4
@RSN_AUTH_KEY_MGMT_802_1X_SUITE_B_192 = common dso_local global i64 0, align 8
@WPA_KEY_MGMT_IEEE8021X_SUITE_B_192 = common dso_local global i32 0, align 4
@RSN_AUTH_KEY_MGMT_FILS_SHA256 = common dso_local global i64 0, align 8
@WPA_KEY_MGMT_FILS_SHA256 = common dso_local global i32 0, align 4
@RSN_AUTH_KEY_MGMT_FILS_SHA384 = common dso_local global i64 0, align 8
@WPA_KEY_MGMT_FILS_SHA384 = common dso_local global i32 0, align 4
@RSN_AUTH_KEY_MGMT_FT_FILS_SHA256 = common dso_local global i64 0, align 8
@WPA_KEY_MGMT_FT_FILS_SHA256 = common dso_local global i32 0, align 4
@RSN_AUTH_KEY_MGMT_FT_FILS_SHA384 = common dso_local global i64 0, align 8
@WPA_KEY_MGMT_FT_FILS_SHA384 = common dso_local global i32 0, align 4
@RSN_AUTH_KEY_MGMT_OSEN = common dso_local global i64 0, align 8
@WPA_KEY_MGMT_OSEN = common dso_local global i32 0, align 4
@RSN_AUTH_KEY_MGMT_802_1X_SHA256 = common dso_local global i64 0, align 8
@RSN_AUTH_KEY_MGMT_DPP = common dso_local global i64 0, align 8
@RSN_AUTH_KEY_MGMT_FT_802_1X = common dso_local global i64 0, align 8
@RSN_AUTH_KEY_MGMT_FT_802_1X_SHA384 = common dso_local global i64 0, align 8
@RSN_AUTH_KEY_MGMT_FT_PSK = common dso_local global i64 0, align 8
@RSN_AUTH_KEY_MGMT_FT_SAE = common dso_local global i64 0, align 8
@RSN_AUTH_KEY_MGMT_OWE = common dso_local global i64 0, align 8
@RSN_AUTH_KEY_MGMT_PSK_SHA256 = common dso_local global i64 0, align 8
@RSN_AUTH_KEY_MGMT_SAE = common dso_local global i64 0, align 8
@WPA_KEY_MGMT_DPP = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FT_IEEE8021X = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FT_IEEE8021X_SHA384 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FT_PSK = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FT_SAE = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_IEEE8021X_SHA256 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_OWE = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_PSK_SHA256 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_SAE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @rsn_key_mgmt_to_bitfield to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsn_key_mgmt_to_bitfield(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = call i64 @RSN_SELECTOR_GET(i32* %4)
  %6 = load i64, i64* @RSN_AUTH_KEY_MGMT_UNSPEC_802_1X, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @WPA_KEY_MGMT_IEEE8021X, align 4
  store i32 %9, i32* %2, align 4
  br label %67

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = call i64 @RSN_SELECTOR_GET(i32* %11)
  %13 = load i64, i64* @RSN_AUTH_KEY_MGMT_PSK_OVER_802_1X, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* @WPA_KEY_MGMT_PSK, align 4
  store i32 %16, i32* %2, align 4
  br label %67

17:                                               ; preds = %10
  %18 = load i32*, i32** %3, align 8
  %19 = call i64 @RSN_SELECTOR_GET(i32* %18)
  %20 = load i64, i64* @RSN_AUTH_KEY_MGMT_802_1X_SUITE_B, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @WPA_KEY_MGMT_IEEE8021X_SUITE_B, align 4
  store i32 %23, i32* %2, align 4
  br label %67

24:                                               ; preds = %17
  %25 = load i32*, i32** %3, align 8
  %26 = call i64 @RSN_SELECTOR_GET(i32* %25)
  %27 = load i64, i64* @RSN_AUTH_KEY_MGMT_802_1X_SUITE_B_192, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @WPA_KEY_MGMT_IEEE8021X_SUITE_B_192, align 4
  store i32 %30, i32* %2, align 4
  br label %67

31:                                               ; preds = %24
  %32 = load i32*, i32** %3, align 8
  %33 = call i64 @RSN_SELECTOR_GET(i32* %32)
  %34 = load i64, i64* @RSN_AUTH_KEY_MGMT_FILS_SHA256, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @WPA_KEY_MGMT_FILS_SHA256, align 4
  store i32 %37, i32* %2, align 4
  br label %67

38:                                               ; preds = %31
  %39 = load i32*, i32** %3, align 8
  %40 = call i64 @RSN_SELECTOR_GET(i32* %39)
  %41 = load i64, i64* @RSN_AUTH_KEY_MGMT_FILS_SHA384, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @WPA_KEY_MGMT_FILS_SHA384, align 4
  store i32 %44, i32* %2, align 4
  br label %67

45:                                               ; preds = %38
  %46 = load i32*, i32** %3, align 8
  %47 = call i64 @RSN_SELECTOR_GET(i32* %46)
  %48 = load i64, i64* @RSN_AUTH_KEY_MGMT_FT_FILS_SHA256, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @WPA_KEY_MGMT_FT_FILS_SHA256, align 4
  store i32 %51, i32* %2, align 4
  br label %67

52:                                               ; preds = %45
  %53 = load i32*, i32** %3, align 8
  %54 = call i64 @RSN_SELECTOR_GET(i32* %53)
  %55 = load i64, i64* @RSN_AUTH_KEY_MGMT_FT_FILS_SHA384, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @WPA_KEY_MGMT_FT_FILS_SHA384, align 4
  store i32 %58, i32* %2, align 4
  br label %67

59:                                               ; preds = %52
  %60 = load i32*, i32** %3, align 8
  %61 = call i64 @RSN_SELECTOR_GET(i32* %60)
  %62 = load i64, i64* @RSN_AUTH_KEY_MGMT_OSEN, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* @WPA_KEY_MGMT_OSEN, align 4
  store i32 %65, i32* %2, align 4
  br label %67

66:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %64, %57, %50, %43, %36, %29, %22, %15, %8
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i64 @RSN_SELECTOR_GET(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
