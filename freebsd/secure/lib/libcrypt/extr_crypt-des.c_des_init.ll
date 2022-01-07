; ModuleID = '/home/carl/AnghaBench/freebsd/secure/lib/libcrypt/extr_crypt-des.c_des_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/secure/lib/libcrypt/extr_crypt-des.c_des_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@old_rawkey1 = common dso_local global i64 0, align 8
@old_rawkey0 = common dso_local global i64 0, align 8
@saltbits = common dso_local global i64 0, align 8
@old_salt = common dso_local global i64 0, align 8
@bits32 = common dso_local global i64* null, align 8
@bits28 = common dso_local global i64* null, align 8
@bits24 = common dso_local global i64* null, align 8
@sbox = common dso_local global i32** null, align 8
@u_sbox = common dso_local global i32** null, align 8
@m_sbox = common dso_local global i8*** null, align 8
@init_perm = common dso_local global i32* null, align 8
@IP = common dso_local global i64* null, align 8
@final_perm = common dso_local global i64* null, align 8
@inv_key_perm = common dso_local global i32* null, align 8
@key_perm = common dso_local global i32* null, align 8
@inv_comp_perm = common dso_local global i32* null, align 8
@comp_perm = common dso_local global i32* null, align 8
@ip_maskl = common dso_local global i64** null, align 8
@ip_maskr = common dso_local global i64** null, align 8
@fp_maskl = common dso_local global i64** null, align 8
@fp_maskr = common dso_local global i64** null, align 8
@bits8 = common dso_local global i32* null, align 8
@key_perm_maskl = common dso_local global i64** null, align 8
@key_perm_maskr = common dso_local global i64** null, align 8
@comp_maskl = common dso_local global i64** null, align 8
@comp_maskr = common dso_local global i64** null, align 8
@un_pbox = common dso_local global i64* null, align 8
@pbox = common dso_local global i32* null, align 8
@psbox = common dso_local global i64** null, align 8
@des_initialised = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @des_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @des_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  store i64 0, i64* @old_rawkey1, align 8
  store i64 0, i64* @old_rawkey0, align 8
  store i64 0, i64* @saltbits, align 8
  store i64 0, i64* @old_salt, align 8
  %12 = load i64*, i64** @bits32, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 4
  store i64* %13, i64** @bits28, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 4
  store i64* %14, i64** @bits24, align 8
  store i32 0, i32* %1, align 4
  br label %15

15:                                               ; preds = %54, %0
  %16 = load i32, i32* %1, align 4
  %17 = icmp slt i32 %16, 8
  br i1 %17, label %18, label %57

18:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %50, %18
  %20 = load i32, i32* %2, align 4
  %21 = icmp slt i32 %20, 64
  br i1 %21, label %22, label %53

22:                                               ; preds = %19
  %23 = load i32, i32* %2, align 4
  %24 = and i32 %23, 32
  %25 = load i32, i32* %2, align 4
  %26 = and i32 %25, 1
  %27 = shl i32 %26, 4
  %28 = or i32 %24, %27
  %29 = load i32, i32* %2, align 4
  %30 = ashr i32 %29, 1
  %31 = and i32 %30, 15
  %32 = or i32 %28, %31
  store i32 %32, i32* %3, align 4
  %33 = load i32**, i32*** @sbox, align 8
  %34 = load i32, i32* %1, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32**, i32*** @u_sbox, align 8
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %2, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %41, i32* %49, align 4
  br label %50

50:                                               ; preds = %22
  %51 = load i32, i32* %2, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %2, align 4
  br label %19

53:                                               ; preds = %19
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %1, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %1, align 4
  br label %15

57:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %114, %57
  %59 = load i32, i32* %3, align 4
  %60 = icmp slt i32 %59, 4
  br i1 %60, label %61, label %117

61:                                               ; preds = %58
  store i32 0, i32* %1, align 4
  br label %62

62:                                               ; preds = %110, %61
  %63 = load i32, i32* %1, align 4
  %64 = icmp slt i32 %63, 64
  br i1 %64, label %65, label %113

65:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %106, %65
  %67 = load i32, i32* %2, align 4
  %68 = icmp slt i32 %67, 64
  br i1 %68, label %69, label %109

