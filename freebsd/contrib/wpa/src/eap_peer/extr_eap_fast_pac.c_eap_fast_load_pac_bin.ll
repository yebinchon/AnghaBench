; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast_pac.c_eap_fast_load_pac_bin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast_pac.c_eap_fast_load_pac_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_fast_pac = type { i32, i32, %struct.eap_fast_pac*, i32*, i32*, i32, i8* }
%struct.wpa_config_blob = type { i64, i32* }

@.str = private unnamed_addr constant [8 x i8] c"blob://\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"EAP-FAST: No PAC blob '%s' - assume no PAC entries have been provisioned\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"EAP-FAST: No PAC file '%s' - assume no PAC entries have been provisioned\00", align 1
@EAP_FAST_PAC_BINARY_MAGIC = common dso_local global i64 0, align 8
@EAP_FAST_PAC_BINARY_FORMAT_VERSION = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"EAP-FAST: Invalid PAC file '%s' (bin)\00", align 1
@EAP_FAST_PAC_KEY_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"EAP-FAST: Read %lu PAC entries from '%s' (bin)\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"EAP-FAST: Failed to parse PAC file '%s' (bin)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_fast_load_pac_bin(%struct.eap_sm* %0, %struct.eap_fast_pac** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_fast_pac**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.wpa_config_blob*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.eap_fast_pac*, align 8
  %15 = alloca %struct.eap_fast_pac*, align 8
  %16 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_fast_pac** %1, %struct.eap_fast_pac*** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.wpa_config_blob* null, %struct.wpa_config_blob** %8, align 8
  store i64 0, i64* %13, align 8
  %17 = load %struct.eap_fast_pac**, %struct.eap_fast_pac*** %6, align 8
  store %struct.eap_fast_pac* null, %struct.eap_fast_pac** %17, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %264

21:                                               ; preds = %3
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @os_strncmp(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %21
  %26 = load %struct.eap_sm*, %struct.eap_sm** %5, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 7
  %29 = call %struct.wpa_config_blob* @eap_get_config_blob(%struct.eap_sm* %26, i8* %28)
  store %struct.wpa_config_blob* %29, %struct.wpa_config_blob** %8, align 8
  %30 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %8, align 8
  %31 = icmp eq %struct.wpa_config_blob* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load i32, i32* @MSG_INFO, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 7
  %36 = call i32 (i32, i8*, ...) @wpa_printf(i32 %33, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  store i32 0, i32* %4, align 4
  br label %264

37:                                               ; preds = %25
  %38 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %8, align 8
  %39 = getelementptr inbounds %struct.wpa_config_blob, %struct.wpa_config_blob* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %9, align 8
  %41 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %8, align 8
  %42 = getelementptr inbounds %struct.wpa_config_blob, %struct.wpa_config_blob* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %12, align 8
  br label %55

44:                                               ; preds = %21
  %45 = load i8*, i8** %7, align 8
  %46 = call i64 @os_readfile(i8* %45, i64* %12)
  %47 = inttoptr i64 %46 to i32*
  store i32* %47, i32** %9, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* @MSG_INFO, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 (i32, i8*, ...) @wpa_printf(i32 %51, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  store i32 0, i32* %4, align 4
  br label %264

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54, %37
  %56 = load i64, i64* %12, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %8, align 8
  %60 = icmp eq %struct.wpa_config_blob* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @os_free(i32* %62)
  br label %64

64:                                               ; preds = %61, %58
  store i32 0, i32* %4, align 4
  br label %264

65:                                               ; preds = %55
  %66 = load i64, i64* %12, align 8
  %67 = icmp ult i64 %66, 6
  br i1 %67, label %79, label %68

68:                                               ; preds = %65
  %69 = load i32*, i32** %9, align 8
  %70 = call i64 @WPA_GET_BE32(i32* %69)
  %71 = load i64, i64* @EAP_FAST_PAC_BINARY_MAGIC, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %79, label %73

73:                                               ; preds = %68
  %74 = load i32*, i32** %9, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 4
  %76 = call i8* @WPA_GET_BE16(i32* %75)
  %77 = load i8*, i8** @EAP_FAST_PAC_BINARY_FORMAT_VERSION, align 8
  %78 = icmp ne i8* %76, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %73, %68, %65
  %80 = load i32, i32* @MSG_INFO, align 4
  %81 = load i8*, i8** %7, align 8
  %82 = call i32 (i32, i8*, ...) @wpa_printf(i32 %80, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %81)
  %83 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %8, align 8
  %84 = icmp eq %struct.wpa_config_blob* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load i32*, i32** %9, align 8
  %87 = call i32 @os_free(i32* %86)
  br label %88

88:                                               ; preds = %85, %79
  store i32 -1, i32* %4, align 4
  br label %264

89:                                               ; preds = %73
  store %struct.eap_fast_pac* null, %struct.eap_fast_pac** %15, align 8
  store %struct.eap_fast_pac* null, %struct.eap_fast_pac** %14, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 6
  store i32* %91, i32** %11, align 8
  %92 = load i32*, i32** %9, align 8
  %93 = load i64, i64* %12, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  store i32* %94, i32** %10, align 8
  br label %95

95:                                               ; preds = %235, %89
  %96 = load i32*, i32** %11, align 8
  %97 = load i32*, i32** %10, align 8
  %98 = icmp ult i32* %96, %97
  br i1 %98, label %99, label %237

99:                                               ; preds = %95
  %100 = load i32*, i32** %10, align 8
  %101 = load i32*, i32** %11, align 8
  %102 = ptrtoint i32* %100 to i64
  %103 = ptrtoint i32* %101 to i64
  %104 = sub i64 %102, %103
  %105 = sdiv exact i64 %104, 4
  %106 = load i32, i32* @EAP_FAST_PAC_KEY_LEN, align 4
  %107 = add nsw i32 2, %106
  %108 = add nsw i32 %107, 2
  %109 = add nsw i32 %108, 2
  %110 = sext i32 %109 to i64
  %111 = icmp slt i64 %105, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %99
  store %struct.eap_fast_pac* null, %struct.eap_fast_pac** %14, align 8
  br label %248

113:                                              ; preds = %99
  %114 = call %struct.eap_fast_pac* @os_zalloc(i32 48)
  store %struct.eap_fast_pac* %114, %struct.eap_fast_pac** %14, align 8
  %115 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %14, align 8
  %116 = icmp eq %struct.eap_fast_pac* %115, null
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  br label %248

118:                                              ; preds = %113
  %119 = load i32*, i32** %11, align 8
  %120 = call i8* @WPA_GET_BE16(i32* %119)
  %121 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %14, align 8
  %122 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %121, i32 0, i32 6
  store i8* %120, i8** %122, align 8
  %123 = load i32*, i32** %11, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 2
  store i32* %124, i32** %11, align 8
  %125 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %14, align 8
  %126 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 8
  %128 = load i32*, i32** %11, align 8
  %129 = load i32, i32* @EAP_FAST_PAC_KEY_LEN, align 4
  %130 = call i32 @os_memcpy(i32 %127, i32* %128, i32 %129)
  %131 = load i32, i32* @EAP_FAST_PAC_KEY_LEN, align 4
  %132 = load i32*, i32** %11, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  store i32* %134, i32** %11, align 8
  %135 = load i32*, i32** %11, align 8
  %136 = call i8* @WPA_GET_BE16(i32* %135)
  %137 = ptrtoint i8* %136 to i32
  store i32 %137, i32* %16, align 4
  %138 = load i32*, i32** %11, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 2
  store i32* %139, i32** %11, align 8
  %140 = load i32, i32* %16, align 4
  %141 = sext i32 %140 to i64
  %142 = load i32*, i32** %10, align 8
  %143 = load i32*, i32** %11, align 8
  %144 = ptrtoint i32* %142 to i64
  %145 = ptrtoint i32* %143 to i64
  %146 = sub i64 %144, %145
  %147 = sdiv exact i64 %146, 4
  %148 = icmp sgt i64 %141, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %118
  br label %248

150:                                              ; preds = %118
  %151 = load i32, i32* %16, align 4
  %152 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %14, align 8
  %153 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  %154 = load i32*, i32** %11, align 8
  %155 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %14, align 8
  %156 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i8* @os_memdup(i32* %154, i32 %157)
  %159 = bitcast i8* %158 to i32*
  %160 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %14, align 8
  %161 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %160, i32 0, i32 4
  store i32* %159, i32** %161, align 8
  %162 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %14, align 8
  %163 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %162, i32 0, i32 4
  %164 = load i32*, i32** %163, align 8
  %165 = icmp eq i32* %164, null
  br i1 %165, label %166, label %167

166:                                              ; preds = %150
  br label %248

167:                                              ; preds = %150
  %168 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %14, align 8
  %169 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32*, i32** %11, align 8
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  store i32* %173, i32** %11, align 8
  %174 = load i32*, i32** %10, align 8
  %175 = load i32*, i32** %11, align 8
  %176 = ptrtoint i32* %174 to i64
  %177 = ptrtoint i32* %175 to i64
  %178 = sub i64 %176, %177
  %179 = sdiv exact i64 %178, 4
  %180 = icmp sgt i64 2, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %167
  br label %248

182:                                              ; preds = %167
  %183 = load i32*, i32** %11, align 8
  %184 = call i8* @WPA_GET_BE16(i32* %183)
  %185 = ptrtoint i8* %184 to i32
  store i32 %185, i32* %16, align 4
  %186 = load i32*, i32** %11, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 2
  store i32* %187, i32** %11, align 8
  %188 = load i32, i32* %16, align 4
  %189 = sext i32 %188 to i64
  %190 = load i32*, i32** %10, align 8
  %191 = load i32*, i32** %11, align 8
  %192 = ptrtoint i32* %190 to i64
  %193 = ptrtoint i32* %191 to i64
  %194 = sub i64 %192, %193
  %195 = sdiv exact i64 %194, 4
  %196 = icmp sgt i64 %189, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %182
  br label %248

198:                                              ; preds = %182
  %199 = load i32, i32* %16, align 4
  %200 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %14, align 8
  %201 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %200, i32 0, i32 1
  store i32 %199, i32* %201, align 4
  %202 = load i32*, i32** %11, align 8
  %203 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %14, align 8
  %204 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i8* @os_memdup(i32* %202, i32 %205)
  %207 = bitcast i8* %206 to i32*
  %208 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %14, align 8
  %209 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %208, i32 0, i32 3
  store i32* %207, i32** %209, align 8
  %210 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %14, align 8
  %211 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %210, i32 0, i32 3
  %212 = load i32*, i32** %211, align 8
  %213 = icmp eq i32* %212, null
  br i1 %213, label %214, label %215

214:                                              ; preds = %198
  br label %248

215:                                              ; preds = %198
  %216 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %14, align 8
  %217 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load i32*, i32** %11, align 8
  %220 = sext i32 %218 to i64
  %221 = getelementptr inbounds i32, i32* %219, i64 %220
  store i32* %221, i32** %11, align 8
  %222 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %14, align 8
  %223 = call i32 @eap_fast_pac_get_a_id(%struct.eap_fast_pac* %222)
  %224 = load i64, i64* %13, align 8
  %225 = add i64 %224, 1
  store i64 %225, i64* %13, align 8
  %226 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %15, align 8
  %227 = icmp ne %struct.eap_fast_pac* %226, null
  br i1 %227, label %228, label %232

228:                                              ; preds = %215
  %229 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %14, align 8
  %230 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %15, align 8
  %231 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %230, i32 0, i32 2
  store %struct.eap_fast_pac* %229, %struct.eap_fast_pac** %231, align 8
  br label %235

232:                                              ; preds = %215
  %233 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %14, align 8
  %234 = load %struct.eap_fast_pac**, %struct.eap_fast_pac*** %6, align 8
  store %struct.eap_fast_pac* %233, %struct.eap_fast_pac** %234, align 8
  br label %235

235:                                              ; preds = %232, %228
  %236 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %14, align 8
  store %struct.eap_fast_pac* %236, %struct.eap_fast_pac** %15, align 8
  br label %95

237:                                              ; preds = %95
  %238 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %8, align 8
  %239 = icmp eq %struct.wpa_config_blob* %238, null
  br i1 %239, label %240, label %243

240:                                              ; preds = %237
  %241 = load i32*, i32** %9, align 8
  %242 = call i32 @os_free(i32* %241)
  br label %243

243:                                              ; preds = %240, %237
  %244 = load i32, i32* @MSG_DEBUG, align 4
  %245 = load i64, i64* %13, align 8
  %246 = load i8*, i8** %7, align 8
  %247 = call i32 (i32, i8*, ...) @wpa_printf(i32 %244, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i64 %245, i8* %246)
  store i32 0, i32* %4, align 4
  br label %264

248:                                              ; preds = %214, %197, %181, %166, %149, %117, %112
  %249 = load i32, i32* @MSG_INFO, align 4
  %250 = load i8*, i8** %7, align 8
  %251 = call i32 (i32, i8*, ...) @wpa_printf(i32 %249, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8* %250)
  %252 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %8, align 8
  %253 = icmp eq %struct.wpa_config_blob* %252, null
  br i1 %253, label %254, label %257

254:                                              ; preds = %248
  %255 = load i32*, i32** %9, align 8
  %256 = call i32 @os_free(i32* %255)
  br label %257

257:                                              ; preds = %254, %248
  %258 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %14, align 8
  %259 = icmp ne %struct.eap_fast_pac* %258, null
  br i1 %259, label %260, label %263

260:                                              ; preds = %257
  %261 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %14, align 8
  %262 = call i32 @eap_fast_free_pac(%struct.eap_fast_pac* %261)
  br label %263

263:                                              ; preds = %260, %257
  store i32 -1, i32* %4, align 4
  br label %264

264:                                              ; preds = %263, %243, %88, %64, %50, %32, %20
  %265 = load i32, i32* %4, align 4
  ret i32 %265
}

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #1

declare dso_local %struct.wpa_config_blob* @eap_get_config_blob(%struct.eap_sm*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @os_readfile(i8*, i64*) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i64 @WPA_GET_BE32(i32*) #1

declare dso_local i8* @WPA_GET_BE16(i32*) #1

declare dso_local %struct.eap_fast_pac* @os_zalloc(i32) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

declare dso_local i8* @os_memdup(i32*, i32) #1

declare dso_local i32 @eap_fast_pac_get_a_id(%struct.eap_fast_pac*) #1

declare dso_local i32 @eap_fast_free_pac(%struct.eap_fast_pac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
