; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_teap.c_eap_teap_build_pac.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_teap.c_eap_teap_build_pac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32, i32* }
%struct.eap_teap_data = type { i32, i32*, i32*, i64, i32 }
%struct.teap_tlv_hdr = type { i8*, i8* }
%struct.pac_attr_hdr = type { i8*, i8* }
%struct.teap_tlv_result = type { i32, i32, i32 }
%struct.os_time = type { i64 }

@EAP_TEAP_PAC_KEY_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"EAP-TEAP: Build a new PAC\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"EAP-TEAP: Generated PAC-Key\00", align 1
@PAC_OPAQUE_TYPE_KEY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"EAP-TEAP: PAC-Key lifetime: %u seconds\00", align 1
@PAC_OPAQUE_TYPE_LIFETIME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"EAP-TEAP: PAC-Opaque Identity\00", align 1
@PAC_OPAQUE_TYPE_IDENTITY = common dso_local global i32 0, align 4
@PAC_OPAQUE_TYPE_PAD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"EAP-TEAP: PAC-Opaque\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"EAP-TEAP: Add Result TLV (status=SUCCESS)\00", align 1
@TEAP_TLV_MANDATORY = common dso_local global i32 0, align 4
@TEAP_TLV_RESULT = common dso_local global i32 0, align 4
@TEAP_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"EAP-TEAP: Add PAC TLV\00", align 1
@TEAP_TLV_PAC = common dso_local global i32 0, align 4
@PAC_TYPE_PAC_KEY = common dso_local global i32 0, align 4
@PAC_TYPE_PAC_OPAQUE = common dso_local global i32 0, align 4
@PAC_TYPE_PAC_INFO = common dso_local global i32 0, align 4
@PAC_TYPE_CRED_LIFETIME = common dso_local global i32 0, align 4
@PAC_TYPE_A_ID = common dso_local global i32 0, align 4
@PAC_TYPE_I_ID = common dso_local global i32 0, align 4
@PAC_TYPE_A_ID_INFO = common dso_local global i32 0, align 4
@PAC_TYPE_PAC_TYPE = common dso_local global i32 0, align 4
@PAC_TYPE_TUNNEL_PAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_teap_data*)* @eap_teap_build_pac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_teap_build_pac(%struct.eap_sm* %0, %struct.eap_teap_data* %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca %struct.eap_teap_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.wpabuf*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.teap_tlv_hdr*, align 8
  %16 = alloca %struct.pac_attr_hdr*, align 8
  %17 = alloca %struct.teap_tlv_result*, align 8
  %18 = alloca %struct.os_time, align 8
  %19 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store %struct.eap_teap_data* %1, %struct.eap_teap_data** %5, align 8
  %20 = load i32, i32* @EAP_TEAP_PAC_KEY_LEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %6, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %7, align 8
  %24 = load i32, i32* @MSG_DEBUG, align 4
  %25 = call i32 (i32, i8*, ...) @wpa_printf(i32 %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EAP_TEAP_PAC_KEY_LEN, align 4
  %27 = call i64 @random_get_bytes(i32* %23, i32 %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = call i64 @os_get_time(%struct.os_time* %18)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %2
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  store i32 1, i32* %19, align 4
  br label %325

33:                                               ; preds = %29
  %34 = load i32, i32* @MSG_DEBUG, align 4
  %35 = load i32, i32* @EAP_TEAP_PAC_KEY_LEN, align 4
  %36 = call i32 @wpa_hexdump_key(i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32* %23, i32 %35)
  %37 = load i32, i32* @EAP_TEAP_PAC_KEY_LEN, align 4
  %38 = add nsw i32 2, %37
  %39 = add nsw i32 %38, 6
  %40 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %41 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 2, %42
  %44 = add nsw i32 %39, %43
  %45 = add nsw i32 %44, 8
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %14, align 8
  %47 = load i64, i64* %14, align 8
  %48 = call i32* @os_malloc(i64 %47)
  store i32* %48, i32** %8, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %33
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  store i32 1, i32* %19, align 4
  br label %325

52:                                               ; preds = %33
  %53 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %54 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = call i64 @os_strlen(i32* %55)
  store i64 %56, i64* %13, align 8
  %57 = load i32*, i32** %8, align 8
  store i32* %57, i32** %11, align 8
  %58 = load i32, i32* @PAC_OPAQUE_TYPE_KEY, align 4
  %59 = load i32*, i32** %11, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %11, align 8
  store i32 %58, i32* %59, align 4
  %61 = load i32, i32* @EAP_TEAP_PAC_KEY_LEN, align 4
  %62 = load i32*, i32** %11, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %11, align 8
  store i32 %61, i32* %62, align 4
  %64 = load i32*, i32** %11, align 8
  %65 = load i32, i32* @EAP_TEAP_PAC_KEY_LEN, align 4
  %66 = call i32 @os_memcpy(i32* %64, i32* %23, i32 %65)
  %67 = load i32, i32* @EAP_TEAP_PAC_KEY_LEN, align 4
  %68 = load i32*, i32** %11, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32* %70, i32** %11, align 8
  %71 = load i32, i32* @MSG_DEBUG, align 4
  %72 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %73 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = call i32 (i32, i8*, ...) @wpa_printf(i32 %71, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %74)
  %76 = load i32, i32* @PAC_OPAQUE_TYPE_LIFETIME, align 4
  %77 = load i32*, i32** %11, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %11, align 8
  store i32 %76, i32* %77, align 4
  %79 = load i32*, i32** %11, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %11, align 8
  store i32 4, i32* %79, align 4
  %81 = load i32*, i32** %11, align 8
  %82 = getelementptr inbounds %struct.os_time, %struct.os_time* %18, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %85 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %83, %86
  %88 = call i32 @WPA_PUT_BE32(i32* %81, i64 %87)
  %89 = load i32*, i32** %11, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 4
  store i32* %90, i32** %11, align 8
  %91 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %92 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %126

95:                                               ; preds = %52
  %96 = load i32, i32* @MSG_DEBUG, align 4
  %97 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %98 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %101 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @wpa_hexdump_ascii(i32 %96, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32* %99, i32 %102)
  %104 = load i32, i32* @PAC_OPAQUE_TYPE_IDENTITY, align 4
  %105 = load i32*, i32** %11, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %11, align 8
  store i32 %104, i32* %105, align 4
  %107 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %108 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32*, i32** %11, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %111, i32** %11, align 8
  store i32 %109, i32* %110, align 4
  %112 = load i32*, i32** %11, align 8
  %113 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %114 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %117 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @os_memcpy(i32* %112, i32* %115, i32 %118)
  %120 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %121 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32*, i32** %11, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  store i32* %125, i32** %11, align 8
  br label %126

126:                                              ; preds = %95, %52
  %127 = load i32*, i32** %11, align 8
  %128 = load i32*, i32** %8, align 8
  %129 = ptrtoint i32* %127 to i64
  %130 = ptrtoint i32* %128 to i64
  %131 = sub i64 %129, %130
  %132 = sdiv exact i64 %131, 4
  store i64 %132, i64* %14, align 8
  br label %133

133:                                              ; preds = %137, %126
  %134 = load i64, i64* %14, align 8
  %135 = urem i64 %134, 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %133
  %138 = load i32, i32* @PAC_OPAQUE_TYPE_PAD, align 4
  %139 = load i32*, i32** %11, align 8
  %140 = getelementptr inbounds i32, i32* %139, i32 1
  store i32* %140, i32** %11, align 8
  store i32 %138, i32* %139, align 4
  %141 = load i64, i64* %14, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %14, align 8
  br label %133

143:                                              ; preds = %133
  %144 = load i64, i64* %14, align 8
  %145 = add i64 %144, 8
  %146 = call i32* @os_malloc(i64 %145)
  store i32* %146, i32** %9, align 8
  %147 = load i32*, i32** %9, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %152, label %149

149:                                              ; preds = %143
  %150 = load i32*, i32** %8, align 8
  %151 = call i32 @os_free(i32* %150)
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  store i32 1, i32* %19, align 4
  br label %325

152:                                              ; preds = %143
  %153 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %154 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = load i64, i64* %14, align 8
  %157 = udiv i64 %156, 8
  %158 = load i32*, i32** %8, align 8
  %159 = load i32*, i32** %9, align 8
  %160 = call i64 @aes_wrap(i32 %155, i32 4, i64 %157, i32* %158, i32* %159)
  %161 = icmp slt i64 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %152
  %163 = load i32*, i32** %8, align 8
  %164 = call i32 @os_free(i32* %163)
  %165 = load i32*, i32** %9, align 8
  %166 = call i32 @os_free(i32* %165)
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  store i32 1, i32* %19, align 4
  br label %325

167:                                              ; preds = %152
  %168 = load i32*, i32** %8, align 8
  %169 = call i32 @os_free(i32* %168)
  %170 = load i64, i64* %14, align 8
  %171 = add i64 %170, 8
  store i64 %171, i64* %14, align 8
  %172 = load i32, i32* @MSG_DEBUG, align 4
  %173 = load i32*, i32** %9, align 8
  %174 = load i64, i64* %14, align 8
  %175 = call i32 @wpa_hexdump(i32 %172, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32* %173, i64 %174)
  %176 = load i32, i32* @EAP_TEAP_PAC_KEY_LEN, align 4
  %177 = sext i32 %176 to i64
  %178 = add i64 32, %177
  %179 = add i64 %178, 16
  %180 = load i64, i64* %14, align 8
  %181 = add i64 %179, %180
  %182 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %183 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = sext i32 %184 to i64
  %186 = add i64 %181, %185
  %187 = load i64, i64* %13, align 8
  %188 = add i64 %186, %187
  %189 = add i64 %188, 100
  %190 = add i64 %189, 12
  store i64 %190, i64* %12, align 8
  %191 = load i64, i64* %12, align 8
  %192 = call %struct.wpabuf* @wpabuf_alloc(i64 %191)
  store %struct.wpabuf* %192, %struct.wpabuf** %10, align 8
  %193 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %194 = icmp ne %struct.wpabuf* %193, null
  br i1 %194, label %198, label %195

195:                                              ; preds = %167
  %196 = load i32*, i32** %9, align 8
  %197 = call i32 @os_free(i32* %196)
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  store i32 1, i32* %19, align 4
  br label %325

198:                                              ; preds = %167
  %199 = load i32, i32* @MSG_DEBUG, align 4
  %200 = call i32 (i32, i8*, ...) @wpa_printf(i32 %199, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %201 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %202 = call i8* @wpabuf_put(%struct.wpabuf* %201, i32 12)
  %203 = bitcast i8* %202 to %struct.teap_tlv_result*
  store %struct.teap_tlv_result* %203, %struct.teap_tlv_result** %17, align 8
  %204 = load %struct.teap_tlv_result*, %struct.teap_tlv_result** %17, align 8
  %205 = getelementptr inbounds %struct.teap_tlv_result, %struct.teap_tlv_result* %204, i32 0, i32 2
  %206 = load i32, i32* @TEAP_TLV_MANDATORY, align 4
  %207 = load i32, i32* @TEAP_TLV_RESULT, align 4
  %208 = or i32 %206, %207
  %209 = call i32 @WPA_PUT_BE16(i32* %205, i32 %208)
  %210 = load %struct.teap_tlv_result*, %struct.teap_tlv_result** %17, align 8
  %211 = getelementptr inbounds %struct.teap_tlv_result, %struct.teap_tlv_result* %210, i32 0, i32 1
  %212 = call i32 @WPA_PUT_BE16(i32* %211, i32 2)
  %213 = load %struct.teap_tlv_result*, %struct.teap_tlv_result** %17, align 8
  %214 = getelementptr inbounds %struct.teap_tlv_result, %struct.teap_tlv_result* %213, i32 0, i32 0
  %215 = load i32, i32* @TEAP_STATUS_SUCCESS, align 4
  %216 = call i32 @WPA_PUT_BE16(i32* %214, i32 %215)
  %217 = load i32, i32* @MSG_DEBUG, align 4
  %218 = call i32 (i32, i8*, ...) @wpa_printf(i32 %217, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %219 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %220 = call i8* @wpabuf_put(%struct.wpabuf* %219, i32 16)
  %221 = bitcast i8* %220 to %struct.teap_tlv_hdr*
  store %struct.teap_tlv_hdr* %221, %struct.teap_tlv_hdr** %15, align 8
  %222 = load i32, i32* @TEAP_TLV_MANDATORY, align 4
  %223 = load i32, i32* @TEAP_TLV_PAC, align 4
  %224 = or i32 %222, %223
  %225 = call i8* @host_to_be16(i32 %224)
  %226 = load %struct.teap_tlv_hdr*, %struct.teap_tlv_hdr** %15, align 8
  %227 = getelementptr inbounds %struct.teap_tlv_hdr, %struct.teap_tlv_hdr* %226, i32 0, i32 1
  store i8* %225, i8** %227, align 8
  %228 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %229 = load i32, i32* @PAC_TYPE_PAC_KEY, align 4
  %230 = load i32, i32* @EAP_TEAP_PAC_KEY_LEN, align 4
  %231 = sext i32 %230 to i64
  %232 = call i32 @eap_teap_put_tlv(%struct.wpabuf* %228, i32 %229, i32* %23, i64 %231)
  %233 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %234 = load i32, i32* @PAC_TYPE_PAC_OPAQUE, align 4
  %235 = load i32*, i32** %9, align 8
  %236 = load i64, i64* %14, align 8
  %237 = call i32 @eap_teap_put_tlv(%struct.wpabuf* %233, i32 %234, i32* %235, i64 %236)
  %238 = load i32*, i32** %9, align 8
  %239 = call i32 @os_free(i32* %238)
  %240 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %241 = call i8* @wpabuf_put(%struct.wpabuf* %240, i32 16)
  %242 = bitcast i8* %241 to %struct.pac_attr_hdr*
  store %struct.pac_attr_hdr* %242, %struct.pac_attr_hdr** %16, align 8
  %243 = load i32, i32* @PAC_TYPE_PAC_INFO, align 4
  %244 = call i8* @host_to_be16(i32 %243)
  %245 = load %struct.pac_attr_hdr*, %struct.pac_attr_hdr** %16, align 8
  %246 = getelementptr inbounds %struct.pac_attr_hdr, %struct.pac_attr_hdr* %245, i32 0, i32 1
  store i8* %244, i8** %246, align 8
  %247 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %248 = load i32, i32* @PAC_TYPE_CRED_LIFETIME, align 4
  %249 = call i32 @eap_teap_put_tlv_hdr(%struct.wpabuf* %247, i32 %248, i32 4)
  %250 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %251 = getelementptr inbounds %struct.os_time, %struct.os_time* %18, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %254 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %253, i32 0, i32 3
  %255 = load i64, i64* %254, align 8
  %256 = add nsw i64 %252, %255
  %257 = call i32 @wpabuf_put_be32(%struct.wpabuf* %250, i64 %256)
  %258 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %259 = load i32, i32* @PAC_TYPE_A_ID, align 4
  %260 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %261 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %260, i32 0, i32 2
  %262 = load i32*, i32** %261, align 8
  %263 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %264 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = sext i32 %265 to i64
  %267 = call i32 @eap_teap_put_tlv(%struct.wpabuf* %258, i32 %259, i32* %262, i64 %266)
  %268 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %269 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %268, i32 0, i32 1
  %270 = load i32*, i32** %269, align 8
  %271 = icmp ne i32* %270, null
  br i1 %271, label %272, label %283

272:                                              ; preds = %198
  %273 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %274 = load i32, i32* @PAC_TYPE_I_ID, align 4
  %275 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %276 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %275, i32 0, i32 1
  %277 = load i32*, i32** %276, align 8
  %278 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %279 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = sext i32 %280 to i64
  %282 = call i32 @eap_teap_put_tlv(%struct.wpabuf* %273, i32 %274, i32* %277, i64 %281)
  br label %283

283:                                              ; preds = %272, %198
  %284 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %285 = load i32, i32* @PAC_TYPE_A_ID_INFO, align 4
  %286 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %287 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %286, i32 0, i32 1
  %288 = load i32*, i32** %287, align 8
  %289 = load i64, i64* %13, align 8
  %290 = call i32 @eap_teap_put_tlv(%struct.wpabuf* %284, i32 %285, i32* %288, i64 %289)
  %291 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %292 = load i32, i32* @PAC_TYPE_PAC_TYPE, align 4
  %293 = call i32 @eap_teap_put_tlv_hdr(%struct.wpabuf* %291, i32 %292, i32 2)
  %294 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %295 = load i32, i32* @PAC_TYPE_TUNNEL_PAC, align 4
  %296 = call i32 @wpabuf_put_be16(%struct.wpabuf* %294, i32 %295)
  %297 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %298 = call i8* @wpabuf_put(%struct.wpabuf* %297, i32 0)
  %299 = bitcast i8* %298 to i32*
  store i32* %299, i32** %11, align 8
  %300 = load i32*, i32** %11, align 8
  %301 = load %struct.pac_attr_hdr*, %struct.pac_attr_hdr** %16, align 8
  %302 = getelementptr inbounds %struct.pac_attr_hdr, %struct.pac_attr_hdr* %301, i64 1
  %303 = bitcast %struct.pac_attr_hdr* %302 to i32*
  %304 = ptrtoint i32* %300 to i64
  %305 = ptrtoint i32* %303 to i64
  %306 = sub i64 %304, %305
  %307 = sdiv exact i64 %306, 4
  %308 = trunc i64 %307 to i32
  %309 = call i8* @host_to_be16(i32 %308)
  %310 = load %struct.pac_attr_hdr*, %struct.pac_attr_hdr** %16, align 8
  %311 = getelementptr inbounds %struct.pac_attr_hdr, %struct.pac_attr_hdr* %310, i32 0, i32 0
  store i8* %309, i8** %311, align 8
  %312 = load i32*, i32** %11, align 8
  %313 = load %struct.teap_tlv_hdr*, %struct.teap_tlv_hdr** %15, align 8
  %314 = getelementptr inbounds %struct.teap_tlv_hdr, %struct.teap_tlv_hdr* %313, i64 1
  %315 = bitcast %struct.teap_tlv_hdr* %314 to i32*
  %316 = ptrtoint i32* %312 to i64
  %317 = ptrtoint i32* %315 to i64
  %318 = sub i64 %316, %317
  %319 = sdiv exact i64 %318, 4
  %320 = trunc i64 %319 to i32
  %321 = call i8* @host_to_be16(i32 %320)
  %322 = load %struct.teap_tlv_hdr*, %struct.teap_tlv_hdr** %15, align 8
  %323 = getelementptr inbounds %struct.teap_tlv_hdr, %struct.teap_tlv_hdr* %322, i32 0, i32 0
  store i8* %321, i8** %323, align 8
  %324 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  store %struct.wpabuf* %324, %struct.wpabuf** %3, align 8
  store i32 1, i32* %19, align 4
  br label %325

325:                                              ; preds = %283, %195, %162, %149, %51, %32
  %326 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %326)
  %327 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  ret %struct.wpabuf* %327
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i64 @random_get_bytes(i32*, i32) #2

declare dso_local i64 @os_get_time(%struct.os_time*) #2

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #2

declare dso_local i32* @os_malloc(i64) #2

declare dso_local i64 @os_strlen(i32*) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #2

declare dso_local i32 @WPA_PUT_BE32(i32*, i64) #2

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i32) #2

declare dso_local i32 @os_free(i32*) #2

declare dso_local i64 @aes_wrap(i32, i32, i64, i32*, i32*) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #2

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #2

declare dso_local i8* @wpabuf_put(%struct.wpabuf*, i32) #2

declare dso_local i32 @WPA_PUT_BE16(i32*, i32) #2

declare dso_local i8* @host_to_be16(i32) #2

declare dso_local i32 @eap_teap_put_tlv(%struct.wpabuf*, i32, i32*, i64) #2

declare dso_local i32 @eap_teap_put_tlv_hdr(%struct.wpabuf*, i32, i32) #2

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
