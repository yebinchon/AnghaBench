; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_nistp256.c_batch_mul.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_nistp256.c_batch_mul.c"
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
  %24 = alloca i32, align 4
  %25 = alloca [3 x i32], align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32** %3, i32*** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store [17 x [3 x i32]]* %7, [17 x [3 x i32]]** %17, align 8
  store [16 x [3 x i32]]* %8, [16 x [3 x i32]]** %18, align 8
  %29 = load i32*, i32** %15, align 8
  %30 = icmp ne i32* %29, null
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %22, align 4
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %33 = call i32 @memset(i32* %32, i32 0, i32 12)
  store i32 1, i32* %20, align 4
  %34 = load i32, i32* %14, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 255, i32 31
  store i32 %37, i32* %19, align 4
  br label %38

38:                                               ; preds = %332, %9
  %39 = load i32, i32* %19, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %335

41:                                               ; preds = %38
  %42 = load i32, i32* %20, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %58, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @point_double(i32 %46, i32 %48, i32 %50, i32 %52, i32 %54, i32 %56)
  br label %58

58:                                               ; preds = %44, %41
  %59 = load i32, i32* %22, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %186

61:                                               ; preds = %58
  %62 = load i32, i32* %19, align 4
  %63 = icmp sle i32 %62, 31
  br i1 %63, label %64, label %186

64:                                               ; preds = %61
  %65 = load i32*, i32** %15, align 8
  %66 = load i32, i32* %19, align 4
  %67 = add nsw i32 %66, 224
  %68 = call i32 @get_bit(i32* %65, i32 %67)
  %69 = shl i32 %68, 3
  store i32 %69, i32* %26, align 4
  %70 = load i32*, i32** %15, align 8
  %71 = load i32, i32* %19, align 4
  %72 = add nsw i32 %71, 160
  %73 = call i32 @get_bit(i32* %70, i32 %72)
  %74 = shl i32 %73, 2
  %75 = load i32, i32* %26, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %26, align 4
  %77 = load i32*, i32** %15, align 8
  %78 = load i32, i32* %19, align 4
  %79 = add nsw i32 %78, 96
  %80 = call i32 @get_bit(i32* %77, i32 %79)
  %81 = shl i32 %80, 1
  %82 = load i32, i32* %26, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %26, align 4
  %84 = load i32*, i32** %15, align 8
  %85 = load i32, i32* %19, align 4
  %86 = add nsw i32 %85, 32
  %87 = call i32 @get_bit(i32* %84, i32 %86)
  %88 = load i32, i32* %26, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %26, align 4
  %90 = load i32, i32* %26, align 4
  %91 = load [16 x [3 x i32]]*, [16 x [3 x i32]]** %18, align 8
  %92 = getelementptr inbounds [16 x [3 x i32]], [16 x [3 x i32]]* %91, i64 1
  %93 = getelementptr inbounds [16 x [3 x i32]], [16 x [3 x i32]]* %92, i64 0, i64 0
  %94 = bitcast [3 x i32]* %93 to i32**
  %95 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 0
  %96 = call i32 @select_point(i32 %90, i32 16, i32** %94, i32* %95)
  %97 = load i32, i32* %20, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %119, label %99

99:                                               ; preds = %64
  %100 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 2
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 2
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 0
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @point_add(i32 %101, i32 %103, i32 %105, i32 %107, i32 %109, i32 %111, i32 1, i32 %113, i32 %115, i32 %117)
  br label %135

119:                                              ; preds = %64
  %120 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @smallfelem_expand(i32 %121, i32 %123)
  %125 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @smallfelem_expand(i32 %126, i32 %128)
  %130 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 2
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 2
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @smallfelem_expand(i32 %131, i32 %133)
  store i32 0, i32* %20, align 4
  br label %135

