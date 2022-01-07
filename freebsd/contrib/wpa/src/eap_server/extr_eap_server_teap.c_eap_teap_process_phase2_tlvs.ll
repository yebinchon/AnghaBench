; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_teap.c_eap_teap_process_phase2_tlvs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_teap.c_eap_teap_process_phase2_tlvs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i64, i32 }
%struct.eap_teap_data = type { i64, i64, i64, i64 }
%struct.wpabuf = type { i32 }
%struct.eap_teap_tlv_parse = type { i64, i32, i64, i64, i32, i64, i32, i64, i64, i32, i32, i64 }

@CRYPTO_BINDING = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"EAP-TEAP: Failed to parse received Phase 2 TLVs\00", align 1
@TEAP_STATUS_FAILURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"EAP-TEAP: Result TLV indicated failure\00", align 1
@FAILURE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"EAP-TEAP: Peer NAK'ed Vendor-Id %u NAK-Type %u\00", align 1
@FAILURE_SEND_RESULT = common dso_local global i64 0, align 8
@REQUEST_PAC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"EAP-TEAP: No PAC Acknowledgement received\00", align 1
@PAC_TYPE_PAC_ACKNOWLEDGEMENT = common dso_local global i64 0, align 8
@TEAP_STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [50 x i8] c"EAP-TEAP: PAC TLV did not contain acknowledgement\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"EAP-TEAP: PAC-Acknowledgement received - PAC provisioning succeeded\00", align 1
@SUCCESS = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [41 x i8] c"EAP-TEAP: No Crypto-Binding TLV received\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"EAP-TEAP: Crypto-Binding TLV without Success Result\00", align 1
@.str.8 = private unnamed_addr constant [65 x i8] c"EAP-TEAP: Crypto-Binding TLV without intermediate Success Result\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"EAP-TEAP: Valid Crypto-Binding TLV received\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"EAP-TEAP: Authentication completed successfully\00", align 1
@ANON_PROV = common dso_local global i64 0, align 8
@BOTH_PROV = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [81 x i8] c"EAP-TEAP: Client is trying to use unauthenticated provisioning which is disabled\00", align 1
@AUTH_PROV = common dso_local global i64 0, align 8
@TEAP_REQUEST_ACTION_PROCESS_TLV = common dso_local global i64 0, align 8
@PAC_TYPE_TUNNEL_PAC = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [79 x i8] c"EAP-TEAP: Client is trying to use authenticated provisioning which is disabled\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"EAP-TEAP: Requested a new Tunnel PAC\00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c"EAP-TEAP: Server triggered re-keying of Tunnel PAC\00", align 1
@.str.15 = private unnamed_addr constant [75 x i8] c"EAP-TEAP: Unexpected Basic-Password-Auth-Resp when trying to use inner EAP\00", align 1
@.str.16 = private unnamed_addr constant [76 x i8] c"EAP-TEAP: Unexpected EAP Payload TLV when trying to use Basic-Password-Auth\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_teap_data*, %struct.wpabuf*)* @eap_teap_process_phase2_tlvs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_teap_process_phase2_tlvs(%struct.eap_sm* %0, %struct.eap_teap_data* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca %struct.eap_teap_data*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_teap_tlv_parse, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store %struct.eap_teap_data* %1, %struct.eap_teap_data** %5, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %6, align 8
  %12 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %13 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CRYPTO_BINDING, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %8, align 4
  %18 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %19 = call i64 @eap_teap_parse_tlvs(%struct.wpabuf* %18, %struct.eap_teap_tlv_parse* %7)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @MSG_DEBUG, align 4
  %23 = call i32 (i32, i8*, ...) @wpa_printf(i32 %22, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %320

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %7, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TEAP_STATUS_FAILURE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load i32, i32* @MSG_DEBUG, align 4
  %31 = call i32 (i32, i8*, ...) @wpa_printf(i32 %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %33 = load i64, i64* @FAILURE, align 8
  %34 = call i32 @eap_teap_state(%struct.eap_teap_data* %32, i64 %33)
  br label %320

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %7, i32 0, i32 11
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = load i32, i32* @MSG_DEBUG, align 4
  %41 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %7, i32 0, i32 11
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @WPA_GET_BE32(i64 %42)
  %44 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %7, i32 0, i32 11
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 4
  %47 = call i64 @WPA_GET_BE16(i64 %46)
  %48 = call i32 (i32, i8*, ...) @wpa_printf(i32 %40, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %43, i64 %47)
  %49 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %50 = load i64, i64* @FAILURE_SEND_RESULT, align 8
  %51 = call i32 @eap_teap_state(%struct.eap_teap_data* %49, i64 %50)
  br label %320

52:                                               ; preds = %35
  %53 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %54 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @REQUEST_PAC, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %106

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %7, i32 0, i32 8
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %7, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %64, 6
  br i1 %65, label %66, label %72

66:                                               ; preds = %62, %58
  %67 = load i32, i32* @MSG_DEBUG, align 4
  %68 = call i32 (i32, i8*, ...) @wpa_printf(i32 %67, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %69 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %70 = load i64, i64* @FAILURE, align 8
  %71 = call i32 @eap_teap_state(%struct.eap_teap_data* %69, i64 %70)
  br label %320

72:                                               ; preds = %62
  %73 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %7, i32 0, i32 8
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @WPA_GET_BE16(i64 %74)
  store i64 %75, i64* %9, align 8
  %76 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %7, i32 0, i32 8
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 2
  %79 = call i64 @WPA_GET_BE16(i64 %78)
  store i64 %79, i64* %10, align 8
  %80 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %7, i32 0, i32 8
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, 4
  %83 = call i64 @WPA_GET_BE16(i64 %82)
  store i64 %83, i64* %11, align 8
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* @PAC_TYPE_PAC_ACKNOWLEDGEMENT, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %94, label %87

87:                                               ; preds = %72
  %88 = load i64, i64* %10, align 8
  %89 = icmp ne i64 %88, 2
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = load i64, i64* %11, align 8
  %92 = load i64, i64* @TEAP_STATUS_SUCCESS, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %90, %87, %72
  %95 = load i32, i32* @MSG_DEBUG, align 4
  %96 = call i32 (i32, i8*, ...) @wpa_printf(i32 %95, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  %97 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %98 = load i64, i64* @FAILURE, align 8
  %99 = call i32 @eap_teap_state(%struct.eap_teap_data* %97, i64 %98)
  br label %320

100:                                              ; preds = %90
  %101 = load i32, i32* @MSG_DEBUG, align 4
  %102 = call i32 (i32, i8*, ...) @wpa_printf(i32 %101, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0))
  %103 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %104 = load i64, i64* @SUCCESS, align 8
  %105 = call i32 @eap_teap_state(%struct.eap_teap_data* %103, i64 %104)
  br label %320

106:                                              ; preds = %52
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %274

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %7, i32 0, i32 10
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %109
  %114 = load i32, i32* @MSG_DEBUG, align 4
  %115 = call i32 (i32, i8*, ...) @wpa_printf(i32 %114, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %116 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %117 = load i64, i64* @FAILURE, align 8
  %118 = call i32 @eap_teap_state(%struct.eap_teap_data* %116, i64 %117)
  br label %320

119:                                              ; preds = %109
  %120 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %121 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %7, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @TEAP_STATUS_SUCCESS, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %124
  %130 = load i32, i32* @MSG_DEBUG, align 4
  %131 = call i32 (i32, i8*, ...) @wpa_printf(i32 %130, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0))
  %132 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %133 = load i64, i64* @FAILURE, align 8
  %134 = call i32 @eap_teap_state(%struct.eap_teap_data* %132, i64 %133)
  br label %320

135:                                              ; preds = %124, %119
  %136 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %137 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %151, label %140

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %7, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @TEAP_STATUS_SUCCESS, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %151

145:                                              ; preds = %140
  %146 = load i32, i32* @MSG_DEBUG, align 4
  %147 = call i32 (i32, i8*, ...) @wpa_printf(i32 %146, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.8, i64 0, i64 0))
  %148 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %149 = load i64, i64* @FAILURE, align 8
  %150 = call i32 @eap_teap_state(%struct.eap_teap_data* %148, i64 %149)
  br label %320

151:                                              ; preds = %140, %135
  %152 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %153 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %7, i32 0, i32 10
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %7, i32 0, i32 9
  %156 = load i32, i32* %155, align 8
  %157 = call i64 @eap_teap_validate_crypto_binding(%struct.eap_teap_data* %152, i32 %154, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %151
  %160 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %161 = load i64, i64* @FAILURE, align 8
  %162 = call i32 @eap_teap_state(%struct.eap_teap_data* %160, i64 %161)
  br label %320

163:                                              ; preds = %151
  %164 = load i32, i32* @MSG_DEBUG, align 4
  %165 = call i32 (i32, i8*, ...) @wpa_printf(i32 %164, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0))
  %166 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %167 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %163
  %171 = load i32, i32* @MSG_DEBUG, align 4
  %172 = call i32 (i32, i8*, ...) @wpa_printf(i32 %171, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0))
  br label %173

173:                                              ; preds = %170, %163
  %174 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %175 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %196

178:                                              ; preds = %173
  %179 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %180 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @ANON_PROV, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %196

184:                                              ; preds = %178
  %185 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %186 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @BOTH_PROV, align 8
  %189 = icmp ne i64 %187, %188
  br i1 %189, label %190, label %196

190:                                              ; preds = %184
  %191 = load i32, i32* @MSG_DEBUG, align 4
  %192 = call i32 (i32, i8*, ...) @wpa_printf(i32 %191, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.11, i64 0, i64 0))
  %193 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %194 = load i64, i64* @FAILURE, align 8
  %195 = call i32 @eap_teap_state(%struct.eap_teap_data* %193, i64 %194)
  br label %320

