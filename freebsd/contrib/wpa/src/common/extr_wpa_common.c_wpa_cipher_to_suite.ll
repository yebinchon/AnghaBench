; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_wpa_common.c_wpa_cipher_to_suite.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_wpa_common.c_wpa_cipher_to_suite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WPA_CIPHER_CCMP_256 = common dso_local global i32 0, align 4
@RSN_CIPHER_SUITE_CCMP_256 = common dso_local global i32 0, align 4
@WPA_CIPHER_GCMP_256 = common dso_local global i32 0, align 4
@RSN_CIPHER_SUITE_GCMP_256 = common dso_local global i32 0, align 4
@WPA_CIPHER_CCMP = common dso_local global i32 0, align 4
@WPA_PROTO_RSN = common dso_local global i32 0, align 4
@RSN_CIPHER_SUITE_CCMP = common dso_local global i32 0, align 4
@WPA_CIPHER_SUITE_CCMP = common dso_local global i32 0, align 4
@WPA_CIPHER_GCMP = common dso_local global i32 0, align 4
@RSN_CIPHER_SUITE_GCMP = common dso_local global i32 0, align 4
@WPA_CIPHER_TKIP = common dso_local global i32 0, align 4
@RSN_CIPHER_SUITE_TKIP = common dso_local global i32 0, align 4
@WPA_CIPHER_SUITE_TKIP = common dso_local global i32 0, align 4
@WPA_CIPHER_NONE = common dso_local global i32 0, align 4
@RSN_CIPHER_SUITE_NONE = common dso_local global i32 0, align 4
@WPA_CIPHER_SUITE_NONE = common dso_local global i32 0, align 4
@WPA_CIPHER_GTK_NOT_USED = common dso_local global i32 0, align 4
@RSN_CIPHER_SUITE_NO_GROUP_ADDRESSED = common dso_local global i32 0, align 4
@WPA_CIPHER_AES_128_CMAC = common dso_local global i32 0, align 4
@RSN_CIPHER_SUITE_AES_128_CMAC = common dso_local global i32 0, align 4
@WPA_CIPHER_BIP_GMAC_128 = common dso_local global i32 0, align 4
@RSN_CIPHER_SUITE_BIP_GMAC_128 = common dso_local global i32 0, align 4
@WPA_CIPHER_BIP_GMAC_256 = common dso_local global i32 0, align 4
@RSN_CIPHER_SUITE_BIP_GMAC_256 = common dso_local global i32 0, align 4
@WPA_CIPHER_BIP_CMAC_256 = common dso_local global i32 0, align 4
@RSN_CIPHER_SUITE_BIP_CMAC_256 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_cipher_to_suite(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @WPA_CIPHER_CCMP_256, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @RSN_CIPHER_SUITE_CCMP_256, align 4
  store i32 %11, i32* %3, align 4
  br label %107

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @WPA_CIPHER_GCMP_256, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* @RSN_CIPHER_SUITE_GCMP_256, align 4
  store i32 %18, i32* %3, align 4
  br label %107

19:                                               ; preds = %12
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @WPA_CIPHER_CCMP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @WPA_PROTO_RSN, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @RSN_CIPHER_SUITE_CCMP, align 4
  br label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @WPA_CIPHER_SUITE_CCMP, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  store i32 %33, i32* %3, align 4
  br label %107

34:                                               ; preds = %19
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @WPA_CIPHER_GCMP, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @RSN_CIPHER_SUITE_GCMP, align 4
  store i32 %40, i32* %3, align 4
  br label %107

41:                                               ; preds = %34
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @WPA_CIPHER_TKIP, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @WPA_PROTO_RSN, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @RSN_CIPHER_SUITE_TKIP, align 4
  br label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @WPA_CIPHER_SUITE_TKIP, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  store i32 %55, i32* %3, align 4
  br label %107

56:                                               ; preds = %41
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @WPA_CIPHER_NONE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @WPA_PROTO_RSN, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* @RSN_CIPHER_SUITE_NONE, align 4
  br label %69

67:                                               ; preds = %61
  %68 = load i32, i32* @WPA_CIPHER_SUITE_NONE, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  store i32 %70, i32* %3, align 4
  br label %107

71:                                               ; preds = %56
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @WPA_CIPHER_GTK_NOT_USED, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* @RSN_CIPHER_SUITE_NO_GROUP_ADDRESSED, align 4
  store i32 %77, i32* %3, align 4
  br label %107

78:                                               ; preds = %71
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @WPA_CIPHER_AES_128_CMAC, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* @RSN_CIPHER_SUITE_AES_128_CMAC, align 4
  store i32 %84, i32* %3, align 4
  br label %107

85:                                               ; preds = %78
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @WPA_CIPHER_BIP_GMAC_128, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* @RSN_CIPHER_SUITE_BIP_GMAC_128, align 4
  store i32 %91, i32* %3, align 4
  br label %107

92:                                               ; preds = %85
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @WPA_CIPHER_BIP_GMAC_256, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i32, i32* @RSN_CIPHER_SUITE_BIP_GMAC_256, align 4
  store i32 %98, i32* %3, align 4
  br label %107

99:                                               ; preds = %92
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @WPA_CIPHER_BIP_CMAC_256, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i32, i32* @RSN_CIPHER_SUITE_BIP_CMAC_256, align 4
  store i32 %105, i32* %3, align 4
  br label %107

106:                                              ; preds = %99
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %106, %104, %97, %90, %83, %76, %69, %54, %39, %32, %17, %10
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