69:                                               ; preds = %66
  %70 = load i32**, i32*** @u_sbox, align 8
  %71 = load i32, i32* %3, align 4
  %72 = shl i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %70, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %1, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 4
  %81 = load i32**, i32*** @u_sbox, align 8
  %82 = load i32, i32* %3, align 4
  %83 = shl i32 %82, 1
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32*, i32** %81, i64 %85
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %2, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %80, %91
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to i8*
  %95 = load i8***, i8**** @m_sbox, align 8
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8**, i8*** %95, i64 %97
  %99 = load i8**, i8*** %98, align 8
  %100 = load i32, i32* %1, align 4
  %101 = shl i32 %100, 6
  %102 = load i32, i32* %2, align 4
  %103 = or i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %99, i64 %104
  store i8* %94, i8** %105, align 8
  br label %106

106:                                              ; preds = %69
  %107 = load i32, i32* %2, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %2, align 4
  br label %66

109:                                              ; preds = %66
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %1, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %1, align 4
  br label %62

113:                                              ; preds = %62
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %3, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %3, align 4
  br label %58

117:                                              ; preds = %58
  store i32 0, i32* %1, align 4
  br label %118

118:                                              ; preds = %142, %117
  %119 = load i32, i32* %1, align 4
  %120 = icmp slt i32 %119, 64
  br i1 %120, label %121, label %145

121:                                              ; preds = %118
  %122 = load i32, i32* %1, align 4
  %123 = sext i32 %122 to i64
  %124 = inttoptr i64 %123 to i8*
  %125 = ptrtoint i8* %124 to i32
  %126 = load i32*, i32** @init_perm, align 8
  %127 = load i64*, i64** @IP, align 8
  %128 = load i32, i32* %1, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = sub i64 %131, 1
  %133 = load i64*, i64** @final_perm, align 8
  %134 = load i32, i32* %1, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  store i64 %132, i64* %136, align 8
  %137 = getelementptr inbounds i32, i32* %126, i64 %132
  store i32 %125, i32* %137, align 4
  %138 = load i32*, i32** @inv_key_perm, align 8
  %139 = load i32, i32* %1, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  store i32 255, i32* %141, align 4
  br label %142

142:                                              ; preds = %121
  %143 = load i32, i32* %1, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %1, align 4
  br label %118

145:                                              ; preds = %118
  store i32 0, i32* %1, align 4
  br label %146

146:                                              ; preds = %167, %145
  %147 = load i32, i32* %1, align 4
  %148 = icmp slt i32 %147, 56
  br i1 %148, label %149, label %170

149:                                              ; preds = %146
  %150 = load i32, i32* %1, align 4
  %151 = sext i32 %150 to i64
  %152 = inttoptr i64 %151 to i8*
  %153 = ptrtoint i8* %152 to i32
  %154 = load i32*, i32** @inv_key_perm, align 8
  %155 = load i32*, i32** @key_perm, align 8
  %156 = load i32, i32* %1, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = sub nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %154, i64 %161
  store i32 %153, i32* %162, align 4
  %163 = load i32*, i32** @inv_comp_perm, align 8
  %164 = load i32, i32* %1, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  store i32 255, i32* %166, align 4
  br label %167

167:                                              ; preds = %149
  %168 = load i32, i32* %1, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %1, align 4
  br label %146

170:                                              ; preds = %146
  store i32 0, i32* %1, align 4
  br label %171

171:                                              ; preds = %188, %170
  %172 = load i32, i32* %1, align 4
  %173 = icmp slt i32 %172, 48
  br i1 %173, label %174, label %191

174:                                              ; preds = %171
  %175 = load i32, i32* %1, align 4
  %176 = sext i32 %175 to i64
  %177 = inttoptr i64 %176 to i8*
  %178 = ptrtoint i8* %177 to i32
  %179 = load i32*, i32** @inv_comp_perm, align 8
  %180 = load i32*, i32** @comp_perm, align 8
  %181 = load i32, i32* %1, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = sub nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %179, i64 %186
  store i32 %178, i32* %187, align 4
  br label %188

188:                                              ; preds = %174
  %189 = load i32, i32* %1, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %1, align 4
  br label %171

191:                                              ; preds = %171
  store i32 0, i32* %4, align 4
  br label %192

