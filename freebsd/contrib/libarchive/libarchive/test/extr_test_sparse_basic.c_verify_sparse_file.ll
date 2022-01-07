; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_sparse_basic.c_verify_sparse_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_sparse_basic.c_verify_sparse_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.sparse = type { i64, i64 }
%struct.archive_entry = type { i32 }

@ARCHIVE_OK = common dso_local global i64 0, align 8
@HOLE = common dso_local global i64 0, align 8
@DATA = common dso_local global i64 0, align 8
@END = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive*, i8*, %struct.sparse*, i32)* @verify_sparse_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify_sparse_file(%struct.archive* %0, i8* %1, %struct.sparse* %2, i32 %3) #0 {
  %5 = alloca %struct.archive*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sparse*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.archive_entry*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store %struct.archive* %0, %struct.archive** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.sparse* %2, %struct.sparse** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %15, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.sparse*, %struct.sparse** %7, align 8
  %22 = call i32 @create_sparse_file(i8* %20, %struct.sparse* %21)
  %23 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %23, %struct.archive_entry** %9, align 8
  %24 = icmp ne %struct.archive_entry* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.archive*, %struct.archive** %5, align 8
  %28 = load i64, i64* @ARCHIVE_OK, align 8
  %29 = load %struct.archive*, %struct.archive** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @archive_read_disk_open(%struct.archive* %29, i8* %30)
  %32 = call i32 @assertEqualIntA(%struct.archive* %27, i64 %28, i32 %31)
  %33 = load %struct.archive*, %struct.archive** %5, align 8
  %34 = load i64, i64* @ARCHIVE_OK, align 8
  %35 = load %struct.archive*, %struct.archive** %5, align 8
  %36 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %37 = call i32 @archive_read_next_header2(%struct.archive* %35, %struct.archive_entry* %36)
  %38 = call i32 @assertEqualIntA(%struct.archive* %33, i64 %34, i32 %37)
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %39

39:                                               ; preds = %256, %4
  %40 = load i64, i64* @ARCHIVE_OK, align 8
  %41 = load %struct.archive*, %struct.archive** %5, align 8
  %42 = call i64 @archive_read_data_block(%struct.archive* %41, i8** %10, i64* %11, i64* %12)
  %43 = icmp eq i64 %40, %42
  br i1 %43, label %44, label %260

44:                                               ; preds = %39
  %45 = load i8*, i8** %10, align 8
  store i8* %45, i8** %16, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* %14, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* %15, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %15, align 4
  br label %52

52:                                               ; preds = %49, %44
  br label %53

53:                                               ; preds = %61, %52
  %54 = load i64, i64* %13, align 8
  %55 = load %struct.sparse*, %struct.sparse** %7, align 8
  %56 = getelementptr inbounds %struct.sparse, %struct.sparse* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %54, %57
  %59 = load i64, i64* %12, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %76

61:                                               ; preds = %53
  %62 = load %struct.sparse*, %struct.sparse** %7, align 8
  %63 = getelementptr inbounds %struct.sparse, %struct.sparse* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @HOLE, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load %struct.sparse*, %struct.sparse** %7, align 8
  %70 = getelementptr inbounds %struct.sparse, %struct.sparse* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %13, align 8
  %73 = add nsw i64 %72, %71
  store i64 %73, i64* %13, align 8
  %74 = load %struct.sparse*, %struct.sparse** %7, align 8
  %75 = getelementptr inbounds %struct.sparse, %struct.sparse* %74, i32 1
  store %struct.sparse* %75, %struct.sparse** %7, align 8
  br label %53

76:                                               ; preds = %53
  %77 = load i64, i64* %13, align 8
  %78 = load i64, i64* %12, align 8
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %80, label %126

80:                                               ; preds = %76
  %81 = load i64, i64* %13, align 8
  %82 = load %struct.sparse*, %struct.sparse** %7, align 8
  %83 = getelementptr inbounds %struct.sparse, %struct.sparse* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %81, %84
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* %11, align 8
  %88 = add nsw i64 %86, %87
  %89 = icmp sle i64 %85, %88
  br i1 %89, label %90, label %126

