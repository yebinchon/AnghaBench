; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa_ie.c_wpa_gen_wpa_ie_rsn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa_ie.c_wpa_gen_wpa_ie_rsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.rsn_ie_hdr = type { i32, i32*, i32 }

@RSN_SELECTOR_LEN = common dso_local global i32 0, align 4
@PMKID_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"RSN: Too short IE buffer (%lu bytes)\00", align 1
@WLAN_EID_RSN = common dso_local global i32 0, align 4
@RSN_VERSION = common dso_local global i32 0, align 4
@WPA_PROTO_RSN = common dso_local global i32 0, align 4
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid group cipher (%d).\00", align 1
@WPA_CIPHER_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Invalid pairwise cipher (%d).\00", align 1
@WPA_KEY_MGMT_IEEE8021X = common dso_local global i32 0, align 4
@RSN_AUTH_KEY_MGMT_UNSPEC_802_1X = common dso_local global i64 0, align 8
@WPA_KEY_MGMT_PSK = common dso_local global i32 0, align 4
@RSN_AUTH_KEY_MGMT_PSK_OVER_802_1X = common dso_local global i64 0, align 8
@WPA_KEY_MGMT_CCKM = common dso_local global i32 0, align 4
@RSN_AUTH_KEY_MGMT_CCKM = common dso_local global i64 0, align 8
@WPA_KEY_MGMT_IEEE8021X_SUITE_B_192 = common dso_local global i32 0, align 4
@RSN_AUTH_KEY_MGMT_802_1X_SUITE_B_192 = common dso_local global i64 0, align 8
@WPA_KEY_MGMT_IEEE8021X_SUITE_B = common dso_local global i32 0, align 4
@RSN_AUTH_KEY_MGMT_802_1X_SUITE_B = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"Invalid key management type (%d).\00", align 1
@WPA_CAPABILITY_OCVC = common dso_local global i32 0, align 4
@RSN_AUTH_KEY_MGMT_802_1X_SHA256 = common dso_local global i64 0, align 8
@RSN_AUTH_KEY_MGMT_DPP = common dso_local global i64 0, align 8
@RSN_AUTH_KEY_MGMT_FILS_SHA256 = common dso_local global i64 0, align 8
@RSN_AUTH_KEY_MGMT_FILS_SHA384 = common dso_local global i64 0, align 8
@RSN_AUTH_KEY_MGMT_FT_802_1X = common dso_local global i64 0, align 8
@RSN_AUTH_KEY_MGMT_FT_802_1X_SHA384 = common dso_local global i64 0, align 8
@RSN_AUTH_KEY_MGMT_FT_FILS_SHA256 = common dso_local global i64 0, align 8
@RSN_AUTH_KEY_MGMT_FT_FILS_SHA384 = common dso_local global i64 0, align 8
@RSN_AUTH_KEY_MGMT_FT_PSK = common dso_local global i64 0, align 8
@RSN_AUTH_KEY_MGMT_FT_SAE = common dso_local global i64 0, align 8
@RSN_AUTH_KEY_MGMT_OSEN = common dso_local global i64 0, align 8
@RSN_AUTH_KEY_MGMT_OWE = common dso_local global i64 0, align 8
@RSN_AUTH_KEY_MGMT_PSK_SHA256 = common dso_local global i64 0, align 8
@RSN_AUTH_KEY_MGMT_SAE = common dso_local global i64 0, align 8
@WPA_CAPABILITY_MFPC = common dso_local global i32 0, align 4
@WPA_CAPABILITY_MFPR = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_DPP = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FILS_SHA256 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FILS_SHA384 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FT_FILS_SHA256 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FT_FILS_SHA384 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FT_IEEE8021X = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FT_IEEE8021X_SHA384 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FT_PSK = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FT_SAE = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_IEEE8021X_SHA256 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_OSEN = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_OWE = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_PSK_SHA256 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_SAE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32, i32, i32, i32, %struct.wpa_sm*)* @wpa_gen_wpa_ie_rsn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_gen_wpa_ie_rsn(i32* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.wpa_sm* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.wpa_sm*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.rsn_ie_hdr*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.wpa_sm* %6, %struct.wpa_sm** %15, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %22 = sext i32 %21 to i64
  %23 = add i64 24, %22
  %24 = add i64 %23, 2
  %25 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %26 = sext i32 %25 to i64
  %27 = add i64 %24, %26
  %28 = add i64 %27, 2
  %29 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %30 = sext i32 %29 to i64
  %31 = add i64 %28, %30
  %32 = add i64 %31, 2
  %33 = load %struct.wpa_sm*, %struct.wpa_sm** %15, align 8
  %34 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = icmp ne %struct.TYPE_2__* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %7
  %38 = load i32, i32* @PMKID_LEN, align 4
  %39 = add nsw i32 2, %38
  br label %41

40:                                               ; preds = %7
  br label %41

41:                                               ; preds = %40, %37
  %42 = phi i32 [ %39, %37 ], [ 0, %40 ]
  %43 = sext i32 %42 to i64
  %44 = add i64 %32, %43
  %45 = icmp ult i64 %20, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i32, i32* @MSG_DEBUG, align 4
  %48 = load i64, i64* %10, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 @wpa_printf(i32 %47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %49)
  store i32 -1, i32* %8, align 4
  br label %230

51:                                               ; preds = %41
  %52 = load i32*, i32** %9, align 8
  %53 = bitcast i32* %52 to %struct.rsn_ie_hdr*
  store %struct.rsn_ie_hdr* %53, %struct.rsn_ie_hdr** %17, align 8
  %54 = load i32, i32* @WLAN_EID_RSN, align 4
  %55 = load %struct.rsn_ie_hdr*, %struct.rsn_ie_hdr** %17, align 8
  %56 = getelementptr inbounds %struct.rsn_ie_hdr, %struct.rsn_ie_hdr* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.rsn_ie_hdr*, %struct.rsn_ie_hdr** %17, align 8
  %58 = getelementptr inbounds %struct.rsn_ie_hdr, %struct.rsn_ie_hdr* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* @RSN_VERSION, align 4
  %61 = call i32 @WPA_PUT_LE16(i32* %59, i32 %60)
  %62 = load %struct.rsn_ie_hdr*, %struct.rsn_ie_hdr** %17, align 8
  %63 = getelementptr inbounds %struct.rsn_ie_hdr, %struct.rsn_ie_hdr* %62, i64 1
  %64 = bitcast %struct.rsn_ie_hdr* %63 to i32*
  store i32* %64, i32** %16, align 8
  %65 = load i32, i32* @WPA_PROTO_RSN, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i64 @wpa_cipher_to_suite(i32 %65, i32 %66)
  store i64 %67, i64* %19, align 8
  %68 = load i64, i64* %19, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %51
  %71 = load i32, i32* @MSG_WARNING, align 4
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @wpa_printf(i32 %71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  store i32 -1, i32* %8, align 4
  br label %230

74:                                               ; preds = %51
  %75 = load i32*, i32** %16, align 8
  %76 = load i64, i64* %19, align 8
  %77 = call i32 @RSN_SELECTOR_PUT(i32* %75, i64 %76)
  %78 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %79 = load i32*, i32** %16, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32* %81, i32** %16, align 8
  %82 = load i32*, i32** %16, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %16, align 8
  store i32 1, i32* %82, align 4
  %84 = load i32*, i32** %16, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %16, align 8
  store i32 0, i32* %84, align 4
  %86 = load i32, i32* @WPA_PROTO_RSN, align 4
  %87 = load i32, i32* %11, align 4
  %88 = call i64 @wpa_cipher_to_suite(i32 %86, i32 %87)
  store i64 %88, i64* %19, align 8
  %89 = load i64, i64* %19, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %74
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @wpa_cipher_valid_pairwise(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %91
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* @WPA_CIPHER_NONE, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %95, %74
  %100 = load i32, i32* @MSG_WARNING, align 4
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @wpa_printf(i32 %100, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  store i32 -1, i32* %8, align 4
  br label %230

103:                                              ; preds = %95, %91
  %104 = load i32*, i32** %16, align 8
  %105 = load i64, i64* %19, align 8
  %106 = call i32 @RSN_SELECTOR_PUT(i32* %104, i64 %105)
  %107 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %108 = load i32*, i32** %16, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  store i32* %110, i32** %16, align 8
  %111 = load i32*, i32** %16, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %16, align 8
  store i32 1, i32* %111, align 4
  %113 = load i32*, i32** %16, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 1
  store i32* %114, i32** %16, align 8
  store i32 0, i32* %113, align 4
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* @WPA_KEY_MGMT_IEEE8021X, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %103
  %119 = load i32*, i32** %16, align 8
  %120 = load i64, i64* @RSN_AUTH_KEY_MGMT_UNSPEC_802_1X, align 8
  %121 = call i32 @RSN_SELECTOR_PUT(i32* %119, i64 %120)
  br label %162

122:                                              ; preds = %103
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* @WPA_KEY_MGMT_PSK, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load i32*, i32** %16, align 8
  %128 = load i64, i64* @RSN_AUTH_KEY_MGMT_PSK_OVER_802_1X, align 8
  %129 = call i32 @RSN_SELECTOR_PUT(i32* %127, i64 %128)
  br label %161

130:                                              ; preds = %122
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* @WPA_KEY_MGMT_CCKM, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %130
  %135 = load i32*, i32** %16, align 8
  %136 = load i64, i64* @RSN_AUTH_KEY_MGMT_CCKM, align 8
  %137 = call i32 @RSN_SELECTOR_PUT(i32* %135, i64 %136)
  br label %160

138:                                              ; preds = %130
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* @WPA_KEY_MGMT_IEEE8021X_SUITE_B_192, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = load i32*, i32** %16, align 8
  %144 = load i64, i64* @RSN_AUTH_KEY_MGMT_802_1X_SUITE_B_192, align 8
  %145 = call i32 @RSN_SELECTOR_PUT(i32* %143, i64 %144)
  br label %159

146:                                              ; preds = %138
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* @WPA_KEY_MGMT_IEEE8021X_SUITE_B, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = load i32*, i32** %16, align 8
  %152 = load i64, i64* @RSN_AUTH_KEY_MGMT_802_1X_SUITE_B, align 8
  %153 = call i32 @RSN_SELECTOR_PUT(i32* %151, i64 %152)
  br label %158

154:                                              ; preds = %146
  %155 = load i32, i32* @MSG_WARNING, align 4
  %156 = load i32, i32* %13, align 4
  %157 = call i32 @wpa_printf(i32 %155, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %156)
  store i32 -1, i32* %8, align 4
  br label %230

158:                                              ; preds = %150
  br label %159

159:                                              ; preds = %158, %142
  br label %160

160:                                              ; preds = %159, %134
  br label %161

161:                                              ; preds = %160, %126
  br label %162

162:                                              ; preds = %161, %118
  %163 = load i32, i32* @RSN_SELECTOR_LEN, align 4
  %164 = load i32*, i32** %16, align 8
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  store i32* %166, i32** %16, align 8
  store i32 0, i32* %18, align 4
  %167 = load %struct.wpa_sm*, %struct.wpa_sm** %15, align 8
  %168 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %162
  %172 = load i32, i32* @WPA_CAPABILITY_OCVC, align 4
  %173 = load i32, i32* %18, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %18, align 4
  br label %175

175:                                              ; preds = %171, %162
  %176 = load i32*, i32** %16, align 8
  %177 = load i32, i32* %18, align 4
  %178 = call i32 @WPA_PUT_LE16(i32* %176, i32 %177)
  %179 = load i32*, i32** %16, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 2
  store i32* %180, i32** %16, align 8
  %181 = load %struct.wpa_sm*, %struct.wpa_sm** %15, align 8
  %182 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %181, i32 0, i32 1
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** %182, align 8
  %184 = icmp ne %struct.TYPE_2__* %183, null
  br i1 %184, label %185, label %202

185:                                              ; preds = %175
  %186 = load i32*, i32** %16, align 8
  %187 = getelementptr inbounds i32, i32* %186, i32 1
  store i32* %187, i32** %16, align 8
  store i32 1, i32* %186, align 4
  %188 = load i32*, i32** %16, align 8
  %189 = getelementptr inbounds i32, i32* %188, i32 1
  store i32* %189, i32** %16, align 8
  store i32 0, i32* %188, align 4
  %190 = load i32*, i32** %16, align 8
  %191 = load %struct.wpa_sm*, %struct.wpa_sm** %15, align 8
  %192 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %191, i32 0, i32 1
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @PMKID_LEN, align 4
  %197 = call i32 @os_memcpy(i32* %190, i32 %195, i32 %196)
  %198 = load i32, i32* @PMKID_LEN, align 4
  %199 = load i32*, i32** %16, align 8
  %200 = sext i32 %198 to i64
  %201 = getelementptr inbounds i32, i32* %199, i64 %200
  store i32* %201, i32** %16, align 8
  br label %202

202:                                              ; preds = %185, %175
  %203 = load i32*, i32** %16, align 8
  %204 = load i32*, i32** %9, align 8
  %205 = ptrtoint i32* %203 to i64
  %206 = ptrtoint i32* %204 to i64
  %207 = sub i64 %205, %206
  %208 = sdiv exact i64 %207, 4
  %209 = sub nsw i64 %208, 2
  %210 = trunc i64 %209 to i32
  %211 = load %struct.rsn_ie_hdr*, %struct.rsn_ie_hdr** %17, align 8
  %212 = getelementptr inbounds %struct.rsn_ie_hdr, %struct.rsn_ie_hdr* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 8
  %213 = load i32*, i32** %16, align 8
  %214 = load i32*, i32** %9, align 8
  %215 = ptrtoint i32* %213 to i64
  %216 = ptrtoint i32* %214 to i64
  %217 = sub i64 %215, %216
  %218 = sdiv exact i64 %217, 4
  %219 = load i64, i64* %10, align 8
  %220 = icmp ule i64 %218, %219
  %221 = zext i1 %220 to i32
  %222 = call i32 @WPA_ASSERT(i32 %221)
  %223 = load i32*, i32** %16, align 8
  %224 = load i32*, i32** %9, align 8
  %225 = ptrtoint i32* %223 to i64
  %226 = ptrtoint i32* %224 to i64
  %227 = sub i64 %225, %226
  %228 = sdiv exact i64 %227, 4
  %229 = trunc i64 %228 to i32
  store i32 %229, i32* %8, align 4
  br label %230

230:                                              ; preds = %202, %154, %99, %70, %46
  %231 = load i32, i32* %8, align 4
  ret i32 %231
}

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @WPA_PUT_LE16(i32*, i32) #1

declare dso_local i64 @wpa_cipher_to_suite(i32, i32) #1

declare dso_local i32 @RSN_SELECTOR_PUT(i32*, i64) #1

declare dso_local i32 @wpa_cipher_valid_pairwise(i32) #1

declare dso_local i32 @os_memcpy(i32*, i32, i32) #1

declare dso_local i32 @WPA_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