192:                                              ; preds = %457, %191
  %193 = load i32, i32* %4, align 4
  %194 = icmp slt i32 %193, 8
  br i1 %194, label %195, label %460

195:                                              ; preds = %192
  store i32 0, i32* %1, align 4
  br label %196

196:                                              ; preds = %307, %195
  %197 = load i32, i32* %1, align 4
  %198 = icmp slt i32 %197, 256
  br i1 %198, label %199, label %310

199:                                              ; preds = %196
  %200 = load i64**, i64*** @ip_maskl, align 8
  %201 = load i32, i32* %4, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i64*, i64** %200, i64 %202
  %204 = load i64*, i64** %203, align 8
  %205 = load i32, i32* %1, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i64, i64* %204, i64 %206
  store i64* %207, i64** %8, align 8
  store i64 0, i64* %207, align 8
  %208 = load i64**, i64*** @ip_maskr, align 8
  %209 = load i32, i32* %4, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i64*, i64** %208, i64 %210
  %212 = load i64*, i64** %211, align 8
  %213 = load i32, i32* %1, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i64, i64* %212, i64 %214
  store i64* %215, i64** %9, align 8
  store i64 0, i64* %215, align 8
  %216 = load i64**, i64*** @fp_maskl, align 8
  %217 = load i32, i32* %4, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i64*, i64** %216, i64 %218
  %220 = load i64*, i64** %219, align 8
  %221 = load i32, i32* %1, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i64, i64* %220, i64 %222
  store i64* %223, i64** %10, align 8
  store i64 0, i64* %223, align 8
  %224 = load i64**, i64*** @fp_maskr, align 8
  %225 = load i32, i32* %4, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i64*, i64** %224, i64 %226
  %228 = load i64*, i64** %227, align 8
  %229 = load i32, i32* %1, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i64, i64* %228, i64 %230
  store i64* %231, i64** %11, align 8
  store i64 0, i64* %231, align 8
  store i32 0, i32* %2, align 4
  br label %232

232:                                              ; preds = %303, %199
  %233 = load i32, i32* %2, align 4
  %234 = icmp slt i32 %233, 8
  br i1 %234, label %235, label %306

235:                                              ; preds = %232
  %236 = load i32, i32* %4, align 4
  %237 = mul nsw i32 8, %236
  %238 = load i32, i32* %2, align 4
  %239 = add nsw i32 %237, %238
  store i32 %239, i32* %5, align 4
  %240 = load i32, i32* %1, align 4
  %241 = load i32*, i32** @bits8, align 8
  %242 = load i32, i32* %2, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = and i32 %240, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %302

248:                                              ; preds = %235
  %249 = load i32*, i32** @init_perm, align 8
  %250 = load i32, i32* %5, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  %253 = load i32, i32* %252, align 4
  store i32 %253, i32* %6, align 4
  %254 = icmp slt i32 %253, 32
  br i1 %254, label %255, label %264

255:                                              ; preds = %248
  %256 = load i64*, i64** @bits32, align 8
  %257 = load i32, i32* %6, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i64, i64* %256, i64 %258
  %260 = load i64, i64* %259, align 8
  %261 = load i64*, i64** %8, align 8
  %262 = load i64, i64* %261, align 8
  %263 = or i64 %262, %260
  store i64 %263, i64* %261, align 8
  br label %274

264:                                              ; preds = %248
  %265 = load i64*, i64** @bits32, align 8
  %266 = load i32, i32* %6, align 4
  %267 = sub nsw i32 %266, 32
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i64, i64* %265, i64 %268
  %270 = load i64, i64* %269, align 8
  %271 = load i64*, i64** %9, align 8
  %272 = load i64, i64* %271, align 8
  %273 = or i64 %272, %270
  store i64 %273, i64* %271, align 8
  br label %274

274:                                              ; preds = %264, %255
  %275 = load i64*, i64** @final_perm, align 8
  %276 = load i32, i32* %5, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i64, i64* %275, i64 %277
  %279 = load i64, i64* %278, align 8
  %280 = trunc i64 %279 to i32
  store i32 %280, i32* %6, align 4
  %281 = icmp slt i32 %280, 32
  br i1 %281, label %282, label %291