196:                                              ; preds = %184, %178, %173
  %197 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %198 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @AUTH_PROV, align 8
  %201 = icmp ne i64 %199, %200
  br i1 %201, label %202, label %227

202:                                              ; preds = %196
  %203 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %204 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @BOTH_PROV, align 8
  %207 = icmp ne i64 %205, %206
  br i1 %207, label %208, label %227

208:                                              ; preds = %202
  %209 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %7, i32 0, i32 3
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @TEAP_REQUEST_ACTION_PROCESS_TLV, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %227

213:                                              ; preds = %208
  %214 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %7, i32 0, i32 8
  %215 = load i64, i64* %214, align 8
  %216 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %7, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @PAC_TYPE_TUNNEL_PAC, align 4
  %219 = call i64 @eap_teap_pac_type(i64 %215, i32 %217, i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %213
  %222 = load i32, i32* @MSG_DEBUG, align 4
  %223 = call i32 (i32, i8*, ...) @wpa_printf(i32 %222, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.12, i64 0, i64 0))
  %224 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %225 = load i64, i64* @FAILURE, align 8
  %226 = call i32 @eap_teap_state(%struct.eap_teap_data* %224, i64 %225)
  br label %320

227:                                              ; preds = %213, %208, %202, %196
  %228 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %229 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %228, i32 0, i32 3
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %245, label %232

