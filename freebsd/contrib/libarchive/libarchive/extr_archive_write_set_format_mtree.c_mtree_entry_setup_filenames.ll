; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_mtree_entry_setup_filenames.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_mtree_entry_setup_filenames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32 }
%struct.mtree_entry = type { %struct.archive_wstring, %struct.archive_wstring, %struct.archive_wstring }
%struct.archive_wstring = type { i8*, i32 }
%struct.archive_entry = type { i32 }
%struct.archive_string = type { i8*, i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"./\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, %struct.mtree_entry*, %struct.archive_entry*)* @mtree_entry_setup_filenames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtree_entry_setup_filenames(%struct.archive_write* %0, %struct.mtree_entry* %1, %struct.archive_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_write*, align 8
  %6 = alloca %struct.mtree_entry*, align 8
  %7 = alloca %struct.archive_entry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.archive_string, align 8
  store %struct.archive_write* %0, %struct.archive_write** %5, align 8
  store %struct.mtree_entry* %1, %struct.mtree_entry** %6, align 8
  store %struct.archive_entry* %2, %struct.archive_entry** %7, align 8
  %17 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %17, i32* %13, align 4
  %18 = load %struct.mtree_entry*, %struct.mtree_entry** %6, align 8
  %19 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %18, i32 0, i32 2
  %20 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %21 = call i8* @archive_entry_pathname(%struct.archive_entry* %20)
  %22 = call i32 @archive_strcpy(%struct.archive_wstring* %19, i8* %21)
  %23 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %24 = load %struct.mtree_entry*, %struct.mtree_entry** %6, align 8
  %25 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.archive_wstring, %struct.archive_wstring* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %3
  %32 = load %struct.mtree_entry*, %struct.mtree_entry** %6, align 8
  %33 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %32, i32 0, i32 0
  %34 = call i32 @archive_strcpy(%struct.archive_wstring* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %35, i32* %4, align 4
  br label %398

36:                                               ; preds = %3
  %37 = load %struct.mtree_entry*, %struct.mtree_entry** %6, align 8
  %38 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %37, i32 0, i32 1
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @archive_strcpy(%struct.archive_wstring* %38, i8* %39)
  %41 = load %struct.mtree_entry*, %struct.mtree_entry** %6, align 8
  %42 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.archive_wstring, %struct.archive_wstring* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %12, align 8
  %46 = load %struct.mtree_entry*, %struct.mtree_entry** %6, align 8
  %47 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.archive_wstring, %struct.archive_wstring* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %10, align 8
  store i8* %49, i8** %9, align 8
  br label %50

50:                                               ; preds = %92, %36
  %51 = load i8*, i8** %9, align 8
  %52 = load i8, i8* %51, align 1
  %53 = icmp ne i8 %52, 0
  br i1 %53, label %54, label %93

54:                                               ; preds = %50
  %55 = load i8*, i8** %9, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 47
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load i8*, i8** %9, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %9, align 8
  %63 = load i64, i64* %12, align 8
  %64 = add i64 %63, -1
  store i64 %64, i64* %12, align 8
  br label %92

65:                                               ; preds = %54
  %66 = load i8*, i8** %9, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 46
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %93

72:                                               ; preds = %65
  %73 = load i8*, i8** %9, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 46
  br i1 %77, label %78, label %89

78:                                               ; preds = %72
  %79 = load i8*, i8** %9, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 2
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 47
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load i8*, i8** %9, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 3
  store i8* %86, i8** %9, align 8
  %87 = load i64, i64* %12, align 8
  %88 = sub i64 %87, 3
  store i64 %88, i64* %12, align 8
  br label %90

89:                                               ; preds = %78, %72
  br label %93

90:                                               ; preds = %84
  br label %91

91:                                               ; preds = %90
  br label %92

92:                                               ; preds = %91, %60
  br label %50

93:                                               ; preds = %89, %71, %50
  %94 = load i8*, i8** %9, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = icmp ne i8* %94, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %93
  %98 = load i8*, i8** %10, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = load i64, i64* %12, align 8
  %101 = add i64 %100, 1
  %102 = trunc i64 %101 to i32
  %103 = call i32 @memmove(i8* %98, i8* %99, i32 %102)
  %104 = load i8*, i8** %10, align 8
  store i8* %104, i8** %9, align 8
  br label %105

105:                                              ; preds = %97, %93
  br label %106

106:                                              ; preds = %193, %105
  %107 = load i64, i64* %12, align 8
  %108 = icmp ugt i64 %107, 0
  br i1 %108, label %109, label %194

109:                                              ; preds = %106
  %110 = load i64, i64* %12, align 8
  store i64 %110, i64* %14, align 8
  %111 = load i64, i64* %12, align 8
  %112 = icmp ugt i64 %111, 0
  br i1 %112, label %113, label %128

113:                                              ; preds = %109
  %114 = load i8*, i8** %9, align 8
  %115 = load i64, i64* %12, align 8
  %116 = sub i64 %115, 1
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 47
  br i1 %120, label %121, label %128

121:                                              ; preds = %113
  %122 = load i8*, i8** %9, align 8
  %123 = load i64, i64* %12, align 8
  %124 = sub i64 %123, 1
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  store i8 0, i8* %125, align 1
  %126 = load i64, i64* %12, align 8
  %127 = add i64 %126, -1
  store i64 %127, i64* %12, align 8
  br label %128

128:                                              ; preds = %121, %113, %109
  %129 = load i64, i64* %12, align 8
  %130 = icmp ugt i64 %129, 1
  br i1 %130, label %131, label %154

131:                                              ; preds = %128
  %132 = load i8*, i8** %9, align 8
  %133 = load i64, i64* %12, align 8
  %134 = sub i64 %133, 2
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 %137, 47
  br i1 %138, label %139, label %154

139:                                              ; preds = %131
  %140 = load i8*, i8** %9, align 8
  %141 = load i64, i64* %12, align 8
  %142 = sub i64 %141, 1
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 46
  br i1 %146, label %147, label %154

147:                                              ; preds = %139
  %148 = load i8*, i8** %9, align 8
  %149 = load i64, i64* %12, align 8
  %150 = sub i64 %149, 2
  %151 = getelementptr inbounds i8, i8* %148, i64 %150
  store i8 0, i8* %151, align 1
  %152 = load i64, i64* %12, align 8
  %153 = sub i64 %152, 2
  store i64 %153, i64* %12, align 8
  br label %154

154:                                              ; preds = %147, %139, %131, %128
  %155 = load i64, i64* %12, align 8
  %156 = icmp ugt i64 %155, 2
  br i1 %156, label %157, label %188

157:                                              ; preds = %154
  %158 = load i8*, i8** %9, align 8
  %159 = load i64, i64* %12, align 8
  %160 = sub i64 %159, 3
  %161 = getelementptr inbounds i8, i8* %158, i64 %160
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 47
  br i1 %164, label %165, label %188

165:                                              ; preds = %157
  %166 = load i8*, i8** %9, align 8
  %167 = load i64, i64* %12, align 8
  %168 = sub i64 %167, 2
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp eq i32 %171, 46
  br i1 %172, label %173, label %188

173:                                              ; preds = %165
  %174 = load i8*, i8** %9, align 8
  %175 = load i64, i64* %12, align 8
  %176 = sub i64 %175, 1
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp eq i32 %179, 46
  br i1 %180, label %181, label %188

181:                                              ; preds = %173
  %182 = load i8*, i8** %9, align 8
  %183 = load i64, i64* %12, align 8
  %184 = sub i64 %183, 3
  %185 = getelementptr inbounds i8, i8* %182, i64 %184
  store i8 0, i8* %185, align 1
  %186 = load i64, i64* %12, align 8
  %187 = sub i64 %186, 3
  store i64 %187, i64* %12, align 8
  br label %188

188:                                              ; preds = %181, %173, %165, %157, %154
  %189 = load i64, i64* %14, align 8
  %190 = load i64, i64* %12, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %188
  br label %194

193:                                              ; preds = %188
  br label %106

194:                                              ; preds = %192, %106
  br label %195

195:                                              ; preds = %301, %194
  %196 = load i8*, i8** %9, align 8
  %197 = load i8, i8* %196, align 1
  %198 = icmp ne i8 %197, 0
  br i1 %198, label %199, label %302

199:                                              ; preds = %195
  %200 = load i8*, i8** %9, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 0
  %202 = load i8, i8* %201, align 1
  %203 = sext i8 %202 to i32
  %204 = icmp eq i32 %203, 47
  br i1 %204, label %205, label %298

205:                                              ; preds = %199
  %206 = load i8*, i8** %9, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 1
  %208 = load i8, i8* %207, align 1
  %209 = sext i8 %208 to i32
  %210 = icmp eq i32 %209, 47
  br i1 %210, label %211, label %220

211:                                              ; preds = %205
  %212 = load i8*, i8** %9, align 8
  %213 = load i8*, i8** %9, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 1
  %215 = load i8*, i8** %9, align 8
  %216 = getelementptr inbounds i8, i8* %215, i64 1
  %217 = call i32 @strlen(i8* %216)
  %218 = add nsw i32 %217, 1
  %219 = call i32 @memmove(i8* %212, i8* %214, i32 %218)
  br label %297

220:                                              ; preds = %205
  %221 = load i8*, i8** %9, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 1
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  %225 = icmp eq i32 %224, 46
  br i1 %225, label %226, label %241

226:                                              ; preds = %220
  %227 = load i8*, i8** %9, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 2
  %229 = load i8, i8* %228, align 1
  %230 = sext i8 %229 to i32
  %231 = icmp eq i32 %230, 47
  br i1 %231, label %232, label %241

232:                                              ; preds = %226
  %233 = load i8*, i8** %9, align 8
  %234 = load i8*, i8** %9, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 2
  %236 = load i8*, i8** %9, align 8
  %237 = getelementptr inbounds i8, i8* %236, i64 2
  %238 = call i32 @strlen(i8* %237)
  %239 = add nsw i32 %238, 1
  %240 = call i32 @memmove(i8* %233, i8* %235, i32 %239)
  br label %296

241:                                              ; preds = %226, %220
  %242 = load i8*, i8** %9, align 8
  %243 = getelementptr inbounds i8, i8* %242, i64 1
  %244 = load i8, i8* %243, align 1
  %245 = sext i8 %244 to i32
  %246 = icmp eq i32 %245, 46
  br i1 %246, label %247, label %292

247:                                              ; preds = %241
  %248 = load i8*, i8** %9, align 8
  %249 = getelementptr inbounds i8, i8* %248, i64 2
  %250 = load i8, i8* %249, align 1
  %251 = sext i8 %250 to i32
  %252 = icmp eq i32 %251, 46
  br i1 %252, label %253, label %292

253:                                              ; preds = %247
  %254 = load i8*, i8** %9, align 8
  %255 = getelementptr inbounds i8, i8* %254, i64 3
  %256 = load i8, i8* %255, align 1
  %257 = sext i8 %256 to i32
  %258 = icmp eq i32 %257, 47
  br i1 %258, label %259, label %292

259:                                              ; preds = %253
  %260 = load i8*, i8** %9, align 8
  %261 = getelementptr inbounds i8, i8* %260, i64 -1
  store i8* %261, i8** %15, align 8
  br label %262

262:                                              ; preds = %272, %259
  %263 = load i8*, i8** %15, align 8
  %264 = load i8*, i8** %10, align 8
  %265 = icmp uge i8* %263, %264
  br i1 %265, label %266, label %275

266:                                              ; preds = %262
  %267 = load i8*, i8** %15, align 8
  %268 = load i8, i8* %267, align 1
  %269 = sext i8 %268 to i32
  %270 = icmp eq i32 %269, 47
  br i1 %270, label %271, label %272

271:                                              ; preds = %266
  br label %275

272:                                              ; preds = %266
  %273 = load i8*, i8** %15, align 8
  %274 = getelementptr inbounds i8, i8* %273, i32 -1
  store i8* %274, i8** %15, align 8
  br label %262

275:                                              ; preds = %271, %262
  %276 = load i8*, i8** %15, align 8
  %277 = load i8*, i8** %10, align 8
  %278 = icmp ugt i8* %276, %277
  br i1 %278, label %279, label %285

279:                                              ; preds = %275
  %280 = load i8*, i8** %15, align 8
  %281 = load i8*, i8** %9, align 8
  %282 = getelementptr inbounds i8, i8* %281, i64 3
  %283 = call i32 @strcpy(i8* %280, i8* %282)
  %284 = load i8*, i8** %15, align 8
  store i8* %284, i8** %9, align 8
  br label %291

285:                                              ; preds = %275
  %286 = load i8*, i8** %10, align 8
  %287 = load i8*, i8** %9, align 8
  %288 = getelementptr inbounds i8, i8* %287, i64 4
  %289 = call i32 @strcpy(i8* %286, i8* %288)
  %290 = load i8*, i8** %10, align 8
  store i8* %290, i8** %9, align 8
  br label %291

291:                                              ; preds = %285, %279
  br label %295

292:                                              ; preds = %253, %247, %241
  %293 = load i8*, i8** %9, align 8
  %294 = getelementptr inbounds i8, i8* %293, i32 1
  store i8* %294, i8** %9, align 8
  br label %295

295:                                              ; preds = %292, %291
  br label %296

296:                                              ; preds = %295, %232
  br label %297

297:                                              ; preds = %296, %211
  br label %301

298:                                              ; preds = %199
  %299 = load i8*, i8** %9, align 8
  %300 = getelementptr inbounds i8, i8* %299, i32 1
  store i8* %300, i8** %9, align 8
  br label %301

301:                                              ; preds = %298, %297
  br label %195

302:                                              ; preds = %195
  %303 = load i8*, i8** %10, align 8
  store i8* %303, i8** %9, align 8
  %304 = load i8*, i8** %9, align 8
  %305 = call i32 @strlen(i8* %304)
  %306 = sext i32 %305 to i64
  store i64 %306, i64* %12, align 8
  %307 = load i8*, i8** %9, align 8
  %308 = call i64 @strcmp(i8* %307, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %339

310:                                              ; preds = %302
  %311 = load i8*, i8** %9, align 8
  %312 = call i64 @strncmp(i8* %311, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %339

314:                                              ; preds = %310
  %315 = bitcast %struct.archive_string* %16 to %struct.archive_wstring*
  %316 = call i32 @archive_string_init(%struct.archive_wstring* %315)
  %317 = bitcast %struct.archive_string* %16 to %struct.archive_wstring*
  %318 = call i32 @archive_strcpy(%struct.archive_wstring* %317, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %319 = bitcast %struct.archive_string* %16 to %struct.archive_wstring*
  %320 = load i8*, i8** %9, align 8
  %321 = load i64, i64* %12, align 8
  %322 = call i32 @archive_strncat(%struct.archive_wstring* %319, i8* %320, i64 %321)
  %323 = load %struct.mtree_entry*, %struct.mtree_entry** %6, align 8
  %324 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %323, i32 0, i32 1
  %325 = call i32 @archive_string_empty(%struct.archive_wstring* %324)
  %326 = load %struct.mtree_entry*, %struct.mtree_entry** %6, align 8
  %327 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %326, i32 0, i32 1
  %328 = bitcast %struct.archive_string* %16 to %struct.archive_wstring*
  %329 = call i32 @archive_string_concat(%struct.archive_wstring* %327, %struct.archive_wstring* %328)
  %330 = bitcast %struct.archive_string* %16 to %struct.archive_wstring*
  %331 = call i32 @archive_string_free(%struct.archive_wstring* %330)
  %332 = load %struct.mtree_entry*, %struct.mtree_entry** %6, align 8
  %333 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %332, i32 0, i32 1
  %334 = getelementptr inbounds %struct.archive_wstring, %struct.archive_wstring* %333, i32 0, i32 0
  %335 = load i8*, i8** %334, align 8
  store i8* %335, i8** %9, align 8
  %336 = load %struct.mtree_entry*, %struct.mtree_entry** %6, align 8
  %337 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %336, i32 0, i32 1
  %338 = call i64 @archive_strlen(%struct.archive_wstring* %337)
  store i64 %338, i64* %12, align 8
  br label %339

339:                                              ; preds = %314, %310, %302
  store i8* null, i8** %11, align 8
  br label %340

340:                                              ; preds = %353, %339
  %341 = load i8*, i8** %9, align 8
  %342 = load i8, i8* %341, align 1
  %343 = sext i8 %342 to i32
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %356

345:                                              ; preds = %340
  %346 = load i8*, i8** %9, align 8
  %347 = load i8, i8* %346, align 1
  %348 = sext i8 %347 to i32
  %349 = icmp eq i32 %348, 47
  br i1 %349, label %350, label %352

350:                                              ; preds = %345
  %351 = load i8*, i8** %9, align 8
  store i8* %351, i8** %11, align 8
  br label %352

352:                                              ; preds = %350, %345
  br label %353

353:                                              ; preds = %352
  %354 = load i8*, i8** %9, align 8
  %355 = getelementptr inbounds i8, i8* %354, i32 1
  store i8* %355, i8** %9, align 8
  br label %340

356:                                              ; preds = %340
  %357 = load i8*, i8** %11, align 8
  %358 = icmp eq i8* %357, null
  br i1 %358, label %359, label %378

359:                                              ; preds = %356
  %360 = load i64, i64* %12, align 8
  %361 = trunc i64 %360 to i32
  %362 = load %struct.mtree_entry*, %struct.mtree_entry** %6, align 8
  %363 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %362, i32 0, i32 1
  %364 = getelementptr inbounds %struct.archive_wstring, %struct.archive_wstring* %363, i32 0, i32 1
  store i32 %361, i32* %364, align 8
  %365 = load %struct.mtree_entry*, %struct.mtree_entry** %6, align 8
  %366 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %365, i32 0, i32 0
  %367 = load %struct.mtree_entry*, %struct.mtree_entry** %6, align 8
  %368 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %367, i32 0, i32 1
  %369 = call i32 @archive_string_copy(%struct.archive_wstring* %366, %struct.archive_wstring* %368)
  %370 = load %struct.mtree_entry*, %struct.mtree_entry** %6, align 8
  %371 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %370, i32 0, i32 1
  %372 = call i32 @archive_string_empty(%struct.archive_wstring* %371)
  %373 = load %struct.mtree_entry*, %struct.mtree_entry** %6, align 8
  %374 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %373, i32 0, i32 1
  %375 = getelementptr inbounds %struct.archive_wstring, %struct.archive_wstring* %374, i32 0, i32 0
  %376 = load i8*, i8** %375, align 8
  store i8 0, i8* %376, align 1
  %377 = load i32, i32* %13, align 4
  store i32 %377, i32* %4, align 4
  br label %398

378:                                              ; preds = %356
  %379 = load i8*, i8** %11, align 8
  store i8 0, i8* %379, align 1
  %380 = load i8*, i8** %11, align 8
  %381 = load %struct.mtree_entry*, %struct.mtree_entry** %6, align 8
  %382 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %381, i32 0, i32 1
  %383 = getelementptr inbounds %struct.archive_wstring, %struct.archive_wstring* %382, i32 0, i32 0
  %384 = load i8*, i8** %383, align 8
  %385 = ptrtoint i8* %380 to i64
  %386 = ptrtoint i8* %384 to i64
  %387 = sub i64 %385, %386
  %388 = trunc i64 %387 to i32
  %389 = load %struct.mtree_entry*, %struct.mtree_entry** %6, align 8
  %390 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %389, i32 0, i32 1
  %391 = getelementptr inbounds %struct.archive_wstring, %struct.archive_wstring* %390, i32 0, i32 1
  store i32 %388, i32* %391, align 8
  %392 = load %struct.mtree_entry*, %struct.mtree_entry** %6, align 8
  %393 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %392, i32 0, i32 0
  %394 = load i8*, i8** %11, align 8
  %395 = getelementptr inbounds i8, i8* %394, i64 1
  %396 = call i32 @archive_strcpy(%struct.archive_wstring* %393, i8* %395)
  %397 = load i32, i32* %13, align 4
  store i32 %397, i32* %4, align 4
  br label %398

398:                                              ; preds = %378, %359, %31
  %399 = load i32, i32* %4, align 4
  ret i32 %399
}

declare dso_local i32 @archive_strcpy(%struct.archive_wstring*, i8*) #1

declare dso_local i8* @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @archive_string_init(%struct.archive_wstring*) #1

declare dso_local i32 @archive_strncat(%struct.archive_wstring*, i8*, i64) #1

declare dso_local i32 @archive_string_empty(%struct.archive_wstring*) #1

declare dso_local i32 @archive_string_concat(%struct.archive_wstring*, %struct.archive_wstring*) #1

declare dso_local i32 @archive_string_free(%struct.archive_wstring*) #1

declare dso_local i64 @archive_strlen(%struct.archive_wstring*) #1

declare dso_local i32 @archive_string_copy(%struct.archive_wstring*, %struct.archive_wstring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
