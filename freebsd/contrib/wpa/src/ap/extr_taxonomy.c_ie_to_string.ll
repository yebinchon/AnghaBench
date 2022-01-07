; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_taxonomy.c_ie_to_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_taxonomy.c_ie_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i64 0, align 8
@WPS_IE_VENDOR_TYPE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c",wps:%s\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"%s%d(%02x%02x%02x,%d)\00", align 1
@WLAN_EID_HT_CAP = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c",htcap:%04hx\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c",htagg:%02hx\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c",htmcs:%08hx\00", align 1
@WLAN_EID_VHT_CAP = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [13 x i8] c",vhtcap:%08x\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c",vhtrxmcs:%08x\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c",vhttxmcs:%08x\00", align 1
@WLAN_EID_EXT_CAPAB = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [9 x i8] c",extcap:\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@WLAN_EID_PWR_CAPABILITY = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [13 x i8] c",txpow:%04hx\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"%s%s%s%s%s%s%s%s%s\00", align 1
@MAX_EXTCAP = common dso_local global i32 0, align 4
@WPS_NAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, %struct.wpabuf*)* @ie_to_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ie_to_string(i8* %0, i64 %1, %struct.wpabuf* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [12 x i8], align 1
  %10 = alloca [10 x i8], align 1
  %11 = alloca [16 x i8], align 16
  %12 = alloca [17 x i8], align 16
  %13 = alloca [19 x i8], align 16
  %14 = alloca [19 x i8], align 16
  %15 = alloca [517 x i8], align 16
  %16 = alloca [12 x i8], align 1
  %17 = alloca [38 x i8], align 16
  %18 = alloca i32, align 4
  %19 = alloca i64*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca [33 x i8], align 16
  %26 = alloca i64*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %6, align 8
  %32 = load i8*, i8** %4, align 8
  store i8* %32, i8** %7, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8* %35, i8** %8, align 8
  store i32 0, i32* %18, align 4
  %36 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i64 0, i64 0
  %37 = call i32 @os_memset(i8* %36, i32 0, i32 12)
  %38 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %39 = call i32 @os_memset(i8* %38, i32 0, i32 10)
  %40 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %41 = call i32 @os_memset(i8* %40, i32 0, i32 16)
  %42 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %43 = call i32 @os_memset(i8* %42, i32 0, i32 17)
  %44 = getelementptr inbounds [19 x i8], [19 x i8]* %13, i64 0, i64 0
  %45 = call i32 @os_memset(i8* %44, i32 0, i32 19)
  %46 = getelementptr inbounds [19 x i8], [19 x i8]* %14, i64 0, i64 0
  %47 = call i32 @os_memset(i8* %46, i32 0, i32 19)
  %48 = getelementptr inbounds [517 x i8], [517 x i8]* %15, i64 0, i64 0
  %49 = call i32 @os_memset(i8* %48, i32 0, i32 517)
  %50 = getelementptr inbounds [12 x i8], [12 x i8]* %16, i64 0, i64 0
  %51 = call i32 @os_memset(i8* %50, i32 0, i32 12)
  %52 = getelementptr inbounds [38 x i8], [38 x i8]* %17, i64 0, i64 0
  %53 = call i32 @os_memset(i8* %52, i32 0, i32 38)
  %54 = load i8*, i8** %7, align 8
  store i8 0, i8* %54, align 1
  %55 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %56 = icmp ne %struct.wpabuf* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %3
  br label %338

58:                                               ; preds = %3
  %59 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %60 = call i64* @wpabuf_head(%struct.wpabuf* %59)
  store i64* %60, i64** %19, align 8
  %61 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %62 = call i64 @wpabuf_len(%struct.wpabuf* %61)
  store i64 %62, i64* %20, align 8
  br label %63

63:                                               ; preds = %296, %58
  %64 = load i64, i64* %20, align 8
  %65 = icmp uge i64 %64, 2
  br i1 %65, label %66, label %307

66:                                               ; preds = %63
  %67 = load i32, i32* %18, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %18, align 4
  %69 = icmp eq i32 %67, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)
  store i8* %71, i8** %24, align 8
  %72 = load i64*, i64** %19, align 8
  %73 = getelementptr inbounds i64, i64* %72, i32 1
  store i64* %73, i64** %19, align 8
  %74 = load i64, i64* %72, align 8
  store i64 %74, i64* %22, align 8
  %75 = load i64*, i64** %19, align 8
  %76 = getelementptr inbounds i64, i64* %75, i32 1
  store i64* %76, i64** %19, align 8
  %77 = load i64, i64* %75, align 8
  store i64 %77, i64* %23, align 8
  %78 = load i64, i64* %20, align 8
  %79 = sub i64 %78, 2
  store i64 %79, i64* %20, align 8
  %80 = load i64, i64* %23, align 8
  %81 = load i64, i64* %20, align 8
  %82 = icmp ugt i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %66
  br label %307

