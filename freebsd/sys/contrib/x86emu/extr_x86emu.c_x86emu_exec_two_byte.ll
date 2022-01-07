; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emu_exec_two_byte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emu_exec_two_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { i32 }

@F_OF = common dso_local global i32 0, align 4
@F_CF = common dso_local global i32 0, align 4
@F_ZF = common dso_local global i32 0, align 4
@F_SF = common dso_local global i32 0, align 4
@F_PF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86emu*)* @x86emu_exec_two_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x86emu_exec_two_byte(%struct.x86emu* %0) #0 {
  %2 = alloca %struct.x86emu*, align 8
  %3 = alloca i32, align 4
  store %struct.x86emu* %0, %struct.x86emu** %2, align 8
  %4 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %5 = call i32 @fetch_byte_imm(%struct.x86emu* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %367 [
    i32 49, label %7
    i32 128, label %10
    i32 129, label %15
    i32 130, label %23
    i32 131, label %28
    i32 132, label %36
    i32 133, label %41
    i32 134, label %49
    i32 135, label %62
    i32 136, label %76
    i32 137, label %81
    i32 138, label %89
    i32 139, label %94
    i32 140, label %102
    i32 141, label %110
    i32 142, label %121
    i32 143, label %137
    i32 144, label %154
    i32 145, label %159
    i32 146, label %167
    i32 147, label %172
    i32 148, label %180
    i32 149, label %185
    i32 150, label %193
    i32 151, label %206
    i32 152, label %220
    i32 153, label %225
    i32 154, label %233
    i32 155, label %238
    i32 156, label %246
    i32 157, label %254
    i32 158, label %262
    i32 159, label %278
    i32 160, label %295
    i32 161, label %298
    i32 162, label %301
    i32 163, label %304
    i32 164, label %307
    i32 165, label %310
    i32 168, label %313
    i32 169, label %316
    i32 171, label %319
    i32 172, label %322
    i32 173, label %325
    i32 175, label %328
    i32 178, label %331
    i32 179, label %334
    i32 180, label %337
    i32 181, label %340
    i32 182, label %343
    i32 183, label %346
    i32 186, label %349
    i32 187, label %352
    i32 188, label %355
    i32 189, label %358
    i32 190, label %361
    i32 191, label %364
  ]

7:                                                ; preds = %1
  %8 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %9 = call i32 @x86emuOp2_rdtsc(%struct.x86emu* %8)
  br label %370

10:                                               ; preds = %1
  %11 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %12 = load i32, i32* @F_OF, align 4
  %13 = call i32 @ACCESS_FLAG(i32 %12)
  %14 = call i32 @common_jmp_long(%struct.x86emu* %11, i32 %13)
  br label %370

15:                                               ; preds = %1
  %16 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %17 = load i32, i32* @F_OF, align 4
  %18 = call i32 @ACCESS_FLAG(i32 %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @common_jmp_long(%struct.x86emu* %16, i32 %21)
  br label %370

23:                                               ; preds = %1
  %24 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %25 = load i32, i32* @F_CF, align 4
  %26 = call i32 @ACCESS_FLAG(i32 %25)
  %27 = call i32 @common_jmp_long(%struct.x86emu* %24, i32 %26)
  br label %370

28:                                               ; preds = %1
  %29 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %30 = load i32, i32* @F_CF, align 4
  %31 = call i32 @ACCESS_FLAG(i32 %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @common_jmp_long(%struct.x86emu* %29, i32 %34)
  br label %370

36:                                               ; preds = %1
  %37 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %38 = load i32, i32* @F_ZF, align 4
  %39 = call i32 @ACCESS_FLAG(i32 %38)
  %40 = call i32 @common_jmp_long(%struct.x86emu* %37, i32 %39)
  br label %370

41:                                               ; preds = %1
  %42 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %43 = load i32, i32* @F_ZF, align 4
  %44 = call i32 @ACCESS_FLAG(i32 %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @common_jmp_long(%struct.x86emu* %42, i32 %47)
  br label %370

49:                                               ; preds = %1
  %50 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %51 = load i32, i32* @F_CF, align 4
  %52 = call i32 @ACCESS_FLAG(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @F_ZF, align 4
  %56 = call i32 @ACCESS_FLAG(i32 %55)
  %57 = icmp ne i32 %56, 0
  br label %58

58:                                               ; preds = %54, %49
  %59 = phi i1 [ true, %49 ], [ %57, %54 ]
  %60 = zext i1 %59 to i32
  %61 = call i32 @common_jmp_long(%struct.x86emu* %50, i32 %60)
  br label %370

62:                                               ; preds = %1
  %63 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %64 = load i32, i32* @F_CF, align 4
  %65 = call i32 @ACCESS_FLAG(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @F_ZF, align 4
  %69 = call i32 @ACCESS_FLAG(i32 %68)
  %70 = icmp ne i32 %69, 0
  br label %71

71:                                               ; preds = %67, %62
  %72 = phi i1 [ true, %62 ], [ %70, %67 ]
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i32 @common_jmp_long(%struct.x86emu* %63, i32 %74)
  br label %370

76:                                               ; preds = %1
  %77 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %78 = load i32, i32* @F_SF, align 4
  %79 = call i32 @ACCESS_FLAG(i32 %78)
  %80 = call i32 @common_jmp_long(%struct.x86emu* %77, i32 %79)
  br label %370

81:                                               ; preds = %1
  %82 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %83 = load i32, i32* @F_SF, align 4
  %84 = call i32 @ACCESS_FLAG(i32 %83)
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = call i32 @common_jmp_long(%struct.x86emu* %82, i32 %87)
  br label %370

89:                                               ; preds = %1
  %90 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %91 = load i32, i32* @F_PF, align 4
  %92 = call i32 @ACCESS_FLAG(i32 %91)
  %93 = call i32 @common_jmp_long(%struct.x86emu* %90, i32 %92)
  br label %370

94:                                               ; preds = %1
  %95 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %96 = load i32, i32* @F_PF, align 4
  %97 = call i32 @ACCESS_FLAG(i32 %96)
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = call i32 @common_jmp_long(%struct.x86emu* %95, i32 %100)
  br label %370

102:                                              ; preds = %1
  %103 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %104 = load i32, i32* @F_SF, align 4
  %105 = call i32 @ACCESS_FLAG(i32 %104)
  %106 = load i32, i32* @F_OF, align 4
  %107 = call i32 @ACCESS_FLAG(i32 %106)
  %108 = call i32 @xorl(i32 %105, i32 %107)
  %109 = call i32 @common_jmp_long(%struct.x86emu* %103, i32 %108)
  br label %370

110:                                              ; preds = %1
  %111 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %112 = load i32, i32* @F_SF, align 4
  %113 = call i32 @ACCESS_FLAG(i32 %112)
  %114 = load i32, i32* @F_OF, align 4
  %115 = call i32 @ACCESS_FLAG(i32 %114)
  %116 = call i32 @xorl(i32 %113, i32 %115)
  %117 = icmp ne i32 %116, 0
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  %120 = call i32 @common_jmp_long(%struct.x86emu* %111, i32 %119)
  br label %370

121:                                              ; preds = %1
  %122 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %123 = load i32, i32* @F_SF, align 4
  %124 = call i32 @ACCESS_FLAG(i32 %123)
  %125 = load i32, i32* @F_OF, align 4
  %126 = call i32 @ACCESS_FLAG(i32 %125)
  %127 = call i32 @xorl(i32 %124, i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %121
  %130 = load i32, i32* @F_ZF, align 4
  %131 = call i32 @ACCESS_FLAG(i32 %130)
  %132 = icmp ne i32 %131, 0
  br label %133

133:                                              ; preds = %129, %121
  %134 = phi i1 [ true, %121 ], [ %132, %129 ]
  %135 = zext i1 %134 to i32
  %136 = call i32 @common_jmp_long(%struct.x86emu* %122, i32 %135)
  br label %370

137:                                              ; preds = %1
  %138 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %139 = load i32, i32* @F_SF, align 4
  %140 = call i32 @ACCESS_FLAG(i32 %139)
  %141 = load i32, i32* @F_OF, align 4
  %142 = call i32 @ACCESS_FLAG(i32 %141)
  %143 = call i32 @xorl(i32 %140, i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %137
  %146 = load i32, i32* @F_ZF, align 4
  %147 = call i32 @ACCESS_FLAG(i32 %146)
  %148 = icmp ne i32 %147, 0
  br label %149

149:                                              ; preds = %145, %137
  %150 = phi i1 [ true, %137 ], [ %148, %145 ]
  %151 = xor i1 %150, true
  %152 = zext i1 %151 to i32
  %153 = call i32 @common_jmp_long(%struct.x86emu* %138, i32 %152)
  br label %370

154:                                              ; preds = %1
  %155 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %156 = load i32, i32* @F_OF, align 4
  %157 = call i32 @ACCESS_FLAG(i32 %156)
  %158 = call i32 @common_set_byte(%struct.x86emu* %155, i32 %157)
  br label %370

159:                                              ; preds = %1
  %160 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %161 = load i32, i32* @F_OF, align 4
  %162 = call i32 @ACCESS_FLAG(i32 %161)
  %163 = icmp ne i32 %162, 0
  %164 = xor i1 %163, true
  %165 = zext i1 %164 to i32
  %166 = call i32 @common_set_byte(%struct.x86emu* %160, i32 %165)
  br label %370

167:                                              ; preds = %1
  %168 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %169 = load i32, i32* @F_CF, align 4
  %170 = call i32 @ACCESS_FLAG(i32 %169)
  %171 = call i32 @common_set_byte(%struct.x86emu* %168, i32 %170)
  br label %370

172:                                              ; preds = %1
  %173 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %174 = load i32, i32* @F_CF, align 4
  %175 = call i32 @ACCESS_FLAG(i32 %174)
  %176 = icmp ne i32 %175, 0
  %177 = xor i1 %176, true
  %178 = zext i1 %177 to i32
  %179 = call i32 @common_set_byte(%struct.x86emu* %173, i32 %178)
  br label %370

180:                                              ; preds = %1
  %181 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %182 = load i32, i32* @F_ZF, align 4
  %183 = call i32 @ACCESS_FLAG(i32 %182)
  %184 = call i32 @common_set_byte(%struct.x86emu* %181, i32 %183)
  br label %370

185:                                              ; preds = %1
  %186 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %187 = load i32, i32* @F_ZF, align 4
  %188 = call i32 @ACCESS_FLAG(i32 %187)
  %189 = icmp ne i32 %188, 0
  %190 = xor i1 %189, true
  %191 = zext i1 %190 to i32
  %192 = call i32 @common_set_byte(%struct.x86emu* %186, i32 %191)
  br label %370

193:                                              ; preds = %1
  %194 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %195 = load i32, i32* @F_CF, align 4
  %196 = call i32 @ACCESS_FLAG(i32 %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %202, label %198

198:                                              ; preds = %193
  %199 = load i32, i32* @F_ZF, align 4
  %200 = call i32 @ACCESS_FLAG(i32 %199)
  %201 = icmp ne i32 %200, 0
  br label %202

202:                                              ; preds = %198, %193
  %203 = phi i1 [ true, %193 ], [ %201, %198 ]
  %204 = zext i1 %203 to i32
  %205 = call i32 @common_set_byte(%struct.x86emu* %194, i32 %204)
  br label %370

206:                                              ; preds = %1
  %207 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %208 = load i32, i32* @F_CF, align 4
  %209 = call i32 @ACCESS_FLAG(i32 %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %215, label %211

211:                                              ; preds = %206
  %212 = load i32, i32* @F_ZF, align 4
  %213 = call i32 @ACCESS_FLAG(i32 %212)
  %214 = icmp ne i32 %213, 0
  br label %215

215:                                              ; preds = %211, %206
  %216 = phi i1 [ true, %206 ], [ %214, %211 ]
  %217 = xor i1 %216, true
  %218 = zext i1 %217 to i32
  %219 = call i32 @common_set_byte(%struct.x86emu* %207, i32 %218)
  br label %370

220:                                              ; preds = %1
  %221 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %222 = load i32, i32* @F_SF, align 4
  %223 = call i32 @ACCESS_FLAG(i32 %222)
  %224 = call i32 @common_set_byte(%struct.x86emu* %221, i32 %223)
  br label %370

225:                                              ; preds = %1
  %226 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %227 = load i32, i32* @F_SF, align 4
  %228 = call i32 @ACCESS_FLAG(i32 %227)
  %229 = icmp ne i32 %228, 0
  %230 = xor i1 %229, true
  %231 = zext i1 %230 to i32
  %232 = call i32 @common_set_byte(%struct.x86emu* %226, i32 %231)
  br label %370

233:                                              ; preds = %1
  %234 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %235 = load i32, i32* @F_PF, align 4
  %236 = call i32 @ACCESS_FLAG(i32 %235)
  %237 = call i32 @common_set_byte(%struct.x86emu* %234, i32 %236)
  br label %370

238:                                              ; preds = %1
  %239 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %240 = load i32, i32* @F_PF, align 4
  %241 = call i32 @ACCESS_FLAG(i32 %240)
  %242 = icmp ne i32 %241, 0
  %243 = xor i1 %242, true
  %244 = zext i1 %243 to i32
  %245 = call i32 @common_set_byte(%struct.x86emu* %239, i32 %244)
  br label %370

246:                                              ; preds = %1
  %247 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %248 = load i32, i32* @F_SF, align 4
  %249 = call i32 @ACCESS_FLAG(i32 %248)
  %250 = load i32, i32* @F_OF, align 4
  %251 = call i32 @ACCESS_FLAG(i32 %250)
  %252 = call i32 @xorl(i32 %249, i32 %251)
  %253 = call i32 @common_set_byte(%struct.x86emu* %247, i32 %252)
  br label %370

254:                                              ; preds = %1
  %255 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %256 = load i32, i32* @F_SF, align 4
  %257 = call i32 @ACCESS_FLAG(i32 %256)
  %258 = load i32, i32* @F_OF, align 4
  %259 = call i32 @ACCESS_FLAG(i32 %258)
  %260 = call i32 @xorl(i32 %257, i32 %259)
  %261 = call i32 @common_set_byte(%struct.x86emu* %255, i32 %260)
  br label %370

262:                                              ; preds = %1
  %263 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %264 = load i32, i32* @F_SF, align 4
  %265 = call i32 @ACCESS_FLAG(i32 %264)
  %266 = load i32, i32* @F_OF, align 4
  %267 = call i32 @ACCESS_FLAG(i32 %266)
  %268 = call i32 @xorl(i32 %265, i32 %267)
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %274, label %270

270:                                              ; preds = %262
  %271 = load i32, i32* @F_ZF, align 4
  %272 = call i32 @ACCESS_FLAG(i32 %271)
  %273 = icmp ne i32 %272, 0
  br label %274

274:                                              ; preds = %270, %262
  %275 = phi i1 [ true, %262 ], [ %273, %270 ]
  %276 = zext i1 %275 to i32
  %277 = call i32 @common_set_byte(%struct.x86emu* %263, i32 %276)
  br label %370

278:                                              ; preds = %1
  %279 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %280 = load i32, i32* @F_SF, align 4
  %281 = call i32 @ACCESS_FLAG(i32 %280)
  %282 = load i32, i32* @F_OF, align 4
  %283 = call i32 @ACCESS_FLAG(i32 %282)
  %284 = call i32 @xorl(i32 %281, i32 %283)
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %290, label %286

286:                                              ; preds = %278
  %287 = load i32, i32* @F_ZF, align 4
  %288 = call i32 @ACCESS_FLAG(i32 %287)
  %289 = icmp ne i32 %288, 0
  br label %290

290:                                              ; preds = %286, %278
  %291 = phi i1 [ true, %278 ], [ %289, %286 ]
  %292 = xor i1 %291, true
  %293 = zext i1 %292 to i32
  %294 = call i32 @common_set_byte(%struct.x86emu* %279, i32 %293)
  br label %370

295:                                              ; preds = %1
  %296 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %297 = call i32 @x86emuOp2_push_FS(%struct.x86emu* %296)
  br label %370

298:                                              ; preds = %1
  %299 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %300 = call i32 @x86emuOp2_pop_FS(%struct.x86emu* %299)
  br label %370

301:                                              ; preds = %1
  %302 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %303 = call i32 @x86emuOp2_cpuid(%struct.x86emu* %302)
  br label %370

304:                                              ; preds = %1
  %305 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %306 = call i32 @x86emuOp2_bt_R(%struct.x86emu* %305)
  br label %370

307:                                              ; preds = %1
  %308 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %309 = call i32 @x86emuOp2_shld_IMM(%struct.x86emu* %308)
  br label %370

310:                                              ; preds = %1
  %311 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %312 = call i32 @x86emuOp2_shld_CL(%struct.x86emu* %311)
  br label %370

313:                                              ; preds = %1
  %314 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %315 = call i32 @x86emuOp2_push_GS(%struct.x86emu* %314)
  br label %370

316:                                              ; preds = %1
  %317 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %318 = call i32 @x86emuOp2_pop_GS(%struct.x86emu* %317)
  br label %370

319:                                              ; preds = %1
  %320 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %321 = call i32 @x86emuOp2_bts_R(%struct.x86emu* %320)
  br label %370

322:                                              ; preds = %1
  %323 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %324 = call i32 @x86emuOp2_shrd_IMM(%struct.x86emu* %323)
  br label %370

325:                                              ; preds = %1
  %326 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %327 = call i32 @x86emuOp2_shrd_CL(%struct.x86emu* %326)
  br label %370

328:                                              ; preds = %1
  %329 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %330 = call i32 @x86emuOp2_imul_R_RM(%struct.x86emu* %329)
  br label %370

331:                                              ; preds = %1
  %332 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %333 = call i32 @x86emuOp2_lss_R_IMM(%struct.x86emu* %332)
  br label %370

334:                                              ; preds = %1
  %335 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %336 = call i32 @x86emuOp2_btr_R(%struct.x86emu* %335)
  br label %370

337:                                              ; preds = %1
  %338 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %339 = call i32 @x86emuOp2_lfs_R_IMM(%struct.x86emu* %338)
  br label %370

340:                                              ; preds = %1
  %341 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %342 = call i32 @x86emuOp2_lgs_R_IMM(%struct.x86emu* %341)
  br label %370

343:                                              ; preds = %1
  %344 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %345 = call i32 @x86emuOp2_movzx_byte_R_RM(%struct.x86emu* %344)
  br label %370

346:                                              ; preds = %1
  %347 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %348 = call i32 @x86emuOp2_movzx_word_R_RM(%struct.x86emu* %347)
  br label %370

349:                                              ; preds = %1
  %350 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %351 = call i32 @x86emuOp2_btX_I(%struct.x86emu* %350)
  br label %370

352:                                              ; preds = %1
  %353 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %354 = call i32 @x86emuOp2_btc_R(%struct.x86emu* %353)
  br label %370

355:                                              ; preds = %1
  %356 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %357 = call i32 @x86emuOp2_bsf(%struct.x86emu* %356)
  br label %370

358:                                              ; preds = %1
  %359 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %360 = call i32 @x86emuOp2_bsr(%struct.x86emu* %359)
  br label %370

361:                                              ; preds = %1
  %362 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %363 = call i32 @x86emuOp2_movsx_byte_R_RM(%struct.x86emu* %362)
  br label %370

364:                                              ; preds = %1
  %365 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %366 = call i32 @x86emuOp2_movsx_word_R_RM(%struct.x86emu* %365)
  br label %370

367:                                              ; preds = %1
  %368 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %369 = call i32 @x86emu_halt_sys(%struct.x86emu* %368)
  br label %370

370:                                              ; preds = %367, %364, %361, %358, %355, %352, %349, %346, %343, %340, %337, %334, %331, %328, %325, %322, %319, %316, %313, %310, %307, %304, %301, %298, %295, %290, %274, %254, %246, %238, %233, %225, %220, %215, %202, %185, %180, %172, %167, %159, %154, %149, %133, %110, %102, %94, %89, %81, %76, %71, %58, %41, %36, %28, %23, %15, %10, %7
  ret void
}

declare dso_local i32 @fetch_byte_imm(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp2_rdtsc(%struct.x86emu*) #1

declare dso_local i32 @common_jmp_long(%struct.x86emu*, i32) #1

declare dso_local i32 @ACCESS_FLAG(i32) #1

declare dso_local i32 @xorl(i32, i32) #1

declare dso_local i32 @common_set_byte(%struct.x86emu*, i32) #1

declare dso_local i32 @x86emuOp2_push_FS(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp2_pop_FS(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp2_cpuid(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp2_bt_R(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp2_shld_IMM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp2_shld_CL(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp2_push_GS(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp2_pop_GS(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp2_bts_R(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp2_shrd_IMM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp2_shrd_CL(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp2_imul_R_RM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp2_lss_R_IMM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp2_btr_R(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp2_lfs_R_IMM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp2_lgs_R_IMM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp2_movzx_byte_R_RM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp2_movzx_word_R_RM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp2_btX_I(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp2_btc_R(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp2_bsf(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp2_bsr(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp2_movsx_byte_R_RM(%struct.x86emu*) #1

declare dso_local i32 @x86emuOp2_movsx_word_R_RM(%struct.x86emu*) #1

declare dso_local i32 @x86emu_halt_sys(%struct.x86emu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