282:                                              ; preds = %274
  %283 = load i64*, i64** @bits32, align 8
  %284 = load i32, i32* %6, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i64, i64* %283, i64 %285
  %287 = load i64, i64* %286, align 8
  %288 = load i64*, i64** %10, align 8
  %289 = load i64, i64* %288, align 8
  %290 = or i64 %289, %287
  store i64 %290, i64* %288, align 8
  br label %301

291:                                              ; preds = %274
  %292 = load i64*, i64** @bits32, align 8
  %293 = load i32, i32* %6, align 4
  %294 = sub nsw i32 %293, 32
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i64, i64* %292, i64 %295
  %297 = load i64, i64* %296, align 8
  %298 = load i64*, i64** %11, align 8
  %299 = load i64, i64* %298, align 8
  %300 = or i64 %299, %297
  store i64 %300, i64* %298, align 8
  br label %301

301:                                              ; preds = %291, %282
  br label %302

302:                                              ; preds = %301, %235
  br label %303

303:                                              ; preds = %302
  %304 = load i32, i32* %2, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %2, align 4
  br label %232

306:                                              ; preds = %232
  br label %307

307:                                              ; preds = %306
  %308 = load i32, i32* %1, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %1, align 4
  br label %196

310:                                              ; preds = %196
  store i32 0, i32* %1, align 4
  br label %311

311:                                              ; preds = %453, %310
  %312 = load i32, i32* %1, align 4
  %313 = icmp slt i32 %312, 128
  br i1 %313, label %314, label %456

314:                                              ; preds = %311
  %315 = load i64**, i64*** @key_perm_maskl, align 8
  %316 = load i32, i32* %4, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i64*, i64** %315, i64 %317
  %319 = load i64*, i64** %318, align 8
  %320 = load i32, i32* %1, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i64, i64* %319, i64 %321
  store i64* %322, i64** %8, align 8
  store i64 0, i64* %322, align 8
  %323 = load i64**, i64*** @key_perm_maskr, align 8
  %324 = load i32, i32* %4, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i64*, i64** %323, i64 %325
  %327 = load i64*, i64** %326, align 8
  %328 = load i32, i32* %1, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i64, i64* %327, i64 %329
  store i64* %330, i64** %9, align 8
  store i64 0, i64* %330, align 8
  store i32 0, i32* %2, align 4
  br label %331

331:                                              ; preds = %380, %314
  %332 = load i32, i32* %2, align 4
  %333 = icmp slt i32 %332, 7
  br i1 %333, label %334, label %383

334:                                              ; preds = %331
  %335 = load i32, i32* %4, align 4
  %336 = mul nsw i32 8, %335
  %337 = load i32, i32* %2, align 4
  %338 = add nsw i32 %336, %337
  store i32 %338, i32* %5, align 4
  %339 = load i32, i32* %1, align 4
  %340 = load i32*, i32** @bits8, align 8
  %341 = load i32, i32* %2, align 4
  %342 = add nsw i32 %341, 1
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, i32* %340, i64 %343
  %345 = load i32, i32* %344, align 4
  %346 = and i32 %339, %345
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %379

348:                                              ; preds = %334
  %349 = load i32*, i32** @inv_key_perm, align 8
  %350 = load i32, i32* %5, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i32, i32* %349, i64 %351
  %353 = load i32, i32* %352, align 4
  store i32 %353, i32* %6, align 4
  %354 = icmp eq i32 %353, 255
  br i1 %354, label %355, label %356

355:                                              ; preds = %348
  br label %380

356:                                              ; preds = %348
  %357 = load i32, i32* %6, align 4
  %358 = icmp slt i32 %357, 28
  br i1 %358, label %359, label %368

359:                                              ; preds = %356
  %360 = load i64*, i64** @bits28, align 8
  %361 = load i32, i32* %6, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i64, i64* %360, i64 %362
  %364 = load i64, i64* %363, align 8
  %365 = load i64*, i64** %8, align 8
  %366 = load i64, i64* %365, align 8
  %367 = or i64 %366, %364
  store i64 %367, i64* %365, align 8
  br label %378

