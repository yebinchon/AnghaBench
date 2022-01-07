; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_fast.c_eap_fast_build_pac.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_fast.c_eap_fast_build_pac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32, i32* }
%struct.eap_fast_data = type { i32, i32*, i32*, i64, i32 }
%struct.eap_tlv_hdr = type { i8*, i8* }
%struct.pac_tlv_hdr = type { i8*, i8* }
%struct.eap_tlv_result_tlv = type { i32, i32, i32 }
%struct.os_time = type { i64 }

@EAP_FAST_PAC_KEY_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"EAP-FAST: Generated PAC-Key\00", align 1
@PAC_OPAQUE_TYPE_KEY = common dso_local global i32 0, align 4
@PAC_OPAQUE_TYPE_LIFETIME = common dso_local global i32 0, align 4
@PAC_OPAQUE_TYPE_IDENTITY = common dso_local global i32 0, align 4
@PAC_OPAQUE_TYPE_PAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"EAP-FAST: PAC-Opaque\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"EAP-FAST: Add Result TLV (status=SUCCESS)\00", align 1
@EAP_TLV_TYPE_MANDATORY = common dso_local global i32 0, align 4
@EAP_TLV_RESULT_TLV = common dso_local global i32 0, align 4
@EAP_TLV_RESULT_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"EAP-FAST: Add PAC TLV\00", align 1
@EAP_TLV_PAC_TLV = common dso_local global i32 0, align 4
@PAC_TYPE_PAC_KEY = common dso_local global i32 0, align 4
@PAC_TYPE_PAC_OPAQUE = common dso_local global i32 0, align 4
@PAC_TYPE_PAC_INFO = common dso_local global i32 0, align 4
@PAC_TYPE_CRED_LIFETIME = common dso_local global i32 0, align 4
@PAC_TYPE_A_ID = common dso_local global i32 0, align 4
@PAC_TYPE_I_ID = common dso_local global i32 0, align 4
@PAC_TYPE_A_ID_INFO = common dso_local global i32 0, align 4
@PAC_TYPE_PAC_TYPE = common dso_local global i32 0, align 4
@PAC_TYPE_TUNNEL_PAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_fast_data*)* @eap_fast_build_pac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_fast_build_pac(%struct.eap_sm* %0, %struct.eap_fast_data* %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca %struct.eap_fast_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.wpabuf*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.eap_tlv_hdr*, align 8
  %16 = alloca %struct.pac_tlv_hdr*, align 8
  %17 = alloca %struct.eap_tlv_result_tlv*, align 8
  %18 = alloca %struct.os_time, align 8
  %19 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store %struct.eap_fast_data* %1, %struct.eap_fast_data** %5, align 8
  %20 = load i32, i32* @EAP_FAST_PAC_KEY_LEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %6, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %7, align 8
  %24 = load i32, i32* @EAP_FAST_PAC_KEY_LEN, align 4
  %25 = call i64 @random_get_bytes(i32* %23, i32 %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = call i64 @os_get_time(%struct.os_time* %18)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %2
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  store i32 1, i32* %19, align 4
  br label %310

31:                                               ; preds = %27
  %32 = load i32, i32* @MSG_DEBUG, align 4
  %33 = load i32, i32* @EAP_FAST_PAC_KEY_LEN, align 4
  %34 = call i32 @wpa_hexdump_key(i32 %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32* %23, i32 %33)
  %35 = load i32, i32* @EAP_FAST_PAC_KEY_LEN, align 4
  %36 = add nsw i32 2, %35
  %37 = add nsw i32 %36, 6
  %38 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %39 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 2, %40
  %42 = add nsw i32 %37, %41
  %43 = add nsw i32 %42, 8
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %14, align 8
  %45 = load i64, i64* %14, align 8
  %46 = call i32* @os_malloc(i64 %45)
  store i32* %46, i32** %8, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %31
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  store i32 1, i32* %19, align 4
  br label %310

50:                                               ; preds = %31
  %51 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %52 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = call i64 @os_strlen(i32* %53)
  store i64 %54, i64* %13, align 8
  %55 = load i32*, i32** %8, align 8
  store i32* %55, i32** %11, align 8
  %56 = load i32, i32* @PAC_OPAQUE_TYPE_KEY, align 4
  %57 = load i32*, i32** %11, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %11, align 8
  store i32 %56, i32* %57, align 4
  %59 = load i32, i32* @EAP_FAST_PAC_KEY_LEN, align 4
  %60 = load i32*, i32** %11, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %11, align 8
  store i32 %59, i32* %60, align 4
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* @EAP_FAST_PAC_KEY_LEN, align 4
  %64 = call i32 @os_memcpy(i32* %62, i32* %23, i32 %63)
  %65 = load i32, i32* @EAP_FAST_PAC_KEY_LEN, align 4
  %66 = load i32*, i32** %11, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32* %68, i32** %11, align 8
  %69 = load i32, i32* @PAC_OPAQUE_TYPE_LIFETIME, align 4
  %70 = load i32*, i32** %11, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %11, align 8
  store i32 %69, i32* %70, align 4
  %72 = load i32*, i32** %11, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %11, align 8
  store i32 4, i32* %72, align 4
  %74 = load i32*, i32** %11, align 8
  %75 = getelementptr inbounds %struct.os_time, %struct.os_time* %18, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %78 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %76, %79
  %81 = call i32 @WPA_PUT_BE32(i32* %74, i64 %80)
  %82 = load i32*, i32** %11, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 4
  store i32* %83, i32** %11, align 8
  %84 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %85 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %111

88:                                               ; preds = %50
  %89 = load i32, i32* @PAC_OPAQUE_TYPE_IDENTITY, align 4
  %90 = load i32*, i32** %11, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %11, align 8
  store i32 %89, i32* %90, align 4
  %92 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %93 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32*, i32** %11, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %96, i32** %11, align 8
  store i32 %94, i32* %95, align 4
  %97 = load i32*, i32** %11, align 8
  %98 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %99 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %102 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @os_memcpy(i32* %97, i32* %100, i32 %103)
  %105 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %106 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32*, i32** %11, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  store i32* %110, i32** %11, align 8
  br label %111

111:                                              ; preds = %88, %50
  %112 = load i32*, i32** %11, align 8
  %113 = load i32*, i32** %8, align 8
  %114 = ptrtoint i32* %112 to i64
  %115 = ptrtoint i32* %113 to i64
  %116 = sub i64 %114, %115
  %117 = sdiv exact i64 %116, 4
  store i64 %117, i64* %14, align 8
  br label %118

118:                                              ; preds = %122, %111
  %119 = load i64, i64* %14, align 8
  %120 = urem i64 %119, 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %118
  %123 = load i32, i32* @PAC_OPAQUE_TYPE_PAD, align 4
  %124 = load i32*, i32** %11, align 8
  %125 = getelementptr inbounds i32, i32* %124, i32 1
  store i32* %125, i32** %11, align 8
  store i32 %123, i32* %124, align 4
  %126 = load i64, i64* %14, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %14, align 8
  br label %118

128:                                              ; preds = %118
  %129 = load i64, i64* %14, align 8
  %130 = add i64 %129, 8
  %131 = call i32* @os_malloc(i64 %130)
  store i32* %131, i32** %9, align 8
  %132 = load i32*, i32** %9, align 8
  %133 = icmp eq i32* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %128
  %135 = load i32*, i32** %8, align 8
  %136 = call i32 @os_free(i32* %135)
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  store i32 1, i32* %19, align 4
  br label %310

137:                                              ; preds = %128
  %138 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %139 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = load i64, i64* %14, align 8
  %142 = udiv i64 %141, 8
  %143 = load i32*, i32** %8, align 8
  %144 = load i32*, i32** %9, align 8
  %145 = call i64 @aes_wrap(i32 %140, i32 4, i64 %142, i32* %143, i32* %144)
  %146 = icmp slt i64 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %137
  %148 = load i32*, i32** %8, align 8
  %149 = call i32 @os_free(i32* %148)
  %150 = load i32*, i32** %9, align 8
  %151 = call i32 @os_free(i32* %150)
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  store i32 1, i32* %19, align 4
  br label %310

152:                                              ; preds = %137
  %153 = load i32*, i32** %8, align 8
  %154 = call i32 @os_free(i32* %153)
  %155 = load i64, i64* %14, align 8
  %156 = add i64 %155, 8
  store i64 %156, i64* %14, align 8
  %157 = load i32, i32* @MSG_DEBUG, align 4
  %158 = load i32*, i32** %9, align 8
  %159 = load i64, i64* %14, align 8
  %160 = call i32 @wpa_hexdump(i32 %157, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32* %158, i64 %159)
  %161 = load i32, i32* @EAP_FAST_PAC_KEY_LEN, align 4
  %162 = sext i32 %161 to i64
  %163 = add i64 32, %162
  %164 = add i64 %163, 16
  %165 = load i64, i64* %14, align 8
  %166 = add i64 %164, %165
  %167 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %168 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = sext i32 %169 to i64
  %171 = add i64 %166, %170
  %172 = load i64, i64* %13, align 8
  %173 = add i64 %171, %172
  %174 = add i64 %173, 100
  %175 = add i64 %174, 12
  store i64 %175, i64* %12, align 8
  %176 = load i64, i64* %12, align 8
  %177 = call %struct.wpabuf* @wpabuf_alloc(i64 %176)
  store %struct.wpabuf* %177, %struct.wpabuf** %10, align 8
  %178 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %179 = icmp eq %struct.wpabuf* %178, null
  br i1 %179, label %180, label %183

180:                                              ; preds = %152
  %181 = load i32*, i32** %9, align 8
  %182 = call i32 @os_free(i32* %181)
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  store i32 1, i32* %19, align 4
  br label %310

183:                                              ; preds = %152
  %184 = load i32, i32* @MSG_DEBUG, align 4
  %185 = call i32 @wpa_printf(i32 %184, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %186 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %187 = call i8* @wpabuf_put(%struct.wpabuf* %186, i32 12)
  %188 = bitcast i8* %187 to %struct.eap_tlv_result_tlv*
  store %struct.eap_tlv_result_tlv* %188, %struct.eap_tlv_result_tlv** %17, align 8
  %189 = load %struct.eap_tlv_result_tlv*, %struct.eap_tlv_result_tlv** %17, align 8
  %190 = getelementptr inbounds %struct.eap_tlv_result_tlv, %struct.eap_tlv_result_tlv* %189, i32 0, i32 2
  %191 = load i32, i32* @EAP_TLV_TYPE_MANDATORY, align 4
  %192 = load i32, i32* @EAP_TLV_RESULT_TLV, align 4
  %193 = or i32 %191, %192
  %194 = call i32 @WPA_PUT_BE16(i32* %190, i32 %193)
  %195 = load %struct.eap_tlv_result_tlv*, %struct.eap_tlv_result_tlv** %17, align 8
  %196 = getelementptr inbounds %struct.eap_tlv_result_tlv, %struct.eap_tlv_result_tlv* %195, i32 0, i32 1
  %197 = call i32 @WPA_PUT_BE16(i32* %196, i32 2)
  %198 = load %struct.eap_tlv_result_tlv*, %struct.eap_tlv_result_tlv** %17, align 8
  %199 = getelementptr inbounds %struct.eap_tlv_result_tlv, %struct.eap_tlv_result_tlv* %198, i32 0, i32 0
  %200 = load i32, i32* @EAP_TLV_RESULT_SUCCESS, align 4
  %201 = call i32 @WPA_PUT_BE16(i32* %199, i32 %200)
  %202 = load i32, i32* @MSG_DEBUG, align 4
  %203 = call i32 @wpa_printf(i32 %202, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %204 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %205 = call i8* @wpabuf_put(%struct.wpabuf* %204, i32 16)
  %206 = bitcast i8* %205 to %struct.eap_tlv_hdr*
  store %struct.eap_tlv_hdr* %206, %struct.eap_tlv_hdr** %15, align 8
  %207 = load i32, i32* @EAP_TLV_TYPE_MANDATORY, align 4
  %208 = load i32, i32* @EAP_TLV_PAC_TLV, align 4
  %209 = or i32 %207, %208
  %210 = call i8* @host_to_be16(i32 %209)
  %211 = load %struct.eap_tlv_hdr*, %struct.eap_tlv_hdr** %15, align 8
  %212 = getelementptr inbounds %struct.eap_tlv_hdr, %struct.eap_tlv_hdr* %211, i32 0, i32 1
  store i8* %210, i8** %212, align 8
  %213 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %214 = load i32, i32* @PAC_TYPE_PAC_KEY, align 4
  %215 = load i32, i32* @EAP_FAST_PAC_KEY_LEN, align 4
  %216 = sext i32 %215 to i64
  %217 = call i32 @eap_fast_put_tlv(%struct.wpabuf* %213, i32 %214, i32* %23, i64 %216)
  %218 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %219 = load i32, i32* @PAC_TYPE_PAC_OPAQUE, align 4
  %220 = load i32*, i32** %9, align 8
  %221 = load i64, i64* %14, align 8
  %222 = call i32 @eap_fast_put_tlv(%struct.wpabuf* %218, i32 %219, i32* %220, i64 %221)
  %223 = load i32*, i32** %9, align 8
  %224 = call i32 @os_free(i32* %223)
  %225 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %226 = call i8* @wpabuf_put(%struct.wpabuf* %225, i32 16)
  %227 = bitcast i8* %226 to %struct.pac_tlv_hdr*
  store %struct.pac_tlv_hdr* %227, %struct.pac_tlv_hdr** %16, align 8
  %228 = load i32, i32* @PAC_TYPE_PAC_INFO, align 4
  %229 = call i8* @host_to_be16(i32 %228)
  %230 = load %struct.pac_tlv_hdr*, %struct.pac_tlv_hdr** %16, align 8
  %231 = getelementptr inbounds %struct.pac_tlv_hdr, %struct.pac_tlv_hdr* %230, i32 0, i32 1
  store i8* %229, i8** %231, align 8
  %232 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %233 = load i32, i32* @PAC_TYPE_CRED_LIFETIME, align 4
  %234 = call i32 @eap_fast_put_tlv_hdr(%struct.wpabuf* %232, i32 %233, i32 4)
  %235 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %236 = getelementptr inbounds %struct.os_time, %struct.os_time* %18, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %239 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %238, i32 0, i32 3
  %240 = load i64, i64* %239, align 8
  %241 = add nsw i64 %237, %240
  %242 = call i32 @wpabuf_put_be32(%struct.wpabuf* %235, i64 %241)
  %243 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %244 = load i32, i32* @PAC_TYPE_A_ID, align 4
  %245 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %246 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %245, i32 0, i32 2
  %247 = load i32*, i32** %246, align 8
  %248 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %249 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = sext i32 %250 to i64
  %252 = call i32 @eap_fast_put_tlv(%struct.wpabuf* %243, i32 %244, i32* %247, i64 %251)
  %253 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %254 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %253, i32 0, i32 1
  %255 = load i32*, i32** %254, align 8
  %256 = icmp ne i32* %255, null
  br i1 %256, label %257, label %268

257:                                              ; preds = %183
  %258 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %259 = load i32, i32* @PAC_TYPE_I_ID, align 4
  %260 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %261 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %260, i32 0, i32 1
  %262 = load i32*, i32** %261, align 8
  %263 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %264 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = sext i32 %265 to i64
  %267 = call i32 @eap_fast_put_tlv(%struct.wpabuf* %258, i32 %259, i32* %262, i64 %266)
  br label %268

268:                                              ; preds = %257, %183
  %269 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %270 = load i32, i32* @PAC_TYPE_A_ID_INFO, align 4
  %271 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %272 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %271, i32 0, i32 1
  %273 = load i32*, i32** %272, align 8
  %274 = load i64, i64* %13, align 8
  %275 = call i32 @eap_fast_put_tlv(%struct.wpabuf* %269, i32 %270, i32* %273, i64 %274)
  %276 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %277 = load i32, i32* @PAC_TYPE_PAC_TYPE, align 4
  %278 = call i32 @eap_fast_put_tlv_hdr(%struct.wpabuf* %276, i32 %277, i32 2)
  %279 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %280 = load i32, i32* @PAC_TYPE_TUNNEL_PAC, align 4
  %281 = call i32 @wpabuf_put_be16(%struct.wpabuf* %279, i32 %280)
  %282 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %283 = call i8* @wpabuf_put(%struct.wpabuf* %282, i32 0)
  %284 = bitcast i8* %283 to i32*
  store i32* %284, i32** %11, align 8
  %285 = load i32*, i32** %11, align 8
  %286 = load %struct.pac_tlv_hdr*, %struct.pac_tlv_hdr** %16, align 8
  %287 = getelementptr inbounds %struct.pac_tlv_hdr, %struct.pac_tlv_hdr* %286, i64 1
  %288 = bitcast %struct.pac_tlv_hdr* %287 to i32*
  %289 = ptrtoint i32* %285 to i64
  %290 = ptrtoint i32* %288 to i64
  %291 = sub i64 %289, %290
  %292 = sdiv exact i64 %291, 4
  %293 = trunc i64 %292 to i32
  %294 = call i8* @host_to_be16(i32 %293)
  %295 = load %struct.pac_tlv_hdr*, %struct.pac_tlv_hdr** %16, align 8
  %296 = getelementptr inbounds %struct.pac_tlv_hdr, %struct.pac_tlv_hdr* %295, i32 0, i32 0
  store i8* %294, i8** %296, align 8
  %297 = load i32*, i32** %11, align 8
  %298 = load %struct.eap_tlv_hdr*, %struct.eap_tlv_hdr** %15, align 8
  %299 = getelementptr inbounds %struct.eap_tlv_hdr, %struct.eap_tlv_hdr* %298, i64 1
  %300 = bitcast %struct.eap_tlv_hdr* %299 to i32*
  %301 = ptrtoint i32* %297 to i64
  %302 = ptrtoint i32* %300 to i64
  %303 = sub i64 %301, %302
  %304 = sdiv exact i64 %303, 4
  %305 = trunc i64 %304 to i32
  %306 = call i8* @host_to_be16(i32 %305)
  %307 = load %struct.eap_tlv_hdr*, %struct.eap_tlv_hdr** %15, align 8
  %308 = getelementptr inbounds %struct.eap_tlv_hdr, %struct.eap_tlv_hdr* %307, i32 0, i32 0
  store i8* %306, i8** %308, align 8
  %309 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  store %struct.wpabuf* %309, %struct.wpabuf** %3, align 8
  store i32 1, i32* %19, align 4
  br label %310

310:                                              ; preds = %268, %180, %147, %134, %49, %30
  %311 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %311)
  %312 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  ret %struct.wpabuf* %312
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @random_get_bytes(i32*, i32) #2

declare dso_local i64 @os_get_time(%struct.os_time*) #2

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #2

declare dso_local i32* @os_malloc(i64) #2

declare dso_local i64 @os_strlen(i32*) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #2

declare dso_local i32 @WPA_PUT_BE32(i32*, i64) #2

declare dso_local i32 @os_free(i32*) #2

declare dso_local i64 @aes_wrap(i32, i32, i64, i32*, i32*) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #2

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #2

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local i8* @wpabuf_put(%struct.wpabuf*, i32) #2

declare dso_local i32 @WPA_PUT_BE16(i32*, i32) #2

declare dso_local i8* @host_to_be16(i32) #2

declare dso_local i32 @eap_fast_put_tlv(%struct.wpabuf*, i32, i32*, i64) #2

declare dso_local i32 @eap_fast_put_tlv_hdr(%struct.wpabuf*, i32, i32) #2

declare dso_local i32 @wpabuf_put_be32(%struct.wpabuf*, i64) #2

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
