; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_process_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_process_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_teap_data = type { i32, i32, i32, i64, i64, i64, i32 }

@EAP_TLS_VERSION_MASK = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"EAP-TEAP: Start (server ver=%u, own ver=%u)\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"EAP-TEAP: Server used unknown TEAP version %u\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"EAP-TEAP: Using TEAP version %d\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"EAP-TEAP: Start message payload\00", align 1
@EAP_TEAP_FLAGS_OUTER_TLV_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [57 x i8] c"EAP-TEAP: Not enough room for the Outer TLV Length field\00", align 1
@.str.5 = private unnamed_addr constant [82 x i8] c"EAP-TEAP: Truncated Outer TLVs field (Outer TLV Length: %u; remaining buffer: %u)\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"EAP-TEAP: Start message Outer TLVs\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"EAP-TEAP: Unexpected TLS Data in Start message\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"EAP-TEAP: Truncated Outer TLV header\00", align 1
@TEAP_TLV_TYPE_MASK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [39 x i8] c"EAP-TEAP: Outer TLV: Type=%u Length=%u\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"EAP-TEAP: Truncated Outer TLV (Type %u)\00", align 1
@TEAP_TLV_AUTHORITY_ID = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [23 x i8] c"EAP-TEAP: Authority-ID\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"EAP-TEAP: Multiple Authority-ID TLVs in TEAP/Start\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"EAP-TEAP: Ignore unknown Outer TLV (Type %u)\00", align 1
@.str.14 = private unnamed_addr constant [78 x i8] c"EAP-TEAP: Trying to resume session - do not add PAC-Opaque to TLS ClientHello\00", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"EAP-TEAP: No PAC found - starting provisioning\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_teap_data*, i32, i32*, i64)* @eap_teap_process_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_teap_process_start(%struct.eap_sm* %0, %struct.eap_teap_data* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.eap_sm*, align 8
  %8 = alloca %struct.eap_teap_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %7, align 8
  store %struct.eap_teap_data* %1, %struct.eap_teap_data** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* null, i32** %12, align 8
  store i64 0, i64* %13, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @EAP_TLS_VERSION_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %23 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @MSG_DEBUG, align 4
  %25 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %26 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %29 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32, i8*, ...) @wpa_printf(i32 %24, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30)
  %32 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %33 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %36, label %42