368:                                              ; preds = %356
  %369 = load i64*, i64** @bits28, align 8
  %370 = load i32, i32* %6, align 4
  %371 = sub nsw i32 %370, 28
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i64, i64* %369, i64 %372
  %374 = load i64, i64* %373, align 8
  %375 = load i64*, i64** %9, align 8
  %376 = load i64, i64* %375, align 8
  %377 = or i64 %376, %374
  store i64 %377, i64* %375, align 8
  br label %378

378:                                              ; preds = %368, %359
  br label %379

379:                                              ; preds = %378, %334
  br label %380

380:                                              ; preds = %379, %355
  %381 = load i32, i32* %2, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %2, align 4
  br label %331

383:                                              ; preds = %331
  %384 = load i64**, i64*** @comp_maskl, align 8
  %385 = load i32, i32* %4, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i64*, i64** %384, i64 %386
  %388 = load i64*, i64** %387, align 8
  %389 = load i32, i32* %1, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i64, i64* %388, i64 %390
  store i64* %391, i64** %8, align 8
  store i64 0, i64* %391, align 8
  %392 = load i64**, i64*** @comp_maskr, align 8
  %393 = load i32, i32* %4, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i64*, i64** %392, i64 %394
  %396 = load i64*, i64** %395, align 8
  %397 = load i32, i32* %1, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i64, i64* %396, i64 %398
  store i64* %399, i64** %9, align 8
  store i64 0, i64* %399, align 8
  store i32 0, i32* %2, align 4
  br label %400

400:                                              ; preds = %449, %383
  %401 = load i32, i32* %2, align 4
  %402 = icmp slt i32 %401, 7
  br i1 %402, label %403, label %452

403:                                              ; preds = %400
  %404 = load i32, i32* %4, align 4
  %405 = mul nsw i32 7, %404
  %406 = load i32, i32* %2, align 4
  %407 = add nsw i32 %405, %406
  store i32 %407, i32* %5, align 4
  %408 = load i32, i32* %1, align 4
  %409 = load i32*, i32** @bits8, align 8
  %410 = load i32, i32* %2, align 4
  %411 = add nsw i32 %410, 1
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i32, i32* %409, i64 %412
  %414 = load i32, i32* %413, align 4
  %415 = and i32 %408, %414
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %448

417:                                              ; preds = %403
  %418 = load i32*, i32** @inv_comp_perm, align 8
  %419 = load i32, i32* %5, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32, i32* %418, i64 %420
  %422 = load i32, i32* %421, align 4
  store i32 %422, i32* %6, align 4
  %423 = icmp eq i32 %422, 255
  br i1 %423, label %424, label %425

424:                                              ; preds = %417
  br label %449

425:                                              ; preds = %417
  %426 = load i32, i32* %6, align 4
  %427 = icmp slt i32 %426, 24
  br i1 %427, label %428, label %437

428:                                              ; preds = %425
  %429 = load i64*, i64** @bits24, align 8
  %430 = load i32, i32* %6, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i64, i64* %429, i64 %431
  %433 = load i64, i64* %432, align 8
  %434 = load i64*, i64** %8, align 8
  %435 = load i64, i64* %434, align 8
  %436 = or i64 %435, %433
  store i64 %436, i64* %434, align 8
  br label %447

437:                                              ; preds = %425
  %438 = load i64*, i64** @bits24, align 8
  %439 = load i32, i32* %6, align 4
  %440 = sub nsw i32 %439, 24
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i64, i64* %438, i64 %441
  %443 = load i64, i64* %442, align 8
  %444 = load i64*, i64** %9, align 8
  %445 = load i64, i64* %444, align 8
  %446 = or i64 %445, %443
  store i64 %446, i64* %444, align 8
  br label %447

447:                                              ; preds = %437, %428
  br label %448

448:                                              ; preds = %447, %403
  br label %449

449:                                              ; preds = %448, %424
  %450 = load i32, i32* %2, align 4
  %451 = add nsw i32 %450, 1
  store i32 %451, i32* %2, align 4
  br label %400

452:                                              ; preds = %400
  br label %453

453:                                              ; preds = %452
  %454 = load i32, i32* %1, align 4
  %455 = add nsw i32 %454, 1
  store i32 %455, i32* %1, align 4
  br label %311

456:                                              ; preds = %311
  br label %457

