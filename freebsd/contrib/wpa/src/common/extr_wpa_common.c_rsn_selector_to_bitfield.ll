; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_wpa_common.c_rsn_selector_to_bitfield.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_wpa_common.c_rsn_selector_to_bitfield.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RSN_CIPHER_SUITE_NONE = common dso_local global i64 0, align 8
@WPA_CIPHER_NONE = common dso_local global i32 0, align 4
@RSN_CIPHER_SUITE_TKIP = common dso_local global i64 0, align 8
@WPA_CIPHER_TKIP = common dso_local global i32 0, align 4
@RSN_CIPHER_SUITE_CCMP = common dso_local global i64 0, align 8
@WPA_CIPHER_CCMP = common dso_local global i32 0, align 4
@RSN_CIPHER_SUITE_GCMP = common dso_local global i64 0, align 8
@WPA_CIPHER_GCMP = common dso_local global i32 0, align 4
@RSN_CIPHER_SUITE_CCMP_256 = common dso_local global i64 0, align 8
@WPA_CIPHER_CCMP_256 = common dso_local global i32 0, align 4
@RSN_CIPHER_SUITE_GCMP_256 = common dso_local global i64 0, align 8
@WPA_CIPHER_GCMP_256 = common dso_local global i32 0, align 4
@RSN_CIPHER_SUITE_BIP_GMAC_128 = common dso_local global i64 0, align 8
@WPA_CIPHER_BIP_GMAC_128 = common dso_local global i32 0, align 4
@RSN_CIPHER_SUITE_BIP_GMAC_256 = common dso_local global i64 0, align 8
@WPA_CIPHER_BIP_GMAC_256 = common dso_local global i32 0, align 4
@RSN_CIPHER_SUITE_BIP_CMAC_256 = common dso_local global i64 0, align 8
@WPA_CIPHER_BIP_CMAC_256 = common dso_local global i32 0, align 4
@RSN_CIPHER_SUITE_NO_GROUP_ADDRESSED = common dso_local global i64 0, align 8
@WPA_CIPHER_GTK_NOT_USED = common dso_local global i32 0, align 4
@RSN_CIPHER_SUITE_AES_128_CMAC = common dso_local global i64 0, align 8
@WPA_CIPHER_AES_128_CMAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @rsn_selector_to_bitfield to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsn_selector_to_bitfield(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = call i64 @RSN_SELECTOR_GET(i32* %4)
  %6 = load i64, i64* @RSN_CIPHER_SUITE_NONE, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @WPA_CIPHER_NONE, align 4
  store i32 %9, i32* %2, align 4
  br label %74

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = call i64 @RSN_SELECTOR_GET(i32* %11)
  %13 = load i64, i64* @RSN_CIPHER_SUITE_TKIP, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* @WPA_CIPHER_TKIP, align 4
  store i32 %16, i32* %2, align 4
  br label %74

17:                                               ; preds = %10
  %18 = load i32*, i32** %3, align 8
  %19 = call i64 @RSN_SELECTOR_GET(i32* %18)
  %20 = load i64, i64* @RSN_CIPHER_SUITE_CCMP, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @WPA_CIPHER_CCMP, align 4
  store i32 %23, i32* %2, align 4
  br label %74

24:                                               ; preds = %17
  %25 = load i32*, i32** %3, align 8
  %26 = call i64 @RSN_SELECTOR_GET(i32* %25)
  %27 = load i64, i64* @RSN_CIPHER_SUITE_GCMP, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @WPA_CIPHER_GCMP, align 4
  store i32 %30, i32* %2, align 4
  br label %74

31:                                               ; preds = %24
  %32 = load i32*, i32** %3, align 8
  %33 = call i64 @RSN_SELECTOR_GET(i32* %32)
  %34 = load i64, i64* @RSN_CIPHER_SUITE_CCMP_256, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @WPA_CIPHER_CCMP_256, align 4
  store i32 %37, i32* %2, align 4
  br label %74

38:                                               ; preds = %31
  %39 = load i32*, i32** %3, align 8
  %40 = call i64 @RSN_SELECTOR_GET(i32* %39)
  %41 = load i64, i64* @RSN_CIPHER_SUITE_GCMP_256, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @WPA_CIPHER_GCMP_256, align 4
  store i32 %44, i32* %2, align 4
  br label %74

45:                                               ; preds = %38
  %46 = load i32*, i32** %3, align 8
  %47 = call i64 @RSN_SELECTOR_GET(i32* %46)
  %48 = load i64, i64* @RSN_CIPHER_SUITE_BIP_GMAC_128, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @WPA_CIPHER_BIP_GMAC_128, align 4
  store i32 %51, i32* %2, align 4
  br label %74

52:                                               ; preds = %45
  %53 = load i32*, i32** %3, align 8
  %54 = call i64 @RSN_SELECTOR_GET(i32* %53)
  %55 = load i64, i64* @RSN_CIPHER_SUITE_BIP_GMAC_256, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @WPA_CIPHER_BIP_GMAC_256, align 4
  store i32 %58, i32* %2, align 4
  br label %74

59:                                               ; preds = %52
  %60 = load i32*, i32** %3, align 8
  %61 = call i64 @RSN_SELECTOR_GET(i32* %60)
  %62 = load i64, i64* @RSN_CIPHER_SUITE_BIP_CMAC_256, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* @WPA_CIPHER_BIP_CMAC_256, align 4
  store i32 %65, i32* %2, align 4
  br label %74

66:                                               ; preds = %59
  %67 = load i32*, i32** %3, align 8
  %68 = call i64 @RSN_SELECTOR_GET(i32* %67)
  %69 = load i64, i64* @RSN_CIPHER_SUITE_NO_GROUP_ADDRESSED, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @WPA_CIPHER_GTK_NOT_USED, align 4
  store i32 %72, i32* %2, align 4
  br label %74

73:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %71, %64, %57, %50, %43, %36, %29, %22, %15, %8
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i64 @RSN_SELECTOR_GET(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
