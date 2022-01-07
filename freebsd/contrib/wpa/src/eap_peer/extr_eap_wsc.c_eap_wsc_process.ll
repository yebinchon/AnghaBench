; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_wsc.c_eap_wsc_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_wsc.c_eap_wsc_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_method_ret = type { i64, i32, i8* }
%struct.wpabuf = type { i32 }
%struct.eap_wsc_data = type { i64, i64, i32*, i32, i32, %struct.wpabuf* }

@EAP_VENDOR_WFA = common dso_local global i32 0, align 4
@EAP_VENDOR_TYPE_WSC = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@WSC_FLAGS_LF = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"EAP-WSC: Message underflow\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"EAP-WSC: Invalid Message Length\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"EAP-WSC: Received packet: Op-Code %d Flags 0x%x Message Length %d\00", align 1
@WAIT_FRAG_ACK = common dso_local global i64 0, align 8
@WSC_FRAG_ACK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"EAP-WSC: Unexpected Op-Code %d in WAIT_FRAG_ACK state\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"EAP-WSC: Fragment acknowledged\00", align 1
@MESG = common dso_local global i64 0, align 8
@WSC_ACK = common dso_local global i32 0, align 4
@WSC_NACK = common dso_local global i32 0, align 4
@WSC_MSG = common dso_local global i32 0, align 4
@WSC_Done = common dso_local global i32 0, align 4
@WSC_Start = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"EAP-WSC: Unexpected Op-Code %d\00", align 1
@WAIT_START = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [51 x i8] c"EAP-WSC: Unexpected Op-Code %d in WAIT_START state\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"EAP-WSC: Received start\00", align 1
@WSC_FLAGS_MF = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [70 x i8] c"EAP-WSC: WPS processing completed successfully - wait for EAP failure\00", align 1
@FAIL = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [31 x i8] c"EAP-WSC: WPS processing failed\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"EAP-WSC: Failed to receive message from WPS\00", align 1
@METHOD_DONE = common dso_local global i64 0, align 8
@DECISION_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, i8*, %struct.eap_method_ret*, %struct.wpabuf*)* @eap_wsc_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_wsc_process(%struct.eap_sm* %0, i8* %1, %struct.eap_method_ret* %2, %struct.wpabuf* %3) #0 {
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.eap_method_ret*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca %struct.eap_wsc_data*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.wpabuf, align 4
  %21 = alloca %struct.wpabuf*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %8, align 8
  store %struct.wpabuf* %3, %struct.wpabuf** %9, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = bitcast i8* %22 to %struct.eap_wsc_data*
  store %struct.eap_wsc_data* %23, %struct.eap_wsc_data** %10, align 8
  store i32 0, i32* %18, align 4
  %24 = load i32, i32* @EAP_VENDOR_WFA, align 4
  %25 = load i32, i32* @EAP_VENDOR_TYPE_WSC, align 4
  %26 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %27 = call i32* @eap_hdr_validate(i32 %24, i32 %25, %struct.wpabuf* %26, i64* %14)
  store i32* %27, i32** %12, align 8
  %28 = load i32*, i32** %12, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %4
  %31 = load i64, i64* %14, align 8
  %32 = icmp ult i64 %31, 2
  br i1 %32, label %33, label %37

33:                                               ; preds = %30, %4
  %34 = load i8*, i8** @TRUE, align 8
  %35 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %36 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %348

37:                                               ; preds = %30
  %38 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %39 = call i32 @eap_get_id(%struct.wpabuf* %38)
  store i32 %39, i32* %17, align 4
  %40 = load i32*, i32** %12, align 8
  store i32* %40, i32** %11, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = load i64, i64* %14, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  store i32* %43, i32** %13, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %12, align 8
  %46 = load i32, i32* %44, align 4
  store i32 %46, i32* %15, align 4
  %47 = load i32*, i32** %12, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %12, align 8
  %49 = load i32, i32* %47, align 4
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* @WSC_FLAGS_LF, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %92

