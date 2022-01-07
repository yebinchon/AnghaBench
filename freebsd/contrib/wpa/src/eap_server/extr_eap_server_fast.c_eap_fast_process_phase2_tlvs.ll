; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_fast.c_eap_fast_process_phase2_tlvs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_fast.c_eap_fast_process_phase2_tlvs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i64 }
%struct.eap_fast_data = type { i64, i32, i64, i64 }
%struct.wpabuf = type { i32 }
%struct.eap_fast_tlv_parse = type { i64, i32, i64, i64, i32, i64, i32*, i32, i32* }

@CRYPTO_BINDING = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"EAP-FAST: Failed to parse received Phase 2 TLVs\00", align 1
@EAP_TLV_RESULT_FAILURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"EAP-FAST: Result TLV indicated failure\00", align 1
@FAILURE = common dso_local global i64 0, align 8
@REQUEST_PAC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"EAP-FAST: No PAC Acknowledgement received\00", align 1
@PAC_TYPE_PAC_ACKNOWLEDGEMENT = common dso_local global i64 0, align 8
@EAP_TLV_RESULT_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [50 x i8] c"EAP-FAST: PAC TLV did not contain acknowledgement\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"EAP-FAST: PAC-Acknowledgement received - PAC provisioning succeeded\00", align 1
@SUCCESS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [41 x i8] c"EAP-FAST: No Crypto-Binding TLV received\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"EAP-FAST: Crypto-Binding TLV without Success Result\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"EAP-FAST: Crypto-Binding TLV without intermediate Success Result\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"EAP-FAST: Valid Crypto-Binding TLV received\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"EAP-FAST: Authentication completed successfully\00", align 1
@ANON_PROV = common dso_local global i64 0, align 8
@BOTH_PROV = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [81 x i8] c"EAP-FAST: Client is trying to use unauthenticated provisioning which is disabled\00", align 1
@AUTH_PROV = common dso_local global i64 0, align 8
@EAP_TLV_ACTION_PROCESS_TLV = common dso_local global i64 0, align 8
@PAC_TYPE_TUNNEL_PAC = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [79 x i8] c"EAP-FAST: Client is trying to use authenticated provisioning which is disabled\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"EAP-FAST: Requested a new Tunnel PAC\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"EAP-FAST: Server triggered re-keying of Tunnel PAC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_fast_data*, %struct.wpabuf*)* @eap_fast_process_phase2_tlvs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_fast_process_phase2_tlvs(%struct.eap_sm* %0, %struct.eap_fast_data* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca %struct.eap_fast_data*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_fast_tlv_parse, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store %struct.eap_fast_data* %1, %struct.eap_fast_data** %5, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %6, align 8
  %12 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %13 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CRYPTO_BINDING, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %8, align 4
  %18 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %19 = call i64 @eap_fast_parse_tlvs(%struct.wpabuf* %18, %struct.eap_fast_tlv_parse* %7)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @MSG_DEBUG, align 4
  %23 = call i32 @wpa_printf(i32 %22, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %283

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %7, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @EAP_TLV_RESULT_FAILURE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load i32, i32* @MSG_DEBUG, align 4
  %31 = call i32 @wpa_printf(i32 %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %33 = load i64, i64* @FAILURE, align 8
  %34 = call i32 @eap_fast_state(%struct.eap_fast_data* %32, i64 %33)
  br label %283

35:                                               ; preds = %24
  %36 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %37 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @REQUEST_PAC, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %103

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %7, i32 0, i32 6
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %7, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %47, 6
  br i1 %48, label %49, label %55

49:                                               ; preds = %45, %41
  %50 = load i32, i32* @MSG_DEBUG, align 4
  %51 = call i32 @wpa_printf(i32 %50, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %52 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %53 = load i64, i64* @FAILURE, align 8
  %54 = call i32 @eap_fast_state(%struct.eap_fast_data* %52, i64 %53)
  br label %283

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %7, i32 0, i32 6
  %57 = load i32*, i32** %56, align 8
  %58 = call i64 @WPA_GET_BE16(i32* %57)
  store i64 %58, i64* %9, align 8
  %59 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %7, i32 0, i32 6
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = call i64 @WPA_GET_BE16(i32* %61)
  store i64 %62, i64* %10, align 8
  %63 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %7, i32 0, i32 6
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 4
  %66 = call i64 @WPA_GET_BE16(i32* %65)
  store i64 %66, i64* %11, align 8
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* @PAC_TYPE_PAC_ACKNOWLEDGEMENT, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %77, label %70

70:                                               ; preds = %55
  %71 = load i64, i64* %10, align 8
  %72 = icmp ne i64 %71, 2
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* @EAP_TLV_RESULT_SUCCESS, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %73, %70, %55
  %78 = load i32, i32* @MSG_DEBUG, align 4
  %79 = call i32 @wpa_printf(i32 %78, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %80 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %81 = load i64, i64* @FAILURE, align 8
  %82 = call i32 @eap_fast_state(%struct.eap_fast_data* %80, i64 %81)
  br label %283

83:                                               ; preds = %73
  %84 = load i32, i32* @MSG_DEBUG, align 4
  %85 = call i32 @wpa_printf(i32 %84, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0))
  %86 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %87 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %88 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %83
  %92 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %93 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %94, 2
  br i1 %95, label %96, label %98

96:                                               ; preds = %91, %83
  %97 = load i64, i64* @FAILURE, align 8
  br label %100

98:                                               ; preds = %91
  %99 = load i64, i64* @SUCCESS, align 8
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i64 [ %97, %96 ], [ %99, %98 ]
  %102 = call i32 @eap_fast_state(%struct.eap_fast_data* %86, i64 %101)
  br label %283

103:                                              ; preds = %35
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %271

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %7, i32 0, i32 8
  %108 = load i32*, i32** %107, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %116

110:                                              ; preds = %106
  %111 = load i32, i32* @MSG_DEBUG, align 4
  %112 = call i32 @wpa_printf(i32 %111, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %113 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %114 = load i64, i64* @FAILURE, align 8
  %115 = call i32 @eap_fast_state(%struct.eap_fast_data* %113, i64 %114)
  br label %283

116:                                              ; preds = %106
  %117 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %118 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %7, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @EAP_TLV_RESULT_SUCCESS, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %121
  %127 = load i32, i32* @MSG_DEBUG, align 4
  %128 = call i32 @wpa_printf(i32 %127, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  %129 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %130 = load i64, i64* @FAILURE, align 8
  %131 = call i32 @eap_fast_state(%struct.eap_fast_data* %129, i64 %130)
  br label %283

132:                                              ; preds = %121, %116
  %133 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %134 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %148, label %137

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %7, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @EAP_TLV_RESULT_SUCCESS, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %137
  %143 = load i32, i32* @MSG_DEBUG, align 4
  %144 = call i32 @wpa_printf(i32 %143, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.7, i64 0, i64 0))
  %145 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %146 = load i64, i64* @FAILURE, align 8
  %147 = call i32 @eap_fast_state(%struct.eap_fast_data* %145, i64 %146)
  br label %283

148:                                              ; preds = %137, %132
  %149 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %150 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %7, i32 0, i32 8
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %7, i32 0, i32 7
  %153 = load i32, i32* %152, align 8
  %154 = call i64 @eap_fast_validate_crypto_binding(%struct.eap_fast_data* %149, i32* %151, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %148
  %157 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %158 = load i64, i64* @FAILURE, align 8
  %159 = call i32 @eap_fast_state(%struct.eap_fast_data* %157, i64 %158)
  br label %283

160:                                              ; preds = %148
  %161 = load i32, i32* @MSG_DEBUG, align 4
  %162 = call i32 @wpa_printf(i32 %161, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  %163 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %164 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %160
  %168 = load i32, i32* @MSG_DEBUG, align 4
  %169 = call i32 @wpa_printf(i32 %168, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0))
  br label %170

170:                                              ; preds = %167, %160
  %171 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %172 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %193

175:                                              ; preds = %170
  %176 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %177 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @ANON_PROV, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %193

181:                                              ; preds = %175
  %182 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %183 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @BOTH_PROV, align 8
  %186 = icmp ne i64 %184, %185
  br i1 %186, label %187, label %193

187:                                              ; preds = %181
  %188 = load i32, i32* @MSG_DEBUG, align 4
  %189 = call i32 @wpa_printf(i32 %188, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.10, i64 0, i64 0))
  %190 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %191 = load i64, i64* @FAILURE, align 8
  %192 = call i32 @eap_fast_state(%struct.eap_fast_data* %190, i64 %191)
  br label %283

193:                                              ; preds = %181, %175, %170
  %194 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %195 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @AUTH_PROV, align 8
  %198 = icmp ne i64 %196, %197
  br i1 %198, label %199, label %224

199:                                              ; preds = %193
  %200 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %201 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @BOTH_PROV, align 8
  %204 = icmp ne i64 %202, %203
  br i1 %204, label %205, label %224

205:                                              ; preds = %199
  %206 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %7, i32 0, i32 3
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @EAP_TLV_ACTION_PROCESS_TLV, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %224

210:                                              ; preds = %205
  %211 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %7, i32 0, i32 6
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %7, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @PAC_TYPE_TUNNEL_PAC, align 4
  %216 = call i64 @eap_fast_pac_type(i32* %212, i32 %214, i32 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %210
  %219 = load i32, i32* @MSG_DEBUG, align 4
  %220 = call i32 @wpa_printf(i32 %219, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.11, i64 0, i64 0))
  %221 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %222 = load i64, i64* @FAILURE, align 8
  %223 = call i32 @eap_fast_state(%struct.eap_fast_data* %221, i64 %222)
  br label %283

224:                                              ; preds = %210, %205, %199, %193
  %225 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %226 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %225, i32 0, i32 3
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %242, label %229

229:                                              ; preds = %224
  %230 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %7, i32 0, i32 3
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @EAP_TLV_ACTION_PROCESS_TLV, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %248

234:                                              ; preds = %229
  %235 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %7, i32 0, i32 6
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %7, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @PAC_TYPE_TUNNEL_PAC, align 4
  %240 = call i64 @eap_fast_pac_type(i32* %236, i32 %238, i32 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %248

242:                                              ; preds = %234, %224
  %243 = load i32, i32* @MSG_DEBUG, align 4
  %244 = call i32 @wpa_printf(i32 %243, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  %245 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %246 = load i64, i64* @REQUEST_PAC, align 8
  %247 = call i32 @eap_fast_state(%struct.eap_fast_data* %245, i64 %246)
  br label %270

248:                                              ; preds = %234, %229
  %249 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %250 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 8
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %259

253:                                              ; preds = %248
  %254 = load i32, i32* @MSG_DEBUG, align 4
  %255 = call i32 @wpa_printf(i32 %254, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0))
  %256 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %257 = load i64, i64* @REQUEST_PAC, align 8
  %258 = call i32 @eap_fast_state(%struct.eap_fast_data* %256, i64 %257)
  br label %269

259:                                              ; preds = %248
  %260 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %261 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %260, i32 0, i32 2
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %259
  %265 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %266 = load i64, i64* @SUCCESS, align 8
  %267 = call i32 @eap_fast_state(%struct.eap_fast_data* %265, i64 %266)
  br label %268

268:                                              ; preds = %264, %259
  br label %269

269:                                              ; preds = %268, %253
  br label %270

270:                                              ; preds = %269, %242
  br label %271

271:                                              ; preds = %270, %103
  %272 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %7, i32 0, i32 5
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %283

275:                                              ; preds = %271
  %276 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %277 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %278 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %7, i32 0, i32 5
  %279 = load i64, i64* %278, align 8
  %280 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %7, i32 0, i32 4
  %281 = load i32, i32* %280, align 8
  %282 = call i32 @eap_fast_process_phase2_eap(%struct.eap_sm* %276, %struct.eap_fast_data* %277, i64 %279, i32 %281)
  br label %283

283:                                              ; preds = %21, %29, %49, %77, %100, %110, %126, %142, %156, %187, %218, %275, %271
  ret void
}

declare dso_local i64 @eap_fast_parse_tlvs(%struct.wpabuf*, %struct.eap_fast_tlv_parse*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @eap_fast_state(%struct.eap_fast_data*, i64) #1

declare dso_local i64 @WPA_GET_BE16(i32*) #1

declare dso_local i64 @eap_fast_validate_crypto_binding(%struct.eap_fast_data*, i32*, i32) #1

declare dso_local i64 @eap_fast_pac_type(i32*, i32, i32) #1

declare dso_local i32 @eap_fast_process_phase2_eap(%struct.eap_sm*, %struct.eap_fast_data*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
