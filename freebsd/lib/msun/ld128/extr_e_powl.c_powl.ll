; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/ld128/extr_e_powl.c_powl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/ld128/extr_e_powl.c_powl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { x86_fp80, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@one = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@zero = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@huge = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@tiny = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@two113 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@bp = common dso_local global x86_fp80* null, align 8
@LN = common dso_local global x86_fp80* null, align 8
@LD = common dso_local global x86_fp80* null, align 8
@cp_h = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@cp_l = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@cp = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@dp_l = common dso_local global x86_fp80* null, align 8
@dp_h = common dso_local global x86_fp80* null, align 8
@ovt = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@lg2_h = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@lg2 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@lg2_l = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@PN = common dso_local global x86_fp80* null, align 8
@PD = common dso_local global x86_fp80* null, align 8
@two = common dso_local global x86_fp80 0xK00000000000000000000, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local x86_fp80 @powl(x86_fp80 %0, x86_fp80 %1) #0 {
  %3 = alloca x86_fp80, align 16
  %4 = alloca x86_fp80, align 16
  %5 = alloca x86_fp80, align 16
  %6 = alloca x86_fp80, align 16
  %7 = alloca x86_fp80, align 16
  %8 = alloca x86_fp80, align 16
  %9 = alloca x86_fp80, align 16
  %10 = alloca x86_fp80, align 16
  %11 = alloca x86_fp80, align 16
  %12 = alloca x86_fp80, align 16
  %13 = alloca x86_fp80, align 16
  %14 = alloca x86_fp80, align 16
  %15 = alloca x86_fp80, align 16
  %16 = alloca x86_fp80, align 16
  %17 = alloca x86_fp80, align 16
  %18 = alloca x86_fp80, align 16
  %19 = alloca x86_fp80, align 16
  %20 = alloca x86_fp80, align 16
  %21 = alloca x86_fp80, align 16
  %22 = alloca x86_fp80, align 16
  %23 = alloca x86_fp80, align 16
  %24 = alloca x86_fp80, align 16
  %25 = alloca x86_fp80, align 16
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca %struct.TYPE_4__, align 16
  %36 = alloca %struct.TYPE_4__, align 16
  %37 = alloca %struct.TYPE_4__, align 16
  store x86_fp80 %0, x86_fp80* %4, align 16
  store x86_fp80 %1, x86_fp80* %5, align 16
  %38 = load x86_fp80, x86_fp80* %4, align 16
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store x86_fp80 %38, x86_fp80* %39, align 16
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 16
  store i32 %42, i32* %33, align 4
  %43 = load i32, i32* %33, align 4
  %44 = and i32 %43, 2147483647
  store i32 %44, i32* %31, align 4
  %45 = load x86_fp80, x86_fp80* %5, align 16
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store x86_fp80 %45, x86_fp80* %46, align 16
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 16
  store i32 %49, i32* %34, align 4
  %50 = load i32, i32* %34, align 4
  %51 = and i32 %50, 2147483647
  store i32 %51, i32* %32, align 4
  %52 = load i32, i32* %32, align 4
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %52, %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %56, %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %60, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %2
  %67 = load x86_fp80, x86_fp80* @one, align 16
  store x86_fp80 %67, x86_fp80* %3, align 16
  br label %970

68:                                               ; preds = %2
  %69 = load x86_fp80, x86_fp80* %4, align 16
  %70 = load x86_fp80, x86_fp80* @one, align 16
  %71 = fcmp oeq x86_fp80 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load x86_fp80, x86_fp80* @one, align 16
  store x86_fp80 %73, x86_fp80* %3, align 16
  br label %970

74:                                               ; preds = %68
  %75 = load x86_fp80, x86_fp80* %4, align 16
  %76 = fcmp oeq x86_fp80 %75, 0xKBFFF8000000000000000
  br i1 %76, label %77, label %95

77:                                               ; preds = %74
  %78 = load i32, i32* %32, align 4
  %79 = icmp eq i32 %78, 2147418112
  br i1 %79, label %80, label %95

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %83, %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %87, %90
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %80
  %94 = load x86_fp80, x86_fp80* @one, align 16
  store x86_fp80 %94, x86_fp80* %3, align 16
  br label %970

95:                                               ; preds = %80, %77, %74
  %96 = load i32, i32* %31, align 4
  %97 = icmp sgt i32 %96, 2147418112
  br i1 %97, label %133, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %31, align 4
  %100 = icmp eq i32 %99, 2147418112
  br i1 %100, label %101, label %114

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %104, %107
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %108, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %133, label %114

114:                                              ; preds = %101, %98
  %115 = load i32, i32* %32, align 4
  %116 = icmp sgt i32 %115, 2147418112
  br i1 %116, label %133, label %117

117:                                              ; preds = %114
  %118 = load i32, i32* %32, align 4
  %119 = icmp eq i32 %118, 2147418112
  br i1 %119, label %120, label %137

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %123, %126
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %127, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %120, %114, %101, %95
  %134 = load x86_fp80, x86_fp80* %4, align 16
  %135 = load x86_fp80, x86_fp80* %5, align 16
  %136 = call x86_fp80 @nan_mix(x86_fp80 %134, x86_fp80 %135)
  store x86_fp80 %136, x86_fp80* %3, align 16
  br label %970

137:                                              ; preds = %120, %117
  store i32 0, i32* %29, align 4
  %138 = load i32, i32* %33, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %165

140:                                              ; preds = %137
  %141 = load i32, i32* %32, align 4
  %142 = icmp sge i32 %141, 1081081856
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  store i32 2, i32* %29, align 4
  br label %164

144:                                              ; preds = %140
  %145 = load i32, i32* %32, align 4
  %146 = icmp sge i32 %145, 1073676288
  br i1 %146, label %147, label %163

147:                                              ; preds = %144
  %148 = load x86_fp80, x86_fp80* %5, align 16
  %149 = call x86_fp80 @llvm.floor.f80(x86_fp80 %148)
  %150 = load x86_fp80, x86_fp80* %5, align 16
  %151 = fcmp oeq x86_fp80 %149, %150
  br i1 %151, label %152, label %162

152:                                              ; preds = %147
  %153 = load x86_fp80, x86_fp80* %5, align 16
  %154 = fmul x86_fp80 0xK3FFE8000000000000000, %153
  store x86_fp80 %154, x86_fp80* %6, align 16
  %155 = load x86_fp80, x86_fp80* %6, align 16
  %156 = call x86_fp80 @llvm.floor.f80(x86_fp80 %155)
  %157 = load x86_fp80, x86_fp80* %6, align 16
  %158 = fcmp oeq x86_fp80 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %152
  store i32 2, i32* %29, align 4
  br label %161

160:                                              ; preds = %152
  store i32 1, i32* %29, align 4
  br label %161

161:                                              ; preds = %160, %159
  br label %162

162:                                              ; preds = %161, %147
  br label %163

163:                                              ; preds = %162, %144
  br label %164

164:                                              ; preds = %163, %143
  br label %165

165:                                              ; preds = %164, %137
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = or i32 %168, %171
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %172, %175
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %253

178:                                              ; preds = %165
  %179 = load i32, i32* %32, align 4
  %180 = icmp eq i32 %179, 2147418112
  br i1 %180, label %181, label %223

181:                                              ; preds = %178
  %182 = load i32, i32* %31, align 4
  %183 = sub nsw i32 %182, 1073676288
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = or i32 %183, %186
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = or i32 %187, %190
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %191, %194
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %181
  %198 = load x86_fp80, x86_fp80* %5, align 16
  %199 = load x86_fp80, x86_fp80* %5, align 16
  %200 = fsub x86_fp80 %198, %199
  store x86_fp80 %200, x86_fp80* %3, align 16
  br label %970

201:                                              ; preds = %181
  %202 = load i32, i32* %31, align 4
  %203 = icmp sge i32 %202, 1073676288
  br i1 %203, label %204, label %213

204:                                              ; preds = %201
  %205 = load i32, i32* %34, align 4
  %206 = icmp sge i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %204
  %208 = load x86_fp80, x86_fp80* %5, align 16
  br label %211

209:                                              ; preds = %204
  %210 = load x86_fp80, x86_fp80* @zero, align 16
  br label %211

211:                                              ; preds = %209, %207
  %212 = phi x86_fp80 [ %208, %207 ], [ %210, %209 ]
  store x86_fp80 %212, x86_fp80* %3, align 16
  br label %970

213:                                              ; preds = %201
  %214 = load i32, i32* %34, align 4
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %213
  %217 = load x86_fp80, x86_fp80* %5, align 16
  %218 = fneg x86_fp80 %217
  br label %221

219:                                              ; preds = %213
  %220 = load x86_fp80, x86_fp80* @zero, align 16
  br label %221

221:                                              ; preds = %219, %216
  %222 = phi x86_fp80 [ %218, %216 ], [ %220, %219 ]
  store x86_fp80 %222, x86_fp80* %3, align 16
  br label %970

223:                                              ; preds = %178
  %224 = load i32, i32* %32, align 4
  %225 = icmp eq i32 %224, 1073676288
  br i1 %225, label %226, label %235

226:                                              ; preds = %223
  %227 = load i32, i32* %34, align 4
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %226
  %230 = load x86_fp80, x86_fp80* @one, align 16
  %231 = load x86_fp80, x86_fp80* %4, align 16
  %232 = fdiv x86_fp80 %230, %231
  store x86_fp80 %232, x86_fp80* %3, align 16
  br label %970

233:                                              ; preds = %226
  %234 = load x86_fp80, x86_fp80* %4, align 16
  store x86_fp80 %234, x86_fp80* %3, align 16
  br label %970

235:                                              ; preds = %223
  %236 = load i32, i32* %34, align 4
  %237 = icmp eq i32 %236, 1073741824
  br i1 %237, label %238, label %242

238:                                              ; preds = %235
  %239 = load x86_fp80, x86_fp80* %4, align 16
  %240 = load x86_fp80, x86_fp80* %4, align 16
  %241 = fmul x86_fp80 %239, %240
  store x86_fp80 %241, x86_fp80* %3, align 16
  br label %970

242:                                              ; preds = %235
  %243 = load i32, i32* %34, align 4
  %244 = icmp eq i32 %243, 1073610752
  br i1 %244, label %245, label %252

245:                                              ; preds = %242
  %246 = load i32, i32* %33, align 4
  %247 = icmp sge i32 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %245
  %249 = load x86_fp80, x86_fp80* %4, align 16
  %250 = call x86_fp80 @sqrtl(x86_fp80 %249) #4
  store x86_fp80 %250, x86_fp80* %3, align 16
  br label %970

251:                                              ; preds = %245
  br label %252

252:                                              ; preds = %251, %242
  br label %253

253:                                              ; preds = %252, %165
  %254 = load x86_fp80, x86_fp80* %4, align 16
  %255 = call x86_fp80 @llvm.fabs.f80(x86_fp80 %254)
  store x86_fp80 %255, x86_fp80* %7, align 16
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = or i32 %258, %261
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 4
  %266 = or i32 %262, %265
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %313

268:                                              ; preds = %253
  %269 = load i32, i32* %31, align 4
  %270 = icmp eq i32 %269, 2147418112
  br i1 %270, label %277, label %271

271:                                              ; preds = %268
  %272 = load i32, i32* %31, align 4
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %277, label %274

274:                                              ; preds = %271
  %275 = load i32, i32* %31, align 4
  %276 = icmp eq i32 %275, 1073676288
  br i1 %276, label %277, label %312

277:                                              ; preds = %274, %271, %268
  %278 = load x86_fp80, x86_fp80* %7, align 16
  store x86_fp80 %278, x86_fp80* %6, align 16
  %279 = load i32, i32* %34, align 4
  %280 = icmp slt i32 %279, 0
  br i1 %280, label %281, label %285

281:                                              ; preds = %277
  %282 = load x86_fp80, x86_fp80* @one, align 16
  %283 = load x86_fp80, x86_fp80* %6, align 16
  %284 = fdiv x86_fp80 %282, %283
  store x86_fp80 %284, x86_fp80* %6, align 16
  br label %285

285:                                              ; preds = %281, %277
  %286 = load i32, i32* %33, align 4
  %287 = icmp slt i32 %286, 0
  br i1 %287, label %288, label %310

288:                                              ; preds = %285
  %289 = load i32, i32* %31, align 4
  %290 = sub nsw i32 %289, 1073676288
  %291 = load i32, i32* %29, align 4
  %292 = or i32 %290, %291
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %302

294:                                              ; preds = %288
  %295 = load x86_fp80, x86_fp80* %6, align 16
  %296 = load x86_fp80, x86_fp80* %6, align 16
  %297 = fsub x86_fp80 %295, %296
  %298 = load x86_fp80, x86_fp80* %6, align 16
  %299 = load x86_fp80, x86_fp80* %6, align 16
  %300 = fsub x86_fp80 %298, %299
  %301 = fdiv x86_fp80 %297, %300
  store x86_fp80 %301, x86_fp80* %6, align 16
  br label %309

302:                                              ; preds = %288
  %303 = load i32, i32* %29, align 4
  %304 = icmp eq i32 %303, 1
  br i1 %304, label %305, label %308

305:                                              ; preds = %302
  %306 = load x86_fp80, x86_fp80* %6, align 16
  %307 = fneg x86_fp80 %306
  store x86_fp80 %307, x86_fp80* %6, align 16
  br label %308

308:                                              ; preds = %305, %302
  br label %309

309:                                              ; preds = %308, %294
  br label %310

310:                                              ; preds = %309, %285
  %311 = load x86_fp80, x86_fp80* %6, align 16
  store x86_fp80 %311, x86_fp80* %3, align 16
  br label %970

312:                                              ; preds = %274
  br label %313

313:                                              ; preds = %312, %253
  %314 = load i32, i32* %33, align 4
  %315 = ashr i32 %314, 31
  %316 = sub nsw i32 %315, 1
  %317 = load i32, i32* %29, align 4
  %318 = or i32 %316, %317
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %320, label %328

320:                                              ; preds = %313
  %321 = load x86_fp80, x86_fp80* %4, align 16
  %322 = load x86_fp80, x86_fp80* %4, align 16
  %323 = fsub x86_fp80 %321, %322
  %324 = load x86_fp80, x86_fp80* %4, align 16
  %325 = load x86_fp80, x86_fp80* %4, align 16
  %326 = fsub x86_fp80 %324, %325
  %327 = fdiv x86_fp80 %323, %326
  store x86_fp80 %327, x86_fp80* %3, align 16
  br label %970

328:                                              ; preds = %313
  %329 = load i32, i32* %32, align 4
  %330 = icmp sgt i32 %329, 1075668299
  br i1 %330, label %331, label %400

331:                                              ; preds = %328
  %332 = load i32, i32* %32, align 4
  %333 = icmp sgt i32 %332, 1081959755
  br i1 %333, label %334, label %367

334:                                              ; preds = %331
  %335 = load i32, i32* %31, align 4
  %336 = icmp sle i32 %335, 1073676287
  br i1 %336, label %337, label %350

337:                                              ; preds = %334
  %338 = load i32, i32* %34, align 4
  %339 = icmp slt i32 %338, 0
  br i1 %339, label %340, label %344

340:                                              ; preds = %337
  %341 = load x86_fp80, x86_fp80* @huge, align 16
  %342 = load x86_fp80, x86_fp80* @huge, align 16
  %343 = fmul x86_fp80 %341, %342
  br label %348

344:                                              ; preds = %337
  %345 = load x86_fp80, x86_fp80* @tiny, align 16
  %346 = load x86_fp80, x86_fp80* @tiny, align 16
  %347 = fmul x86_fp80 %345, %346
  br label %348

348:                                              ; preds = %344, %340
  %349 = phi x86_fp80 [ %343, %340 ], [ %347, %344 ]
  store x86_fp80 %349, x86_fp80* %3, align 16
  br label %970

350:                                              ; preds = %334
  %351 = load i32, i32* %31, align 4
  %352 = icmp sge i32 %351, 1073676288
  br i1 %352, label %353, label %366

353:                                              ; preds = %350
  %354 = load i32, i32* %34, align 4
  %355 = icmp sgt i32 %354, 0
  br i1 %355, label %356, label %360

356:                                              ; preds = %353
  %357 = load x86_fp80, x86_fp80* @huge, align 16
  %358 = load x86_fp80, x86_fp80* @huge, align 16
  %359 = fmul x86_fp80 %357, %358
  br label %364

360:                                              ; preds = %353
  %361 = load x86_fp80, x86_fp80* @tiny, align 16
  %362 = load x86_fp80, x86_fp80* @tiny, align 16
  %363 = fmul x86_fp80 %361, %362
  br label %364

364:                                              ; preds = %360, %356
  %365 = phi x86_fp80 [ %359, %356 ], [ %363, %360 ]
  store x86_fp80 %365, x86_fp80* %3, align 16
  br label %970

366:                                              ; preds = %350
  br label %367

367:                                              ; preds = %366, %331
  %368 = load i32, i32* %31, align 4
  %369 = icmp slt i32 %368, 1073676287
  br i1 %369, label %370, label %383

370:                                              ; preds = %367
  %371 = load i32, i32* %34, align 4
  %372 = icmp slt i32 %371, 0
  br i1 %372, label %373, label %377

373:                                              ; preds = %370
  %374 = load x86_fp80, x86_fp80* @huge, align 16
  %375 = load x86_fp80, x86_fp80* @huge, align 16
  %376 = fmul x86_fp80 %374, %375
  br label %381

377:                                              ; preds = %370
  %378 = load x86_fp80, x86_fp80* @tiny, align 16
  %379 = load x86_fp80, x86_fp80* @tiny, align 16
  %380 = fmul x86_fp80 %378, %379
  br label %381

381:                                              ; preds = %377, %373
  %382 = phi x86_fp80 [ %376, %373 ], [ %380, %377 ]
  store x86_fp80 %382, x86_fp80* %3, align 16
  br label %970

383:                                              ; preds = %367
  %384 = load i32, i32* %31, align 4
  %385 = icmp sgt i32 %384, 1073676288
  br i1 %385, label %386, label %399

386:                                              ; preds = %383
  %387 = load i32, i32* %34, align 4
  %388 = icmp sgt i32 %387, 0
  br i1 %388, label %389, label %393

389:                                              ; preds = %386
  %390 = load x86_fp80, x86_fp80* @huge, align 16
  %391 = load x86_fp80, x86_fp80* @huge, align 16
  %392 = fmul x86_fp80 %390, %391
  br label %397

393:                                              ; preds = %386
  %394 = load x86_fp80, x86_fp80* @tiny, align 16
  %395 = load x86_fp80, x86_fp80* @tiny, align 16
  %396 = fmul x86_fp80 %394, %395
  br label %397

397:                                              ; preds = %393, %389
  %398 = phi x86_fp80 [ %392, %389 ], [ %396, %393 ]
  store x86_fp80 %398, x86_fp80* %3, align 16
  br label %970

399:                                              ; preds = %383
  br label %400

400:                                              ; preds = %399, %328
  store i32 0, i32* %30, align 4
  %401 = load i32, i32* %31, align 4
  %402 = icmp slt i32 %401, 65536
  br i1 %402, label %403, label %414

403:                                              ; preds = %400
  %404 = load x86_fp80, x86_fp80* @two113, align 16
  %405 = load x86_fp80, x86_fp80* %7, align 16
  %406 = fmul x86_fp80 %405, %404
  store x86_fp80 %406, x86_fp80* %7, align 16
  %407 = load i32, i32* %30, align 4
  %408 = sub nsw i32 %407, 113
  store i32 %408, i32* %30, align 4
  %409 = load x86_fp80, x86_fp80* %7, align 16
  %410 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store x86_fp80 %409, x86_fp80* %410, align 16
  %411 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %412 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 16
  store i32 %413, i32* %31, align 4
  br label %414

414:                                              ; preds = %403, %400
  %415 = load i32, i32* %31, align 4
  %416 = ashr i32 %415, 16
  %417 = sub nsw i32 %416, 16383
  %418 = load i32, i32* %30, align 4
  %419 = add nsw i32 %418, %417
  store i32 %419, i32* %30, align 4
  %420 = load i32, i32* %31, align 4
  %421 = and i32 %420, 65535
  store i32 %421, i32* %27, align 4
  %422 = load i32, i32* %27, align 4
  %423 = or i32 %422, 1073676288
  store i32 %423, i32* %31, align 4
  %424 = load i32, i32* %27, align 4
  %425 = icmp sle i32 %424, 14728
  br i1 %425, label %426, label %427

426:                                              ; preds = %414
  store i32 0, i32* %28, align 4
  br label %437

427:                                              ; preds = %414
  %428 = load i32, i32* %27, align 4
  %429 = icmp slt i32 %428, 47975
  br i1 %429, label %430, label %431

430:                                              ; preds = %427
  store i32 1, i32* %28, align 4
  br label %436

431:                                              ; preds = %427
  store i32 0, i32* %28, align 4
  %432 = load i32, i32* %30, align 4
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* %30, align 4
  %434 = load i32, i32* %31, align 4
  %435 = sub nsw i32 %434, 65536
  store i32 %435, i32* %31, align 4
  br label %436

436:                                              ; preds = %431, %430
  br label %437

437:                                              ; preds = %436, %426
  %438 = load x86_fp80, x86_fp80* %7, align 16
  %439 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store x86_fp80 %438, x86_fp80* %439, align 16
  %440 = load i32, i32* %31, align 4
  %441 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %442 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %441, i32 0, i32 0
  store i32 %440, i32* %442, align 16
  %443 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %444 = load x86_fp80, x86_fp80* %443, align 16
  store x86_fp80 %444, x86_fp80* %7, align 16
  %445 = load x86_fp80, x86_fp80* %7, align 16
  %446 = load x86_fp80*, x86_fp80** @bp, align 8
  %447 = load i32, i32* %28, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds x86_fp80, x86_fp80* %446, i64 %448
  %450 = load x86_fp80, x86_fp80* %449, align 16
  %451 = fsub x86_fp80 %445, %450
  store x86_fp80 %451, x86_fp80* %18, align 16
  %452 = load x86_fp80, x86_fp80* @one, align 16
  %453 = load x86_fp80, x86_fp80* %7, align 16
  %454 = load x86_fp80*, x86_fp80** @bp, align 8
  %455 = load i32, i32* %28, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds x86_fp80, x86_fp80* %454, i64 %456
  %458 = load x86_fp80, x86_fp80* %457, align 16
  %459 = fadd x86_fp80 %453, %458
  %460 = fdiv x86_fp80 %452, %459
  store x86_fp80 %460, x86_fp80* %19, align 16
  %461 = load x86_fp80, x86_fp80* %18, align 16
  %462 = load x86_fp80, x86_fp80* %19, align 16
  %463 = fmul x86_fp80 %461, %462
  store x86_fp80 %463, x86_fp80* %16, align 16
  %464 = load x86_fp80, x86_fp80* %16, align 16
  store x86_fp80 %464, x86_fp80* %22, align 16
  %465 = load x86_fp80, x86_fp80* %22, align 16
  %466 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store x86_fp80 %465, x86_fp80* %466, align 16
  %467 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %468 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %467, i32 0, i32 3
  store i32 0, i32* %468, align 4
  %469 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %470 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %469, i32 0, i32 2
  %471 = load i32, i32* %470, align 8
  %472 = and i32 %471, -134217728
  store i32 %472, i32* %470, align 8
  %473 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %474 = load x86_fp80, x86_fp80* %473, align 16
  store x86_fp80 %474, x86_fp80* %22, align 16
  %475 = load x86_fp80, x86_fp80* %7, align 16
  %476 = load x86_fp80*, x86_fp80** @bp, align 8
  %477 = load i32, i32* %28, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds x86_fp80, x86_fp80* %476, i64 %478
  %480 = load x86_fp80, x86_fp80* %479, align 16
  %481 = fadd x86_fp80 %475, %480
  store x86_fp80 %481, x86_fp80* %24, align 16
  %482 = load x86_fp80, x86_fp80* %24, align 16
  %483 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store x86_fp80 %482, x86_fp80* %483, align 16
  %484 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %485 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %484, i32 0, i32 3
  store i32 0, i32* %485, align 4
  %486 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %487 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %486, i32 0, i32 2
  %488 = load i32, i32* %487, align 8
  %489 = and i32 %488, -134217728
  store i32 %489, i32* %487, align 8
  %490 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %491 = load x86_fp80, x86_fp80* %490, align 16
  store x86_fp80 %491, x86_fp80* %24, align 16
  %492 = load x86_fp80, x86_fp80* %7, align 16
  %493 = load x86_fp80, x86_fp80* %24, align 16
  %494 = load x86_fp80*, x86_fp80** @bp, align 8
  %495 = load i32, i32* %28, align 4
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds x86_fp80, x86_fp80* %494, i64 %496
  %498 = load x86_fp80, x86_fp80* %497, align 16
  %499 = fsub x86_fp80 %493, %498
  %500 = fsub x86_fp80 %492, %499
  store x86_fp80 %500, x86_fp80* %25, align 16
  %501 = load x86_fp80, x86_fp80* %19, align 16
  %502 = load x86_fp80, x86_fp80* %18, align 16
  %503 = load x86_fp80, x86_fp80* %22, align 16
  %504 = load x86_fp80, x86_fp80* %24, align 16
  %505 = fmul x86_fp80 %503, %504
  %506 = fsub x86_fp80 %502, %505
  %507 = load x86_fp80, x86_fp80* %22, align 16
  %508 = load x86_fp80, x86_fp80* %25, align 16
  %509 = fmul x86_fp80 %507, %508
  %510 = fsub x86_fp80 %506, %509
  %511 = fmul x86_fp80 %501, %510
  store x86_fp80 %511, x86_fp80* %23, align 16
  %512 = load x86_fp80, x86_fp80* %16, align 16
  %513 = load x86_fp80, x86_fp80* %16, align 16
  %514 = fmul x86_fp80 %512, %513
  store x86_fp80 %514, x86_fp80* %21, align 16
  %515 = load x86_fp80*, x86_fp80** @LN, align 8
  %516 = getelementptr inbounds x86_fp80, x86_fp80* %515, i64 0
  %517 = load x86_fp80, x86_fp80* %516, align 16
  %518 = load x86_fp80, x86_fp80* %21, align 16
  %519 = load x86_fp80*, x86_fp80** @LN, align 8
  %520 = getelementptr inbounds x86_fp80, x86_fp80* %519, i64 1
  %521 = load x86_fp80, x86_fp80* %520, align 16
  %522 = load x86_fp80, x86_fp80* %21, align 16
  %523 = load x86_fp80*, x86_fp80** @LN, align 8
  %524 = getelementptr inbounds x86_fp80, x86_fp80* %523, i64 2
  %525 = load x86_fp80, x86_fp80* %524, align 16
  %526 = load x86_fp80, x86_fp80* %21, align 16
  %527 = load x86_fp80*, x86_fp80** @LN, align 8
  %528 = getelementptr inbounds x86_fp80, x86_fp80* %527, i64 3
  %529 = load x86_fp80, x86_fp80* %528, align 16
  %530 = load x86_fp80, x86_fp80* %21, align 16
  %531 = load x86_fp80*, x86_fp80** @LN, align 8
  %532 = getelementptr inbounds x86_fp80, x86_fp80* %531, i64 4
  %533 = load x86_fp80, x86_fp80* %532, align 16
  %534 = fmul x86_fp80 %530, %533
  %535 = fadd x86_fp80 %529, %534
  %536 = fmul x86_fp80 %526, %535
  %537 = fadd x86_fp80 %525, %536
  %538 = fmul x86_fp80 %522, %537
  %539 = fadd x86_fp80 %521, %538
  %540 = fmul x86_fp80 %518, %539
  %541 = fadd x86_fp80 %517, %540
  store x86_fp80 %541, x86_fp80* %18, align 16
  %542 = load x86_fp80*, x86_fp80** @LD, align 8
  %543 = getelementptr inbounds x86_fp80, x86_fp80* %542, i64 0
  %544 = load x86_fp80, x86_fp80* %543, align 16
  %545 = load x86_fp80, x86_fp80* %21, align 16
  %546 = load x86_fp80*, x86_fp80** @LD, align 8
  %547 = getelementptr inbounds x86_fp80, x86_fp80* %546, i64 1
  %548 = load x86_fp80, x86_fp80* %547, align 16
  %549 = load x86_fp80, x86_fp80* %21, align 16
  %550 = load x86_fp80*, x86_fp80** @LD, align 8
  %551 = getelementptr inbounds x86_fp80, x86_fp80* %550, i64 2
  %552 = load x86_fp80, x86_fp80* %551, align 16
  %553 = load x86_fp80, x86_fp80* %21, align 16
  %554 = load x86_fp80*, x86_fp80** @LD, align 8
  %555 = getelementptr inbounds x86_fp80, x86_fp80* %554, i64 3
  %556 = load x86_fp80, x86_fp80* %555, align 16
  %557 = load x86_fp80, x86_fp80* %21, align 16
  %558 = load x86_fp80*, x86_fp80** @LD, align 8
  %559 = getelementptr inbounds x86_fp80, x86_fp80* %558, i64 4
  %560 = load x86_fp80, x86_fp80* %559, align 16
  %561 = load x86_fp80, x86_fp80* %21, align 16
  %562 = fadd x86_fp80 %560, %561
  %563 = fmul x86_fp80 %557, %562
  %564 = fadd x86_fp80 %556, %563
  %565 = fmul x86_fp80 %553, %564
  %566 = fadd x86_fp80 %552, %565
  %567 = fmul x86_fp80 %549, %566
  %568 = fadd x86_fp80 %548, %567
  %569 = fmul x86_fp80 %545, %568
  %570 = fadd x86_fp80 %544, %569
  store x86_fp80 %570, x86_fp80* %19, align 16
  %571 = load x86_fp80, x86_fp80* %21, align 16
  %572 = load x86_fp80, x86_fp80* %21, align 16
  %573 = fmul x86_fp80 %571, %572
  %574 = load x86_fp80, x86_fp80* %18, align 16
  %575 = fmul x86_fp80 %573, %574
  %576 = load x86_fp80, x86_fp80* %19, align 16
  %577 = fdiv x86_fp80 %575, %576
  store x86_fp80 %577, x86_fp80* %15, align 16
  %578 = load x86_fp80, x86_fp80* %23, align 16
  %579 = load x86_fp80, x86_fp80* %22, align 16
  %580 = load x86_fp80, x86_fp80* %16, align 16
  %581 = fadd x86_fp80 %579, %580
  %582 = fmul x86_fp80 %578, %581
  %583 = load x86_fp80, x86_fp80* %15, align 16
  %584 = fadd x86_fp80 %583, %582
  store x86_fp80 %584, x86_fp80* %15, align 16
  %585 = load x86_fp80, x86_fp80* %22, align 16
  %586 = load x86_fp80, x86_fp80* %22, align 16
  %587 = fmul x86_fp80 %585, %586
  store x86_fp80 %587, x86_fp80* %21, align 16
  %588 = load x86_fp80, x86_fp80* %21, align 16
  %589 = fadd x86_fp80 0xK4000C000000000000000, %588
  %590 = load x86_fp80, x86_fp80* %15, align 16
  %591 = fadd x86_fp80 %589, %590
  store x86_fp80 %591, x86_fp80* %24, align 16
  %592 = load x86_fp80, x86_fp80* %24, align 16
  %593 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store x86_fp80 %592, x86_fp80* %593, align 16
  %594 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %595 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %594, i32 0, i32 3
  store i32 0, i32* %595, align 4
  %596 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %597 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %596, i32 0, i32 2
  %598 = load i32, i32* %597, align 8
  %599 = and i32 %598, -134217728
  store i32 %599, i32* %597, align 8
  %600 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %601 = load x86_fp80, x86_fp80* %600, align 16
  store x86_fp80 %601, x86_fp80* %24, align 16
  %602 = load x86_fp80, x86_fp80* %15, align 16
  %603 = load x86_fp80, x86_fp80* %24, align 16
  %604 = fsub x86_fp80 %603, 0xK4000C000000000000000
  %605 = load x86_fp80, x86_fp80* %21, align 16
  %606 = fsub x86_fp80 %604, %605
  %607 = fsub x86_fp80 %602, %606
  store x86_fp80 %607, x86_fp80* %25, align 16
  %608 = load x86_fp80, x86_fp80* %22, align 16
  %609 = load x86_fp80, x86_fp80* %24, align 16
  %610 = fmul x86_fp80 %608, %609
  store x86_fp80 %610, x86_fp80* %18, align 16
  %611 = load x86_fp80, x86_fp80* %23, align 16
  %612 = load x86_fp80, x86_fp80* %24, align 16
  %613 = fmul x86_fp80 %611, %612
  %614 = load x86_fp80, x86_fp80* %25, align 16
  %615 = load x86_fp80, x86_fp80* %16, align 16
  %616 = fmul x86_fp80 %614, %615
  %617 = fadd x86_fp80 %613, %616
  store x86_fp80 %617, x86_fp80* %19, align 16
  %618 = load x86_fp80, x86_fp80* %18, align 16
  %619 = load x86_fp80, x86_fp80* %19, align 16
  %620 = fadd x86_fp80 %618, %619
  store x86_fp80 %620, x86_fp80* %10, align 16
  %621 = load x86_fp80, x86_fp80* %10, align 16
  %622 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store x86_fp80 %621, x86_fp80* %622, align 16
  %623 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %624 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %623, i32 0, i32 3
  store i32 0, i32* %624, align 4
  %625 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %626 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %625, i32 0, i32 2
  %627 = load i32, i32* %626, align 8
  %628 = and i32 %627, -134217728
  store i32 %628, i32* %626, align 8
  %629 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %630 = load x86_fp80, x86_fp80* %629, align 16
  store x86_fp80 %630, x86_fp80* %10, align 16
  %631 = load x86_fp80, x86_fp80* %19, align 16
  %632 = load x86_fp80, x86_fp80* %10, align 16
  %633 = load x86_fp80, x86_fp80* %18, align 16
  %634 = fsub x86_fp80 %632, %633
  %635 = fsub x86_fp80 %631, %634
  store x86_fp80 %635, x86_fp80* %11, align 16
  %636 = load x86_fp80, x86_fp80* @cp_h, align 16
  %637 = load x86_fp80, x86_fp80* %10, align 16
  %638 = fmul x86_fp80 %636, %637
  store x86_fp80 %638, x86_fp80* %8, align 16
  %639 = load x86_fp80, x86_fp80* @cp_l, align 16
  %640 = load x86_fp80, x86_fp80* %10, align 16
  %641 = fmul x86_fp80 %639, %640
  %642 = load x86_fp80, x86_fp80* %11, align 16
  %643 = load x86_fp80, x86_fp80* @cp, align 16
  %644 = fmul x86_fp80 %642, %643
  %645 = fadd x86_fp80 %641, %644
  %646 = load x86_fp80*, x86_fp80** @dp_l, align 8
  %647 = load i32, i32* %28, align 4
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds x86_fp80, x86_fp80* %646, i64 %648
  %650 = load x86_fp80, x86_fp80* %649, align 16
  %651 = fadd x86_fp80 %645, %650
  store x86_fp80 %651, x86_fp80* %9, align 16
  %652 = load i32, i32* %30, align 4
  %653 = sitofp i32 %652 to x86_fp80
  store x86_fp80 %653, x86_fp80* %17, align 16
  %654 = load x86_fp80, x86_fp80* %8, align 16
  %655 = load x86_fp80, x86_fp80* %9, align 16
  %656 = fadd x86_fp80 %654, %655
  %657 = load x86_fp80*, x86_fp80** @dp_h, align 8
  %658 = load i32, i32* %28, align 4
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds x86_fp80, x86_fp80* %657, i64 %659
  %661 = load x86_fp80, x86_fp80* %660, align 16
  %662 = fadd x86_fp80 %656, %661
  %663 = load x86_fp80, x86_fp80* %17, align 16
  %664 = fadd x86_fp80 %662, %663
  store x86_fp80 %664, x86_fp80* %13, align 16
  %665 = load x86_fp80, x86_fp80* %13, align 16
  %666 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store x86_fp80 %665, x86_fp80* %666, align 16
  %667 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %668 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %667, i32 0, i32 3
  store i32 0, i32* %668, align 4
  %669 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %670 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %669, i32 0, i32 2
  %671 = load i32, i32* %670, align 8
  %672 = and i32 %671, -134217728
  store i32 %672, i32* %670, align 8
  %673 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %674 = load x86_fp80, x86_fp80* %673, align 16
  store x86_fp80 %674, x86_fp80* %13, align 16
  %675 = load x86_fp80, x86_fp80* %9, align 16
  %676 = load x86_fp80, x86_fp80* %13, align 16
  %677 = load x86_fp80, x86_fp80* %17, align 16
  %678 = fsub x86_fp80 %676, %677
  %679 = load x86_fp80*, x86_fp80** @dp_h, align 8
  %680 = load i32, i32* %28, align 4
  %681 = sext i32 %680 to i64
  %682 = getelementptr inbounds x86_fp80, x86_fp80* %679, i64 %681
  %683 = load x86_fp80, x86_fp80* %682, align 16
  %684 = fsub x86_fp80 %678, %683
  %685 = load x86_fp80, x86_fp80* %8, align 16
  %686 = fsub x86_fp80 %684, %685
  %687 = fsub x86_fp80 %675, %686
  store x86_fp80 %687, x86_fp80* %14, align 16
  %688 = load x86_fp80, x86_fp80* @one, align 16
  store x86_fp80 %688, x86_fp80* %16, align 16
  %689 = load i32, i32* %33, align 4
  %690 = ashr i32 %689, 31
  %691 = sub nsw i32 %690, 1
  %692 = load i32, i32* %29, align 4
  %693 = sub nsw i32 %692, 1
  %694 = or i32 %691, %693
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %696, label %699

696:                                              ; preds = %437
  %697 = load x86_fp80, x86_fp80* @one, align 16
  %698 = fneg x86_fp80 %697
  store x86_fp80 %698, x86_fp80* %16, align 16
  br label %699

699:                                              ; preds = %696, %437
  %700 = load x86_fp80, x86_fp80* %5, align 16
  store x86_fp80 %700, x86_fp80* %12, align 16
  %701 = load x86_fp80, x86_fp80* %12, align 16
  %702 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store x86_fp80 %701, x86_fp80* %702, align 16
  %703 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %704 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %703, i32 0, i32 3
  store i32 0, i32* %704, align 4
  %705 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %706 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %705, i32 0, i32 2
  %707 = load i32, i32* %706, align 8
  %708 = and i32 %707, -134217728
  store i32 %708, i32* %706, align 8
  %709 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %710 = load x86_fp80, x86_fp80* %709, align 16
  store x86_fp80 %710, x86_fp80* %12, align 16
  %711 = load x86_fp80, x86_fp80* %5, align 16
  %712 = load x86_fp80, x86_fp80* %12, align 16
  %713 = fsub x86_fp80 %711, %712
  %714 = load x86_fp80, x86_fp80* %13, align 16
  %715 = fmul x86_fp80 %713, %714
  %716 = load x86_fp80, x86_fp80* %5, align 16
  %717 = load x86_fp80, x86_fp80* %14, align 16
  %718 = fmul x86_fp80 %716, %717
  %719 = fadd x86_fp80 %715, %718
  store x86_fp80 %719, x86_fp80* %11, align 16
  %720 = load x86_fp80, x86_fp80* %12, align 16
  %721 = load x86_fp80, x86_fp80* %13, align 16
  %722 = fmul x86_fp80 %720, %721
  store x86_fp80 %722, x86_fp80* %10, align 16
  %723 = load x86_fp80, x86_fp80* %11, align 16
  %724 = load x86_fp80, x86_fp80* %10, align 16
  %725 = fadd x86_fp80 %723, %724
  store x86_fp80 %725, x86_fp80* %6, align 16
  %726 = load x86_fp80, x86_fp80* %6, align 16
  %727 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store x86_fp80 %726, x86_fp80* %727, align 16
  %728 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %729 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %728, i32 0, i32 0
  %730 = load i32, i32* %729, align 16
  store i32 %730, i32* %27, align 4
  %731 = load i32, i32* %27, align 4
  %732 = icmp sge i32 %731, 1074593792
  br i1 %732, label %733, label %771

733:                                              ; preds = %699
  %734 = load i32, i32* %27, align 4
  %735 = sub nsw i32 %734, 1074593792
  %736 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %737 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %736, i32 0, i32 1
  %738 = load i32, i32* %737, align 4
  %739 = or i32 %735, %738
  %740 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %741 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %740, i32 0, i32 2
  %742 = load i32, i32* %741, align 8
  %743 = or i32 %739, %742
  %744 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %745 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %744, i32 0, i32 3
  %746 = load i32, i32* %745, align 4
  %747 = or i32 %743, %746
  %748 = icmp ne i32 %747, 0
  br i1 %748, label %749, label %755

749:                                              ; preds = %733
  %750 = load x86_fp80, x86_fp80* %16, align 16
  %751 = load x86_fp80, x86_fp80* @huge, align 16
  %752 = fmul x86_fp80 %750, %751
  %753 = load x86_fp80, x86_fp80* @huge, align 16
  %754 = fmul x86_fp80 %752, %753
  store x86_fp80 %754, x86_fp80* %3, align 16
  br label %970

755:                                              ; preds = %733
  %756 = load x86_fp80, x86_fp80* %11, align 16
  %757 = load x86_fp80, x86_fp80* @ovt, align 16
  %758 = fadd x86_fp80 %756, %757
  %759 = load x86_fp80, x86_fp80* %6, align 16
  %760 = load x86_fp80, x86_fp80* %10, align 16
  %761 = fsub x86_fp80 %759, %760
  %762 = fcmp ogt x86_fp80 %758, %761
  br i1 %762, label %763, label %769

763:                                              ; preds = %755
  %764 = load x86_fp80, x86_fp80* %16, align 16
  %765 = load x86_fp80, x86_fp80* @huge, align 16
  %766 = fmul x86_fp80 %764, %765
  %767 = load x86_fp80, x86_fp80* @huge, align 16
  %768 = fmul x86_fp80 %766, %767
  store x86_fp80 %768, x86_fp80* %3, align 16
  br label %970

769:                                              ; preds = %755
  br label %770

770:                                              ; preds = %769
  br label %812

771:                                              ; preds = %699
  %772 = load i32, i32* %27, align 4
  %773 = and i32 %772, 2147483647
  %774 = icmp sge i32 %773, 1074594233
  br i1 %774, label %775, label %811

775:                                              ; preds = %771
  %776 = load i32, i32* %27, align 4
  %777 = sub i32 %776, -1072889412
  %778 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %779 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %778, i32 0, i32 1
  %780 = load i32, i32* %779, align 4
  %781 = or i32 %777, %780
  %782 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %783 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %782, i32 0, i32 2
  %784 = load i32, i32* %783, align 8
  %785 = or i32 %781, %784
  %786 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %787 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %786, i32 0, i32 3
  %788 = load i32, i32* %787, align 4
  %789 = or i32 %785, %788
  %790 = icmp ne i32 %789, 0
  br i1 %790, label %791, label %797

791:                                              ; preds = %775
  %792 = load x86_fp80, x86_fp80* %16, align 16
  %793 = load x86_fp80, x86_fp80* @tiny, align 16
  %794 = fmul x86_fp80 %792, %793
  %795 = load x86_fp80, x86_fp80* @tiny, align 16
  %796 = fmul x86_fp80 %794, %795
  store x86_fp80 %796, x86_fp80* %3, align 16
  br label %970

797:                                              ; preds = %775
  %798 = load x86_fp80, x86_fp80* %11, align 16
  %799 = load x86_fp80, x86_fp80* %6, align 16
  %800 = load x86_fp80, x86_fp80* %10, align 16
  %801 = fsub x86_fp80 %799, %800
  %802 = fcmp ole x86_fp80 %798, %801
  br i1 %802, label %803, label %809

803:                                              ; preds = %797
  %804 = load x86_fp80, x86_fp80* %16, align 16
  %805 = load x86_fp80, x86_fp80* @tiny, align 16
  %806 = fmul x86_fp80 %804, %805
  %807 = load x86_fp80, x86_fp80* @tiny, align 16
  %808 = fmul x86_fp80 %806, %807
  store x86_fp80 %808, x86_fp80* %3, align 16
  br label %970

809:                                              ; preds = %797
  br label %810

810:                                              ; preds = %809
  br label %811

811:                                              ; preds = %810, %771
  br label %812

812:                                              ; preds = %811, %770
  %813 = load i32, i32* %27, align 4
  %814 = and i32 %813, 2147483647
  store i32 %814, i32* %26, align 4
  %815 = load i32, i32* %26, align 4
  %816 = ashr i32 %815, 16
  %817 = sub nsw i32 %816, 16383
  store i32 %817, i32* %28, align 4
  store i32 0, i32* %30, align 4
  %818 = load i32, i32* %26, align 4
  %819 = icmp sgt i32 %818, 1073610752
  br i1 %819, label %820, label %830

820:                                              ; preds = %812
  %821 = load x86_fp80, x86_fp80* %6, align 16
  %822 = fadd x86_fp80 %821, 0xK3FFE8000000000000000
  %823 = call x86_fp80 @llvm.floor.f80(x86_fp80 %822)
  %824 = fptosi x86_fp80 %823 to i32
  store i32 %824, i32* %30, align 4
  %825 = load i32, i32* %30, align 4
  %826 = sitofp i32 %825 to x86_fp80
  store x86_fp80 %826, x86_fp80* %17, align 16
  %827 = load x86_fp80, x86_fp80* %17, align 16
  %828 = load x86_fp80, x86_fp80* %10, align 16
  %829 = fsub x86_fp80 %828, %827
  store x86_fp80 %829, x86_fp80* %10, align 16
  br label %830

830:                                              ; preds = %820, %812
  %831 = load x86_fp80, x86_fp80* %11, align 16
  %832 = load x86_fp80, x86_fp80* %10, align 16
  %833 = fadd x86_fp80 %831, %832
  store x86_fp80 %833, x86_fp80* %17, align 16
  %834 = load x86_fp80, x86_fp80* %17, align 16
  %835 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store x86_fp80 %834, x86_fp80* %835, align 16
  %836 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %837 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %836, i32 0, i32 3
  store i32 0, i32* %837, align 4
  %838 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %839 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %838, i32 0, i32 2
  %840 = load i32, i32* %839, align 8
  %841 = and i32 %840, -134217728
  store i32 %841, i32* %839, align 8
  %842 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %843 = load x86_fp80, x86_fp80* %842, align 16
  store x86_fp80 %843, x86_fp80* %17, align 16
  %844 = load x86_fp80, x86_fp80* %17, align 16
  %845 = load x86_fp80, x86_fp80* @lg2_h, align 16
  %846 = fmul x86_fp80 %844, %845
  store x86_fp80 %846, x86_fp80* %18, align 16
  %847 = load x86_fp80, x86_fp80* %11, align 16
  %848 = load x86_fp80, x86_fp80* %17, align 16
  %849 = load x86_fp80, x86_fp80* %10, align 16
  %850 = fsub x86_fp80 %848, %849
  %851 = fsub x86_fp80 %847, %850
  %852 = load x86_fp80, x86_fp80* @lg2, align 16
  %853 = fmul x86_fp80 %851, %852
  %854 = load x86_fp80, x86_fp80* %17, align 16
  %855 = load x86_fp80, x86_fp80* @lg2_l, align 16
  %856 = fmul x86_fp80 %854, %855
  %857 = fadd x86_fp80 %853, %856
  store x86_fp80 %857, x86_fp80* %19, align 16
  %858 = load x86_fp80, x86_fp80* %18, align 16
  %859 = load x86_fp80, x86_fp80* %19, align 16
  %860 = fadd x86_fp80 %858, %859
  store x86_fp80 %860, x86_fp80* %6, align 16
  %861 = load x86_fp80, x86_fp80* %19, align 16
  %862 = load x86_fp80, x86_fp80* %6, align 16
  %863 = load x86_fp80, x86_fp80* %18, align 16
  %864 = fsub x86_fp80 %862, %863
  %865 = fsub x86_fp80 %861, %864
  store x86_fp80 %865, x86_fp80* %20, align 16
  %866 = load x86_fp80, x86_fp80* %6, align 16
  %867 = load x86_fp80, x86_fp80* %6, align 16
  %868 = fmul x86_fp80 %866, %867
  store x86_fp80 %868, x86_fp80* %17, align 16
  %869 = load x86_fp80*, x86_fp80** @PN, align 8
  %870 = getelementptr inbounds x86_fp80, x86_fp80* %869, i64 0
  %871 = load x86_fp80, x86_fp80* %870, align 16
  %872 = load x86_fp80, x86_fp80* %17, align 16
  %873 = load x86_fp80*, x86_fp80** @PN, align 8
  %874 = getelementptr inbounds x86_fp80, x86_fp80* %873, i64 1
  %875 = load x86_fp80, x86_fp80* %874, align 16
  %876 = load x86_fp80, x86_fp80* %17, align 16
  %877 = load x86_fp80*, x86_fp80** @PN, align 8
  %878 = getelementptr inbounds x86_fp80, x86_fp80* %877, i64 2
  %879 = load x86_fp80, x86_fp80* %878, align 16
  %880 = load x86_fp80, x86_fp80* %17, align 16
  %881 = load x86_fp80*, x86_fp80** @PN, align 8
  %882 = getelementptr inbounds x86_fp80, x86_fp80* %881, i64 3
  %883 = load x86_fp80, x86_fp80* %882, align 16
  %884 = load x86_fp80, x86_fp80* %17, align 16
  %885 = load x86_fp80*, x86_fp80** @PN, align 8
  %886 = getelementptr inbounds x86_fp80, x86_fp80* %885, i64 4
  %887 = load x86_fp80, x86_fp80* %886, align 16
  %888 = fmul x86_fp80 %884, %887
  %889 = fadd x86_fp80 %883, %888
  %890 = fmul x86_fp80 %880, %889
  %891 = fadd x86_fp80 %879, %890
  %892 = fmul x86_fp80 %876, %891
  %893 = fadd x86_fp80 %875, %892
  %894 = fmul x86_fp80 %872, %893
  %895 = fadd x86_fp80 %871, %894
  store x86_fp80 %895, x86_fp80* %18, align 16
  %896 = load x86_fp80*, x86_fp80** @PD, align 8
  %897 = getelementptr inbounds x86_fp80, x86_fp80* %896, i64 0
  %898 = load x86_fp80, x86_fp80* %897, align 16
  %899 = load x86_fp80, x86_fp80* %17, align 16
  %900 = load x86_fp80*, x86_fp80** @PD, align 8
  %901 = getelementptr inbounds x86_fp80, x86_fp80* %900, i64 1
  %902 = load x86_fp80, x86_fp80* %901, align 16
  %903 = load x86_fp80, x86_fp80* %17, align 16
  %904 = load x86_fp80*, x86_fp80** @PD, align 8
  %905 = getelementptr inbounds x86_fp80, x86_fp80* %904, i64 2
  %906 = load x86_fp80, x86_fp80* %905, align 16
  %907 = load x86_fp80, x86_fp80* %17, align 16
  %908 = load x86_fp80*, x86_fp80** @PD, align 8
  %909 = getelementptr inbounds x86_fp80, x86_fp80* %908, i64 3
  %910 = load x86_fp80, x86_fp80* %909, align 16
  %911 = load x86_fp80, x86_fp80* %17, align 16
  %912 = fadd x86_fp80 %910, %911
  %913 = fmul x86_fp80 %907, %912
  %914 = fadd x86_fp80 %906, %913
  %915 = fmul x86_fp80 %903, %914
  %916 = fadd x86_fp80 %902, %915
  %917 = fmul x86_fp80 %899, %916
  %918 = fadd x86_fp80 %898, %917
  store x86_fp80 %918, x86_fp80* %19, align 16
  %919 = load x86_fp80, x86_fp80* %6, align 16
  %920 = load x86_fp80, x86_fp80* %17, align 16
  %921 = load x86_fp80, x86_fp80* %18, align 16
  %922 = fmul x86_fp80 %920, %921
  %923 = load x86_fp80, x86_fp80* %19, align 16
  %924 = fdiv x86_fp80 %922, %923
  %925 = fsub x86_fp80 %919, %924
  store x86_fp80 %925, x86_fp80* %13, align 16
  %926 = load x86_fp80, x86_fp80* %6, align 16
  %927 = load x86_fp80, x86_fp80* %13, align 16
  %928 = fmul x86_fp80 %926, %927
  %929 = load x86_fp80, x86_fp80* %13, align 16
  %930 = load x86_fp80, x86_fp80* @two, align 16
  %931 = fsub x86_fp80 %929, %930
  %932 = fdiv x86_fp80 %928, %931
  %933 = load x86_fp80, x86_fp80* %20, align 16
  %934 = load x86_fp80, x86_fp80* %6, align 16
  %935 = load x86_fp80, x86_fp80* %20, align 16
  %936 = fmul x86_fp80 %934, %935
  %937 = fadd x86_fp80 %933, %936
  %938 = fsub x86_fp80 %932, %937
  store x86_fp80 %938, x86_fp80* %15, align 16
  %939 = load x86_fp80, x86_fp80* @one, align 16
  %940 = load x86_fp80, x86_fp80* %15, align 16
  %941 = load x86_fp80, x86_fp80* %6, align 16
  %942 = fsub x86_fp80 %940, %941
  %943 = fsub x86_fp80 %939, %942
  store x86_fp80 %943, x86_fp80* %6, align 16
  %944 = load x86_fp80, x86_fp80* %6, align 16
  %945 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store x86_fp80 %944, x86_fp80* %945, align 16
  %946 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %947 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %946, i32 0, i32 0
  %948 = load i32, i32* %947, align 16
  store i32 %948, i32* %27, align 4
  %949 = load i32, i32* %30, align 4
  %950 = shl i32 %949, 16
  %951 = load i32, i32* %27, align 4
  %952 = add nsw i32 %951, %950
  store i32 %952, i32* %27, align 4
  %953 = load i32, i32* %27, align 4
  %954 = ashr i32 %953, 16
  %955 = icmp sle i32 %954, 0
  br i1 %955, label %956, label %960

956:                                              ; preds = %830
  %957 = load x86_fp80, x86_fp80* %6, align 16
  %958 = load i32, i32* %30, align 4
  %959 = call x86_fp80 @scalbnl(x86_fp80 %957, i32 %958) #4
  store x86_fp80 %959, x86_fp80* %6, align 16
  br label %966

960:                                              ; preds = %830
  %961 = load i32, i32* %27, align 4
  %962 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %963 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %962, i32 0, i32 0
  store i32 %961, i32* %963, align 16
  %964 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %965 = load x86_fp80, x86_fp80* %964, align 16
  store x86_fp80 %965, x86_fp80* %6, align 16
  br label %966

966:                                              ; preds = %960, %956
  %967 = load x86_fp80, x86_fp80* %16, align 16
  %968 = load x86_fp80, x86_fp80* %6, align 16
  %969 = fmul x86_fp80 %967, %968
  store x86_fp80 %969, x86_fp80* %3, align 16
  br label %970

970:                                              ; preds = %966, %803, %791, %763, %749, %397, %381, %364, %348, %320, %310, %248, %238, %233, %229, %221, %211, %197, %133, %93, %72, %66
  %971 = load x86_fp80, x86_fp80* %3, align 16
  ret x86_fp80 %971
}

declare dso_local x86_fp80 @nan_mix(x86_fp80, x86_fp80) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare x86_fp80 @llvm.floor.f80(x86_fp80) #2

; Function Attrs: nounwind
declare dso_local x86_fp80 @sqrtl(x86_fp80) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #2

; Function Attrs: nounwind
declare dso_local x86_fp80 @scalbnl(x86_fp80, i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
