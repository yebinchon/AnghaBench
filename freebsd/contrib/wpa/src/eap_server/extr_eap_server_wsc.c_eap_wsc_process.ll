; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_wsc.c_eap_wsc_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_wsc.c_eap_wsc_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.wpabuf = type { i32 }
%struct.eap_wsc_data = type { i64, %struct.wpabuf*, i32, i64 }

@eap_wsc_ext_reg_timeout = common dso_local global i32 0, align 4
@FAIL = common dso_local global i32 0, align 4
@EAP_VENDOR_WFA = common dso_local global i32 0, align 4
@EAP_VENDOR_TYPE_WSC = common dso_local global i32 0, align 4
@WSC_FLAGS_LF = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"EAP-WSC: Message underflow\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"EAP-WSC: Invalid Message Length\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"EAP-WSC: Received packet: Op-Code %d Flags 0x%x Message Length %d\00", align 1
@WAIT_FRAG_ACK = common dso_local global i64 0, align 8
@WSC_FRAG_ACK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"EAP-WSC: Unexpected Op-Code %d in WAIT_FRAG_ACK state\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"EAP-WSC: Fragment acknowledged\00", align 1
@MESG = common dso_local global i32 0, align 4
@WSC_ACK = common dso_local global i32 0, align 4
@WSC_NACK = common dso_local global i32 0, align 4
@WSC_MSG = common dso_local global i32 0, align 4
@WSC_Done = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"EAP-WSC: Unexpected Op-Code %d\00", align 1
@WSC_FLAGS_MF = common dso_local global i32 0, align 4
@FRAG_ACK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [68 x i8] c"EAP-WSC: WPS processing completed successfully - report EAP failure\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"EAP-WSC: WPS processing failed\00", align 1
@METHOD_PENDING_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, i8*, %struct.wpabuf*)* @eap_wsc_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_wsc_process(%struct.eap_sm* %0, i8* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_wsc_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.wpabuf, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %6, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.eap_wsc_data*
  store %struct.eap_wsc_data* %18, %struct.eap_wsc_data** %7, align 8
  store i32 0, i32* %14, align 4
  %19 = load i32, i32* @eap_wsc_ext_reg_timeout, align 4
  %20 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %21 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %7, align 8
  %22 = call i32 @eloop_cancel_timeout(i32 %19, %struct.eap_sm* %20, %struct.eap_wsc_data* %21)
  %23 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %7, align 8
  %24 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %7, align 8
  %29 = load i32, i32* @FAIL, align 4
  %30 = call i32 @eap_wsc_state(%struct.eap_wsc_data* %28, i32 %29)
  br label %262

31:                                               ; preds = %3
  %32 = load i32, i32* @EAP_VENDOR_WFA, align 4
  %33 = load i32, i32* @EAP_VENDOR_TYPE_WSC, align 4
  %34 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %35 = call i32* @eap_hdr_validate(i32 %32, i32 %33, %struct.wpabuf* %34, i64* %11)
  store i32* %35, i32** %9, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i64, i64* %11, align 8
  %40 = icmp ult i64 %39, 2
  br i1 %40, label %41, label %42

41:                                               ; preds = %38, %31
  br label %262

42:                                               ; preds = %38
  %43 = load i32*, i32** %9, align 8
  store i32* %43, i32** %8, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = load i64, i64* %11, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32* %46, i32** %10, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %9, align 8
  %49 = load i32, i32* %47, align 4
  store i32 %49, i32* %12, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %9, align 8
  %52 = load i32, i32* %50, align 4
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @WSC_FLAGS_LF, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %89

57:                                               ; preds = %42
  %58 = load i32*, i32** %10, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = ptrtoint i32* %58 to i64
  %61 = ptrtoint i32* %59 to i64
  %62 = sub i64 %60, %61
  %63 = sdiv exact i64 %62, 4
  %64 = icmp slt i64 %63, 2
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load i32, i32* @MSG_DEBUG, align 4
  %67 = call i32 (i32, i8*, ...) @wpa_printf(i32 %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %262

68:                                               ; preds = %57
  %69 = load i32*, i32** %9, align 8
  %70 = call i32 @WPA_GET_BE16(i32* %69)
  store i32 %70, i32* %14, align 4
  %71 = load i32*, i32** %9, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  store i32* %72, i32** %9, align 8
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = load i32*, i32** %10, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = ptrtoint i32* %75 to i64
  %78 = ptrtoint i32* %76 to i64
  %79 = sub i64 %77, %78
  %80 = sdiv exact i64 %79, 4
  %81 = icmp slt i64 %74, %80
  br i1 %81, label %85, label %82

82:                                               ; preds = %68
  %83 = load i32, i32* %14, align 4
  %84 = icmp sgt i32 %83, 50000
  br i1 %84, label %85, label %88

85:                                               ; preds = %82, %68
  %86 = load i32, i32* @MSG_DEBUG, align 4
  %87 = call i32 (i32, i8*, ...) @wpa_printf(i32 %86, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %262

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %88, %42
  %90 = load i32, i32* @MSG_DEBUG, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %14, align 4
  %94 = call i32 (i32, i8*, ...) @wpa_printf(i32 %90, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 %91, i32 %92, i32 %93)
  %95 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %7, align 8
  %96 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @WAIT_FRAG_ACK, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %117

100:                                              ; preds = %89
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* @WSC_FRAG_ACK, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %100
  %105 = load i32, i32* @MSG_DEBUG, align 4
  %106 = load i32, i32* %12, align 4
  %107 = call i32 (i32, i8*, ...) @wpa_printf(i32 %105, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %106)
  %108 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %7, align 8
  %109 = load i32, i32* @FAIL, align 4
  %110 = call i32 @eap_wsc_state(%struct.eap_wsc_data* %108, i32 %109)
  br label %262

111:                                              ; preds = %100
  %112 = load i32, i32* @MSG_DEBUG, align 4
  %113 = call i32 (i32, i8*, ...) @wpa_printf(i32 %112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %114 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %7, align 8
  %115 = load i32, i32* @MESG, align 4
  %116 = call i32 @eap_wsc_state(%struct.eap_wsc_data* %114, i32 %115)
  br label %262

117:                                              ; preds = %89
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* @WSC_ACK, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %140

121:                                              ; preds = %117
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* @WSC_NACK, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %140

125:                                              ; preds = %121
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* @WSC_MSG, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %140

129:                                              ; preds = %125
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* @WSC_Done, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %140

133:                                              ; preds = %129
  %134 = load i32, i32* @MSG_DEBUG, align 4
  %135 = load i32, i32* %12, align 4
  %136 = call i32 (i32, i8*, ...) @wpa_printf(i32 %134, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %135)
  %137 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %7, align 8
  %138 = load i32, i32* @FAIL, align 4
  %139 = call i32 @eap_wsc_state(%struct.eap_wsc_data* %137, i32 %138)
  br label %262

140:                                              ; preds = %129, %125, %121, %117
  %141 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %7, align 8
  %142 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %141, i32 0, i32 1
  %143 = load %struct.wpabuf*, %struct.wpabuf** %142, align 8
  %144 = icmp ne %struct.wpabuf* %143, null
  br i1 %144, label %145, label %162

145:                                              ; preds = %140
  %146 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %7, align 8
  %147 = load i32*, i32** %9, align 8
  %148 = load i32*, i32** %10, align 8
  %149 = load i32*, i32** %9, align 8
  %150 = ptrtoint i32* %148 to i64
  %151 = ptrtoint i32* %149 to i64
  %152 = sub i64 %150, %151
  %153 = sdiv exact i64 %152, 4
  %154 = trunc i64 %153 to i32
  %155 = load i32, i32* %12, align 4
  %156 = call i64 @eap_wsc_process_cont(%struct.eap_wsc_data* %146, i32* %147, i32 %154, i32 %155)
  %157 = icmp slt i64 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %145
  %159 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %7, align 8
  %160 = load i32, i32* @FAIL, align 4
  %161 = call i32 @eap_wsc_state(%struct.eap_wsc_data* %159, i32 %160)
  br label %262

162:                                              ; preds = %145, %140
  %163 = load i32, i32* %13, align 4
  %164 = load i32, i32* @WSC_FLAGS_MF, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %191

167:                                              ; preds = %162
  %168 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %7, align 8
  %169 = load i32, i32* %13, align 4
  %170 = load i32, i32* %12, align 4
  %171 = load i32, i32* %14, align 4
  %172 = load i32*, i32** %9, align 8
  %173 = load i32*, i32** %10, align 8
  %174 = load i32*, i32** %9, align 8
  %175 = ptrtoint i32* %173 to i64
  %176 = ptrtoint i32* %174 to i64
  %177 = sub i64 %175, %176
  %178 = sdiv exact i64 %177, 4
  %179 = trunc i64 %178 to i32
  %180 = call i64 @eap_wsc_process_fragment(%struct.eap_wsc_data* %168, i32 %169, i32 %170, i32 %171, i32* %172, i32 %179)
  %181 = icmp slt i64 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %167
  %183 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %7, align 8
  %184 = load i32, i32* @FAIL, align 4
  %185 = call i32 @eap_wsc_state(%struct.eap_wsc_data* %183, i32 %184)
  br label %190

186:                                              ; preds = %167
  %187 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %7, align 8
  %188 = load i32, i32* @FRAG_ACK, align 4
  %189 = call i32 @eap_wsc_state(%struct.eap_wsc_data* %187, i32 %188)
  br label %190

190:                                              ; preds = %186, %182
  br label %262

191:                                              ; preds = %162
  %192 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %7, align 8
  %193 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %192, i32 0, i32 1
  %194 = load %struct.wpabuf*, %struct.wpabuf** %193, align 8
  %195 = icmp eq %struct.wpabuf* %194, null
  br i1 %195, label %196, label %208

196:                                              ; preds = %191
  %197 = load i32*, i32** %9, align 8
  %198 = load i32*, i32** %10, align 8
  %199 = load i32*, i32** %9, align 8
  %200 = ptrtoint i32* %198 to i64
  %201 = ptrtoint i32* %199 to i64
  %202 = sub i64 %200, %201
  %203 = sdiv exact i64 %202, 4
  %204 = trunc i64 %203 to i32
  %205 = call i32 @wpabuf_set(%struct.wpabuf* %16, i32* %197, i32 %204)
  %206 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %7, align 8
  %207 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %206, i32 0, i32 1
  store %struct.wpabuf* %16, %struct.wpabuf** %207, align 8
  br label %208

208:                                              ; preds = %196, %191
  %209 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %7, align 8
  %210 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* %12, align 4
  %213 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %7, align 8
  %214 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %213, i32 0, i32 1
  %215 = load %struct.wpabuf*, %struct.wpabuf** %214, align 8
  %216 = call i32 @wps_process_msg(i32 %211, i32 %212, %struct.wpabuf* %215)
  store i32 %216, i32* %15, align 4
  %217 = load i32, i32* %15, align 4
  switch i32 %217, label %249 [
    i32 130, label %218
    i32 131, label %224
    i32 129, label %228
    i32 128, label %234
  ]

218:                                              ; preds = %208
  %219 = load i32, i32* @MSG_DEBUG, align 4
  %220 = call i32 (i32, i8*, ...) @wpa_printf(i32 %219, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i64 0, i64 0))
  %221 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %7, align 8
  %222 = load i32, i32* @FAIL, align 4
  %223 = call i32 @eap_wsc_state(%struct.eap_wsc_data* %221, i32 %222)
  br label %249

224:                                              ; preds = %208
  %225 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %7, align 8
  %226 = load i32, i32* @MESG, align 4
  %227 = call i32 @eap_wsc_state(%struct.eap_wsc_data* %225, i32 %226)
  br label %249

228:                                              ; preds = %208
  %229 = load i32, i32* @MSG_DEBUG, align 4
  %230 = call i32 (i32, i8*, ...) @wpa_printf(i32 %229, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %231 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %7, align 8
  %232 = load i32, i32* @FAIL, align 4
  %233 = call i32 @eap_wsc_state(%struct.eap_wsc_data* %231, i32 %232)
  br label %249

234:                                              ; preds = %208
  %235 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %7, align 8
  %236 = load i32, i32* @MESG, align 4
  %237 = call i32 @eap_wsc_state(%struct.eap_wsc_data* %235, i32 %236)
  %238 = load i32, i32* @METHOD_PENDING_WAIT, align 4
  %239 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %240 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %239, i32 0, i32 0
  store i32 %238, i32* %240, align 4
  %241 = load i32, i32* @eap_wsc_ext_reg_timeout, align 4
  %242 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %243 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %7, align 8
  %244 = call i32 @eloop_cancel_timeout(i32 %241, %struct.eap_sm* %242, %struct.eap_wsc_data* %243)
  %245 = load i32, i32* @eap_wsc_ext_reg_timeout, align 4
  %246 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %247 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %7, align 8
  %248 = call i32 @eloop_register_timeout(i32 5, i32 0, i32 %245, %struct.eap_sm* %246, %struct.eap_wsc_data* %247)
  br label %249

249:                                              ; preds = %208, %234, %228, %224, %218
  %250 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %7, align 8
  %251 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %250, i32 0, i32 1
  %252 = load %struct.wpabuf*, %struct.wpabuf** %251, align 8
  %253 = icmp ne %struct.wpabuf* %252, %16
  br i1 %253, label %254, label %259

254:                                              ; preds = %249
  %255 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %7, align 8
  %256 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %255, i32 0, i32 1
  %257 = load %struct.wpabuf*, %struct.wpabuf** %256, align 8
  %258 = call i32 @wpabuf_free(%struct.wpabuf* %257)
  br label %259

259:                                              ; preds = %254, %249
  %260 = load %struct.eap_wsc_data*, %struct.eap_wsc_data** %7, align 8
  %261 = getelementptr inbounds %struct.eap_wsc_data, %struct.eap_wsc_data* %260, i32 0, i32 1
  store %struct.wpabuf* null, %struct.wpabuf** %261, align 8
  br label %262

262:                                              ; preds = %259, %190, %158, %133, %111, %104, %85, %65, %41, %27
  ret void
}

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.eap_sm*, %struct.eap_wsc_data*) #1

declare dso_local i32 @eap_wsc_state(%struct.eap_wsc_data*, i32) #1

declare dso_local i32* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @WPA_GET_BE16(i32*) #1

declare dso_local i64 @eap_wsc_process_cont(%struct.eap_wsc_data*, i32*, i32, i32) #1

declare dso_local i64 @eap_wsc_process_fragment(%struct.eap_wsc_data*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @wpabuf_set(%struct.wpabuf*, i32*, i32) #1

declare dso_local i32 @wps_process_msg(i32, i32, %struct.wpabuf*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.eap_sm*, %struct.eap_wsc_data*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