457:                                              ; preds = %456
  %458 = load i32, i32* %4, align 4
  %459 = add nsw i32 %458, 1
  store i32 %459, i32* %4, align 4
  br label %192

460:                                              ; preds = %192
  store i32 0, i32* %1, align 4
  br label %461

461:                                              ; preds = %478, %460
  %462 = load i32, i32* %1, align 4
  %463 = icmp slt i32 %462, 32
  br i1 %463, label %464, label %481

464:                                              ; preds = %461
  %465 = load i32, i32* %1, align 4
  %466 = sext i32 %465 to i64
  %467 = inttoptr i64 %466 to i8*
  %468 = ptrtoint i8* %467 to i64
  %469 = load i64*, i64** @un_pbox, align 8
  %470 = load i32*, i32** @pbox, align 8
  %471 = load i32, i32* %1, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds i32, i32* %470, i64 %472
  %474 = load i32, i32* %473, align 4
  %475 = sub nsw i32 %474, 1
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds i64, i64* %469, i64 %476
  store i64 %468, i64* %477, align 8
  br label %478

478:                                              ; preds = %464
  %479 = load i32, i32* %1, align 4
  %480 = add nsw i32 %479, 1
  store i32 %480, i32* %1, align 4
  br label %461

481:                                              ; preds = %461
  store i32 0, i32* %3, align 4
  br label %482

482:                                              ; preds = %534, %481
  %483 = load i32, i32* %3, align 4
  %484 = icmp slt i32 %483, 4
  br i1 %484, label %485, label %537

485:                                              ; preds = %482
  store i32 0, i32* %1, align 4
  br label %486

486:                                              ; preds = %530, %485
  %487 = load i32, i32* %1, align 4
  %488 = icmp slt i32 %487, 256
  br i1 %488, label %489, label %533

489:                                              ; preds = %486
  %490 = load i64**, i64*** @psbox, align 8
  %491 = load i32, i32* %3, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds i64*, i64** %490, i64 %492
  %494 = load i64*, i64** %493, align 8
  %495 = load i32, i32* %1, align 4
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds i64, i64* %494, i64 %496
  store i64* %497, i64** %7, align 8
  store i64 0, i64* %497, align 8
  store i32 0, i32* %2, align 4
  br label %498

498:                                              ; preds = %526, %489
  %499 = load i32, i32* %2, align 4
  %500 = icmp slt i32 %499, 8
  br i1 %500, label %501, label %529

501:                                              ; preds = %498
  %502 = load i32, i32* %1, align 4
  %503 = load i32*, i32** @bits8, align 8
  %504 = load i32, i32* %2, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds i32, i32* %503, i64 %505
  %507 = load i32, i32* %506, align 4
  %508 = and i32 %502, %507
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %510, label %525

510:                                              ; preds = %501
  %511 = load i64*, i64** @bits32, align 8
  %512 = load i64*, i64** @un_pbox, align 8
  %513 = load i32, i32* %3, align 4
  %514 = mul nsw i32 8, %513
  %515 = load i32, i32* %2, align 4
  %516 = add nsw i32 %514, %515
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds i64, i64* %512, i64 %517
  %519 = load i64, i64* %518, align 8
  %520 = getelementptr inbounds i64, i64* %511, i64 %519
  %521 = load i64, i64* %520, align 8
  %522 = load i64*, i64** %7, align 8
  %523 = load i64, i64* %522, align 8
  %524 = or i64 %523, %521
  store i64 %524, i64* %522, align 8
  br label %525

525:                                              ; preds = %510, %501
  br label %526

526:                                              ; preds = %525
  %527 = load i32, i32* %2, align 4
  %528 = add nsw i32 %527, 1
  store i32 %528, i32* %2, align 4
  br label %498

529:                                              ; preds = %498
  br label %530

530:                                              ; preds = %529
  %531 = load i32, i32* %1, align 4
  %532 = add nsw i32 %531, 1
  store i32 %532, i32* %1, align 4
  br label %486

533:                                              ; preds = %486
  br label %534

534:                                              ; preds = %533
  %535 = load i32, i32* %3, align 4
  %536 = add nsw i32 %535, 1
  store i32 %536, i32* %3, align 4
  br label %482

537:                                              ; preds = %482
  store i32 1, i32* @des_initialised, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
