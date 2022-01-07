; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_compose_delta.c_copy_source_ops.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_compose_delta.c_copy_source_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_10__ = type { i64, i64, i32 }
%struct.TYPE_11__ = type { i64* }

@svn_txdelta_target = common dso_local global i64 0, align 8
@svn_txdelta_new = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64, i64, i32*, %struct.TYPE_9__*, %struct.TYPE_11__*, i32*)* @copy_source_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_source_ops(i64 %0, i64 %1, i64 %2, i64 %3, i32* %4, %struct.TYPE_9__* %5, %struct.TYPE_11__* %6, i32* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_10__*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  store i64 %0, i64* %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32* %4, i32** %13, align 8
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_11__* %6, %struct.TYPE_11__** %15, align 8
  store i32* %7, i32** %16, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %12, align 8
  %32 = call i64 @search_offset_index(%struct.TYPE_11__* %29, i64 %30, i64 %31)
  store i64 %32, i64* %17, align 8
  br label %33

33:                                               ; preds = %343, %8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = load i64, i64* %17, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i64 %37
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %18, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* %17, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  store i64* %43, i64** %19, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i64*, i64** %19, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ugt i64 %44, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %33
  %50 = load i64, i64* %9, align 8
  %51 = load i64*, i64** %19, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  %53 = load i64, i64* %52, align 8
  %54 = sub i64 %50, %53
  br label %56

55:                                               ; preds = %33
  br label %56

56:                                               ; preds = %55, %49
  %57 = phi i64 [ %54, %49 ], [ 0, %55 ]
  store i64 %57, i64* %20, align 8
  %58 = load i64*, i64** %19, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %10, align 8
  %62 = icmp uge i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %79

64:                                               ; preds = %56
  %65 = load i64*, i64** %19, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %10, align 8
  %69 = icmp ugt i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load i64*, i64** %19, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %10, align 8
  %75 = sub i64 %73, %74
  br label %77

76:                                               ; preds = %64
  br label %77

77:                                               ; preds = %76, %70
  %78 = phi i64 [ %75, %70 ], [ 0, %76 ]
  br label %79

79:                                               ; preds = %77, %63
  %80 = phi i64 [ 0, %63 ], [ %78, %77 ]
  store i64 %80, i64* %21, align 8
  %81 = load i64*, i64** %19, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %10, align 8
  %85 = icmp uge i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %346

87:                                               ; preds = %79
  %88 = load i64, i64* %20, align 8
  %89 = load i64, i64* %21, align 8
  %90 = add i64 %88, %89
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ult i64 %90, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @svn_txdelta_target, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %144

102:                                              ; preds = %87
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @svn_txdelta_new, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %121

108:                                              ; preds = %102
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %113, i64 %117
  %119 = load i64, i64* %20, align 8
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  br label %122

121:                                              ; preds = %102
  br label %122

122:                                              ; preds = %121, %108
  %123 = phi i8* [ %120, %108 ], [ null, %121 ]
  store i8* %123, i8** %22, align 8
  %124 = load i32*, i32** %13, align 8
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = load i64, i64* %20, align 8
  %133 = add i64 %131, %132
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* %20, align 8
  %138 = sub i64 %136, %137
  %139 = load i64, i64* %21, align 8
  %140 = sub i64 %138, %139
  %141 = load i8*, i8** %22, align 8
  %142 = load i32*, i32** %16, align 8
  %143 = call i32 @svn_txdelta__insert_op(i32* %124, i64 %127, i64 %133, i64 %140, i8* %141, i32* %142)
  br label %333

144:                                              ; preds = %87
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = sext i32 %147 to i64
  %149 = load i64*, i64** %19, align 8
  %150 = getelementptr inbounds i64, i64* %149, i64 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp ult i64 %148, %151
  %153 = zext i1 %152 to i32
  %154 = call i32 @assert(i32 %153)
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = sext i32 %157 to i64
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = add i64 %158, %161
  %163 = load i64, i64* %21, align 8
  %164 = sub i64 %162, %163
  %165 = load i64*, i64** %19, align 8
  %166 = getelementptr inbounds i64, i64* %165, i64 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp ule i64 %164, %167
  br i1 %168, label %169, label %192

169:                                              ; preds = %144
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = sext i32 %172 to i64
  %174 = load i64, i64* %20, align 8
  %175 = add i64 %173, %174
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = sext i32 %178 to i64
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = add i64 %179, %182
  %184 = load i64, i64* %21, align 8
  %185 = sub i64 %183, %184
  %186 = load i64, i64* %11, align 8
  %187 = load i64, i64* %17, align 8
  %188 = load i32*, i32** %13, align 8
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %191 = load i32*, i32** %16, align 8
  call void @copy_source_ops(i64 %175, i64 %185, i64 %186, i64 %187, i32* %188, %struct.TYPE_9__* %189, %struct.TYPE_11__* %190, i32* %191)
  br label %332

192:                                              ; preds = %144
  %193 = load i64*, i64** %19, align 8
  %194 = getelementptr inbounds i64, i64* %193, i64 0
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = sext i32 %198 to i64
  %200 = sub i64 %195, %199
  store i64 %200, i64* %23, align 8
  %201 = load i64, i64* %20, align 8
  %202 = load i64, i64* %23, align 8
  %203 = urem i64 %201, %202
  store i64 %203, i64* %24, align 8
  %204 = load i64, i64* %20, align 8
  store i64 %204, i64* %25, align 8
  %205 = load i64, i64* %11, align 8
  store i64 %205, i64* %26, align 8
  %206 = load i64, i64* %23, align 8
  %207 = load i64, i64* %24, align 8
  %208 = icmp ugt i64 %206, %207
  %209 = zext i1 %208 to i32
  %210 = call i32 @assert(i32 %209)
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* %25, align 8
  %215 = sub i64 %213, %214
  %216 = load i64, i64* %21, align 8
  %217 = sub i64 %215, %216
  %218 = load i64, i64* %23, align 8
  %219 = load i64, i64* %24, align 8
  %220 = sub i64 %218, %219
  %221 = call i64 @MIN(i64 %217, i64 %220)
  store i64 %221, i64* %27, align 8
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = sext i32 %224 to i64
  %226 = load i64, i64* %24, align 8
  %227 = add i64 %225, %226
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = sext i32 %230 to i64
  %232 = load i64, i64* %24, align 8
  %233 = add i64 %231, %232
  %234 = load i64, i64* %27, align 8
  %235 = add i64 %233, %234
  %236 = load i64, i64* %26, align 8
  %237 = load i64, i64* %17, align 8
  %238 = load i32*, i32** %13, align 8
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %241 = load i32*, i32** %16, align 8
  call void @copy_source_ops(i64 %227, i64 %235, i64 %236, i64 %237, i32* %238, %struct.TYPE_9__* %239, %struct.TYPE_11__* %240, i32* %241)
  %242 = load i64, i64* %27, align 8
  %243 = load i64, i64* %25, align 8
  %244 = add i64 %243, %242
  store i64 %244, i64* %25, align 8
  %245 = load i64, i64* %27, align 8
  %246 = load i64, i64* %26, align 8
  %247 = add i64 %246, %245
  store i64 %247, i64* %26, align 8
  %248 = load i64, i64* %25, align 8
  %249 = load i64, i64* %21, align 8
  %250 = add i64 %248, %249
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = icmp ule i64 %250, %253
  %255 = zext i1 %254 to i32
  %256 = call i32 @assert(i32 %255)
  %257 = load i64, i64* %24, align 8
  %258 = icmp ugt i64 %257, 0
  br i1 %258, label %259, label %299

259:                                              ; preds = %192
  %260 = load i64, i64* %25, align 8
  %261 = load i64, i64* %21, align 8
  %262 = add i64 %260, %261
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = icmp ult i64 %262, %265
  br i1 %266, label %267, label %299

267:                                              ; preds = %259
  %268 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* %25, align 8
  %272 = sub i64 %270, %271
  %273 = load i64, i64* %21, align 8
  %274 = sub i64 %272, %273
  %275 = load i64, i64* %24, align 8
  %276 = call i64 @MIN(i64 %274, i64 %275)
  store i64 %276, i64* %28, align 8
  %277 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = sext i32 %279 to i64
  %281 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = sext i32 %283 to i64
  %285 = load i64, i64* %28, align 8
  %286 = add i64 %284, %285
  %287 = load i64, i64* %26, align 8
  %288 = load i64, i64* %17, align 8
  %289 = load i32*, i32** %13, align 8
  %290 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %291 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %292 = load i32*, i32** %16, align 8
  call void @copy_source_ops(i64 %280, i64 %286, i64 %287, i64 %288, i32* %289, %struct.TYPE_9__* %290, %struct.TYPE_11__* %291, i32* %292)
  %293 = load i64, i64* %28, align 8
  %294 = load i64, i64* %25, align 8
  %295 = add i64 %294, %293
  store i64 %295, i64* %25, align 8
  %296 = load i64, i64* %28, align 8
  %297 = load i64, i64* %26, align 8
  %298 = add i64 %297, %296
  store i64 %298, i64* %26, align 8
  br label %299

299:                                              ; preds = %267, %259, %192
  %300 = load i64, i64* %25, align 8
  %301 = load i64, i64* %21, align 8
  %302 = add i64 %300, %301
  %303 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = icmp ule i64 %302, %305
  %307 = zext i1 %306 to i32
  %308 = call i32 @assert(i32 %307)
  %309 = load i64, i64* %25, align 8
  %310 = load i64, i64* %21, align 8
  %311 = add i64 %309, %310
  %312 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %313 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %312, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = icmp ult i64 %311, %314
  br i1 %315, label %316, label %331

316:                                              ; preds = %299
  %317 = load i32*, i32** %13, align 8
  %318 = load i64, i64* @svn_txdelta_target, align 8
  %319 = load i64, i64* %26, align 8
  %320 = load i64, i64* %23, align 8
  %321 = sub i64 %319, %320
  %322 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %323 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %322, i32 0, i32 0
  %324 = load i64, i64* %323, align 8
  %325 = load i64, i64* %25, align 8
  %326 = sub i64 %324, %325
  %327 = load i64, i64* %21, align 8
  %328 = sub i64 %326, %327
  %329 = load i32*, i32** %16, align 8
  %330 = call i32 @svn_txdelta__insert_op(i32* %317, i64 %318, i64 %321, i64 %328, i8* null, i32* %329)
  br label %331

331:                                              ; preds = %316, %299
  br label %332

332:                                              ; preds = %331, %169
  br label %333

333:                                              ; preds = %332, %122
  %334 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %335 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = load i64, i64* %20, align 8
  %338 = sub i64 %336, %337
  %339 = load i64, i64* %21, align 8
  %340 = sub i64 %338, %339
  %341 = load i64, i64* %11, align 8
  %342 = add i64 %341, %340
  store i64 %342, i64* %11, align 8
  br label %343

343:                                              ; preds = %333
  %344 = load i64, i64* %17, align 8
  %345 = add i64 %344, 1
  store i64 %345, i64* %17, align 8
  br label %33

346:                                              ; preds = %86
  ret void
}

declare dso_local i64 @search_offset_index(%struct.TYPE_11__*, i64, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @svn_txdelta__insert_op(i32*, i64, i64, i64, i8*, i32*) #1

declare dso_local i64 @MIN(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