90:                                               ; preds = %80
  %91 = load i8*, i8** %10, align 8
  %92 = load i64, i64* %13, align 8
  %93 = load i64, i64* %12, align 8
  %94 = sub nsw i64 %92, %93
  %95 = getelementptr inbounds i8, i8* %91, i64 %94
  %96 = load %struct.sparse*, %struct.sparse** %7, align 8
  %97 = getelementptr inbounds %struct.sparse, %struct.sparse* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds i8, i8* %95, i64 %98
  store i8* %99, i8** %17, align 8
  %100 = load %struct.sparse*, %struct.sparse** %7, align 8
  %101 = getelementptr inbounds %struct.sparse, %struct.sparse* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @HOLE, align 8
  %104 = icmp eq i64 %102, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert(i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %90
  %109 = load i8*, i8** %16, align 8
  %110 = load i8*, i8** %17, align 8
  %111 = load i8*, i8** %16, align 8
  %112 = ptrtoint i8* %110 to i64
  %113 = ptrtoint i8* %111 to i64
  %114 = sub i64 %112, %113
  %115 = trunc i64 %114 to i32
  %116 = call i32 @assertMemoryFilledWith(i8* %109, i32 %115, i8 signext 0)
  br label %117

117:                                              ; preds = %108, %90
  %118 = load i8*, i8** %17, align 8
  store i8* %118, i8** %16, align 8
  %119 = load %struct.sparse*, %struct.sparse** %7, align 8
  %120 = getelementptr inbounds %struct.sparse, %struct.sparse* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %13, align 8
  %123 = add nsw i64 %122, %121
  store i64 %123, i64* %13, align 8
  %124 = load %struct.sparse*, %struct.sparse** %7, align 8
  %125 = getelementptr inbounds %struct.sparse, %struct.sparse* %124, i32 1
  store %struct.sparse* %125, %struct.sparse** %7, align 8
  br label %126

126:                                              ; preds = %117, %80, %76
  br label %127

127:                                              ; preds = %227, %126
  %128 = load i64, i64* %13, align 8
  %129 = load %struct.sparse*, %struct.sparse** %7, align 8
  %130 = getelementptr inbounds %struct.sparse, %struct.sparse* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %128, %131
  %133 = load i64, i64* %12, align 8
  %134 = load i64, i64* %11, align 8
  %135 = add nsw i64 %133, %134
  %136 = icmp sle i64 %132, %135
  br i1 %136, label %137, label %228

137:                                              ; preds = %127
  %138 = load i8*, i8** %10, align 8
  %139 = load i64, i64* %13, align 8
  %140 = load i64, i64* %12, align 8
  %141 = sub nsw i64 %139, %140
  %142 = getelementptr inbounds i8, i8* %138, i64 %141
  %143 = load %struct.sparse*, %struct.sparse** %7, align 8
  %144 = getelementptr inbounds %struct.sparse, %struct.sparse* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds i8, i8* %142, i64 %145
  store i8* %146, i8** %18, align 8
  %147 = load %struct.sparse*, %struct.sparse** %7, align 8
  %148 = getelementptr inbounds %struct.sparse, %struct.sparse* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @HOLE, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %179

152:                                              ; preds = %137
  %153 = load i8*, i8** %18, align 8
  %154 = load i8*, i8** %10, align 8
  %155 = load i64, i64* %11, align 8
  %156 = getelementptr inbounds i8, i8* %154, i64 %155
  %157 = icmp ugt i8* %153, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %152
  %159 = load i8*, i8** %10, align 8
  %160 = load i64, i64* %11, align 8
  %161 = getelementptr inbounds i8, i8* %159, i64 %160
  store i8* %161, i8** %18, align 8
  br label %162

162:                                              ; preds = %158, %152
  %163 = load i8*, i8** %16, align 8
  %164 = load i8*, i8** %18, align 8
  %165 = load i8*, i8** %16, align 8
  %166 = ptrtoint i8* %164 to i64
  %167 = ptrtoint i8* %165 to i64
  %168 = sub i64 %166, %167
  %169 = trunc i64 %168 to i32
  %170 = call i32 @assertMemoryFilledWith(i8* %163, i32 %169, i8 signext 0)
  %171 = load i8*, i8** %18, align 8
  store i8* %171, i8** %16, align 8
  %172 = load %struct.sparse*, %struct.sparse** %7, align 8
  %173 = getelementptr inbounds %struct.sparse, %struct.sparse* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* %13, align 8
  %176 = add nsw i64 %175, %174
  store i64 %176, i64* %13, align 8
  %177 = load %struct.sparse*, %struct.sparse** %7, align 8
  %178 = getelementptr inbounds %struct.sparse, %struct.sparse* %177, i32 1
  store %struct.sparse* %178, %struct.sparse** %7, align 8
  br label %227

179:                                              ; preds = %137
  %180 = load %struct.sparse*, %struct.sparse** %7, align 8
  %181 = getelementptr inbounds %struct.sparse, %struct.sparse* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @DATA, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %225

185:                                              ; preds = %179
  %186 = load i64, i64* %13, align 8
  %187 = load %struct.sparse*, %struct.sparse** %7, align 8
  %188 = getelementptr inbounds %struct.sparse, %struct.sparse* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = add nsw i64 %186, %189
  %191 = load i64, i64* %12, align 8
  %192 = load i64, i64* %11, align 8
  %193 = add i64 %191, %192
  %194 = icmp ule i64 %190, %193
  %195 = zext i1 %194 to i32
  %196 = call i32 @assert(i32 %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %216

198:                                              ; preds = %185
  %199 = load i8*, i8** %16, align 8
  %200 = load i8*, i8** %10, align 8
  %201 = load i64, i64* %13, align 8
  %202 = load i64, i64* %12, align 8
  %203 = sub nsw i64 %201, %202
  %204 = getelementptr inbounds i8, i8* %200, i64 %203
  %205 = icmp eq i8* %199, %204
  %206 = zext i1 %205 to i32
  %207 = call i32 @assert(i32 %206)
  %208 = load i8*, i8** %16, align 8
  %209 = load i8*, i8** %18, align 8
  %210 = load i8*, i8** %16, align 8
  %211 = ptrtoint i8* %209 to i64
  %212 = ptrtoint i8* %210 to i64
  %213 = sub i64 %211, %212
  %214 = trunc i64 %213 to i32
  %215 = call i32 @assertMemoryFilledWith(i8* %208, i32 %214, i8 signext 32)
  br label %216

216:                                              ; preds = %198, %185
  %217 = load i8*, i8** %18, align 8
  store i8* %217, i8** %16, align 8
  %218 = load %struct.sparse*, %struct.sparse** %7, align 8
  %219 = getelementptr inbounds %struct.sparse, %struct.sparse* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* %13, align 8
  %222 = add nsw i64 %221, %220
  store i64 %222, i64* %13, align 8
  %223 = load %struct.sparse*, %struct.sparse** %7, align 8
  %224 = getelementptr inbounds %struct.sparse, %struct.sparse* %223, i32 1
  store %struct.sparse* %224, %struct.sparse** %7, align 8
  br label %226

225:                                              ; preds = %179
  br label %228

226:                                              ; preds = %216
  br label %227

227:                                              ; preds = %226, %162
  br label %127

228:                                              ; preds = %225, %127
  %229 = load i64, i64* %13, align 8
  %230 = load i64, i64* %12, align 8
  %231 = load i64, i64* %11, align 8
  %232 = add nsw i64 %230, %231
  %233 = icmp slt i64 %229, %232
  br i1 %233, label %234, label %256

234:                                              ; preds = %228
  %235 = load i8*, i8** %10, align 8
  %236 = load i64, i64* %11, align 8
  %237 = getelementptr inbounds i8, i8* %235, i64 %236
  store i8* %237, i8** %19, align 8
  %238 = load %struct.sparse*, %struct.sparse** %7, align 8
  %239 = getelementptr inbounds %struct.sparse, %struct.sparse* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @HOLE, align 8
  %242 = icmp eq i64 %240, %241
  %243 = zext i1 %242 to i32
  %244 = call i32 @assert(i32 %243)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %255

246:                                              ; preds = %234
  %247 = load i8*, i8** %16, align 8
  %248 = load i8*, i8** %19, align 8
  %249 = load i8*, i8** %16, align 8
  %250 = ptrtoint i8* %248 to i64
  %251 = ptrtoint i8* %249 to i64
  %252 = sub i64 %250, %251
  %253 = trunc i64 %252 to i32
  %254 = call i32 @assertMemoryFilledWith(i8* %247, i32 %253, i8 signext 0)
  br label %255

255:                                              ; preds = %246, %234
  br label %256

256:                                              ; preds = %255, %228
  %257 = load i64, i64* %12, align 8
  %258 = load i64, i64* %11, align 8
  %259 = add i64 %257, %258
  store i64 %259, i64* %14, align 8
  br label %39

260:                                              ; preds = %39
  %261 = load i64, i64* %14, align 8
  %262 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %263 = call i32 @archive_entry_size(%struct.archive_entry* %262)
  %264 = sext i32 %263 to i64
  %265 = icmp slt i64 %261, %264
  br i1 %265, label %266, label %269

266:                                              ; preds = %260
  %267 = load i32, i32* %15, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %15, align 4
  br label %269

269:                                              ; preds = %266, %260
  br label %270

270:                                              ; preds = %276, %269
  %271 = load %struct.sparse*, %struct.sparse** %7, align 8
  %272 = getelementptr inbounds %struct.sparse, %struct.sparse* %271, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* @HOLE, align 8
  %275 = icmp eq i64 %273, %274
  br i1 %275, label %276, label %284

276:                                              ; preds = %270
  %277 = load %struct.sparse*, %struct.sparse** %7, align 8
  %278 = getelementptr inbounds %struct.sparse, %struct.sparse* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* %13, align 8
  %281 = add nsw i64 %280, %279
  store i64 %281, i64* %13, align 8
  %282 = load %struct.sparse*, %struct.sparse** %7, align 8
  %283 = getelementptr inbounds %struct.sparse, %struct.sparse* %282, i32 1
  store %struct.sparse* %283, %struct.sparse** %7, align 8
  br label %270

284:                                              ; preds = %270
  %285 = load %struct.sparse*, %struct.sparse** %7, align 8
  %286 = getelementptr inbounds %struct.sparse, %struct.sparse* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* @END, align 8
  %289 = icmp eq i64 %287, %288
  %290 = zext i1 %289 to i32
  %291 = call i32 @assert(i32 %290)
  %292 = load i64, i64* %13, align 8
  %293 = trunc i64 %292 to i32
  %294 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %295 = call i32 @archive_entry_size(%struct.archive_entry* %294)
  %296 = call i32 @assertEqualInt(i32 %293, i32 %295)
  %297 = load i8*, i8** %6, align 8
  %298 = call i32 @failure(i8* %297)
  %299 = load i32, i32* %15, align 4
  %300 = load i32, i32* %8, align 4
  %301 = call i32 @assertEqualInt(i32 %299, i32 %300)
  %302 = load %struct.archive*, %struct.archive** %5, align 8
  %303 = load i64, i64* @ARCHIVE_OK, align 8
  %304 = load %struct.archive*, %struct.archive** %5, align 8
  %305 = call i32 @archive_read_close(%struct.archive* %304)
  %306 = call i32 @assertEqualIntA(%struct.archive* %302, i64 %303, i32 %305)
  %307 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %308 = call i32 @archive_entry_free(%struct.archive_entry* %307)
  ret void
}

declare dso_local i32 @create_sparse_file(i8*, %struct.sparse*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i64, i32) #1

declare dso_local i32 @archive_read_disk_open(%struct.archive*, i8*) #1

declare dso_local i32 @archive_read_next_header2(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i64 @archive_read_data_block(%struct.archive*, i8**, i64*, i64*) #1

declare dso_local i32 @assertMemoryFilledWith(i8*, i32, i8 signext) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @failure(i8*) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