84:                                               ; preds = %66
  %85 = load i64, i64* %22, align 8
  %86 = load i64, i64* @WLAN_EID_VENDOR_SPECIFIC, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %136

88:                                               ; preds = %84
  %89 = load i64, i64* %23, align 8
  %90 = icmp uge i64 %89, 4
  br i1 %90, label %91, label %136

91:                                               ; preds = %88
  %92 = load i64*, i64** %19, align 8
  %93 = call i64 @WPA_GET_BE32(i64* %92)
  %94 = load i64, i64* @WPS_IE_VENDOR_TYPE, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %113

96:                                               ; preds = %91
  %97 = load i64*, i64** %19, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 4
  store i64* %98, i64** %26, align 8
  %99 = load i64, i64* %23, align 8
  %100 = sub i64 %99, 4
  store i64 %100, i64* %27, align 8
  %101 = getelementptr inbounds [33 x i8], [33 x i8]* %25, i64 0, i64 0
  %102 = call i32 @os_memset(i8* %101, i32 0, i32 33)
  %103 = getelementptr inbounds [33 x i8], [33 x i8]* %25, i64 0, i64 0
  %104 = load i64*, i64** %26, align 8
  %105 = load i64, i64* %27, align 8
  %106 = call i64 @get_wps_name(i8* %103, i32 32, i64* %104, i64 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %96
  %109 = getelementptr inbounds [38 x i8], [38 x i8]* %17, i64 0, i64 0
  %110 = getelementptr inbounds [33 x i8], [33 x i8]* %25, i64 0, i64 0
  %111 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %109, i32 38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %110)
  br label %112

112:                                              ; preds = %108, %96
  br label %113

113:                                              ; preds = %112, %91
  %114 = load i8*, i8** %7, align 8
  %115 = load i8*, i8** %8, align 8
  %116 = load i8*, i8** %7, align 8
  %117 = ptrtoint i8* %115 to i64
  %118 = ptrtoint i8* %116 to i64
  %119 = sub i64 %117, %118
  %120 = trunc i64 %119 to i32
  %121 = load i8*, i8** %24, align 8
  %122 = load i64, i64* %22, align 8
  %123 = load i64*, i64** %19, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64*, i64** %19, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64*, i64** %19, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 2
  %131 = load i64, i64* %130, align 8
  %132 = load i64*, i64** %19, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 3
  %134 = load i64, i64* %133, align 8
  %135 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %114, i32 %120, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %121, i64 %122, i64 %125, i64 %128, i64 %131, i64 %134)
  store i32 %135, i32* %21, align 4
  br label %285

136:                                              ; preds = %88, %84
  %137 = load i64, i64* %22, align 8
  %138 = load i64, i64* @WLAN_EID_HT_CAP, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %148

140:                                              ; preds = %136
  %141 = load i64, i64* %23, align 8
  %142 = icmp uge i64 %141, 2
  br i1 %142, label %143, label %148

143:                                              ; preds = %140
  %144 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i64 0, i64 0
  %145 = load i64*, i64** %19, align 8
  %146 = call i32 @WPA_GET_LE16(i64* %145)
  %147 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %144, i32 12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %143, %140, %136
  %149 = load i64, i64* %22, align 8
  %150 = load i64, i64* @WLAN_EID_HT_CAP, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %162

152:                                              ; preds = %148
  %153 = load i64, i64* %23, align 8
  %154 = icmp uge i64 %153, 3
  br i1 %154, label %155, label %162

155:                                              ; preds = %152
  %156 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %157 = load i64*, i64** %19, align 8
  %158 = getelementptr inbounds i64, i64* %157, i64 2
  %159 = load i64, i64* %158, align 8
  %160 = trunc i64 %159 to i32
  %161 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %156, i32 10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %160)
  br label %162

162:                                              ; preds = %155, %152, %148
  %163 = load i64, i64* %22, align 8
  %164 = load i64, i64* @WLAN_EID_HT_CAP, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %176

166:                                              ; preds = %162
  %167 = load i64, i64* %23, align 8
  %168 = icmp uge i64 %167, 7
  br i1 %168, label %169, label %176

169:                                              ; preds = %166
  %170 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %171 = load i64*, i64** %19, align 8
  %172 = getelementptr inbounds i64, i64* %171, i64 3
  %173 = call i64 @WPA_GET_LE32(i64* %172)
  %174 = trunc i64 %173 to i32
  %175 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %170, i32 16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %174)
  br label %176

176:                                              ; preds = %169, %166, %162
  %177 = load i64, i64* %22, align 8
  %178 = load i64, i64* @WLAN_EID_VHT_CAP, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %188

