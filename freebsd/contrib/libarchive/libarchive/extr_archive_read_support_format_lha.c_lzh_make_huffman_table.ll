; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_lzh_make_huffman_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_lzh_make_huffman_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.huffman = type { i32*, i32, i32, i32*, i32, i8*, i32, i32, i32, %struct.htree_t* }
%struct.htree_t = type { i32, i32 }

@HTBL_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.huffman*)* @lzh_make_huffman_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lzh_make_huffman_table(%struct.huffman* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.huffman*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [17 x i32], align 16
  %7 = alloca [17 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.htree_t*, align 8
  %24 = alloca i32*, align 8
  store %struct.huffman* %0, %struct.huffman** %3, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %8, align 4
  store i32 32768, i32* %12, align 4
  br label %25

25:                                               ; preds = %59, %1
  %26 = load i32, i32* %8, align 4
  %27 = icmp sle i32 %26, 16
  br i1 %27, label %28, label %64

28:                                               ; preds = %25
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [17 x i32], [17 x i32]* %6, i64 0, i64 %31
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [17 x i32], [17 x i32]* %7, i64 0, i64 %35
  store i32 %33, i32* %36, align 4
  %37 = load %struct.huffman*, %struct.huffman** %3, align 8
  %38 = getelementptr inbounds %struct.huffman, %struct.huffman* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %28
  %46 = load %struct.huffman*, %struct.huffman** %3, align 8
  %47 = getelementptr inbounds %struct.huffman, %struct.huffman* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %12, align 4
  %54 = mul nsw i32 %52, %53
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %45, %28
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %12, align 4
  %63 = ashr i32 %62, 1
  store i32 %63, i32* %12, align 4
  br label %25

64:                                               ; preds = %25
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 65536
  br i1 %66, label %73, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.huffman*, %struct.huffman** %3, align 8
  %70 = getelementptr inbounds %struct.huffman, %struct.huffman* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp sgt i32 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67, %64
  store i32 0, i32* %2, align 4
  br label %551

74:                                               ; preds = %67
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.huffman*, %struct.huffman** %3, align 8
  %77 = getelementptr inbounds %struct.huffman, %struct.huffman* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %78, 16
  br i1 %79, label %80, label %104

80:                                               ; preds = %74
  %81 = load i32, i32* %9, align 4
  %82 = sub nsw i32 16, %81
  store i32 %82, i32* %15, align 4
  store i32 1, i32* %8, align 4
  br label %83

83:                                               ; preds = %100, %80
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp sle i32 %84, %85
  br i1 %86, label %87, label %103

87:                                               ; preds = %83
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [17 x i32], [17 x i32]* %6, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = ashr i32 %92, %88
  store i32 %93, i32* %91, align 4
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [17 x i32], [17 x i32]* %7, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = ashr i32 %98, %94
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %87
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %83

103:                                              ; preds = %83
  br label %104

104:                                              ; preds = %103, %74
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @HTBL_BITS, align 4
  %107 = icmp sgt i32 %105, %106
  br i1 %107, label %108, label %170

108:                                              ; preds = %104
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @HTBL_BITS, align 4
  %111 = sub nsw i32 %109, %110
  store i32 %111, i32* %13, align 4
  store i32 1, i32* %8, align 4
  br label %112

112:                                              ; preds = %129, %108
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @HTBL_BITS, align 4
  %115 = icmp sle i32 %113, %114
  br i1 %115, label %116, label %132

116:                                              ; preds = %112
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [17 x i32], [17 x i32]* %6, i64 0, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = ashr i32 %121, %117
  store i32 %122, i32* %120, align 4
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [17 x i32], [17 x i32]* %7, i64 0, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = ashr i32 %127, %123
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %116
  %130 = load i32, i32* %8, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %8, align 4
  br label %112

132:                                              ; preds = %112
  %133 = load i32, i32* @HTBL_BITS, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [17 x i32], [17 x i32]* %6, i64 0, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @HTBL_BITS, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [17 x i32], [17 x i32]* %7, i64 0, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.huffman*, %struct.huffman** %3, align 8
  %142 = getelementptr inbounds %struct.huffman, %struct.huffman* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* @HTBL_BITS, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = mul nsw i32 %140, %147
  %149 = add nsw i32 %136, %148
  store i32 %149, i32* %16, align 4
  %150 = load %struct.huffman*, %struct.huffman** %3, align 8
  %151 = getelementptr inbounds %struct.huffman, %struct.huffman* %150, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %16, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  store i32* %155, i32** %17, align 8
  br label %156

156:                                              ; preds = %166, %132
  %157 = load i32*, i32** %17, align 8
  %158 = load %struct.huffman*, %struct.huffman** %3, align 8
  %159 = getelementptr inbounds %struct.huffman, %struct.huffman* %158, i32 0, i32 3
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* @HTBL_BITS, align 4
  %162 = shl i32 1, %161
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %160, i64 %163
  %165 = icmp ult i32* %157, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %156
  %167 = load i32*, i32** %17, align 8
  %168 = getelementptr inbounds i32, i32* %167, i32 1
  store i32* %168, i32** %17, align 8
  store i32 0, i32* %167, align 4
  br label %156

169:                                              ; preds = %156
  br label %171

170:                                              ; preds = %104
  store i32 0, i32* %13, align 4
  br label %171

171:                                              ; preds = %170, %169
  %172 = load i32, i32* %13, align 4
  %173 = load %struct.huffman*, %struct.huffman** %3, align 8
  %174 = getelementptr inbounds %struct.huffman, %struct.huffman* %173, i32 0, i32 4
  store i32 %172, i32* %174, align 8
  %175 = load i32, i32* @HTBL_BITS, align 4
  %176 = shl i32 1, %175
  store i32 %176, i32* %11, align 4
  %177 = load %struct.huffman*, %struct.huffman** %3, align 8
  %178 = getelementptr inbounds %struct.huffman, %struct.huffman* %177, i32 0, i32 3
  %179 = load i32*, i32** %178, align 8
  store i32* %179, i32** %4, align 8
  %180 = load %struct.huffman*, %struct.huffman** %3, align 8
  %181 = getelementptr inbounds %struct.huffman, %struct.huffman* %180, i32 0, i32 5
  %182 = load i8*, i8** %181, align 8
  store i8* %182, i8** %5, align 8
  %183 = load %struct.huffman*, %struct.huffman** %3, align 8
  %184 = getelementptr inbounds %struct.huffman, %struct.huffman* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 8
  store i32 %185, i32* %14, align 4
  %186 = load %struct.huffman*, %struct.huffman** %3, align 8
  %187 = getelementptr inbounds %struct.huffman, %struct.huffman* %186, i32 0, i32 7
  store i32 0, i32* %187, align 4
  store i32 0, i32* %8, align 4
  br label %188

188:                                              ; preds = %547, %171
  %189 = load i32, i32* %8, align 4
  %190 = load i32, i32* %14, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %550

192:                                              ; preds = %188
  %193 = load i8*, i8** %5, align 8
  %194 = load i32, i32* %8, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, i8* %193, i64 %195
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i32
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %192
  br label %547

201:                                              ; preds = %192
  %202 = load i8*, i8** %5, align 8
  %203 = load i32, i32* %8, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, i8* %202, i64 %204
  %206 = load i8, i8* %205, align 1
  %207 = zext i8 %206 to i32
  store i32 %207, i32* %19, align 4
  %208 = load i32, i32* %19, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [17 x i32], [17 x i32]* %6, i64 0, i64 %209
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %10, align 4
  %212 = load i32, i32* %19, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [17 x i32], [17 x i32]* %7, i64 0, i64 %213
  %215 = load i32, i32* %214, align 4
  store i32 %215, i32* %20, align 4
  %216 = load i32, i32* %19, align 4
  %217 = load i32, i32* @HTBL_BITS, align 4
  %218 = icmp sle i32 %216, %217
  br i1 %218, label %219, label %336

219:                                              ; preds = %201
  %220 = load i32, i32* %10, align 4
  %221 = load i32, i32* %20, align 4
  %222 = add nsw i32 %220, %221
  %223 = load i32, i32* %19, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [17 x i32], [17 x i32]* %6, i64 0, i64 %224
  store i32 %222, i32* %225, align 4
  %226 = load i32, i32* %11, align 4
  %227 = icmp sgt i32 %222, %226
  br i1 %227, label %228, label %229

228:                                              ; preds = %219
  store i32 0, i32* %2, align 4
  br label %551

229:                                              ; preds = %219
  %230 = load i32*, i32** %4, align 8
  %231 = load i32, i32* %10, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  store i32* %233, i32** %18, align 8
  %234 = load i32, i32* %20, align 4
  %235 = icmp sgt i32 %234, 7
  br i1 %235, label %236, label %307

236:                                              ; preds = %229
  %237 = load i32, i32* %20, align 4
  %238 = sub nsw i32 %237, 8
  store i32 %238, i32* %20, align 4
  %239 = load i32*, i32** %18, align 8
  %240 = load i32, i32* %20, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  store i32* %242, i32** %24, align 8
  %243 = load i32, i32* %8, align 4
  %244 = load i32*, i32** %24, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 0
  store i32 %243, i32* %245, align 4
  %246 = load i32, i32* %8, align 4
  %247 = load i32*, i32** %24, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 1
  store i32 %246, i32* %248, align 4
  %249 = load i32, i32* %8, align 4
  %250 = load i32*, i32** %24, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 2
  store i32 %249, i32* %251, align 4
  %252 = load i32, i32* %8, align 4
  %253 = load i32*, i32** %24, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 3
  store i32 %252, i32* %254, align 4
  %255 = load i32, i32* %8, align 4
  %256 = load i32*, i32** %24, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 4
  store i32 %255, i32* %257, align 4
  %258 = load i32, i32* %8, align 4
  %259 = load i32*, i32** %24, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 5
  store i32 %258, i32* %260, align 4
  %261 = load i32, i32* %8, align 4
  %262 = load i32*, i32** %24, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 6
  store i32 %261, i32* %263, align 4
  %264 = load i32, i32* %8, align 4
  %265 = load i32*, i32** %24, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 7
  store i32 %264, i32* %266, align 4
  %267 = load i32, i32* %20, align 4
  %268 = icmp sgt i32 %267, 7
  br i1 %268, label %269, label %295

269:                                              ; preds = %236
  %270 = load i32, i32* %20, align 4
  %271 = sub nsw i32 %270, 8
  store i32 %271, i32* %20, align 4
  %272 = load i32*, i32** %18, align 8
  %273 = load i32, i32* %20, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  %276 = load i32*, i32** %24, align 8
  %277 = call i32 @memcpy(i32* %275, i32* %276, i32 32)
  %278 = load i32*, i32** %18, align 8
  %279 = load i32, i32* %20, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  store i32* %281, i32** %24, align 8
  br label %282

282:                                              ; preds = %285, %269
  %283 = load i32, i32* %20, align 4
  %284 = icmp sgt i32 %283, 15
  br i1 %284, label %285, label %294

285:                                              ; preds = %282
  %286 = load i32, i32* %20, align 4
  %287 = sub nsw i32 %286, 16
  store i32 %287, i32* %20, align 4
  %288 = load i32*, i32** %18, align 8
  %289 = load i32, i32* %20, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %288, i64 %290
  %292 = load i32*, i32** %24, align 8
  %293 = call i32 @memcpy(i32* %291, i32* %292, i32 64)
  br label %282

294:                                              ; preds = %282
  br label %295

295:                                              ; preds = %294, %236
  %296 = load i32, i32* %20, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %306

298:                                              ; preds = %295
  %299 = load i32*, i32** %18, align 8
  %300 = load i32*, i32** %24, align 8
  %301 = load i32, i32* %20, align 4
  %302 = sext i32 %301 to i64
  %303 = mul i64 %302, 4
  %304 = trunc i64 %303 to i32
  %305 = call i32 @memcpy(i32* %299, i32* %300, i32 %304)
  br label %306

306:                                              ; preds = %298, %295
  br label %335

307:                                              ; preds = %229
  br label %308

308:                                              ; preds = %311, %307
  %309 = load i32, i32* %20, align 4
  %310 = icmp sgt i32 %309, 1
  br i1 %310, label %311, label %324

311:                                              ; preds = %308
  %312 = load i32, i32* %8, align 4
  %313 = load i32*, i32** %18, align 8
  %314 = load i32, i32* %20, align 4
  %315 = add nsw i32 %314, -1
  store i32 %315, i32* %20, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %313, i64 %316
  store i32 %312, i32* %317, align 4
  %318 = load i32, i32* %8, align 4
  %319 = load i32*, i32** %18, align 8
  %320 = load i32, i32* %20, align 4
  %321 = add nsw i32 %320, -1
  store i32 %321, i32* %20, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %319, i64 %322
  store i32 %318, i32* %323, align 4
  br label %308

324:                                              ; preds = %308
  %325 = load i32, i32* %20, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %334

327:                                              ; preds = %324
  %328 = load i32, i32* %8, align 4
  %329 = load i32*, i32** %18, align 8
  %330 = load i32, i32* %20, align 4
  %331 = add nsw i32 %330, -1
  store i32 %331, i32* %20, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i32, i32* %329, i64 %332
  store i32 %328, i32* %333, align 4
  br label %334

334:                                              ; preds = %327, %324
  br label %335

335:                                              ; preds = %334, %306
  br label %547

336:                                              ; preds = %201
  %337 = load i32, i32* %10, align 4
  %338 = load i32, i32* %20, align 4
  %339 = add nsw i32 %337, %338
  %340 = load i32, i32* %19, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds [17 x i32], [17 x i32]* %6, i64 0, i64 %341
  store i32 %339, i32* %342, align 4
  %343 = load i32, i32* %13, align 4
  %344 = sub nsw i32 %343, 1
  %345 = shl i32 1, %344
  store i32 %345, i32* %21, align 4
  %346 = load i32, i32* %19, align 4
  %347 = load i32, i32* @HTBL_BITS, align 4
  %348 = sub nsw i32 %346, %347
  store i32 %348, i32* %22, align 4
  %349 = load i32*, i32** %4, align 8
  %350 = load i32, i32* %10, align 4
  %351 = load i32, i32* %13, align 4
  %352 = ashr i32 %350, %351
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i32, i32* %349, i64 %353
  store i32* %354, i32** %18, align 8
  %355 = load i32*, i32** %18, align 8
  %356 = load i32, i32* %355, align 4
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %387

358:                                              ; preds = %336
  %359 = load i32, i32* %14, align 4
  %360 = load %struct.huffman*, %struct.huffman** %3, align 8
  %361 = getelementptr inbounds %struct.huffman, %struct.huffman* %360, i32 0, i32 7
  %362 = load i32, i32* %361, align 4
  %363 = add nsw i32 %359, %362
  %364 = load i32*, i32** %18, align 8
  store i32 %363, i32* %364, align 4
  %365 = load %struct.huffman*, %struct.huffman** %3, align 8
  %366 = getelementptr inbounds %struct.huffman, %struct.huffman* %365, i32 0, i32 9
  %367 = load %struct.htree_t*, %struct.htree_t** %366, align 8
  %368 = load %struct.huffman*, %struct.huffman** %3, align 8
  %369 = getelementptr inbounds %struct.huffman, %struct.huffman* %368, i32 0, i32 7
  %370 = load i32, i32* %369, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %369, align 4
  %372 = sext i32 %370 to i64
  %373 = getelementptr inbounds %struct.htree_t, %struct.htree_t* %367, i64 %372
  store %struct.htree_t* %373, %struct.htree_t** %23, align 8
  %374 = load %struct.huffman*, %struct.huffman** %3, align 8
  %375 = getelementptr inbounds %struct.huffman, %struct.huffman* %374, i32 0, i32 7
  %376 = load i32, i32* %375, align 4
  %377 = load %struct.huffman*, %struct.huffman** %3, align 8
  %378 = getelementptr inbounds %struct.huffman, %struct.huffman* %377, i32 0, i32 8
  %379 = load i32, i32* %378, align 8
  %380 = icmp sgt i32 %376, %379
  br i1 %380, label %381, label %382

381:                                              ; preds = %358
  store i32 0, i32* %2, align 4
  br label %551

382:                                              ; preds = %358
  %383 = load %struct.htree_t*, %struct.htree_t** %23, align 8
  %384 = getelementptr inbounds %struct.htree_t, %struct.htree_t* %383, i32 0, i32 0
  store i32 0, i32* %384, align 4
  %385 = load %struct.htree_t*, %struct.htree_t** %23, align 8
  %386 = getelementptr inbounds %struct.htree_t, %struct.htree_t* %385, i32 0, i32 1
  store i32 0, i32* %386, align 4
  br label %412

387:                                              ; preds = %336
  %388 = load i32*, i32** %18, align 8
  %389 = load i32, i32* %388, align 4
  %390 = load i32, i32* %14, align 4
  %391 = icmp slt i32 %389, %390
  br i1 %391, label %401, label %392

392:                                              ; preds = %387
  %393 = load i32*, i32** %18, align 8
  %394 = load i32, i32* %393, align 4
  %395 = load i32, i32* %14, align 4
  %396 = load %struct.huffman*, %struct.huffman** %3, align 8
  %397 = getelementptr inbounds %struct.huffman, %struct.huffman* %396, i32 0, i32 7
  %398 = load i32, i32* %397, align 4
  %399 = add nsw i32 %395, %398
  %400 = icmp sge i32 %394, %399
  br i1 %400, label %401, label %402

401:                                              ; preds = %392, %387
  store i32 0, i32* %2, align 4
  br label %551

402:                                              ; preds = %392
  %403 = load %struct.huffman*, %struct.huffman** %3, align 8
  %404 = getelementptr inbounds %struct.huffman, %struct.huffman* %403, i32 0, i32 9
  %405 = load %struct.htree_t*, %struct.htree_t** %404, align 8
  %406 = load i32*, i32** %18, align 8
  %407 = load i32, i32* %406, align 4
  %408 = load i32, i32* %14, align 4
  %409 = sub nsw i32 %407, %408
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds %struct.htree_t, %struct.htree_t* %405, i64 %410
  store %struct.htree_t* %411, %struct.htree_t** %23, align 8
  br label %412

412:                                              ; preds = %402, %382
  br label %413

413:                                              ; preds = %518, %412
  %414 = load i32, i32* %22, align 4
  %415 = add nsw i32 %414, -1
  store i32 %415, i32* %22, align 4
  %416 = icmp sgt i32 %415, 0
  br i1 %416, label %417, label %521

417:                                              ; preds = %413
  %418 = load i32, i32* %10, align 4
  %419 = load i32, i32* %21, align 4
  %420 = and i32 %418, %419
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %470

422:                                              ; preds = %417
  %423 = load %struct.htree_t*, %struct.htree_t** %23, align 8
  %424 = getelementptr inbounds %struct.htree_t, %struct.htree_t* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 4
  %426 = load i32, i32* %14, align 4
  %427 = icmp slt i32 %425, %426
  br i1 %427, label %428, label %458

428:                                              ; preds = %422
  %429 = load i32, i32* %14, align 4
  %430 = load %struct.huffman*, %struct.huffman** %3, align 8
  %431 = getelementptr inbounds %struct.huffman, %struct.huffman* %430, i32 0, i32 7
  %432 = load i32, i32* %431, align 4
  %433 = add nsw i32 %429, %432
  %434 = load %struct.htree_t*, %struct.htree_t** %23, align 8
  %435 = getelementptr inbounds %struct.htree_t, %struct.htree_t* %434, i32 0, i32 0
  store i32 %433, i32* %435, align 4
  %436 = load %struct.huffman*, %struct.huffman** %3, align 8
  %437 = getelementptr inbounds %struct.huffman, %struct.huffman* %436, i32 0, i32 9
  %438 = load %struct.htree_t*, %struct.htree_t** %437, align 8
  %439 = load %struct.huffman*, %struct.huffman** %3, align 8
  %440 = getelementptr inbounds %struct.huffman, %struct.huffman* %439, i32 0, i32 7
  %441 = load i32, i32* %440, align 4
  %442 = add nsw i32 %441, 1
  store i32 %442, i32* %440, align 4
  %443 = sext i32 %441 to i64
  %444 = getelementptr inbounds %struct.htree_t, %struct.htree_t* %438, i64 %443
  store %struct.htree_t* %444, %struct.htree_t** %23, align 8
  %445 = load %struct.huffman*, %struct.huffman** %3, align 8
  %446 = getelementptr inbounds %struct.huffman, %struct.huffman* %445, i32 0, i32 7
  %447 = load i32, i32* %446, align 4
  %448 = load %struct.huffman*, %struct.huffman** %3, align 8
  %449 = getelementptr inbounds %struct.huffman, %struct.huffman* %448, i32 0, i32 8
  %450 = load i32, i32* %449, align 8
  %451 = icmp sgt i32 %447, %450
  br i1 %451, label %452, label %453

452:                                              ; preds = %428
  store i32 0, i32* %2, align 4
  br label %551

453:                                              ; preds = %428
  %454 = load %struct.htree_t*, %struct.htree_t** %23, align 8
  %455 = getelementptr inbounds %struct.htree_t, %struct.htree_t* %454, i32 0, i32 0
  store i32 0, i32* %455, align 4
  %456 = load %struct.htree_t*, %struct.htree_t** %23, align 8
  %457 = getelementptr inbounds %struct.htree_t, %struct.htree_t* %456, i32 0, i32 1
  store i32 0, i32* %457, align 4
  br label %469

458:                                              ; preds = %422
  %459 = load %struct.huffman*, %struct.huffman** %3, align 8
  %460 = getelementptr inbounds %struct.huffman, %struct.huffman* %459, i32 0, i32 9
  %461 = load %struct.htree_t*, %struct.htree_t** %460, align 8
  %462 = load %struct.htree_t*, %struct.htree_t** %23, align 8
  %463 = getelementptr inbounds %struct.htree_t, %struct.htree_t* %462, i32 0, i32 0
  %464 = load i32, i32* %463, align 4
  %465 = load i32, i32* %14, align 4
  %466 = sub nsw i32 %464, %465
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds %struct.htree_t, %struct.htree_t* %461, i64 %467
  store %struct.htree_t* %468, %struct.htree_t** %23, align 8
  br label %469

469:                                              ; preds = %458, %453
  br label %518

470:                                              ; preds = %417
  %471 = load %struct.htree_t*, %struct.htree_t** %23, align 8
  %472 = getelementptr inbounds %struct.htree_t, %struct.htree_t* %471, i32 0, i32 1
  %473 = load i32, i32* %472, align 4
  %474 = load i32, i32* %14, align 4
  %475 = icmp slt i32 %473, %474
  br i1 %475, label %476, label %506

476:                                              ; preds = %470
  %477 = load i32, i32* %14, align 4
  %478 = load %struct.huffman*, %struct.huffman** %3, align 8
  %479 = getelementptr inbounds %struct.huffman, %struct.huffman* %478, i32 0, i32 7
  %480 = load i32, i32* %479, align 4
  %481 = add nsw i32 %477, %480
  %482 = load %struct.htree_t*, %struct.htree_t** %23, align 8
  %483 = getelementptr inbounds %struct.htree_t, %struct.htree_t* %482, i32 0, i32 1
  store i32 %481, i32* %483, align 4
  %484 = load %struct.huffman*, %struct.huffman** %3, align 8
  %485 = getelementptr inbounds %struct.huffman, %struct.huffman* %484, i32 0, i32 9
  %486 = load %struct.htree_t*, %struct.htree_t** %485, align 8
  %487 = load %struct.huffman*, %struct.huffman** %3, align 8
  %488 = getelementptr inbounds %struct.huffman, %struct.huffman* %487, i32 0, i32 7
  %489 = load i32, i32* %488, align 4
  %490 = add nsw i32 %489, 1
  store i32 %490, i32* %488, align 4
  %491 = sext i32 %489 to i64
  %492 = getelementptr inbounds %struct.htree_t, %struct.htree_t* %486, i64 %491
  store %struct.htree_t* %492, %struct.htree_t** %23, align 8
  %493 = load %struct.huffman*, %struct.huffman** %3, align 8
  %494 = getelementptr inbounds %struct.huffman, %struct.huffman* %493, i32 0, i32 7
  %495 = load i32, i32* %494, align 4
  %496 = load %struct.huffman*, %struct.huffman** %3, align 8
  %497 = getelementptr inbounds %struct.huffman, %struct.huffman* %496, i32 0, i32 8
  %498 = load i32, i32* %497, align 8
  %499 = icmp sgt i32 %495, %498
  br i1 %499, label %500, label %501

500:                                              ; preds = %476
  store i32 0, i32* %2, align 4
  br label %551

501:                                              ; preds = %476
  %502 = load %struct.htree_t*, %struct.htree_t** %23, align 8
  %503 = getelementptr inbounds %struct.htree_t, %struct.htree_t* %502, i32 0, i32 0
  store i32 0, i32* %503, align 4
  %504 = load %struct.htree_t*, %struct.htree_t** %23, align 8
  %505 = getelementptr inbounds %struct.htree_t, %struct.htree_t* %504, i32 0, i32 1
  store i32 0, i32* %505, align 4
  br label %517

506:                                              ; preds = %470
  %507 = load %struct.huffman*, %struct.huffman** %3, align 8
  %508 = getelementptr inbounds %struct.huffman, %struct.huffman* %507, i32 0, i32 9
  %509 = load %struct.htree_t*, %struct.htree_t** %508, align 8
  %510 = load %struct.htree_t*, %struct.htree_t** %23, align 8
  %511 = getelementptr inbounds %struct.htree_t, %struct.htree_t* %510, i32 0, i32 1
  %512 = load i32, i32* %511, align 4
  %513 = load i32, i32* %14, align 4
  %514 = sub nsw i32 %512, %513
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds %struct.htree_t, %struct.htree_t* %509, i64 %515
  store %struct.htree_t* %516, %struct.htree_t** %23, align 8
  br label %517

517:                                              ; preds = %506, %501
  br label %518

518:                                              ; preds = %517, %469
  %519 = load i32, i32* %21, align 4
  %520 = ashr i32 %519, 1
  store i32 %520, i32* %21, align 4
  br label %413

521:                                              ; preds = %413
  %522 = load i32, i32* %10, align 4
  %523 = load i32, i32* %21, align 4
  %524 = and i32 %522, %523
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %526, label %536

526:                                              ; preds = %521
  %527 = load %struct.htree_t*, %struct.htree_t** %23, align 8
  %528 = getelementptr inbounds %struct.htree_t, %struct.htree_t* %527, i32 0, i32 0
  %529 = load i32, i32* %528, align 4
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %531, label %532

531:                                              ; preds = %526
  store i32 0, i32* %2, align 4
  br label %551

532:                                              ; preds = %526
  %533 = load i32, i32* %8, align 4
  %534 = load %struct.htree_t*, %struct.htree_t** %23, align 8
  %535 = getelementptr inbounds %struct.htree_t, %struct.htree_t* %534, i32 0, i32 0
  store i32 %533, i32* %535, align 4
  br label %546

536:                                              ; preds = %521
  %537 = load %struct.htree_t*, %struct.htree_t** %23, align 8
  %538 = getelementptr inbounds %struct.htree_t, %struct.htree_t* %537, i32 0, i32 1
  %539 = load i32, i32* %538, align 4
  %540 = icmp ne i32 %539, 0
  br i1 %540, label %541, label %542

541:                                              ; preds = %536
  store i32 0, i32* %2, align 4
  br label %551

542:                                              ; preds = %536
  %543 = load i32, i32* %8, align 4
  %544 = load %struct.htree_t*, %struct.htree_t** %23, align 8
  %545 = getelementptr inbounds %struct.htree_t, %struct.htree_t* %544, i32 0, i32 1
  store i32 %543, i32* %545, align 4
  br label %546

546:                                              ; preds = %542, %532
  br label %547

547:                                              ; preds = %546, %335, %200
  %548 = load i32, i32* %8, align 4
  %549 = add nsw i32 %548, 1
  store i32 %549, i32* %8, align 4
  br label %188

550:                                              ; preds = %188
  store i32 1, i32* %2, align 4
  br label %551

551:                                              ; preds = %550, %541, %531, %500, %452, %401, %381, %228, %73
  %552 = load i32, i32* %2, align 4
  ret i32 %552
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
