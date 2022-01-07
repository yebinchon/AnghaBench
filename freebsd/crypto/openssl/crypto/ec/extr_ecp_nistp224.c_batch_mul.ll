; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_nistp224.c_batch_mul.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_nistp224.c_batch_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32**, i32, i32*, i32, [17 x [3 x i32]]*, [16 x [3 x i32]]*)* @batch_mul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batch_mul(i32 %0, i32 %1, i32 %2, i32** %3, i32 %4, i32* %5, i32 %6, [17 x [3 x i32]]* %7, [16 x [3 x i32]]* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca [17 x [3 x i32]]*, align 8
  %18 = alloca [16 x [3 x i32]]*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [3 x i32], align 4
  %24 = alloca [4 x i32], align 16
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32** %3, i32*** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store [17 x [3 x i32]]* %7, [17 x [3 x i32]]** %17, align 8
  store [16 x [3 x i32]]* %8, [16 x [3 x i32]]** %18, align 8
  %28 = load i32*, i32** %15, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %22, align 4
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %32 = call i32 @memset(i32* %31, i32 0, i32 12)
  store i32 1, i32* %20, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 220, i32 27
  store i32 %36, i32* %19, align 4
  br label %37

37:                                               ; preds = %303, %9
  %38 = load i32, i32* %19, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %306

40:                                               ; preds = %37
  %41 = load i32, i32* %20, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %57, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 2
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @point_double(i32 %45, i32 %47, i32 %49, i32 %51, i32 %53, i32 %55)
  br label %57

57:                                               ; preds = %43, %40
  %58 = load i32, i32* %22, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %173

60:                                               ; preds = %57
  %61 = load i32, i32* %19, align 4
  %62 = icmp sle i32 %61, 27
  br i1 %62, label %63, label %173

63:                                               ; preds = %60
  %64 = load i32*, i32** %15, align 8
  %65 = load i32, i32* %19, align 4
  %66 = add nsw i32 %65, 196
  %67 = call i32 @get_bit(i32* %64, i32 %66)
  %68 = shl i32 %67, 3
  store i32 %68, i32* %25, align 4
  %69 = load i32*, i32** %15, align 8
  %70 = load i32, i32* %19, align 4
  %71 = add nsw i32 %70, 140
  %72 = call i32 @get_bit(i32* %69, i32 %71)
  %73 = shl i32 %72, 2
  %74 = load i32, i32* %25, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %25, align 4
  %76 = load i32*, i32** %15, align 8
  %77 = load i32, i32* %19, align 4
  %78 = add nsw i32 %77, 84
  %79 = call i32 @get_bit(i32* %76, i32 %78)
  %80 = shl i32 %79, 1
  %81 = load i32, i32* %25, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %25, align 4
  %83 = load i32*, i32** %15, align 8
  %84 = load i32, i32* %19, align 4
  %85 = add nsw i32 %84, 28
  %86 = call i32 @get_bit(i32* %83, i32 %85)
  %87 = load i32, i32* %25, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %25, align 4
  %89 = load i32, i32* %25, align 4
  %90 = load [16 x [3 x i32]]*, [16 x [3 x i32]]** %18, align 8
  %91 = getelementptr inbounds [16 x [3 x i32]], [16 x [3 x i32]]* %90, i64 1
  %92 = getelementptr inbounds [16 x [3 x i32]], [16 x [3 x i32]]* %91, i64 0, i64 0
  %93 = bitcast [3 x i32]* %92 to i32**
  %94 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 0
  %95 = call i32 @select_point(i32 %89, i32 16, i32** %93, i32* %94)
  %96 = load i32, i32* %20, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %118, label %98

98:                                               ; preds = %63
  %99 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 2
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 2
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 0
  %112 = load i32, i32* %111, align 16
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 2
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @point_add(i32 %100, i32 %102, i32 %104, i32 %106, i32 %108, i32 %110, i32 1, i32 %112, i32 %114, i32 %116)
  br label %122

118:                                              ; preds = %63
  %119 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %120 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 0
  %121 = call i32 @memcpy(i32* %119, i32* %120, i32 12)
  store i32 0, i32* %20, align 4
  br label %122

122:                                              ; preds = %118, %98
  %123 = load i32*, i32** %15, align 8
  %124 = load i32, i32* %19, align 4
  %125 = add nsw i32 %124, 168
  %126 = call i32 @get_bit(i32* %123, i32 %125)
  %127 = shl i32 %126, 3
  store i32 %127, i32* %25, align 4
  %128 = load i32*, i32** %15, align 8
  %129 = load i32, i32* %19, align 4
  %130 = add nsw i32 %129, 112
  %131 = call i32 @get_bit(i32* %128, i32 %130)
  %132 = shl i32 %131, 2
  %133 = load i32, i32* %25, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %25, align 4
  %135 = load i32*, i32** %15, align 8
  %136 = load i32, i32* %19, align 4
  %137 = add nsw i32 %136, 56
  %138 = call i32 @get_bit(i32* %135, i32 %137)
  %139 = shl i32 %138, 1
  %140 = load i32, i32* %25, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %25, align 4
  %142 = load i32*, i32** %15, align 8
  %143 = load i32, i32* %19, align 4
  %144 = call i32 @get_bit(i32* %142, i32 %143)
  %145 = load i32, i32* %25, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %25, align 4
  %147 = load i32, i32* %25, align 4
  %148 = load [16 x [3 x i32]]*, [16 x [3 x i32]]** %18, align 8
  %149 = getelementptr inbounds [16 x [3 x i32]], [16 x [3 x i32]]* %148, i64 0
  %150 = getelementptr inbounds [16 x [3 x i32]], [16 x [3 x i32]]* %149, i64 0, i64 0
  %151 = bitcast [3 x i32]* %150 to i32**
  %152 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 0
  %153 = call i32 @select_point(i32 %147, i32 16, i32** %151, i32* %152)
  %154 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  %157 = load i32, i32* %156, align 4
  %158 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 2
  %159 = load i32, i32* %158, align 4
  %160 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %161 = load i32, i32* %160, align 4
  %162 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 2
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 0
  %167 = load i32, i32* %166, align 16
  %168 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 1
  %169 = load i32, i32* %168, align 4
  %170 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 2
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @point_add(i32 %155, i32 %157, i32 %159, i32 %161, i32 %163, i32 %165, i32 1, i32 %167, i32 %169, i32 %171)
  br label %173

173:                                              ; preds = %122, %60, %57
  %174 = load i32, i32* %14, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %302

176:                                              ; preds = %173
  %177 = load i32, i32* %19, align 4
  %178 = srem i32 %177, 5
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %302

180:                                              ; preds = %176
  store i32 0, i32* %21, align 4
  br label %181

181:                                              ; preds = %298, %180
  %182 = load i32, i32* %21, align 4
  %183 = load i32, i32* %14, align 4
  %184 = icmp ult i32 %182, %183
  br i1 %184, label %185, label %301

185:                                              ; preds = %181
  %186 = load i32**, i32*** %13, align 8
  %187 = load i32, i32* %21, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds i32*, i32** %186, i64 %188
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %19, align 4
  %192 = add nsw i32 %191, 4
  %193 = call i32 @get_bit(i32* %190, i32 %192)
  %194 = shl i32 %193, 5
  store i32 %194, i32* %25, align 4
  %195 = load i32**, i32*** %13, align 8
  %196 = load i32, i32* %21, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds i32*, i32** %195, i64 %197
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %19, align 4
  %201 = add nsw i32 %200, 3
  %202 = call i32 @get_bit(i32* %199, i32 %201)
  %203 = shl i32 %202, 4
  %204 = load i32, i32* %25, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %25, align 4
  %206 = load i32**, i32*** %13, align 8
  %207 = load i32, i32* %21, align 4
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds i32*, i32** %206, i64 %208
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %19, align 4
  %212 = add nsw i32 %211, 2
  %213 = call i32 @get_bit(i32* %210, i32 %212)
  %214 = shl i32 %213, 3
  %215 = load i32, i32* %25, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %25, align 4
  %217 = load i32**, i32*** %13, align 8
  %218 = load i32, i32* %21, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds i32*, i32** %217, i64 %219
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %19, align 4
  %223 = add nsw i32 %222, 1
  %224 = call i32 @get_bit(i32* %221, i32 %223)
  %225 = shl i32 %224, 2
  %226 = load i32, i32* %25, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* %25, align 4
  %228 = load i32**, i32*** %13, align 8
  %229 = load i32, i32* %21, align 4
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds i32*, i32** %228, i64 %230
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %19, align 4
  %234 = call i32 @get_bit(i32* %232, i32 %233)
  %235 = shl i32 %234, 1
  %236 = load i32, i32* %25, align 4
  %237 = or i32 %236, %235
  store i32 %237, i32* %25, align 4
  %238 = load i32**, i32*** %13, align 8
  %239 = load i32, i32* %21, align 4
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds i32*, i32** %238, i64 %240
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %19, align 4
  %244 = sub nsw i32 %243, 1
  %245 = call i32 @get_bit(i32* %242, i32 %244)
  %246 = load i32, i32* %25, align 4
  %247 = or i32 %246, %245
  store i32 %247, i32* %25, align 4
  %248 = load i32, i32* %25, align 4
  %249 = call i32 @ec_GFp_nistp_recode_scalar_bits(i32* %26, i32* %27, i32 %248)
  %250 = load i32, i32* %27, align 4
  %251 = load [17 x [3 x i32]]*, [17 x [3 x i32]]** %17, align 8
  %252 = load i32, i32* %21, align 4
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds [17 x [3 x i32]], [17 x [3 x i32]]* %251, i64 %253
  %255 = getelementptr inbounds [17 x [3 x i32]], [17 x [3 x i32]]* %254, i64 0, i64 0
  %256 = bitcast [3 x i32]* %255 to i32**
  %257 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 0
  %258 = call i32 @select_point(i32 %250, i32 17, i32** %256, i32* %257)
  %259 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 3
  %260 = load i32, i32* %259, align 4
  %261 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 1
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @felem_neg(i32 %260, i32 %262)
  %264 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 1
  %265 = load i32, i32* %264, align 4
  %266 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 3
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* %26, align 4
  %269 = call i32 @copy_conditional(i32 %265, i32 %267, i32 %268)
  %270 = load i32, i32* %20, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %293, label %272

272:                                              ; preds = %185
  %273 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %274 = load i32, i32* %273, align 4
  %275 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  %276 = load i32, i32* %275, align 4
  %277 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 2
  %278 = load i32, i32* %277, align 4
  %279 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %280 = load i32, i32* %279, align 4
  %281 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  %282 = load i32, i32* %281, align 4
  %283 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 2
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* %16, align 4
  %286 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 0
  %287 = load i32, i32* %286, align 16
  %288 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 1
  %289 = load i32, i32* %288, align 4
  %290 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 2
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @point_add(i32 %274, i32 %276, i32 %278, i32 %280, i32 %282, i32 %284, i32 %285, i32 %287, i32 %289, i32 %291)
  br label %297

293:                                              ; preds = %185
  %294 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %295 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 0
  %296 = call i32 @memcpy(i32* %294, i32* %295, i32 12)
  store i32 0, i32* %20, align 4
  br label %297

297:                                              ; preds = %293, %272
  br label %298

298:                                              ; preds = %297
  %299 = load i32, i32* %21, align 4
  %300 = add i32 %299, 1
  store i32 %300, i32* %21, align 4
  br label %181

301:                                              ; preds = %181
  br label %302

302:                                              ; preds = %301, %176, %173
  br label %303

303:                                              ; preds = %302
  %304 = load i32, i32* %19, align 4
  %305 = add nsw i32 %304, -1
  store i32 %305, i32* %19, align 4
  br label %37

306:                                              ; preds = %37
  %307 = load i32, i32* %10, align 4
  %308 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @felem_assign(i32 %307, i32 %309)
  %311 = load i32, i32* %11, align 4
  %312 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @felem_assign(i32 %311, i32 %313)
  %315 = load i32, i32* %12, align 4
  %316 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 2
  %317 = load i32, i32* %316, align 4
  %318 = call i32 @felem_assign(i32 %315, i32 %317)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @point_double(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @get_bit(i32*, i32) #1

declare dso_local i32 @select_point(i32, i32, i32**, i32*) #1

declare dso_local i32 @point_add(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ec_GFp_nistp_recode_scalar_bits(i32*, i32*, i32) #1

declare dso_local i32 @felem_neg(i32, i32) #1

declare dso_local i32 @copy_conditional(i32, i32, i32) #1

declare dso_local i32 @felem_assign(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
