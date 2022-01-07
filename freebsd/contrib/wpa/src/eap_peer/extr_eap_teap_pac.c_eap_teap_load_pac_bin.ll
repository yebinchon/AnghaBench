; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap_pac.c_eap_teap_load_pac_bin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap_pac.c_eap_teap_load_pac_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_teap_pac = type { i32, i32, %struct.eap_teap_pac*, i8*, i8*, i32, i8* }
%struct.wpa_config_blob = type { i64, i32* }

@.str = private unnamed_addr constant [8 x i8] c"blob://\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"EAP-TEAP: No PAC blob '%s' - assume no PAC entries have been provisioned\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"EAP-TEAP: No PAC file '%s' - assume no PAC entries have been provisioned\00", align 1
@EAP_TEAP_PAC_BINARY_MAGIC = common dso_local global i64 0, align 8
@EAP_TEAP_PAC_BINARY_FORMAT_VERSION = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"EAP-TEAP: Invalid PAC file '%s' (bin)\00", align 1
@EAP_TEAP_PAC_KEY_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"EAP-TEAP: Read %lu PAC entries from '%s' (bin)\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"EAP-TEAP: Failed to parse PAC file '%s' (bin)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_teap_load_pac_bin(%struct.eap_sm* %0, %struct.eap_teap_pac** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_teap_pac**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.wpa_config_blob*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.eap_teap_pac*, align 8
  %15 = alloca %struct.eap_teap_pac*, align 8
  %16 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_teap_pac** %1, %struct.eap_teap_pac*** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.wpa_config_blob* null, %struct.wpa_config_blob** %8, align 8
  store i64 0, i64* %13, align 8
  %17 = load %struct.eap_teap_pac**, %struct.eap_teap_pac*** %6, align 8
  store %struct.eap_teap_pac* null, %struct.eap_teap_pac** %17, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %262

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
  %31 = icmp ne %struct.wpa_config_blob* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @MSG_INFO, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 7
  %36 = call i32 (i32, i8*, ...) @wpa_printf(i32 %33, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  store i32 0, i32* %4, align 4
  br label %262

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
  %49 = icmp ne i32* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* @MSG_INFO, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 (i32, i8*, ...) @wpa_printf(i32 %51, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  store i32 0, i32* %4, align 4
  br label %262

54:                                               ; preds = %44
  br label %55

55:                                               ; preds = %54, %37
  %56 = load i64, i64* %12, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %8, align 8
  %60 = icmp ne %struct.wpa_config_blob* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @os_free(i32* %62)
  br label %64

64:                                               ; preds = %61, %58
  store i32 0, i32* %4, align 4
  br label %262

65:                                               ; preds = %55
  %66 = load i64, i64* %12, align 8
  %67 = icmp ult i64 %66, 6
  br i1 %67, label %79, label %68

68:                                               ; preds = %65
  %69 = load i32*, i32** %9, align 8
  %70 = call i64 @WPA_GET_BE32(i32* %69)
  %71 = load i64, i64* @EAP_TEAP_PAC_BINARY_MAGIC, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %79, label %73

73:                                               ; preds = %68
  %74 = load i32*, i32** %9, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 4
  %76 = call i8* @WPA_GET_BE16(i32* %75)
  %77 = load i8*, i8** @EAP_TEAP_PAC_BINARY_FORMAT_VERSION, align 8
  %78 = icmp ne i8* %76, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %73, %68, %65
  %80 = load i32, i32* @MSG_INFO, align 4
  %81 = load i8*, i8** %7, align 8
  %82 = call i32 (i32, i8*, ...) @wpa_printf(i32 %80, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %81)
  %83 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %8, align 8
  %84 = icmp ne %struct.wpa_config_blob* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %79
  %86 = load i32*, i32** %9, align 8
  %87 = call i32 @os_free(i32* %86)
  br label %88

88:                                               ; preds = %85, %79
  store i32 -1, i32* %4, align 4
  br label %262

89:                                               ; preds = %73
  store %struct.eap_teap_pac* null, %struct.eap_teap_pac** %15, align 8
  store %struct.eap_teap_pac* null, %struct.eap_teap_pac** %14, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 6
  store i32* %91, i32** %11, align 8
  %92 = load i32*, i32** %9, align 8
  %93 = load i64, i64* %12, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  store i32* %94, i32** %10, align 8
  br label %95

95:                                               ; preds = %233, %89
  %96 = load i32*, i32** %11, align 8
  %97 = load i32*, i32** %10, align 8
  %98 = icmp ult i32* %96, %97
  br i1 %98, label %99, label %235

99:                                               ; preds = %95
  %100 = load i32*, i32** %10, align 8
  %101 = load i32*, i32** %11, align 8
  %102 = ptrtoint i32* %100 to i64
  %103 = ptrtoint i32* %101 to i64
  %104 = sub i64 %102, %103
  %105 = sdiv exact i64 %104, 4
  %106 = load i32, i32* @EAP_TEAP_PAC_KEY_LEN, align 4
  %107 = add nsw i32 2, %106
  %108 = add nsw i32 %107, 2
  %109 = add nsw i32 %108, 2
  %110 = sext i32 %109 to i64
  %111 = icmp slt i64 %105, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %99
  store %struct.eap_teap_pac* null, %struct.eap_teap_pac** %14, align 8
  br label %246

113:                                              ; preds = %99
  %114 = call %struct.eap_teap_pac* @os_zalloc(i32 48)
  store %struct.eap_teap_pac* %114, %struct.eap_teap_pac** %14, align 8
  %115 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %14, align 8
  %116 = icmp ne %struct.eap_teap_pac* %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %113
  br label %246

118:                                              ; preds = %113
  %119 = load i32*, i32** %11, align 8
  %120 = call i8* @WPA_GET_BE16(i32* %119)
  %121 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %14, align 8
  %122 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %121, i32 0, i32 6
  store i8* %120, i8** %122, align 8
  %123 = load i32*, i32** %11, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 2
  store i32* %124, i32** %11, align 8
  %125 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %14, align 8
  %126 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 8
  %128 = load i32*, i32** %11, align 8
  %129 = load i32, i32* @EAP_TEAP_PAC_KEY_LEN, align 4
  %130 = call i32 @os_memcpy(i32 %127, i32* %128, i32 %129)
  %131 = load i32, i32* @EAP_TEAP_PAC_KEY_LEN, align 4
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
  br label %246

150:                                              ; preds = %118
  %151 = load i32, i32* %16, align 4
  %152 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %14, align 8
  %153 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  %154 = load i32*, i32** %11, align 8
  %155 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %14, align 8
  %156 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i8* @os_memdup(i32* %154, i32 %157)
  %159 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %14, align 8
  %160 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %159, i32 0, i32 4
  store i8* %158, i8** %160, align 8
  %161 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %14, align 8
  %162 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %161, i32 0, i32 4
  %163 = load i8*, i8** %162, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %166, label %165

165:                                              ; preds = %150
  br label %246

166:                                              ; preds = %150
  %167 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %14, align 8
  %168 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32*, i32** %11, align 8
  %171 = sext i32 %169 to i64
  %172 = getelementptr inbounds i32, i32* %170, i64 %171
  store i32* %172, i32** %11, align 8
  %173 = load i32*, i32** %10, align 8
  %174 = load i32*, i32** %11, align 8
  %175 = ptrtoint i32* %173 to i64
  %176 = ptrtoint i32* %174 to i64
  %177 = sub i64 %175, %176
  %178 = sdiv exact i64 %177, 4
  %179 = icmp slt i64 %178, 2
  br i1 %179, label %180, label %181

180:                                              ; preds = %166
  br label %246

181:                                              ; preds = %166
  %182 = load i32*, i32** %11, align 8
  %183 = call i8* @WPA_GET_BE16(i32* %182)
  %184 = ptrtoint i8* %183 to i32
  store i32 %184, i32* %16, align 4
  %185 = load i32*, i32** %11, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 2
  store i32* %186, i32** %11, align 8
  %187 = load i32, i32* %16, align 4
  %188 = sext i32 %187 to i64
  %189 = load i32*, i32** %10, align 8
  %190 = load i32*, i32** %11, align 8
  %191 = ptrtoint i32* %189 to i64
  %192 = ptrtoint i32* %190 to i64
  %193 = sub i64 %191, %192
  %194 = sdiv exact i64 %193, 4
  %195 = icmp sgt i64 %188, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %181
  br label %246

197:                                              ; preds = %181
  %198 = load i32, i32* %16, align 4
  %199 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %14, align 8
  %200 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %199, i32 0, i32 1
  store i32 %198, i32* %200, align 4
  %201 = load i32*, i32** %11, align 8
  %202 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %14, align 8
  %203 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = call i8* @os_memdup(i32* %201, i32 %204)
  %206 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %14, align 8
  %207 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %206, i32 0, i32 3
  store i8* %205, i8** %207, align 8
  %208 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %14, align 8
  %209 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %208, i32 0, i32 3
  %210 = load i8*, i8** %209, align 8
  %211 = icmp ne i8* %210, null
  br i1 %211, label %213, label %212

212:                                              ; preds = %197
  br label %246

213:                                              ; preds = %197
  %214 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %14, align 8
  %215 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32*, i32** %11, align 8
  %218 = sext i32 %216 to i64
  %219 = getelementptr inbounds i32, i32* %217, i64 %218
  store i32* %219, i32** %11, align 8
  %220 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %14, align 8
  %221 = call i32 @eap_teap_pac_get_a_id(%struct.eap_teap_pac* %220)
  %222 = load i64, i64* %13, align 8
  %223 = add i64 %222, 1
  store i64 %223, i64* %13, align 8
  %224 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %15, align 8
  %225 = icmp ne %struct.eap_teap_pac* %224, null
  br i1 %225, label %226, label %230

226:                                              ; preds = %213
  %227 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %14, align 8
  %228 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %15, align 8
  %229 = getelementptr inbounds %struct.eap_teap_pac, %struct.eap_teap_pac* %228, i32 0, i32 2
  store %struct.eap_teap_pac* %227, %struct.eap_teap_pac** %229, align 8
  br label %233

230:                                              ; preds = %213
  %231 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %14, align 8
  %232 = load %struct.eap_teap_pac**, %struct.eap_teap_pac*** %6, align 8
  store %struct.eap_teap_pac* %231, %struct.eap_teap_pac** %232, align 8
  br label %233

233:                                              ; preds = %230, %226
  %234 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %14, align 8
  store %struct.eap_teap_pac* %234, %struct.eap_teap_pac** %15, align 8
  br label %95

235:                                              ; preds = %95
  %236 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %8, align 8
  %237 = icmp ne %struct.wpa_config_blob* %236, null
  br i1 %237, label %241, label %238

238:                                              ; preds = %235
  %239 = load i32*, i32** %9, align 8
  %240 = call i32 @os_free(i32* %239)
  br label %241

241:                                              ; preds = %238, %235
  %242 = load i32, i32* @MSG_DEBUG, align 4
  %243 = load i64, i64* %13, align 8
  %244 = load i8*, i8** %7, align 8
  %245 = call i32 (i32, i8*, ...) @wpa_printf(i32 %242, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i64 %243, i8* %244)
  store i32 0, i32* %4, align 4
  br label %262

246:                                              ; preds = %212, %196, %180, %165, %149, %117, %112
  %247 = load i32, i32* @MSG_INFO, align 4
  %248 = load i8*, i8** %7, align 8
  %249 = call i32 (i32, i8*, ...) @wpa_printf(i32 %247, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8* %248)
  %250 = load %struct.wpa_config_blob*, %struct.wpa_config_blob** %8, align 8
  %251 = icmp ne %struct.wpa_config_blob* %250, null
  br i1 %251, label %255, label %252

252:                                              ; preds = %246
  %253 = load i32*, i32** %9, align 8
  %254 = call i32 @os_free(i32* %253)
  br label %255

255:                                              ; preds = %252, %246
  %256 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %14, align 8
  %257 = icmp ne %struct.eap_teap_pac* %256, null
  br i1 %257, label %258, label %261

258:                                              ; preds = %255
  %259 = load %struct.eap_teap_pac*, %struct.eap_teap_pac** %14, align 8
  %260 = call i32 @eap_teap_free_pac(%struct.eap_teap_pac* %259)
  br label %261

261:                                              ; preds = %258, %255
  store i32 -1, i32* %4, align 4
  br label %262

262:                                              ; preds = %261, %241, %88, %64, %50, %32, %20
  %263 = load i32, i32* %4, align 4
  ret i32 %263
}

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #1

declare dso_local %struct.wpa_config_blob* @eap_get_config_blob(%struct.eap_sm*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @os_readfile(i8*, i64*) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i64 @WPA_GET_BE32(i32*) #1

declare dso_local i8* @WPA_GET_BE16(i32*) #1

declare dso_local %struct.eap_teap_pac* @os_zalloc(i32) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

declare dso_local i8* @os_memdup(i32*, i32) #1

declare dso_local i32 @eap_teap_pac_get_a_id(%struct.eap_teap_pac*) #1

declare dso_local i32 @eap_teap_free_pac(%struct.eap_teap_pac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
