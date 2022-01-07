; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_tnc.c_eap_tnc_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_tnc.c_eap_tnc_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_method_ret = type { i8*, i32, i32, i8* }
%struct.wpabuf = type { i32 }
%struct.eap_tnc_data = type { i64, %struct.wpabuf*, %struct.wpabuf*, i32 }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_TNC = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"EAP-TNC: Invalid frame (pos=%p len=%lu)\00", align 1
@TRUE = common dso_local global i8* null, align 8
@EAP_TNC_VERSION_MASK = common dso_local global i32 0, align 4
@EAP_TNC_VERSION = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"EAP-TNC: Unsupported version %d\00", align 1
@EAP_TNC_FLAGS_LENGTH_INCLUDED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"EAP-TNC: Message underflow\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"EAP-TNC: Invalid Message Length (%d; %ld remaining in this msg)\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"EAP-TNC: Received packet: Flags 0x%x Message Length %u\00", align 1
@WAIT_FRAG_ACK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [51 x i8] c"EAP-TNC: Unexpected payload in WAIT_FRAG_ACK state\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"EAP-TNC: Fragment acknowledged\00", align 1
@PROC_MSG = common dso_local global i8* null, align 8
@EAP_TNC_FLAGS_MORE_FRAGMENTS = common dso_local global i32 0, align 4
@WAIT_START = common dso_local global i64 0, align 8
@EAP_TNC_FLAGS_START = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [60 x i8] c"EAP-TNC: Server did not use start flag in the first message\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"EAP-TNC: Server used start flag again\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"EAP-TNC: No TNCCS-Recommendation received\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"TNC: Recommendation = allow\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"TNC: Recommendation = none\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"TNC: Recommendation = isolate\00", align 1
@FALSE = common dso_local global i8* null, align 8
@METHOD_MAY_CONT = common dso_local global i32 0, align 4
@DECISION_UNCOND_SUCC = common dso_local global i32 0, align 4
@EAP_CODE_RESPONSE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [53 x i8] c"EAP-TNC: TNCS done - reply with an empty ACK message\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [18 x i8] c"EAP-TNC: Response\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, i8*, %struct.eap_method_ret*, %struct.wpabuf*)* @eap_tnc_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_tnc_process(%struct.eap_sm* %0, i8* %1, %struct.eap_method_ret* %2, %struct.wpabuf* %3) #0 {
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.eap_method_ret*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca %struct.eap_tnc_data*, align 8
  %11 = alloca %struct.wpabuf*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.wpabuf, align 4
  %28 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %8, align 8
  store %struct.wpabuf* %3, %struct.wpabuf** %9, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = bitcast i8* %29 to %struct.eap_tnc_data*
  store %struct.eap_tnc_data* %30, %struct.eap_tnc_data** %10, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %26, align 4
  %31 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %32 = load i32, i32* @EAP_TYPE_TNC, align 4
  %33 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %34 = call i32* @eap_hdr_validate(i32 %31, i32 %32, %struct.wpabuf* %33, i64* %16)
  store i32* %34, i32** %12, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %4
  %38 = load i32, i32* @MSG_INFO, align 4
  %39 = load i32*, i32** %12, align 8
  %40 = load i64, i64* %16, align 8
  %41 = call i32 (i32, i8*, ...) @wpa_printf(i32 %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32* %39, i64 %40)
  %42 = load i8*, i8** @TRUE, align 8
  %43 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %44 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %428

45:                                               ; preds = %4
  %46 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %47 = call i32 @eap_get_id(%struct.wpabuf* %46)
  store i32 %47, i32* %25, align 4
  %48 = load i32*, i32** %12, align 8
  %49 = load i64, i64* %16, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32* %50, i32** %13, align 8
  %51 = load i64, i64* %16, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  store i32 0, i32* %24, align 4
  br label %58

54:                                               ; preds = %45
  %55 = load i32*, i32** %12, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %12, align 8
  %57 = load i32, i32* %55, align 4
  store i32 %57, i32* %24, align 4
  br label %58