135:                                              ; preds = %119, %99
  %136 = load i32*, i32** %15, align 8
  %137 = load i32, i32* %19, align 4
  %138 = add nsw i32 %137, 192
  %139 = call i32 @get_bit(i32* %136, i32 %138)
  %140 = shl i32 %139, 3
  store i32 %140, i32* %26, align 4
  %141 = load i32*, i32** %15, align 8
  %142 = load i32, i32* %19, align 4
  %143 = add nsw i32 %142, 128
  %144 = call i32 @get_bit(i32* %141, i32 %143)
  %145 = shl i32 %144, 2
  %146 = load i32, i32* %26, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %26, align 4
  %148 = load i32*, i32** %15, align 8
  %149 = load i32, i32* %19, align 4
  %150 = add nsw i32 %149, 64
  %151 = call i32 @get_bit(i32* %148, i32 %150)
  %152 = shl i32 %151, 1
  %153 = load i32, i32* %26, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %26, align 4
  %155 = load i32*, i32** %15, align 8
  %156 = load i32, i32* %19, align 4
  %157 = call i32 @get_bit(i32* %155, i32 %156)
  %158 = load i32, i32* %26, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %26, align 4
  %160 = load i32, i32* %26, align 4
  %161 = load [16 x [3 x i32]]*, [16 x [3 x i32]]** %18, align 8
  %162 = getelementptr inbounds [16 x [3 x i32]], [16 x [3 x i32]]* %161, i64 0
  %163 = getelementptr inbounds [16 x [3 x i32]], [16 x [3 x i32]]* %162, i64 0, i64 0
  %164 = bitcast [3 x i32]* %163 to i32**
  %165 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 0
  %166 = call i32 @select_point(i32 %160, i32 16, i32** %164, i32* %165)
  %167 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  %170 = load i32, i32* %169, align 4
  %171 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 2
  %172 = load i32, i32* %171, align 4
  %173 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %174 = load i32, i32* %173, align 4
  %175 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  %176 = load i32, i32* %175, align 4
  %177 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 2
  %178 = load i32, i32* %177, align 4
  %179 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 0
  %180 = load i32, i32* %179, align 4
  %181 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 1
  %182 = load i32, i32* %181, align 4
  %183 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 2
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @point_add(i32 %168, i32 %170, i32 %172, i32 %174, i32 %176, i32 %178, i32 1, i32 %180, i32 %182, i32 %184)
  br label %186

186:                                              ; preds = %135, %61, %58
  %187 = load i32, i32* %14, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %331

189:                                              ; preds = %186
  %190 = load i32, i32* %19, align 4
  %191 = srem i32 %190, 5
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %331

193:                                              ; preds = %189
  store i32 0, i32* %21, align 4
  br label %194

194:                                              ; preds = %327, %193
  %195 = load i32, i32* %21, align 4
  %196 = load i32, i32* %14, align 4
  %197 = icmp ult i32 %195, %196
  br i1 %197, label %198, label %330

198:                                              ; preds = %194
  %199 = load i32**, i32*** %13, align 8
  %200 = load i32, i32* %21, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds i32*, i32** %199, i64 %201
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %19, align 4
  %205 = add nsw i32 %204, 4
  %206 = call i32 @get_bit(i32* %203, i32 %205)
  %207 = shl i32 %206, 5
  store i32 %207, i32* %26, align 4
  %208 = load i32**, i32*** %13, align 8
  %209 = load i32, i32* %21, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds i32*, i32** %208, i64 %210
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %19, align 4
  %214 = add nsw i32 %213, 3
  %215 = call i32 @get_bit(i32* %212, i32 %214)
  %216 = shl i32 %215, 4
  %217 = load i32, i32* %26, align 4
  %218 = or i32 %217, %216
  store i32 %218, i32* %26, align 4
  %219 = load i32**, i32*** %13, align 8
  %220 = load i32, i32* %21, align 4
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds i32*, i32** %219, i64 %221
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %19, align 4
  %225 = add nsw i32 %224, 2
  %226 = call i32 @get_bit(i32* %223, i32 %225)
  %227 = shl i32 %226, 3
  %228 = load i32, i32* %26, align 4
  %229 = or i32 %228, %227
  store i32 %229, i32* %26, align 4
  %230 = load i32**, i32*** %13, align 8
  %231 = load i32, i32* %21, align 4
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds i32*, i32** %230, i64 %232
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* %19, align 4
  %236 = add nsw i32 %235, 1
  %237 = call i32 @get_bit(i32* %234, i32 %236)
  %238 = shl i32 %237, 2
  %239 = load i32, i32* %26, align 4
  %240 = or i32 %239, %238
  store i32 %240, i32* %26, align 4
  %241 = load i32**, i32*** %13, align 8
  %242 = load i32, i32* %21, align 4
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds i32*, i32** %241, i64 %243
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %19, align 4
  %247 = call i32 @get_bit(i32* %245, i32 %246)
  %248 = shl i32 %247, 1
  %249 = load i32, i32* %26, align 4
  %250 = or i32 %249, %248
  store i32 %250, i32* %26, align 4
  %251 = load i32**, i32*** %13, align 8
  %252 = load i32, i32* %21, align 4
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds i32*, i32** %251, i64 %253
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %19, align 4
  %257 = sub nsw i32 %256, 1
  %258 = call i32 @get_bit(i32* %255, i32 %257)
  %259 = load i32, i32* %26, align 4
  %260 = or i32 %259, %258
  store i32 %260, i32* %26, align 4
  %261 = load i32, i32* %26, align 4
  %262 = call i32 @ec_GFp_nistp_recode_scalar_bits(i32* %27, i32* %28, i32 %261)
  %263 = load i32, i32* %28, align 4
  %264 = load [17 x [3 x i32]]*, [17 x [3 x i32]]** %17, align 8
  %265 = load i32, i32* %21, align 4
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds [17 x [3 x i32]], [17 x [3 x i32]]* %264, i64 %266
  %268 = getelementptr inbounds [17 x [3 x i32]], [17 x [3 x i32]]* %267, i64 0, i64 0
  %269 = bitcast [3 x i32]* %268 to i32**
  %270 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 0
  %271 = call i32 @select_point(i32 %263, i32 17, i32** %269, i32* %270)
  %272 = load i32, i32* %24, align 4
  %273 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 1
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @smallfelem_neg(i32 %272, i32 %274)
  %276 = load i32, i32* %24, align 4
  %277 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 1
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* %27, align 4
  %280 = sext i32 %279 to i64
  %281 = sub nsw i64 %280, 1
  %282 = call i32 @copy_small_conditional(i32 %276, i32 %278, i64 %281)
  %283 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 1
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* %24, align 4
  %286 = call i32 @felem_contract(i32 %284, i32 %285)
  %287 = load i32, i32* %20, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %310, label %289