180:                                              ; preds = %176
  %181 = load i64, i64* %23, align 8
  %182 = icmp uge i64 %181, 4
  br i1 %182, label %183, label %188

183:                                              ; preds = %180
  %184 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %185 = load i64*, i64** %19, align 8
  %186 = call i64 @WPA_GET_LE32(i64* %185)
  %187 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %184, i32 17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i64 %186)
  br label %188

188:                                              ; preds = %183, %180, %176
  %189 = load i64, i64* %22, align 8
  %190 = load i64, i64* @WLAN_EID_VHT_CAP, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %201

192:                                              ; preds = %188
  %193 = load i64, i64* %23, align 8
  %194 = icmp uge i64 %193, 8
  br i1 %194, label %195, label %201

195:                                              ; preds = %192
  %196 = getelementptr inbounds [19 x i8], [19 x i8]* %13, i64 0, i64 0
  %197 = load i64*, i64** %19, align 8
  %198 = getelementptr inbounds i64, i64* %197, i64 4
  %199 = call i64 @WPA_GET_LE32(i64* %198)
  %200 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %196, i32 19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i64 %199)
  br label %201

201:                                              ; preds = %195, %192, %188
  %202 = load i64, i64* %22, align 8
  %203 = load i64, i64* @WLAN_EID_VHT_CAP, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %214

205:                                              ; preds = %201
  %206 = load i64, i64* %23, align 8
  %207 = icmp uge i64 %206, 12
  br i1 %207, label %208, label %214

208:                                              ; preds = %205
  %209 = getelementptr inbounds [19 x i8], [19 x i8]* %14, i64 0, i64 0
  %210 = load i64*, i64** %19, align 8
  %211 = getelementptr inbounds i64, i64* %210, i64 8
  %212 = call i64 @WPA_GET_LE32(i64* %211)
  %213 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %209, i32 19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i64 %212)
  br label %214

214:                                              ; preds = %208, %205, %201
  %215 = load i64, i64* %22, align 8
  %216 = load i64, i64* @WLAN_EID_EXT_CAPAB, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %262

218:                                              ; preds = %214
  %219 = load i64, i64* %23, align 8
  %220 = icmp ult i64 %219, 254
  br i1 %220, label %221, label %223

221:                                              ; preds = %218
  %222 = load i64, i64* %23, align 8
  br label %224

223:                                              ; preds = %218
  br label %224

224:                                              ; preds = %223, %221
  %225 = phi i64 [ %222, %221 ], [ 254, %223 ]
  %226 = trunc i64 %225 to i32
  store i32 %226, i32* %29, align 4
  %227 = getelementptr inbounds [517 x i8], [517 x i8]* %15, i64 0, i64 0
  store i8* %227, i8** %30, align 8
  %228 = getelementptr inbounds [517 x i8], [517 x i8]* %15, i64 0, i64 0
  %229 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %228, i32 517, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %230 = load i8*, i8** %30, align 8
  %231 = sext i32 %229 to i64
  %232 = getelementptr inbounds i8, i8* %230, i64 %231
  store i8* %232, i8** %30, align 8
  store i32 0, i32* %28, align 4
  br label %233

233:                                              ; preds = %258, %224
  %234 = load i32, i32* %28, align 4
  %235 = load i32, i32* %29, align 4
  %236 = icmp slt i32 %234, %235
  br i1 %236, label %237, label %261

237:                                              ; preds = %233
  %238 = getelementptr inbounds [517 x i8], [517 x i8]* %15, i64 0, i64 0
  %239 = call i32 @os_strlen(i8* %238)
  %240 = sext i32 %239 to i64
  %241 = sub i64 517, %240
  %242 = trunc i64 %241 to i32
  store i32 %242, i32* %31, align 4
  %243 = load i32, i32* %31, align 4
  %244 = icmp sle i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %237
  br label %261

246:                                              ; preds = %237
  %247 = load i8*, i8** %30, align 8
  %248 = load i32, i32* %31, align 4
  %249 = load i64*, i64** %19, align 8
  %250 = load i32, i32* %28, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i64, i64* %249, i64 %251
  %253 = load i64, i64* %252, align 8
  %254 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %247, i32 %248, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 %253)
  %255 = load i8*, i8** %30, align 8
  %256 = sext i32 %254 to i64
  %257 = getelementptr inbounds i8, i8* %255, i64 %256
  store i8* %257, i8** %30, align 8
  br label %258

258:                                              ; preds = %246
  %259 = load i32, i32* %28, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %28, align 4
  br label %233

261:                                              ; preds = %245, %233
  br label %262

262:                                              ; preds = %261, %214
  %263 = load i64, i64* %22, align 8
  %264 = load i64, i64* @WLAN_EID_PWR_CAPABILITY, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %274

