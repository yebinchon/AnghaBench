; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mesh.c_mesh_attr_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mesh.c_mesh_attr_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802_11_elems = type { i32, i32, i32, i32, i32*, i32*, i32*, i32 }

@ParseFailed = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"mesh_id=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [232 x i8] c"active_path_selection_protocol_id=0x%02x\0Aactive_path_selection_metric_id=0x%02x\0Acongestion_control_mode_id=0x%02x\0Asynchronization_method_id=0x%02x\0Aauthentication_protocol_id=0x%02x\0Amesh_formation_info=0x%02x\0Amesh_capability=0x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"bss_basic_rate_set=%d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i8*)* @mesh_attr_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mesh_attr_text(i8* %0, i64 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ieee802_11_elems, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %8, align 8
  store i8* %17, i8** %12, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = call i64 @ieee802_11_parse_elems(i8* %18, i64 %19, %struct.ieee802_11_elems* %10, i32 0)
  %21 = load i64, i64* @ParseFailed, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %322

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %10, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %322

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %10, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  %33 = call i8* @os_malloc(i32 %32)
  store i8* %33, i8** %11, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 -1, i32* %5, align 4
  br label %322

37:                                               ; preds = %29
  %38 = load i8*, i8** %11, align 8
  %39 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %10, i32 0, i32 7
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %10, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @os_memcpy(i8* %38, i32 %40, i32 %42)
  %44 = load i8*, i8** %11, align 8
  %45 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %10, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  store i8 0, i8* %48, align 1
  %49 = load i8*, i8** %12, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = trunc i64 %54 to i32
  %56 = load i8*, i8** %11, align 8
  %57 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %49, i32 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %56)
  store i32 %57, i32* %15, align 4
  %58 = load i8*, i8** %11, align 8
  %59 = call i32 @os_free(i8* %58)
  %60 = load i8*, i8** %9, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = trunc i64 %64 to i32
  %66 = load i32, i32* %15, align 4
  %67 = call i64 @os_snprintf_error(i32 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %37
  %70 = load i8*, i8** %12, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = ptrtoint i8* %70 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %5, align 4
  br label %322

76:                                               ; preds = %37
  %77 = load i32, i32* %15, align 4
  %78 = load i8*, i8** %12, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8* %80, i8** %12, align 8
  %81 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %10, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp sgt i32 %82, 6
  br i1 %83, label %84, label %142

84:                                               ; preds = %76
  %85 = load i8*, i8** %12, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = ptrtoint i8* %86 to i64
  %89 = ptrtoint i8* %87 to i64
  %90 = sub i64 %88, %89
  %91 = trunc i64 %90 to i32
  %92 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %10, i32 0, i32 6
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %10, i32 0, i32 6
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %10, i32 0, i32 6
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 2
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %10, i32 0, i32 6
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 3
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %10, i32 0, i32 6
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 4
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %10, i32 0, i32 6
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 5
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %10, i32 0, i32 6
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 6
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %85, i32 %91, i8* getelementptr inbounds ([232 x i8], [232 x i8]* @.str.1, i64 0, i64 0), i32 %95, i32 %99, i32 %103, i32 %107, i32 %111, i32 %115, i32 %119)
  store i32 %120, i32* %15, align 4
  %121 = load i8*, i8** %9, align 8
  %122 = load i8*, i8** %12, align 8
  %123 = ptrtoint i8* %121 to i64
  %124 = ptrtoint i8* %122 to i64
  %125 = sub i64 %123, %124
  %126 = trunc i64 %125 to i32
  %127 = load i32, i32* %15, align 4
  %128 = call i64 @os_snprintf_error(i32 %126, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %84
  %131 = load i8*, i8** %12, align 8
  %132 = load i8*, i8** %8, align 8
  %133 = ptrtoint i8* %131 to i64
  %134 = ptrtoint i8* %132 to i64
  %135 = sub i64 %133, %134
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %5, align 4
  br label %322

137:                                              ; preds = %84
  %138 = load i32, i32* %15, align 4
  %139 = load i8*, i8** %12, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  store i8* %141, i8** %12, align 8
  br label %142

142:                                              ; preds = %137, %76
  %143 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %10, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %10, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %144, %146
  %148 = call i8* @os_malloc(i32 %147)
  store i8* %148, i8** %13, align 8
  %149 = load i8*, i8** %13, align 8
  %150 = icmp eq i8* %149, null
  br i1 %150, label %151, label %152

151:                                              ; preds = %142
  store i32 -1, i32* %5, align 4
  br label %322

152:                                              ; preds = %142
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %153

153:                                              ; preds = %183, %152
  %154 = load i32, i32* %16, align 4
  %155 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %10, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = icmp slt i32 %154, %156
  br i1 %157, label %158, label %186

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %10, i32 0, i32 4
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %16, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = and i32 %164, 128
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %182

167:                                              ; preds = %158
  %168 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %10, i32 0, i32 4
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %16, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = and i32 %173, 127
  %175 = mul nsw i32 %174, 5
  %176 = trunc i32 %175 to i8
  %177 = load i8*, i8** %13, align 8
  %178 = load i32, i32* %14, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %14, align 4
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i8, i8* %177, i64 %180
  store i8 %176, i8* %181, align 1
  br label %182

182:                                              ; preds = %167, %158
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %16, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %16, align 4
  br label %153

186:                                              ; preds = %153
  store i32 0, i32* %16, align 4
  br label %187

187:                                              ; preds = %217, %186
  %188 = load i32, i32* %16, align 4
  %189 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %10, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = icmp slt i32 %188, %190
  br i1 %191, label %192, label %220

192:                                              ; preds = %187
  %193 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %10, i32 0, i32 5
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* %16, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = and i32 %198, 128
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %216

201:                                              ; preds = %192
  %202 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %10, i32 0, i32 5
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %16, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = and i32 %207, 127
  %209 = mul nsw i32 %208, 5
  %210 = trunc i32 %209 to i8
  %211 = load i8*, i8** %13, align 8
  %212 = load i32, i32* %14, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %14, align 4
  %214 = sext i32 %212 to i64
  %215 = getelementptr inbounds i8, i8* %211, i64 %214
  store i8 %210, i8* %215, align 1
  br label %216

216:                                              ; preds = %201, %192
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %16, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %16, align 4
  br label %187

220:                                              ; preds = %187
  %221 = load i32, i32* %14, align 4
  %222 = icmp sgt i32 %221, 0
  br i1 %222, label %223, label %312

223:                                              ; preds = %220
  %224 = load i8*, i8** %12, align 8
  %225 = load i8*, i8** %9, align 8
  %226 = load i8*, i8** %12, align 8
  %227 = ptrtoint i8* %225 to i64
  %228 = ptrtoint i8* %226 to i64
  %229 = sub i64 %227, %228
  %230 = trunc i64 %229 to i32
  %231 = load i8*, i8** %13, align 8
  %232 = getelementptr inbounds i8, i8* %231, i64 0
  %233 = load i8, i8* %232, align 1
  %234 = sext i8 %233 to i32
  %235 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %224, i32 %230, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %234)
  store i32 %235, i32* %15, align 4
  %236 = load i8*, i8** %9, align 8
  %237 = load i8*, i8** %12, align 8
  %238 = ptrtoint i8* %236 to i64
  %239 = ptrtoint i8* %237 to i64
  %240 = sub i64 %238, %239
  %241 = trunc i64 %240 to i32
  %242 = load i32, i32* %15, align 4
  %243 = call i64 @os_snprintf_error(i32 %241, i32 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %223
  br label %313

246:                                              ; preds = %223
  %247 = load i32, i32* %15, align 4
  %248 = load i8*, i8** %12, align 8
  %249 = sext i32 %247 to i64
  %250 = getelementptr inbounds i8, i8* %248, i64 %249
  store i8* %250, i8** %12, align 8
  store i32 1, i32* %16, align 4
  br label %251

251:                                              ; preds = %285, %246
  %252 = load i32, i32* %16, align 4
  %253 = load i32, i32* %14, align 4
  %254 = icmp slt i32 %252, %253
  br i1 %254, label %255, label %288

255:                                              ; preds = %251
  %256 = load i8*, i8** %12, align 8
  %257 = load i8*, i8** %9, align 8
  %258 = load i8*, i8** %12, align 8
  %259 = ptrtoint i8* %257 to i64
  %260 = ptrtoint i8* %258 to i64
  %261 = sub i64 %259, %260
  %262 = trunc i64 %261 to i32
  %263 = load i8*, i8** %13, align 8
  %264 = load i32, i32* %16, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8, i8* %263, i64 %265
  %267 = load i8, i8* %266, align 1
  %268 = sext i8 %267 to i32
  %269 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %256, i32 %262, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %268)
  store i32 %269, i32* %15, align 4
  %270 = load i8*, i8** %9, align 8
  %271 = load i8*, i8** %12, align 8
  %272 = ptrtoint i8* %270 to i64
  %273 = ptrtoint i8* %271 to i64
  %274 = sub i64 %272, %273
  %275 = trunc i64 %274 to i32
  %276 = load i32, i32* %15, align 4
  %277 = call i64 @os_snprintf_error(i32 %275, i32 %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %255
  br label %313

280:                                              ; preds = %255
  %281 = load i32, i32* %15, align 4
  %282 = load i8*, i8** %12, align 8
  %283 = sext i32 %281 to i64
  %284 = getelementptr inbounds i8, i8* %282, i64 %283
  store i8* %284, i8** %12, align 8
  br label %285

285:                                              ; preds = %280
  %286 = load i32, i32* %16, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %16, align 4
  br label %251

288:                                              ; preds = %251
  %289 = load i8*, i8** %12, align 8
  %290 = load i8*, i8** %9, align 8
  %291 = load i8*, i8** %12, align 8
  %292 = ptrtoint i8* %290 to i64
  %293 = ptrtoint i8* %291 to i64
  %294 = sub i64 %292, %293
  %295 = trunc i64 %294 to i32
  %296 = call i32 (i8*, i32, i8*, ...) @os_snprintf(i8* %289, i32 %295, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 %296, i32* %15, align 4
  %297 = load i8*, i8** %9, align 8
  %298 = load i8*, i8** %12, align 8
  %299 = ptrtoint i8* %297 to i64
  %300 = ptrtoint i8* %298 to i64
  %301 = sub i64 %299, %300
  %302 = trunc i64 %301 to i32
  %303 = load i32, i32* %15, align 4
  %304 = call i64 @os_snprintf_error(i32 %302, i32 %303)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %288
  br label %313

307:                                              ; preds = %288
  %308 = load i32, i32* %15, align 4
  %309 = load i8*, i8** %12, align 8
  %310 = sext i32 %308 to i64
  %311 = getelementptr inbounds i8, i8* %309, i64 %310
  store i8* %311, i8** %12, align 8
  br label %312

312:                                              ; preds = %307, %220
  br label %313

313:                                              ; preds = %312, %306, %279, %245
  %314 = load i8*, i8** %13, align 8
  %315 = call i32 @os_free(i8* %314)
  %316 = load i8*, i8** %12, align 8
  %317 = load i8*, i8** %8, align 8
  %318 = ptrtoint i8* %316 to i64
  %319 = ptrtoint i8* %317 to i64
  %320 = sub i64 %318, %319
  %321 = trunc i64 %320 to i32
  store i32 %321, i32* %5, align 4
  br label %322

322:                                              ; preds = %313, %151, %130, %69, %36, %28, %23
  %323 = load i32, i32* %5, align 4
  ret i32 %323
}

declare dso_local i64 @ieee802_11_parse_elems(i8*, i64, %struct.ieee802_11_elems*, i32) #1

declare dso_local i8* @os_malloc(i32) #1

declare dso_local i32 @os_memcpy(i8*, i32, i32) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i64 @os_snprintf_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
