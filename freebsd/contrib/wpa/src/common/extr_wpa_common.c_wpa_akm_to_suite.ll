; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_wpa_common.c_wpa_akm_to_suite.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_wpa_common.c_wpa_akm_to_suite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WPA_KEY_MGMT_FT_IEEE8021X_SHA384 = common dso_local global i32 0, align 4
@RSN_AUTH_KEY_MGMT_FT_802_1X_SHA384 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FT_IEEE8021X = common dso_local global i32 0, align 4
@RSN_AUTH_KEY_MGMT_FT_802_1X = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FT_PSK = common dso_local global i32 0, align 4
@RSN_AUTH_KEY_MGMT_FT_PSK = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_IEEE8021X_SHA256 = common dso_local global i32 0, align 4
@RSN_AUTH_KEY_MGMT_802_1X_SHA256 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_IEEE8021X = common dso_local global i32 0, align 4
@RSN_AUTH_KEY_MGMT_UNSPEC_802_1X = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_PSK_SHA256 = common dso_local global i32 0, align 4
@RSN_AUTH_KEY_MGMT_PSK_SHA256 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_PSK = common dso_local global i32 0, align 4
@RSN_AUTH_KEY_MGMT_PSK_OVER_802_1X = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_CCKM = common dso_local global i32 0, align 4
@RSN_AUTH_KEY_MGMT_CCKM = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_OSEN = common dso_local global i32 0, align 4
@RSN_AUTH_KEY_MGMT_OSEN = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_IEEE8021X_SUITE_B = common dso_local global i32 0, align 4
@RSN_AUTH_KEY_MGMT_802_1X_SUITE_B = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_IEEE8021X_SUITE_B_192 = common dso_local global i32 0, align 4
@RSN_AUTH_KEY_MGMT_802_1X_SUITE_B_192 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FILS_SHA256 = common dso_local global i32 0, align 4
@RSN_AUTH_KEY_MGMT_FILS_SHA256 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FILS_SHA384 = common dso_local global i32 0, align 4
@RSN_AUTH_KEY_MGMT_FILS_SHA384 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FT_FILS_SHA256 = common dso_local global i32 0, align 4
@RSN_AUTH_KEY_MGMT_FT_FILS_SHA256 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FT_FILS_SHA384 = common dso_local global i32 0, align 4
@RSN_AUTH_KEY_MGMT_FT_FILS_SHA384 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_SAE = common dso_local global i32 0, align 4
@RSN_AUTH_KEY_MGMT_SAE = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FT_SAE = common dso_local global i32 0, align 4
@RSN_AUTH_KEY_MGMT_FT_SAE = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_OWE = common dso_local global i32 0, align 4
@RSN_AUTH_KEY_MGMT_OWE = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_DPP = common dso_local global i32 0, align 4
@RSN_AUTH_KEY_MGMT_DPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_akm_to_suite(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @WPA_KEY_MGMT_FT_IEEE8021X_SHA384, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @RSN_AUTH_KEY_MGMT_FT_802_1X_SHA384, align 4
  store i32 %9, i32* %2, align 4
  br label %144

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @WPA_KEY_MGMT_FT_IEEE8021X, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* @RSN_AUTH_KEY_MGMT_FT_802_1X, align 4
  store i32 %16, i32* %2, align 4
  br label %144

17:                                               ; preds = %10
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @WPA_KEY_MGMT_FT_PSK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @RSN_AUTH_KEY_MGMT_FT_PSK, align 4
  store i32 %23, i32* %2, align 4
  br label %144

24:                                               ; preds = %17
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @WPA_KEY_MGMT_IEEE8021X_SHA256, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @RSN_AUTH_KEY_MGMT_802_1X_SHA256, align 4
  store i32 %30, i32* %2, align 4
  br label %144

31:                                               ; preds = %24
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @WPA_KEY_MGMT_IEEE8021X, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @RSN_AUTH_KEY_MGMT_UNSPEC_802_1X, align 4
  store i32 %37, i32* %2, align 4
  br label %144

38:                                               ; preds = %31
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @WPA_KEY_MGMT_PSK_SHA256, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @RSN_AUTH_KEY_MGMT_PSK_SHA256, align 4
  store i32 %44, i32* %2, align 4
  br label %144

45:                                               ; preds = %38
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @WPA_KEY_MGMT_PSK, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @RSN_AUTH_KEY_MGMT_PSK_OVER_802_1X, align 4
  store i32 %51, i32* %2, align 4
  br label %144

52:                                               ; preds = %45
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @WPA_KEY_MGMT_CCKM, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @RSN_AUTH_KEY_MGMT_CCKM, align 4
  store i32 %58, i32* %2, align 4
  br label %144

59:                                               ; preds = %52
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @WPA_KEY_MGMT_OSEN, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* @RSN_AUTH_KEY_MGMT_OSEN, align 4
  store i32 %65, i32* %2, align 4
  br label %144

66:                                               ; preds = %59
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @WPA_KEY_MGMT_IEEE8021X_SUITE_B, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @RSN_AUTH_KEY_MGMT_802_1X_SUITE_B, align 4
  store i32 %72, i32* %2, align 4
  br label %144

73:                                               ; preds = %66
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @WPA_KEY_MGMT_IEEE8021X_SUITE_B_192, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* @RSN_AUTH_KEY_MGMT_802_1X_SUITE_B_192, align 4
  store i32 %79, i32* %2, align 4
  br label %144

80:                                               ; preds = %73
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* @WPA_KEY_MGMT_FILS_SHA256, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* @RSN_AUTH_KEY_MGMT_FILS_SHA256, align 4
  store i32 %86, i32* %2, align 4
  br label %144

87:                                               ; preds = %80
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* @WPA_KEY_MGMT_FILS_SHA384, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32, i32* @RSN_AUTH_KEY_MGMT_FILS_SHA384, align 4
  store i32 %93, i32* %2, align 4
  br label %144

94:                                               ; preds = %87
  %95 = load i32, i32* %3, align 4
  %96 = load i32, i32* @WPA_KEY_MGMT_FT_FILS_SHA256, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i32, i32* @RSN_AUTH_KEY_MGMT_FT_FILS_SHA256, align 4
  store i32 %100, i32* %2, align 4
  br label %144

101:                                              ; preds = %94
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* @WPA_KEY_MGMT_FT_FILS_SHA384, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i32, i32* @RSN_AUTH_KEY_MGMT_FT_FILS_SHA384, align 4
  store i32 %107, i32* %2, align 4
  br label %144

108:                                              ; preds = %101
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* @WPA_KEY_MGMT_SAE, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = load i32, i32* @RSN_AUTH_KEY_MGMT_SAE, align 4
  store i32 %114, i32* %2, align 4
  br label %144

115:                                              ; preds = %108
  %116 = load i32, i32* %3, align 4
  %117 = load i32, i32* @WPA_KEY_MGMT_FT_SAE, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = load i32, i32* @RSN_AUTH_KEY_MGMT_FT_SAE, align 4
  store i32 %121, i32* %2, align 4
  br label %144

122:                                              ; preds = %115
  %123 = load i32, i32* %3, align 4
  %124 = load i32, i32* @WPA_KEY_MGMT_OWE, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = load i32, i32* @RSN_AUTH_KEY_MGMT_OWE, align 4
  store i32 %128, i32* %2, align 4
  br label %144

129:                                              ; preds = %122
  %130 = load i32, i32* %3, align 4
  %131 = load i32, i32* @WPA_KEY_MGMT_DPP, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = load i32, i32* @RSN_AUTH_KEY_MGMT_DPP, align 4
  store i32 %135, i32* %2, align 4
  br label %144

136:                                              ; preds = %129
  %137 = load i32, i32* %3, align 4
  %138 = load i32, i32* @WPA_KEY_MGMT_OSEN, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %142 = load i32, i32* @RSN_AUTH_KEY_MGMT_OSEN, align 4
  store i32 %142, i32* %2, align 4
  br label %144

143:                                              ; preds = %136
  store i32 0, i32* %2, align 4
  br label %144

144:                                              ; preds = %143, %141, %134, %127, %120, %113, %106, %99, %92, %85, %78, %71, %64, %57, %50, %43, %36, %29, %22, %15, %8
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