58:                                               ; preds = %54, %53
  %59 = load i64, i64* %16, align 8
  %60 = icmp ugt i64 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %58
  %62 = load i32, i32* %24, align 4
  %63 = load i32, i32* @EAP_TNC_VERSION_MASK, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* @EAP_TNC_VERSION, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %61
  %68 = load i32, i32* @MSG_DEBUG, align 4
  %69 = load i32, i32* %24, align 4
  %70 = load i32, i32* @EAP_TNC_VERSION_MASK, align 4
  %71 = and i32 %69, %70
  %72 = call i32 (i32, i8*, ...) @wpa_printf(i32 %68, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i8*, i8** @TRUE, align 8
  %74 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %75 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %74, i32 0, i32 3
  store i8* %73, i8** %75, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %428

76:                                               ; preds = %61, %58
  %77 = load i32, i32* %24, align 4
  %78 = load i32, i32* @EAP_TNC_FLAGS_LENGTH_INCLUDED, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %126

81:                                               ; preds = %76
  %82 = load i32*, i32** %13, align 8
  %83 = load i32*, i32** %12, align 8
  %84 = ptrtoint i32* %82 to i64
  %85 = ptrtoint i32* %83 to i64
  %86 = sub i64 %84, %85
  %87 = sdiv exact i64 %86, 4
  %88 = icmp slt i64 %87, 4
  br i1 %88, label %89, label %95

89:                                               ; preds = %81
  %90 = load i32, i32* @MSG_DEBUG, align 4
  %91 = call i32 (i32, i8*, ...) @wpa_printf(i32 %90, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %92 = load i8*, i8** @TRUE, align 8
  %93 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %94 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %93, i32 0, i32 3
  store i8* %92, i8** %94, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %428

95:                                               ; preds = %81
  %96 = load i32*, i32** %12, align 8
  %97 = call i32 @WPA_GET_BE32(i32* %96)
  store i32 %97, i32* %26, align 4
  %98 = load i32*, i32** %12, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 4
  store i32* %99, i32** %12, align 8
  %100 = load i32, i32* %26, align 4
  %101 = load i32*, i32** %13, align 8
  %102 = load i32*, i32** %12, align 8
  %103 = ptrtoint i32* %101 to i64
  %104 = ptrtoint i32* %102 to i64
  %105 = sub i64 %103, %104
  %106 = sdiv exact i64 %105, 4
  %107 = trunc i64 %106 to i32
  %108 = icmp slt i32 %100, %107
  br i1 %108, label %112, label %109

109:                                              ; preds = %95
  %110 = load i32, i32* %26, align 4
  %111 = icmp sgt i32 %110, 75000
  br i1 %111, label %112, label %125

112:                                              ; preds = %109, %95
  %113 = load i32, i32* @MSG_DEBUG, align 4
  %114 = load i32, i32* %26, align 4
  %115 = load i32*, i32** %13, align 8
  %116 = load i32*, i32** %12, align 8
  %117 = ptrtoint i32* %115 to i64
  %118 = ptrtoint i32* %116 to i64
  %119 = sub i64 %117, %118
  %120 = sdiv exact i64 %119, 4
  %121 = call i32 (i32, i8*, ...) @wpa_printf(i32 %113, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i32 %114, i64 %120)
  %122 = load i8*, i8** @TRUE, align 8
  %123 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %124 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %123, i32 0, i32 3
  store i8* %122, i8** %124, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %428

125:                                              ; preds = %109
  br label %126

126:                                              ; preds = %125, %76
  %127 = load i32, i32* @MSG_DEBUG, align 4
  %128 = load i32, i32* %24, align 4
  %129 = load i32, i32* %26, align 4
  %130 = call i32 (i32, i8*, ...) @wpa_printf(i32 %127, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %128, i32 %129)
  %131 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %10, align 8
  %132 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @WAIT_FRAG_ACK, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %156

136:                                              ; preds = %126
  %137 = load i64, i64* %16, align 8
  %138 = icmp ugt i64 %137, 1
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = load i32, i32* @MSG_DEBUG, align 4
  %141 = call i32 (i32, i8*, ...) @wpa_printf(i32 %140, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  %142 = load i8*, i8** @TRUE, align 8
  %143 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %144 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %143, i32 0, i32 3
  store i8* %142, i8** %144, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %428

145:                                              ; preds = %136
  %146 = load i32, i32* @MSG_DEBUG, align 4
  %147 = call i32 (i32, i8*, ...) @wpa_printf(i32 %146, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %148 = load i8*, i8** @PROC_MSG, align 8
  %149 = ptrtoint i8* %148 to i64
  %150 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %10, align 8
  %151 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %150, i32 0, i32 0
  store i64 %149, i64* %151, align 8
  %152 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %10, align 8
  %153 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %154 = load i32, i32* %25, align 4
  %155 = call %struct.wpabuf* @eap_tnc_build_msg(%struct.eap_tnc_data* %152, %struct.eap_method_ret* %153, i32 %154)
  store %struct.wpabuf* %155, %struct.wpabuf** %5, align 8
  br label %428

156:                                              ; preds = %126
  %157 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %10, align 8
  %158 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %157, i32 0, i32 1
  %159 = load %struct.wpabuf*, %struct.wpabuf** %158, align 8
  %160 = icmp ne %struct.wpabuf* %159, null
  br i1 %160, label %161, label %177

161:                                              ; preds = %156
  %162 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %10, align 8
  %163 = load i32*, i32** %12, align 8
  %164 = load i32*, i32** %13, align 8
  %165 = load i32*, i32** %12, align 8
  %166 = ptrtoint i32* %164 to i64
  %167 = ptrtoint i32* %165 to i64
  %168 = sub i64 %166, %167
  %169 = sdiv exact i64 %168, 4
  %170 = trunc i64 %169 to i32
  %171 = call i64 @eap_tnc_process_cont(%struct.eap_tnc_data* %162, i32* %163, i32 %170)
  %172 = icmp slt i64 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %161
  %174 = load i8*, i8** @TRUE, align 8
  %175 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %176 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %175, i32 0, i32 3
  store i8* %174, i8** %176, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %428

177:                                              ; preds = %161, %156
  %178 = load i32, i32* %24, align 4
  %179 = load i32, i32* @EAP_TNC_FLAGS_MORE_FRAGMENTS, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %197

182:                                              ; preds = %177
  %183 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %10, align 8
  %184 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %185 = load i32, i32* %25, align 4
  %186 = load i32, i32* %24, align 4
  %187 = load i32, i32* %26, align 4
  %188 = load i32*, i32** %12, align 8
  %189 = load i32*, i32** %13, align 8
  %190 = load i32*, i32** %12, align 8
  %191 = ptrtoint i32* %189 to i64
  %192 = ptrtoint i32* %190 to i64
  %193 = sub i64 %191, %192
  %194 = sdiv exact i64 %193, 4
  %195 = trunc i64 %194 to i32
  %196 = call %struct.wpabuf* @eap_tnc_process_fragment(%struct.eap_tnc_data* %183, %struct.eap_method_ret* %184, i32 %185, i32 %186, i32 %187, i32* %188, i32 %195)
  store %struct.wpabuf* %196, %struct.wpabuf** %5, align 8
  br label %428

197:                                              ; preds = %177
  %198 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %10, align 8
  %199 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %198, i32 0, i32 1
  %200 = load %struct.wpabuf*, %struct.wpabuf** %199, align 8
  %201 = icmp eq %struct.wpabuf* %200, null
  br i1 %201, label %202, label %214

202:                                              ; preds = %197
  %203 = load i32*, i32** %12, align 8
  %204 = load i32*, i32** %13, align 8
  %205 = load i32*, i32** %12, align 8
  %206 = ptrtoint i32* %204 to i64
  %207 = ptrtoint i32* %205 to i64
  %208 = sub i64 %206, %207
  %209 = sdiv exact i64 %208, 4
  %210 = trunc i64 %209 to i32
  %211 = call i32 @wpabuf_set(%struct.wpabuf* %27, i32* %203, i32 %210)
  %212 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %10, align 8
  %213 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %212, i32 0, i32 1
  store %struct.wpabuf* %27, %struct.wpabuf** %213, align 8
  br label %214

214:                                              ; preds = %202, %197
  %215 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %10, align 8
  %216 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @WAIT_START, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %240

220:                                              ; preds = %214
  %221 = load i32, i32* %24, align 4
  %222 = load i32, i32* @EAP_TNC_FLAGS_START, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %231, label %225

225:                                              ; preds = %220
  %226 = load i32, i32* @MSG_DEBUG, align 4
  %227 = call i32 (i32, i8*, ...) @wpa_printf(i32 %226, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0))
  %228 = load i8*, i8** @TRUE, align 8
  %229 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %230 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %229, i32 0, i32 3
  store i8* %228, i8** %230, align 8
  br label %419

231:                                              ; preds = %220
  %232 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %10, align 8
  %233 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @tncc_init_connection(i32 %234)
  %236 = load i8*, i8** @PROC_MSG, align 8
  %237 = ptrtoint i8* %236 to i64
  %238 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %10, align 8
  %239 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %238, i32 0, i32 0
  store i64 %237, i64* %239, align 8
  br label %291

240:                                              ; preds = %214
  %241 = load i32, i32* %24, align 4
  %242 = load i32, i32* @EAP_TNC_FLAGS_START, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %251

245:                                              ; preds = %240
  %246 = load i32, i32* @MSG_DEBUG, align 4
  %247 = call i32 (i32, i8*, ...) @wpa_printf(i32 %246, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %248 = load i8*, i8** @TRUE, align 8
  %249 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %250 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %249, i32 0, i32 3
  store i8* %248, i8** %250, align 8
  br label %419

251:                                              ; preds = %240
  %252 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %10, align 8
  %253 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %10, align 8
  %256 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %255, i32 0, i32 1
  %257 = load %struct.wpabuf*, %struct.wpabuf** %256, align 8
  %258 = call i32 @wpabuf_head(%struct.wpabuf* %257)
  %259 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %10, align 8
  %260 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %259, i32 0, i32 1
  %261 = load %struct.wpabuf*, %struct.wpabuf** %260, align 8
  %262 = call i32 @wpabuf_len(%struct.wpabuf* %261)
  %263 = call i32 @tncc_process_if_tnccs(i32 %254, i32 %258, i32 %262)
  store i32 %263, i32* %28, align 4
  %264 = load i32, i32* %28, align 4
  switch i32 %264, label %290 [
    i32 133, label %265
    i32 132, label %269
    i32 130, label %269
    i32 131, label %272
    i32 128, label %278
    i32 129, label %284
  ]

265:                                              ; preds = %251
  %266 = load i8*, i8** @TRUE, align 8
  %267 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %268 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %267, i32 0, i32 3
  store i8* %266, i8** %268, align 8
  br label %419

269:                                              ; preds = %251, %251
  %270 = load i32, i32* @MSG_DEBUG, align 4
  %271 = call i32 (i32, i8*, ...) @wpa_printf(i32 %270, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  br label %290

272:                                              ; preds = %251
  %273 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %274 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @MSG_INFO, align 4
  %277 = call i32 @wpa_msg(i32 %275, i32 %276, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* %23, align 4
  br label %290

278:                                              ; preds = %251
  %279 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %280 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @MSG_INFO, align 4
  %283 = call i32 @wpa_msg(i32 %281, i32 %282, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  store i32 1, i32* %23, align 4
  br label %290

284:                                              ; preds = %251
  %285 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %286 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* @MSG_INFO, align 4
  %289 = call i32 @wpa_msg(i32 %287, i32 %288, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0))
  store i32 1, i32* %23, align 4
  br label %290

290:                                              ; preds = %251, %284, %278, %272, %269
  br label %291

291:                                              ; preds = %290, %231
  %292 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %10, align 8
  %293 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %292, i32 0, i32 1
  %294 = load %struct.wpabuf*, %struct.wpabuf** %293, align 8
  %295 = icmp ne %struct.wpabuf* %294, %27
  br i1 %295, label %296, label %301

296:                                              ; preds = %291
  %297 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %10, align 8
  %298 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %297, i32 0, i32 1
  %299 = load %struct.wpabuf*, %struct.wpabuf** %298, align 8
  %300 = call i32 @wpabuf_free(%struct.wpabuf* %299)
  br label %301

301:                                              ; preds = %296, %291
  %302 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %10, align 8
  %303 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %302, i32 0, i32 1
  store %struct.wpabuf* null, %struct.wpabuf** %303, align 8
  %304 = load i8*, i8** @FALSE, align 8
  %305 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %306 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %305, i32 0, i32 3
  store i8* %304, i8** %306, align 8
  %307 = load i32, i32* @METHOD_MAY_CONT, align 4
  %308 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %309 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %308, i32 0, i32 2
  store i32 %307, i32* %309, align 4
  %310 = load i32, i32* @DECISION_UNCOND_SUCC, align 4
  %311 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %312 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %311, i32 0, i32 1
  store i32 %310, i32* %312, align 8
  %313 = load i8*, i8** @TRUE, align 8
  %314 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %315 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %314, i32 0, i32 0
  store i8* %313, i8** %315, align 8
  %316 = load i32, i32* %23, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %335

318:                                              ; preds = %301
  %319 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %320 = load i32, i32* @EAP_TYPE_TNC, align 4
  %321 = load i32, i32* @EAP_CODE_RESPONSE, align 4
  %322 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %323 = call i32 @eap_get_id(%struct.wpabuf* %322)
  %324 = call %struct.wpabuf* @eap_msg_alloc(i32 %319, i32 %320, i32 1, i32 %321, i32 %323)
  store %struct.wpabuf* %324, %struct.wpabuf** %11, align 8
  %325 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %326 = icmp eq %struct.wpabuf* %325, null
  br i1 %326, label %327, label %328

327:                                              ; preds = %318
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %428

328:                                              ; preds = %318
  %329 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %330 = load i32, i32* @EAP_TNC_VERSION, align 4
  %331 = call i32 @wpabuf_put_u8(%struct.wpabuf* %329, i32 %330)
  %332 = load i32, i32* @MSG_DEBUG, align 4
  %333 = call i32 (i32, i8*, ...) @wpa_printf(i32 %332, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0))
  %334 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  store %struct.wpabuf* %334, %struct.wpabuf** %5, align 8
  br label %428

335:                                              ; preds = %301
  %336 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %10, align 8
  %337 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %336, i32 0, i32 3
  %338 = load i32, i32* %337, align 8
  %339 = call i64 @tncc_total_send_len(i32 %338)
  store i64 %339, i64* %18, align 8
  %340 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %10, align 8
  %341 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %340, i32 0, i32 3
  %342 = load i32, i32* %341, align 8
  %343 = call i8* @tncc_if_tnccs_start(i32 %342)
  store i8* %343, i8** %19, align 8
  %344 = load i8*, i8** %19, align 8
  %345 = icmp eq i8* %344, null
  br i1 %345, label %346, label %347

346:                                              ; preds = %335
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %428

347:                                              ; preds = %335
  %348 = load i8*, i8** %19, align 8
  %349 = call i64 @os_strlen(i8* %348)
  store i64 %349, i64* %21, align 8
  %350 = call i8* (...) @tncc_if_tnccs_end()
  store i8* %350, i8** %20, align 8
  %351 = load i8*, i8** %20, align 8
  %352 = icmp eq i8* %351, null
  br i1 %352, label %353, label %356

353:                                              ; preds = %347
  %354 = load i8*, i8** %19, align 8
  %355 = call i32 @os_free(i8* %354)
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %428

356:                                              ; preds = %347
  %357 = load i8*, i8** %20, align 8
  %358 = call i64 @os_strlen(i8* %357)
  store i64 %358, i64* %22, align 8
  %359 = load i64, i64* %21, align 8
  %360 = load i64, i64* %18, align 8
  %361 = add i64 %359, %360
  %362 = load i64, i64* %22, align 8
  %363 = add i64 %361, %362
  store i64 %363, i64* %17, align 8
  %364 = load i64, i64* %17, align 8
  %365 = call %struct.wpabuf* @wpabuf_alloc(i64 %364)
  store %struct.wpabuf* %365, %struct.wpabuf** %11, align 8
  %366 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %367 = icmp eq %struct.wpabuf* %366, null
  br i1 %367, label %368, label %373

368:                                              ; preds = %356
  %369 = load i8*, i8** %19, align 8
  %370 = call i32 @os_free(i8* %369)
  %371 = load i8*, i8** %20, align 8
  %372 = call i32 @os_free(i8* %371)
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %428

373:                                              ; preds = %356
  %374 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %375 = load i8*, i8** %19, align 8
  %376 = load i64, i64* %21, align 8
  %377 = call i32 @wpabuf_put_data(%struct.wpabuf* %374, i8* %375, i64 %376)
  %378 = load i8*, i8** %19, align 8
  %379 = call i32 @os_free(i8* %378)
  %380 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %381 = call i32* @wpabuf_put(%struct.wpabuf* %380, i32 0)
  store i32* %381, i32** %15, align 8
  %382 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %10, align 8
  %383 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %382, i32 0, i32 3
  %384 = load i32, i32* %383, align 8
  %385 = load i32*, i32** %15, align 8
  %386 = call i32* @tncc_copy_send_buf(i32 %384, i32* %385)
  store i32* %386, i32** %14, align 8
  %387 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %388 = load i32*, i32** %14, align 8
  %389 = load i32*, i32** %15, align 8
  %390 = ptrtoint i32* %388 to i64
  %391 = ptrtoint i32* %389 to i64
  %392 = sub i64 %390, %391
  %393 = sdiv exact i64 %392, 4
  %394 = trunc i64 %393 to i32
  %395 = call i32* @wpabuf_put(%struct.wpabuf* %387, i32 %394)
  %396 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %397 = load i8*, i8** %20, align 8
  %398 = load i64, i64* %22, align 8
  %399 = call i32 @wpabuf_put_data(%struct.wpabuf* %396, i8* %397, i64 %398)
  %400 = load i8*, i8** %20, align 8
  %401 = call i32 @os_free(i8* %400)
  %402 = load i32, i32* @MSG_MSGDUMP, align 4
  %403 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %404 = call i32 @wpabuf_head(%struct.wpabuf* %403)
  %405 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %406 = call i32 @wpabuf_len(%struct.wpabuf* %405)
  %407 = call i32 @wpa_hexdump_ascii(i32 %402, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 %404, i32 %406)
  %408 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %409 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %10, align 8
  %410 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %409, i32 0, i32 2
  store %struct.wpabuf* %408, %struct.wpabuf** %410, align 8
  %411 = load i8*, i8** @PROC_MSG, align 8
  %412 = ptrtoint i8* %411 to i64
  %413 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %10, align 8
  %414 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %413, i32 0, i32 0
  store i64 %412, i64* %414, align 8
  %415 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %10, align 8
  %416 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %417 = load i32, i32* %25, align 4
  %418 = call %struct.wpabuf* @eap_tnc_build_msg(%struct.eap_tnc_data* %415, %struct.eap_method_ret* %416, i32 %417)
  store %struct.wpabuf* %418, %struct.wpabuf** %5, align 8
  br label %428

419:                                              ; preds = %265, %245, %225
  %420 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %10, align 8
  %421 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %420, i32 0, i32 1
  %422 = load %struct.wpabuf*, %struct.wpabuf** %421, align 8
  %423 = icmp eq %struct.wpabuf* %422, %27
  br i1 %423, label %424, label %427

424:                                              ; preds = %419
  %425 = load %struct.eap_tnc_data*, %struct.eap_tnc_data** %10, align 8
  %426 = getelementptr inbounds %struct.eap_tnc_data, %struct.eap_tnc_data* %425, i32 0, i32 1
  store %struct.wpabuf* null, %struct.wpabuf** %426, align 8
  br label %427

427:                                              ; preds = %424, %419
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %428

428:                                              ; preds = %427, %373, %368, %353, %346, %328, %327, %182, %173, %145, %139, %112, %89, %67, %37
  %429 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  ret %struct.wpabuf* %429
}

declare dso_local i32* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @eap_get_id(%struct.wpabuf*) #1

declare dso_local i32 @WPA_GET_BE32(i32*) #1

declare dso_local %struct.wpabuf* @eap_tnc_build_msg(%struct.eap_tnc_data*, %struct.eap_method_ret*, i32) #1

declare dso_local i64 @eap_tnc_process_cont(%struct.eap_tnc_data*, i32*, i32) #1

declare dso_local %struct.wpabuf* @eap_tnc_process_fragment(%struct.eap_tnc_data*, %struct.eap_method_ret*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @wpabuf_set(%struct.wpabuf*, i32*, i32) #1

declare dso_local i32 @tncc_init_connection(i32) #1

declare dso_local i32 @tncc_process_if_tnccs(i32, i32, i32) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpa_msg(i32, i32, i8*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @eap_msg_alloc(i32, i32, i32, i32, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i64 @tncc_total_send_len(i32) #1

declare dso_local i8* @tncc_if_tnccs_start(i32) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i8* @tncc_if_tnccs_end(...) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i8*, i64) #1

declare dso_local i32* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32* @tncc_copy_send_buf(i32, i32*) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