266:                                              ; preds = %262
  %267 = load i64, i64* %23, align 8
  %268 = icmp eq i64 %267, 2
  br i1 %268, label %269, label %274

269:                                              ; preds = %266
  %270 = getelementptr inbounds [12 x i8], [12 x i8]* %16, i64 0, i64 0
  %271 = load i64*, i64** %19, align 8
  %272 = call i32 @WPA_GET_LE16(i64* %271)
  %273 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %270, i32 12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 %272)
  br label %274

274:                                              ; preds = %269, %266, %262
  %275 = load i8*, i8** %7, align 8
  %276 = load i8*, i8** %8, align 8
  %277 = load i8*, i8** %7, align 8
  %278 = ptrtoint i8* %276 to i64
  %279 = ptrtoint i8* %277 to i64
  %280 = sub i64 %278, %279
  %281 = trunc i64 %280 to i32
  %282 = load i8*, i8** %24, align 8
  %283 = load i64, i64* %22, align 8
  %284 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %275, i32 %281, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* %282, i64 %283)
  store i32 %284, i32* %21, align 4
  br label %285

285:                                              ; preds = %274, %113
  %286 = load i8*, i8** %8, align 8
  %287 = load i8*, i8** %7, align 8
  %288 = ptrtoint i8* %286 to i64
  %289 = ptrtoint i8* %287 to i64
  %290 = sub i64 %288, %289
  %291 = trunc i64 %290 to i32
  %292 = load i32, i32* %21, align 4
  %293 = call i64 @os_snprintf_error(i32 %291, i32 %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %285
  br label %335

296:                                              ; preds = %285
  %297 = load i32, i32* %21, align 4
  %298 = load i8*, i8** %7, align 8
  %299 = sext i32 %297 to i64
  %300 = getelementptr inbounds i8, i8* %298, i64 %299
  store i8* %300, i8** %7, align 8
  %301 = load i64, i64* %23, align 8
  %302 = load i64*, i64** %19, align 8
  %303 = getelementptr inbounds i64, i64* %302, i64 %301
  store i64* %303, i64** %19, align 8
  %304 = load i64, i64* %23, align 8
  %305 = load i64, i64* %20, align 8
  %306 = sub i64 %305, %304
  store i64 %306, i64* %20, align 8
  br label %63

307:                                              ; preds = %83, %63
  %308 = load i8*, i8** %7, align 8
  %309 = load i8*, i8** %8, align 8
  %310 = load i8*, i8** %7, align 8
  %311 = ptrtoint i8* %309 to i64
  %312 = ptrtoint i8* %310 to i64
  %313 = sub i64 %311, %312
  %314 = trunc i64 %313 to i32
  %315 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i64 0, i64 0
  %316 = getelementptr inbounds [10 x i8], [10 x i8]* %10, i64 0, i64 0
  %317 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %318 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %319 = getelementptr inbounds [19 x i8], [19 x i8]* %13, i64 0, i64 0
  %320 = getelementptr inbounds [19 x i8], [19 x i8]* %14, i64 0, i64 0
  %321 = getelementptr inbounds [12 x i8], [12 x i8]* %16, i64 0, i64 0
  %322 = getelementptr inbounds [517 x i8], [517 x i8]* %15, i64 0, i64 0
  %323 = getelementptr inbounds [38 x i8], [38 x i8]* %17, i64 0, i64 0
  %324 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %308, i32 %314, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i8* %315, i8* %316, i8* %317, i8* %318, i8* %319, i8* %320, i8* %321, i8* %322, i8* %323)
  store i32 %324, i32* %21, align 4
  %325 = load i8*, i8** %8, align 8
  %326 = load i8*, i8** %7, align 8
  %327 = ptrtoint i8* %325 to i64
  %328 = ptrtoint i8* %326 to i64
  %329 = sub i64 %327, %328
  %330 = trunc i64 %329 to i32
  %331 = load i32, i32* %21, align 4
  %332 = call i64 @os_snprintf_error(i32 %330, i32 %331)
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %338

334:                                              ; preds = %307
  br label %335

335:                                              ; preds = %334, %295
  %336 = load i8*, i8** %4, align 8
  %337 = getelementptr inbounds i8, i8* %336, i64 0
  store i8 0, i8* %337, align 1
  br label %338

338:                                              ; preds = %57, %335, %307
  ret void
}

declare dso_local i32 @os_memset(i8*, i32, i32) #1

declare dso_local i64* @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i64 @WPA_GET_BE32(i64*) #1

declare dso_local i64 @get_wps_name(i8*, i32, i64*, i64) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @WPA_GET_LE16(i64*) #1

declare dso_local i64 @WPA_GET_LE32(i64*) #1

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
