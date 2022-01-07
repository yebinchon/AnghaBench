; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth_ie.c_wpa_parse_kde_ies.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth_ie.c_wpa_parse_kde_ies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_eapol_ie_parse = type { i32*, i32, i32*, i32, i32*, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"WPA: EAPOL-Key Key Data underflow (ie=%d len=%d pos=%d)\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"WPA: Key Data\00", align 1
@WLAN_EID_RSN = common dso_local global i32 0, align 4
@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"WPA: Unrecognized EAPOL-Key Key Data IE\00", align 1
@WLAN_EID_FAST_BSS_TRANSITION = common dso_local global i32 0, align 4
@WLAN_EID_MOBILITY_DOMAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_parse_kde_ies(i32* %0, i64 %1, %struct.wpa_eapol_ie_parse* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.wpa_eapol_ie_parse*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.wpa_eapol_ie_parse* %2, %struct.wpa_eapol_ie_parse** %6, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %6, align 8
  %11 = call i32 @os_memset(%struct.wpa_eapol_ie_parse* %10, i32 0, i32 48)
  %12 = load i32*, i32** %4, align 8
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  store i32* %15, i32** %8, align 8
  br label %16

16:                                               ; preds = %118, %3
  %17 = load i32*, i32** %8, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = ptrtoint i32* %17 to i64
  %20 = ptrtoint i32* %18 to i64
  %21 = sub i64 %19, %20
  %22 = sdiv exact i64 %21, 4
  %23 = icmp sgt i64 %22, 1
  br i1 %23, label %24, label %126

24:                                               ; preds = %16
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 221
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = load i32*, i32** %7, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = getelementptr inbounds i32, i32* %33, i64 -1
  %35 = icmp eq i32* %30, %34
  br i1 %35, label %41, label %36

36:                                               ; preds = %29
  %37 = load i32*, i32** %7, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %29
  br label %126

42:                                               ; preds = %36, %24
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 2, %45
  %47 = sext i32 %46 to i64
  %48 = load i32*, i32** %8, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = ptrtoint i32* %48 to i64
  %51 = ptrtoint i32* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 4
  %54 = icmp sgt i64 %47, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %42
  %56 = load i32, i32* @MSG_DEBUG, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = load i32*, i32** %4, align 8
  %65 = ptrtoint i32* %63 to i64
  %66 = ptrtoint i32* %64 to i64
  %67 = sub i64 %65, %66
  %68 = sdiv exact i64 %67, 4
  %69 = trunc i64 %68 to i32
  %70 = call i32 @wpa_printf(i32 %56, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %62, i32 %69)
  %71 = load i32, i32* @MSG_DEBUG, align 4
  %72 = load i32*, i32** %4, align 8
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @wpa_hexdump_key(i32 %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %72, i64 %73)
  store i32 -1, i32* %9, align 4
  br label %126

75:                                               ; preds = %42
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @WLAN_EID_RSN, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %75
  %81 = load i32*, i32** %7, align 8
  %82 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %6, align 8
  %83 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %82, i32 0, i32 0
  store i32* %81, i32** %83, align 8
  %84 = load i32*, i32** %7, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 2
  %88 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %6, align 8
  %89 = getelementptr inbounds %struct.wpa_eapol_ie_parse, %struct.wpa_eapol_ie_parse* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 8
  br label %117

90:                                               ; preds = %75
  %91 = load i32*, i32** %7, align 8
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %90
  %96 = load i32*, i32** %7, align 8
  %97 = load i32*, i32** %8, align 8
  %98 = load %struct.wpa_eapol_ie_parse*, %struct.wpa_eapol_ie_parse** %6, align 8
  %99 = call i32 @wpa_parse_generic(i32* %96, i32* %97, %struct.wpa_eapol_ie_parse* %98)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  br label %126

103:                                              ; preds = %95
  %104 = load i32, i32* %9, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  store i32 0, i32* %9, align 4
  br label %126

107:                                              ; preds = %103
  br label %116

108:                                              ; preds = %90
  %109 = load i32, i32* @MSG_DEBUG, align 4
  %110 = load i32*, i32** %7, align 8
  %111 = load i32*, i32** %7, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 2, %113
  %115 = call i32 @wpa_hexdump(i32 %109, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32* %110, i32 %114)
  br label %116

116:                                              ; preds = %108, %107
  br label %117

117:                                              ; preds = %116, %80
  br label %118

118:                                              ; preds = %117
  %119 = load i32*, i32** %7, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 2, %121
  %123 = load i32*, i32** %7, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  store i32* %125, i32** %7, align 8
  br label %16

126:                                              ; preds = %106, %102, %55, %41, %16
  %127 = load i32, i32* %9, align 4
  ret i32 %127
}

declare dso_local i32 @os_memset(%struct.wpa_eapol_ie_parse*, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i64) #1

declare dso_local i32 @wpa_parse_generic(i32*, i32*, %struct.wpa_eapol_ie_parse*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