54:                                               ; preds = %37
  %55 = load i32*, i32** %13, align 8
  %56 = load i32*, i32** %12, align 8
  %57 = ptrtoint i32* %55 to i64
  %58 = ptrtoint i32* %56 to i64
  %59 = sub i64 %57, %58
  %60 = sdiv exact i64 %59, 4
  %61 = icmp slt i64 %60, 2
  br i1 %61, label %62, label %68

62:                                               ; preds = %54
  %63 = load i32, i32* @MSG_DEBUG, align 4
  %64 = call i32 (i32, i8*, ...) @wpa_printf(i32 %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %65 = load i8*, i8** @TRUE, align 8
  %66 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %67 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %348

68:                                               ; preds = %54
  %69 = load i32*, i32** %12, align 8
  %70 = call i32 @WPA_GET_BE16(i32* %69)
  store i32 %70, i32* %18, align 4
  %71 = load i32*, i32** %12, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  store i32* %72, i32** %12, align 8
  %73 = load i32, i32* %18, align 4
  %74 = sext i32 %73 to i64
  %75 = load i32*, i32** %13, align 8
  %76 = load i32*, i32** %12, align 8
  %77 = ptrtoint i32* %75 to i64
  %78 = ptrtoint i32* %76 to i64
  %79 = sub i64 %77, %78
  %80 = sdiv exact i64 %79, 4
  %81 = icmp slt i64 %74, %80
  br i1 %81, label %85, label %82

82:                                               ; preds = %68
  %83 = load i32, i32* %18, align 4
  %84 = icmp sgt i32 %83, 50000
  br i1 %84, label %85, label %91

85:                                               ; preds = %82, %68
  %86 = load i32, i32* @MSG_DEBUG, align 4
  %87 = call i32 (i32, i8*, ...) @wpa_printf(i32 %86, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i8*, i8** @TRUE, align 8
  %89 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %90 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %348

91:                                               ; preds = %82
  br label %92

92:                                               ; preds = %91, %37
  %93 = load i32, i32* @MSG_DEBUG, align 4
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %18, align 4
  %97 = call i32 (i32, i8*, ...) @wpa_printf(i32 %93, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 %94, i32 %95, i32 %96)
  %98 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %10, align 8
  %99 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @WAIT_FRAG_ACK, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %124

103:                                              ; preds = %92
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* @WSC_FRAG_ACK, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %103
  %108 = load i32, i32* @MSG_DEBUG, align 4
  %109 = load i32, i32* %15, align 4
  %110 = call i32 (i32, i8*, ...) @wpa_printf(i32 %108, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %109)
  %111 = load i8*, i8** @TRUE, align 8
  %112 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %113 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %112, i32 0, i32 2
  store i8* %111, i8** %113, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %348

114:                                              ; preds = %103
  %115 = load i32, i32* @MSG_DEBUG, align 4
  %116 = call i32 (i32, i8*, ...) @wpa_printf(i32 %115, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %117 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %10, align 8
  %118 = load i64, i64* @MESG, align 8
  %119 = call i32 @eap_wsc_state(%struct.eap_wsc_data* %117, i64 %118)
  %120 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %10, align 8
  %121 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %122 = load i32, i32* %17, align 4
  %123 = call %struct.wpabuf* @eap_wsc_build_msg(%struct.eap_wsc_data* %120, %struct.eap_method_ret* %121, i32 %122)
  store %struct.wpabuf* %123, %struct.wpabuf** %5, align 8
  br label %348

124:                                              ; preds = %92
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* @WSC_ACK, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %151

128:                                              ; preds = %124
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* @WSC_NACK, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %151

132:                                              ; preds = %128
  %133 = load i32, i32* %15, align 4
  %134 = load i32, i32* @WSC_MSG, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %151

136:                                              ; preds = %132
  %137 = load i32, i32* %15, align 4
  %138 = load i32, i32* @WSC_Done, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %140, label %151

140:                                              ; preds = %136
  %141 = load i32, i32* %15, align 4
  %142 = load i32, i32* @WSC_Start, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %151

144:                                              ; preds = %140
  %145 = load i32, i32* @MSG_DEBUG, align 4
  %146 = load i32, i32* %15, align 4
  %147 = call i32 (i32, i8*, ...) @wpa_printf(i32 %145, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %146)
  %148 = load i8*, i8** @TRUE, align 8
  %149 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %150 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %149, i32 0, i32 2
  store i8* %148, i8** %150, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %348

151:                                              ; preds = %140, %136, %132, %128, %124
  %152 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %10, align 8
  %153 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @WAIT_START, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %174

157:                                              ; preds = %151
  %158 = load i32, i32* %15, align 4
  %159 = load i32, i32* @WSC_Start, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %168

161:                                              ; preds = %157
  %162 = load i32, i32* @MSG_DEBUG, align 4
  %163 = load i32, i32* %15, align 4
  %164 = call i32 (i32, i8*, ...) @wpa_printf(i32 %162, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i32 %163)
  %165 = load i8*, i8** @TRUE, align 8
  %166 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %167 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %166, i32 0, i32 2
  store i8* %165, i8** %167, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %348

168:                                              ; preds = %157
  %169 = load i32, i32* @MSG_DEBUG, align 4
  %170 = call i32 (i32, i8*, ...) @wpa_printf(i32 %169, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %171 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %10, align 8
  %172 = load i64, i64* @MESG, align 8
  %173 = call i32 @eap_wsc_state(%struct.eap_wsc_data* %171, i64 %172)
  br label %285

174:                                              ; preds = %151
  %175 = load i32, i32* %15, align 4
  %176 = load i32, i32* @WSC_Start, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %185

178:                                              ; preds = %174
  %179 = load i32, i32* @MSG_DEBUG, align 4
  %180 = load i32, i32* %15, align 4
  %181 = call i32 (i32, i8*, ...) @wpa_printf(i32 %179, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %180)
  %182 = load i8*, i8** @TRUE, align 8
  %183 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %184 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %183, i32 0, i32 2
  store i8* %182, i8** %184, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %348

185:                                              ; preds = %174
  br label %186

186:                                              ; preds = %185
  %187 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %10, align 8
  %188 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %187, i32 0, i32 5
  %189 = load %struct.wpabuf*, %struct.wpabuf** %188, align 8
  %190 = icmp ne %struct.wpabuf* %189, null
  br i1 %190, label %191, label %208

191:                                              ; preds = %186
  %192 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %10, align 8
  %193 = load i32*, i32** %12, align 8
  %194 = load i32*, i32** %13, align 8
  %195 = load i32*, i32** %12, align 8
  %196 = ptrtoint i32* %194 to i64
  %197 = ptrtoint i32* %195 to i64
  %198 = sub i64 %196, %197
  %199 = sdiv exact i64 %198, 4
  %200 = trunc i64 %199 to i32
  %201 = load i32, i32* %15, align 4
  %202 = call i64 @eap_wsc_process_cont(%struct.eap_wsc_data* %192, i32* %193, i32 %200, i32 %201)
  %203 = icmp slt i64 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %191
  %205 = load i8*, i8** @TRUE, align 8
  %206 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %207 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %206, i32 0, i32 2
  store i8* %205, i8** %207, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %348

208:                                              ; preds = %191, %186
  %209 = load i32, i32* %16, align 4
  %210 = load i32, i32* @WSC_FLAGS_MF, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %229

213:                                              ; preds = %208
  %214 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %10, align 8
  %215 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %216 = load i32, i32* %17, align 4
  %217 = load i32, i32* %16, align 4
  %218 = load i32, i32* %15, align 4
  %219 = load i32, i32* %18, align 4
  %220 = load i32*, i32** %12, align 8
  %221 = load i32*, i32** %13, align 8
  %222 = load i32*, i32** %12, align 8
  %223 = ptrtoint i32* %221 to i64
  %224 = ptrtoint i32* %222 to i64
  %225 = sub i64 %223, %224
  %226 = sdiv exact i64 %225, 4
  %227 = trunc i64 %226 to i32
  %228 = call %struct.wpabuf* @eap_wsc_process_fragment(%struct.eap_wsc_data* %214, %struct.eap_method_ret* %215, i32 %216, i32 %217, i32 %218, i32 %219, i32* %220, i32 %227)
  store %struct.wpabuf* %228, %struct.wpabuf** %5, align 8
  br label %348

229:                                              ; preds = %208
  %230 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %10, align 8
  %231 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %230, i32 0, i32 5
  %232 = load %struct.wpabuf*, %struct.wpabuf** %231, align 8
  %233 = icmp eq %struct.wpabuf* %232, null
  br i1 %233, label %234, label %246

234:                                              ; preds = %229
  %235 = load i32*, i32** %12, align 8
  %236 = load i32*, i32** %13, align 8
  %237 = load i32*, i32** %12, align 8
  %238 = ptrtoint i32* %236 to i64
  %239 = ptrtoint i32* %237 to i64
  %240 = sub i64 %238, %239
  %241 = sdiv exact i64 %240, 4
  %242 = trunc i64 %241 to i32
  %243 = call i32 @wpabuf_set(%struct.wpabuf* %20, i32* %235, i32 %242)
  %244 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %10, align 8
  %245 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %244, i32 0, i32 5
  store %struct.wpabuf* %20, %struct.wpabuf** %245, align 8
  br label %246

246:                                              ; preds = %234, %229
  %247 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %10, align 8
  %248 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* %15, align 4
  %251 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %10, align 8
  %252 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %251, i32 0, i32 5
  %253 = load %struct.wpabuf*, %struct.wpabuf** %252, align 8
  %254 = call i32 @wps_process_msg(i32 %249, i32 %250, %struct.wpabuf* %253)
  store i32 %254, i32* %19, align 4
  %255 = load i32, i32* %19, align 4
  switch i32 %255, label %272 [
    i32 130, label %256
    i32 131, label %262
    i32 129, label %266
    i32 128, label %266
  ]

256:                                              ; preds = %246
  %257 = load i32, i32* @MSG_DEBUG, align 4
  %258 = call i32 (i32, i8*, ...) @wpa_printf(i32 %257, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.8, i64 0, i64 0))
  %259 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %10, align 8
  %260 = load i64, i64* @FAIL, align 8
  %261 = call i32 @eap_wsc_state(%struct.eap_wsc_data* %259, i64 %260)
  br label %272

262:                                              ; preds = %246
  %263 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %10, align 8
  %264 = load i64, i64* @MESG, align 8
  %265 = call i32 @eap_wsc_state(%struct.eap_wsc_data* %263, i64 %264)
  br label %272

266:                                              ; preds = %246, %246
  %267 = load i32, i32* @MSG_DEBUG, align 4
  %268 = call i32 (i32, i8*, ...) @wpa_printf(i32 %267, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  %269 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %10, align 8
  %270 = load i64, i64* @FAIL, align 8
  %271 = call i32 @eap_wsc_state(%struct.eap_wsc_data* %269, i64 %270)
  br label %272

272:                                              ; preds = %246, %266, %262, %256
  %273 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %10, align 8
  %274 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %273, i32 0, i32 5
  %275 = load %struct.wpabuf*, %struct.wpabuf** %274, align 8
  %276 = icmp ne %struct.wpabuf* %275, %20
  br i1 %276, label %277, label %282

277:                                              ; preds = %272
  %278 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %10, align 8
  %279 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %278, i32 0, i32 5
  %280 = load %struct.wpabuf*, %struct.wpabuf** %279, align 8
  %281 = call i32 @wpabuf_free(%struct.wpabuf* %280)
  br label %282

282:                                              ; preds = %277, %272
  %283 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %10, align 8
  %284 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %283, i32 0, i32 5
  store %struct.wpabuf* null, %struct.wpabuf** %284, align 8
  br label %285

285:                                              ; preds = %282, %168
  %286 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %10, align 8
  %287 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %286, i32 0, i32 2
  %288 = load i32*, i32** %287, align 8
  %289 = icmp eq i32* %288, null
  br i1 %289, label %290, label %318

290:                                              ; preds = %285
  %291 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %10, align 8
  %292 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %291, i32 0, i32 4
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %10, align 8
  %295 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %294, i32 0, i32 3
  %296 = call i32* @wps_get_msg(i32 %293, i32* %295)
  %297 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %10, align 8
  %298 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %297, i32 0, i32 2
  store i32* %296, i32** %298, align 8
  %299 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %10, align 8
  %300 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %299, i32 0, i32 2
  %301 = load i32*, i32** %300, align 8
  %302 = icmp eq i32* %301, null
  br i1 %302, label %303, label %315

303:                                              ; preds = %290
  %304 = load i32, i32* @MSG_DEBUG, align 4
  %305 = call i32 (i32, i8*, ...) @wpa_printf(i32 %304, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0))
  %306 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %10, align 8
  %307 = load i64, i64* @FAIL, align 8
  %308 = call i32 @eap_wsc_state(%struct.eap_wsc_data* %306, i64 %307)
  %309 = load i64, i64* @METHOD_DONE, align 8
  %310 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %311 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %310, i32 0, i32 0
  store i64 %309, i64* %311, align 8
  %312 = load i32, i32* @DECISION_FAIL, align 4
  %313 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %314 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %313, i32 0, i32 1
  store i32 %312, i32* %314, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %348

315:                                              ; preds = %290
  %316 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %10, align 8
  %317 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %316, i32 0, i32 1
  store i64 0, i64* %317, align 8
  br label %318

318:                                              ; preds = %315, %285
  %319 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %10, align 8
  %320 = load i64, i64* @MESG, align 8
  %321 = call i32 @eap_wsc_state(%struct.eap_wsc_data* %319, i64 %320)
  %322 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %10, align 8
  %323 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %324 = load i32, i32* %17, align 4
  %325 = call %struct.wpabuf* @eap_wsc_build_msg(%struct.eap_wsc_data* %322, %struct.eap_method_ret* %323, i32 %324)
  store %struct.wpabuf* %325, %struct.wpabuf** %21, align 8
  %326 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %10, align 8
  %327 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = load i64, i64* @FAIL, align 8
  %330 = icmp eq i64 %328, %329
  br i1 %330, label %331, label %346

331:                                              ; preds = %318
  %332 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %333 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = load i64, i64* @METHOD_DONE, align 8
  %336 = icmp eq i64 %334, %335
  br i1 %336, label %337, label %346

337:                                              ; preds = %331
  %338 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %339 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = icmp sgt i32 %340, 2
  br i1 %341, label %342, label %345

342:                                              ; preds = %337
  %343 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %344 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %343, i32 0, i32 0
  store i32 2, i32* %344, align 4
  br label %345

345:                                              ; preds = %342, %337
  br label %346

346:                                              ; preds = %345, %331, %318
  %347 = load %struct.wpabuf*, %struct.wpabuf** %21, align 8
  store %struct.wpabuf* %347, %struct.wpabuf** %5, align 8
  br label %348

348:                                              ; preds = %346, %303, %213, %204, %178, %161, %144, %114, %107, %85, %62, %33
  %349 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  ret %struct.wpabuf* %349
}

declare dso_local i32* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #1

declare dso_local i32 @eap_get_id(%struct.wpabuf*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @WPA_GET_BE16(i32*) #1

declare dso_local i32 @eap_wsc_state(%struct.eap_wsc_data*, i64) #1

declare dso_local %struct.wpabuf* @eap_wsc_build_msg(%struct.eap_wsc_data*, %struct.eap_method_ret*, i32) #1

declare dso_local i64 @eap_wsc_process_cont(%struct.eap_wsc_data*, i32*, i32, i32) #1

declare dso_local %struct.wpabuf* @eap_wsc_process_fragment(%struct.eap_wsc_data*, %struct.eap_method_ret*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @wpabuf_set(%struct.wpabuf*, i32*, i32) #1

declare dso_local i32 @wps_process_msg(i32, i32, %struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32* @wps_get_msg(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