232:                                              ; preds = %227
  %233 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %7, i32 0, i32 3
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @TEAP_REQUEST_ACTION_PROCESS_TLV, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %251

237:                                              ; preds = %232
  %238 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %7, i32 0, i32 8
  %239 = load i64, i64* %238, align 8
  %240 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %7, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @PAC_TYPE_TUNNEL_PAC, align 4
  %243 = call i64 @eap_teap_pac_type(i64 %239, i32 %241, i32 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %251

245:                                              ; preds = %237, %227
  %246 = load i32, i32* @MSG_DEBUG, align 4
  %247 = call i32 (i32, i8*, ...) @wpa_printf(i32 %246, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0))
  %248 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %249 = load i64, i64* @REQUEST_PAC, align 8
  %250 = call i32 @eap_teap_state(%struct.eap_teap_data* %248, i64 %249)
  br label %273

251:                                              ; preds = %237, %232
  %252 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %253 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %252, i32 0, i32 2
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %262

256:                                              ; preds = %251
  %257 = load i32, i32* @MSG_DEBUG, align 4
  %258 = call i32 (i32, i8*, ...) @wpa_printf(i32 %257, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.14, i64 0, i64 0))
  %259 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %260 = load i64, i64* @REQUEST_PAC, align 8
  %261 = call i32 @eap_teap_state(%struct.eap_teap_data* %259, i64 %260)
  br label %272