289:                                              ; preds = %198
  %290 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %291 = load i32, i32* %290, align 4
  %292 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  %293 = load i32, i32* %292, align 4
  %294 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 2
  %295 = load i32, i32* %294, align 4
  %296 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %297 = load i32, i32* %296, align 4
  %298 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  %299 = load i32, i32* %298, align 4
  %300 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 2
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* %16, align 4
  %303 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 0
  %304 = load i32, i32* %303, align 4
  %305 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 1
  %306 = load i32, i32* %305, align 4
  %307 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 2
  %308 = load i32, i32* %307, align 4
  %309 = call i32 @point_add(i32 %291, i32 %293, i32 %295, i32 %297, i32 %299, i32 %301, i32 %302, i32 %304, i32 %306, i32 %308)
  br label %326

310:                                              ; preds = %198
  %311 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %312 = load i32, i32* %311, align 4
  %313 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 0
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @smallfelem_expand(i32 %312, i32 %314)
  %316 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  %317 = load i32, i32* %316, align 4
  %318 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 1
  %319 = load i32, i32* %318, align 4
  %320 = call i32 @smallfelem_expand(i32 %317, i32 %319)
  %321 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 2
  %322 = load i32, i32* %321, align 4
  %323 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 2
  %324 = load i32, i32* %323, align 4
  %325 = call i32 @smallfelem_expand(i32 %322, i32 %324)
  store i32 0, i32* %20, align 4
  br label %326

326:                                              ; preds = %310, %289
  br label %327

327:                                              ; preds = %326
  %328 = load i32, i32* %21, align 4
  %329 = add i32 %328, 1
  store i32 %329, i32* %21, align 4
  br label %194

330:                                              ; preds = %194
  br label %331

331:                                              ; preds = %330, %189, %186
  br label %332

332:                                              ; preds = %331
  %333 = load i32, i32* %19, align 4
  %334 = add nsw i32 %333, -1
  store i32 %334, i32* %19, align 4
  br label %38

335:                                              ; preds = %38
  %336 = load i32, i32* %10, align 4
  %337 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %338 = load i32, i32* %337, align 4
  %339 = call i32 @felem_assign(i32 %336, i32 %338)
  %340 = load i32, i32* %11, align 4
  %341 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  %342 = load i32, i32* %341, align 4
  %343 = call i32 @felem_assign(i32 %340, i32 %342)
  %344 = load i32, i32* %12, align 4
  %345 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 2
  %346 = load i32, i32* %345, align 4
  %347 = call i32 @felem_assign(i32 %344, i32 %346)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @point_double(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @get_bit(i32*, i32) #1

declare dso_local i32 @select_point(i32, i32, i32**, i32*) #1

declare dso_local i32 @point_add(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @smallfelem_expand(i32, i32) #1

declare dso_local i32 @ec_GFp_nistp_recode_scalar_bits(i32*, i32*, i32) #1

declare dso_local i32 @smallfelem_neg(i32, i32) #1

declare dso_local i32 @copy_small_conditional(i32, i32, i64) #1

declare dso_local i32 @felem_contract(i32, i32) #1

declare dso_local i32 @felem_assign(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