36:                                               ; preds = %5
  %37 = load i32, i32* @MSG_INFO, align 4
  %38 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %39 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i32, i8*, ...) @wpa_printf(i32 %37, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  store i32 -1, i32* %6, align 4
  br label %271

42:                                               ; preds = %5
  %43 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %44 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %47 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %42
  %51 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %52 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %55 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %50, %42
  %57 = load i32, i32* @MSG_DEBUG, align 4
  %58 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %59 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i32, i8*, ...) @wpa_printf(i32 %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @MSG_MSGDUMP, align 4
  %63 = load i32*, i32** %10, align 8
  %64 = load i64, i64* %11, align 8
  %65 = call i32 @wpa_hexdump(i32 %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32* %63, i64 %64)
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @EAP_TEAP_FLAGS_OUTER_TLV_LEN, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %205

70:                                               ; preds = %56
  %71 = load i64, i64* %11, align 8
  %72 = icmp ult i64 %71, 4
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* @MSG_INFO, align 4
  %75 = call i32 (i32, i8*, ...) @wpa_printf(i32 %74, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %271

76:                                               ; preds = %70
  %77 = load i32*, i32** %10, align 8
  %78 = call i64 @WPA_GET_BE32(i32* %77)
  store i64 %78, i64* %16, align 8
  %79 = load i32*, i32** %10, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 4
  store i32* %80, i32** %10, align 8
  %81 = load i64, i64* %11, align 8
  %82 = sub i64 %81, 4
  store i64 %82, i64* %11, align 8
  %83 = load i64, i64* %16, align 8
  %84 = load i64, i64* %11, align 8
  %85 = icmp ugt i64 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %76
  %87 = load i32, i32* @MSG_INFO, align 4
  %88 = load i64, i64* %16, align 8
  %89 = load i64, i64* %11, align 8
  %90 = trunc i64 %89 to i32
  %91 = call i32 (i32, i8*, ...) @wpa_printf(i32 %87, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.5, i64 0, i64 0), i64 %88, i32 %90)
  store i32 -1, i32* %6, align 4
  br label %271

92:                                               ; preds = %76
  %93 = load i32*, i32** %10, align 8
  %94 = load i64, i64* %11, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i64, i64* %16, align 8
  %97 = sub i64 0, %96
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32* %98, i32** %14, align 8
  %99 = load i32*, i32** %14, align 8
  %100 = load i64, i64* %16, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  store i32* %101, i32** %15, align 8
  %102 = load i32, i32* @MSG_MSGDUMP, align 4
  %103 = load i32*, i32** %14, align 8
  %104 = load i64, i64* %16, align 8
  %105 = call i32 @wpa_hexdump(i32 %102, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32* %103, i64 %104)
  %106 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %107 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @wpabuf_free(i32 %108)
  %110 = load i32*, i32** %14, align 8
  %111 = load i64, i64* %16, align 8
  %112 = call i32 @wpabuf_alloc_copy(i32* %110, i64 %111)
  %113 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %114 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %113, i32 0, i32 6
  store i32 %112, i32* %114, align 8
  %115 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %116 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %92
  store i32 -1, i32* %6, align 4
  br label %271

120:                                              ; preds = %92
  %121 = load i64, i64* %16, align 8
  %122 = load i64, i64* %11, align 8
  %123 = sub i64 %122, %121
  store i64 %123, i64* %11, align 8
  %124 = load i64, i64* %11, align 8
  %125 = icmp ugt i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %120
  %127 = load i32, i32* @MSG_INFO, align 4
  %128 = load i32*, i32** %10, align 8
  %129 = load i64, i64* %11, align 8
  %130 = call i32 @wpa_hexdump(i32 %127, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i32* %128, i64 %129)
  store i32 -1, i32* %6, align 4
  br label %271

131:                                              ; preds = %120
  br label %132

132:                                              ; preds = %199, %131
  %133 = load i32*, i32** %14, align 8
  %134 = load i32*, i32** %15, align 8
  %135 = icmp ult i32* %133, %134
  br i1 %135, label %136, label %204

136:                                              ; preds = %132
  %137 = load i32*, i32** %15, align 8
  %138 = load i32*, i32** %14, align 8
  %139 = ptrtoint i32* %137 to i64
  %140 = ptrtoint i32* %138 to i64
  %141 = sub i64 %139, %140
  %142 = sdiv exact i64 %141, 4
  %143 = icmp slt i64 %142, 4
  br i1 %143, label %144, label %147

144:                                              ; preds = %136
  %145 = load i32, i32* @MSG_INFO, align 4
  %146 = call i32 (i32, i8*, ...) @wpa_printf(i32 %145, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %271

147:                                              ; preds = %136
  %148 = load i32*, i32** %14, align 8
  %149 = call i32 @WPA_GET_BE16(i32* %148)
  store i32 %149, i32* %17, align 4
  %150 = load i32*, i32** %14, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 2
  store i32* %151, i32** %14, align 8
  %152 = load i32*, i32** %14, align 8
  %153 = call i32 @WPA_GET_BE16(i32* %152)
  store i32 %153, i32* %18, align 4
  %154 = load i32*, i32** %14, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 2
  store i32* %155, i32** %14, align 8
  %156 = load i32, i32* @TEAP_TLV_TYPE_MASK, align 4
  %157 = load i32, i32* %17, align 4
  %158 = and i32 %157, %156
  store i32 %158, i32* %17, align 4
  %159 = load i32, i32* @MSG_DEBUG, align 4
  %160 = load i32, i32* %17, align 4
  %161 = load i32, i32* %18, align 4
  %162 = call i32 (i32, i8*, ...) @wpa_printf(i32 %159, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i32 %160, i32 %161)
  %163 = load i32*, i32** %15, align 8
  %164 = load i32*, i32** %14, align 8
  %165 = ptrtoint i32* %163 to i64
  %166 = ptrtoint i32* %164 to i64
  %167 = sub i64 %165, %166
  %168 = sdiv exact i64 %167, 4
  %169 = load i32, i32* %18, align 4
  %170 = sext i32 %169 to i64
  %171 = icmp slt i64 %168, %170
  br i1 %171, label %172, label %176

172:                                              ; preds = %147
  %173 = load i32, i32* @MSG_INFO, align 4
  %174 = load i32, i32* %17, align 4
  %175 = call i32 (i32, i8*, ...) @wpa_printf(i32 %173, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i32 %174)
  store i32 -1, i32* %6, align 4
  br label %271

176:                                              ; preds = %147
  %177 = load i32, i32* %17, align 4
  %178 = load i32, i32* @TEAP_TLV_AUTHORITY_ID, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %195

180:                                              ; preds = %176
  %181 = load i32, i32* @MSG_DEBUG, align 4
  %182 = load i32*, i32** %14, align 8
  %183 = load i32, i32* %18, align 4
  %184 = sext i32 %183 to i64
  %185 = call i32 @wpa_hexdump(i32 %181, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32* %182, i64 %184)
  %186 = load i32*, i32** %12, align 8
  %187 = icmp ne i32* %186, null
  br i1 %187, label %188, label %191

188:                                              ; preds = %180
  %189 = load i32, i32* @MSG_INFO, align 4
  %190 = call i32 (i32, i8*, ...) @wpa_printf(i32 %189, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %271

191:                                              ; preds = %180
  %192 = load i32*, i32** %14, align 8
  store i32* %192, i32** %12, align 8
  %193 = load i32, i32* %18, align 4
  %194 = sext i32 %193 to i64
  store i64 %194, i64* %13, align 8
  br label %199

195:                                              ; preds = %176
  %196 = load i32, i32* @MSG_DEBUG, align 4
  %197 = load i32, i32* %17, align 4
  %198 = call i32 (i32, i8*, ...) @wpa_printf(i32 %196, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0), i32 %197)
  br label %199

199:                                              ; preds = %195, %191
  %200 = load i32, i32* %18, align 4
  %201 = load i32*, i32** %14, align 8
  %202 = sext i32 %200 to i64
  %203 = getelementptr inbounds i32, i32* %201, i64 %202
  store i32* %203, i32** %14, align 8
  br label %132

204:                                              ; preds = %132
  br label %214

205:                                              ; preds = %56
  %206 = load i64, i64* %11, align 8
  %207 = icmp ugt i64 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %205
  %209 = load i32, i32* @MSG_INFO, align 4
  %210 = load i32*, i32** %10, align 8
  %211 = load i64, i64* %11, align 8
  %212 = call i32 @wpa_hexdump(i32 %209, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i32* %210, i64 %211)
  store i32 -1, i32* %6, align 4
  br label %271

213:                                              ; preds = %205
  br label %214

214:                                              ; preds = %213, %204
  %215 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %216 = load i32*, i32** %12, align 8
  %217 = load i64, i64* %13, align 8
  %218 = call i32 @eap_teap_select_pac(%struct.eap_teap_data* %215, i32* %216, i64 %217)
  %219 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %220 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %219, i32 0, i32 5
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %237

223:                                              ; preds = %214
  %224 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %225 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %224, i32 0, i32 4
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %237

228:                                              ; preds = %223
  %229 = load i32, i32* @MSG_DEBUG, align 4
  %230 = call i32 (i32, i8*, ...) @wpa_printf(i32 %229, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.14, i64 0, i64 0))
  %231 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %232 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %233 = call i64 @eap_teap_clear_pac_opaque_ext(%struct.eap_sm* %231, %struct.eap_teap_data* %232)
  %234 = icmp slt i64 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %228
  store i32 -1, i32* %6, align 4
  br label %271

236:                                              ; preds = %228
  br label %270

237:                                              ; preds = %223, %214
  %238 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %239 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %238, i32 0, i32 4
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %252

242:                                              ; preds = %237
  %243 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %244 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %245 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %246 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %245, i32 0, i32 4
  %247 = load i64, i64* %246, align 8
  %248 = call i64 @eap_teap_use_pac_opaque(%struct.eap_sm* %243, %struct.eap_teap_data* %244, i64 %247)
  %249 = icmp slt i64 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %242
  store i32 -1, i32* %6, align 4
  br label %271

251:                                              ; preds = %242
  br label %269

252:                                              ; preds = %237
  %253 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %254 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %253, i32 0, i32 3
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %268

257:                                              ; preds = %252
  %258 = load i32, i32* @MSG_DEBUG, align 4
  %259 = call i32 (i32, i8*, ...) @wpa_printf(i32 %258, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.15, i64 0, i64 0))
  %260 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %261 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %262 = call i64 @eap_teap_clear_pac_opaque_ext(%struct.eap_sm* %260, %struct.eap_teap_data* %261)
  %263 = icmp slt i64 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %257
  store i32 -1, i32* %6, align 4
  br label %271

265:                                              ; preds = %257
  %266 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %267 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %266, i32 0, i32 2
  store i32 1, i32* %267, align 8
  br label %268

268:                                              ; preds = %265, %252
  br label %269

269:                                              ; preds = %268, %251
  br label %270

270:                                              ; preds = %269, %236
  store i32 0, i32* %6, align 4
  br label %271

271:                                              ; preds = %270, %264, %250, %235, %208, %188, %172, %144, %126, %119, %86, %73, %36
  %272 = load i32, i32* %6, align 4
  ret i32 %272
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i64 @WPA_GET_BE32(i32*) #1

declare dso_local i32 @wpabuf_free(i32) #1

declare dso_local i32 @wpabuf_alloc_copy(i32*, i64) #1

declare dso_local i32 @WPA_GET_BE16(i32*) #1

declare dso_local i32 @eap_teap_select_pac(%struct.eap_teap_data*, i32*, i64) #1

declare dso_local i64 @eap_teap_clear_pac_opaque_ext(%struct.eap_sm*, %struct.eap_teap_data*) #1

declare dso_local i64 @eap_teap_use_pac_opaque(%struct.eap_sm*, %struct.eap_teap_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