262:                                              ; preds = %251
  %263 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %264 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %271

267:                                              ; preds = %262
  %268 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %269 = load i64, i64* @SUCCESS, align 8
  %270 = call i32 @eap_teap_state(%struct.eap_teap_data* %268, i64 %269)
  br label %271

271:                                              ; preds = %267, %262
  br label %272

272:                                              ; preds = %271, %256
  br label %273

273:                                              ; preds = %272, %245
  br label %274

274:                                              ; preds = %273, %106
  %275 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %7, i32 0, i32 7
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %297

278:                                              ; preds = %274
  %279 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %280 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 8
  %282 = icmp ne i32 %281, 1
  br i1 %282, label %283, label %289

283:                                              ; preds = %278
  %284 = load i32, i32* @MSG_DEBUG, align 4
  %285 = call i32 (i32, i8*, ...) @wpa_printf(i32 %284, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.15, i64 0, i64 0))
  %286 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %287 = load i64, i64* @FAILURE, align 8
  %288 = call i32 @eap_teap_state(%struct.eap_teap_data* %286, i64 %287)
  br label %320

289:                                              ; preds = %278
  %290 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %291 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %292 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %7, i32 0, i32 7
  %293 = load i64, i64* %292, align 8
  %294 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %7, i32 0, i32 6
  %295 = load i32, i32* %294, align 8
  %296 = call i32 @eap_teap_process_basic_auth_resp(%struct.eap_sm* %290, %struct.eap_teap_data* %291, i64 %293, i32 %295)
  br label %297

297:                                              ; preds = %289, %274
  %298 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %7, i32 0, i32 5
  %299 = load i64, i64* %298, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %320

301:                                              ; preds = %297
  %302 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %303 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 8
  %305 = icmp eq i32 %304, 1
  br i1 %305, label %306, label %312

306:                                              ; preds = %301
  %307 = load i32, i32* @MSG_DEBUG, align 4
  %308 = call i32 (i32, i8*, ...) @wpa_printf(i32 %307, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.16, i64 0, i64 0))
  %309 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %310 = load i64, i64* @FAILURE, align 8
  %311 = call i32 @eap_teap_state(%struct.eap_teap_data* %309, i64 %310)
  br label %320

312:                                              ; preds = %301
  %313 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %314 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %315 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %7, i32 0, i32 5
  %316 = load i64, i64* %315, align 8
  %317 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %7, i32 0, i32 4
  %318 = load i32, i32* %317, align 8
  %319 = call i32 @eap_teap_process_phase2_eap(%struct.eap_sm* %313, %struct.eap_teap_data* %314, i64 %316, i32 %318)
  br label %320

320:                                              ; preds = %21, %29, %39, %66, %94, %100, %113, %129, %145, %159, %190, %221, %283, %306, %312, %297
  ret void
}

declare dso_local i64 @eap_teap_parse_tlvs(%struct.wpabuf*, %struct.eap_teap_tlv_parse*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @eap_teap_state(%struct.eap_teap_data*, i64) #1

declare dso_local i32 @WPA_GET_BE32(i64) #1

declare dso_local i64 @WPA_GET_BE16(i64) #1

declare dso_local i64 @eap_teap_validate_crypto_binding(%struct.eap_teap_data*, i32, i32) #1

declare dso_local i64 @eap_teap_pac_type(i64, i32, i32) #1

declare dso_local i32 @eap_teap_process_basic_auth_resp(%struct.eap_sm*, %struct.eap_teap_data*, i64, i32) #1

declare dso_local i32 @eap_teap_process_phase2_eap(%struct.eap_sm*, %struct.eap_teap_data*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
