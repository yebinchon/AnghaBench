; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa_ie.c_wpa_gen_wpa_ie_wpa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa_ie.c_wpa_gen_wpa_ie_wpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_ie_hdr = type { i32, i32, i32*, i32 }

@WPA_SELECTOR_LEN = common dso_local global i32 0, align 4
@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@WPA_OUI_TYPE = common dso_local global i64 0, align 8
@WPA_VERSION = common dso_local global i32 0, align 4
@WPA_PROTO_WPA = common dso_local global i32 0, align 4
@MSG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid group cipher (%d).\00", align 1
@WPA_CIPHER_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Invalid pairwise cipher (%d).\00", align 1
@WPA_KEY_MGMT_IEEE8021X = common dso_local global i32 0, align 4
@WPA_AUTH_KEY_MGMT_UNSPEC_802_1X = common dso_local global i64 0, align 8
@WPA_KEY_MGMT_PSK = common dso_local global i32 0, align 4
@WPA_AUTH_KEY_MGMT_PSK_OVER_802_1X = common dso_local global i64 0, align 8
@WPA_KEY_MGMT_WPA_NONE = common dso_local global i32 0, align 4
@WPA_AUTH_KEY_MGMT_NONE = common dso_local global i64 0, align 8
@WPA_KEY_MGMT_CCKM = common dso_local global i32 0, align 4
@WPA_AUTH_KEY_MGMT_CCKM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Invalid key management type (%d).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32, i32, i32)* @wpa_gen_wpa_ie_wpa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_gen_wpa_ie_wpa(i32* %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.wpa_ie_hdr*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i64, i64* %8, align 8
  %16 = load i32, i32* @WPA_SELECTOR_LEN, align 4
  %17 = sext i32 %16 to i64
  %18 = add i64 24, %17
  %19 = add i64 %18, 2
  %20 = load i32, i32* @WPA_SELECTOR_LEN, align 4
  %21 = sext i32 %20 to i64
  %22 = add i64 %19, %21
  %23 = add i64 %22, 2
  %24 = load i32, i32* @WPA_SELECTOR_LEN, align 4
  %25 = sext i32 %24 to i64
  %26 = add i64 %23, %25
  %27 = icmp ult i64 %15, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %168

29:                                               ; preds = %5
  %30 = load i32*, i32** %7, align 8
  %31 = bitcast i32* %30 to %struct.wpa_ie_hdr*
  store %struct.wpa_ie_hdr* %31, %struct.wpa_ie_hdr** %13, align 8
  %32 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %33 = load %struct.wpa_ie_hdr*, %struct.wpa_ie_hdr** %13, align 8
  %34 = getelementptr inbounds %struct.wpa_ie_hdr, %struct.wpa_ie_hdr* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load %struct.wpa_ie_hdr*, %struct.wpa_ie_hdr** %13, align 8
  %36 = getelementptr inbounds %struct.wpa_ie_hdr, %struct.wpa_ie_hdr* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @WPA_OUI_TYPE, align 8
  %39 = call i32 @RSN_SELECTOR_PUT(i32* %37, i64 %38)
  %40 = load %struct.wpa_ie_hdr*, %struct.wpa_ie_hdr** %13, align 8
  %41 = getelementptr inbounds %struct.wpa_ie_hdr, %struct.wpa_ie_hdr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @WPA_VERSION, align 4
  %44 = call i32 @WPA_PUT_LE16(i32 %42, i32 %43)
  %45 = load %struct.wpa_ie_hdr*, %struct.wpa_ie_hdr** %13, align 8
  %46 = getelementptr inbounds %struct.wpa_ie_hdr, %struct.wpa_ie_hdr* %45, i64 1
  %47 = bitcast %struct.wpa_ie_hdr* %46 to i32*
  store i32* %47, i32** %12, align 8
  %48 = load i32, i32* @WPA_PROTO_WPA, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i64 @wpa_cipher_to_suite(i32 %48, i32 %49)
  store i64 %50, i64* %14, align 8
  %51 = load i64, i64* %14, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %29
  %54 = load i32, i32* @MSG_WARNING, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @wpa_printf(i32 %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %55)
  store i32 -1, i32* %6, align 4
  br label %168

57:                                               ; preds = %29
  %58 = load i32*, i32** %12, align 8
  %59 = load i64, i64* %14, align 8
  %60 = call i32 @RSN_SELECTOR_PUT(i32* %58, i64 %59)
  %61 = load i32, i32* @WPA_SELECTOR_LEN, align 4
  %62 = load i32*, i32** %12, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32* %64, i32** %12, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %12, align 8
  store i32 1, i32* %65, align 4
  %67 = load i32*, i32** %12, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %12, align 8
  store i32 0, i32* %67, align 4
  %69 = load i32, i32* @WPA_PROTO_WPA, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i64 @wpa_cipher_to_suite(i32 %69, i32 %70)
  store i64 %71, i64* %14, align 8
  %72 = load i64, i64* %14, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %57
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @wpa_cipher_valid_pairwise(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @WPA_CIPHER_NONE, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %78, %57
  %83 = load i32, i32* @MSG_WARNING, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @wpa_printf(i32 %83, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  store i32 -1, i32* %6, align 4
  br label %168

86:                                               ; preds = %78, %74
  %87 = load i32*, i32** %12, align 8
  %88 = load i64, i64* %14, align 8
  %89 = call i32 @RSN_SELECTOR_PUT(i32* %87, i64 %88)
  %90 = load i32, i32* @WPA_SELECTOR_LEN, align 4
  %91 = load i32*, i32** %12, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32* %93, i32** %12, align 8
  %94 = load i32*, i32** %12, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %12, align 8
  store i32 1, i32* %94, align 4
  %96 = load i32*, i32** %12, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %12, align 8
  store i32 0, i32* %96, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* @WPA_KEY_MGMT_IEEE8021X, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %86
  %102 = load i32*, i32** %12, align 8
  %103 = load i64, i64* @WPA_AUTH_KEY_MGMT_UNSPEC_802_1X, align 8
  %104 = call i32 @RSN_SELECTOR_PUT(i32* %102, i64 %103)
  br label %136

105:                                              ; preds = %86
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* @WPA_KEY_MGMT_PSK, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load i32*, i32** %12, align 8
  %111 = load i64, i64* @WPA_AUTH_KEY_MGMT_PSK_OVER_802_1X, align 8
  %112 = call i32 @RSN_SELECTOR_PUT(i32* %110, i64 %111)
  br label %135

113:                                              ; preds = %105
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* @WPA_KEY_MGMT_WPA_NONE, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load i32*, i32** %12, align 8
  %119 = load i64, i64* @WPA_AUTH_KEY_MGMT_NONE, align 8
  %120 = call i32 @RSN_SELECTOR_PUT(i32* %118, i64 %119)
  br label %134

121:                                              ; preds = %113
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* @WPA_KEY_MGMT_CCKM, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %121
  %126 = load i32*, i32** %12, align 8
  %127 = load i64, i64* @WPA_AUTH_KEY_MGMT_CCKM, align 8
  %128 = call i32 @RSN_SELECTOR_PUT(i32* %126, i64 %127)
  br label %133

129:                                              ; preds = %121
  %130 = load i32, i32* @MSG_WARNING, align 4
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @wpa_printf(i32 %130, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %131)
  store i32 -1, i32* %6, align 4
  br label %168

133:                                              ; preds = %125
  br label %134

134:                                              ; preds = %133, %117
  br label %135

135:                                              ; preds = %134, %109
  br label %136

136:                                              ; preds = %135, %101
  %137 = load i32, i32* @WPA_SELECTOR_LEN, align 4
  %138 = load i32*, i32** %12, align 8
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  store i32* %140, i32** %12, align 8
  %141 = load i32*, i32** %12, align 8
  %142 = load i32*, i32** %7, align 8
  %143 = ptrtoint i32* %141 to i64
  %144 = ptrtoint i32* %142 to i64
  %145 = sub i64 %143, %144
  %146 = sdiv exact i64 %145, 4
  %147 = sub nsw i64 %146, 2
  %148 = trunc i64 %147 to i32
  %149 = load %struct.wpa_ie_hdr*, %struct.wpa_ie_hdr** %13, align 8
  %150 = getelementptr inbounds %struct.wpa_ie_hdr, %struct.wpa_ie_hdr* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  %151 = load i32*, i32** %12, align 8
  %152 = load i32*, i32** %7, align 8
  %153 = ptrtoint i32* %151 to i64
  %154 = ptrtoint i32* %152 to i64
  %155 = sub i64 %153, %154
  %156 = sdiv exact i64 %155, 4
  %157 = load i64, i64* %8, align 8
  %158 = icmp ule i64 %156, %157
  %159 = zext i1 %158 to i32
  %160 = call i32 @WPA_ASSERT(i32 %159)
  %161 = load i32*, i32** %12, align 8
  %162 = load i32*, i32** %7, align 8
  %163 = ptrtoint i32* %161 to i64
  %164 = ptrtoint i32* %162 to i64
  %165 = sub i64 %163, %164
  %166 = sdiv exact i64 %165, 4
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %6, align 4
  br label %168

168:                                              ; preds = %136, %129, %82, %53, %28
  %169 = load i32, i32* %6, align 4
  ret i32 %169
}

declare dso_local i32 @RSN_SELECTOR_PUT(i32*, i64) #1

declare dso_local i32 @WPA_PUT_LE16(i32, i32) #1

declare dso_local i64 @wpa_cipher_to_suite(i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @wpa_cipher_valid_pairwise(i32) #1

declare dso_local i32 @WPA_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
