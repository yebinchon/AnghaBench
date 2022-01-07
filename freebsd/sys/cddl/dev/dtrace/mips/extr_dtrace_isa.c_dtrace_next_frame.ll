; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/mips/extr_dtrace_isa.c_dtrace_next_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/mips/extr_dtrace_isa.c_dtrace_next_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*)* @dtrace_next_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_next_frame(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_8__, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %17, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %4
  store i32 0, i32* %19, align 4
  br label %24

24:                                               ; preds = %32, %23
  %25 = load i32, i32* %19, align 4
  %26 = icmp slt i32 %25, 8
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %19, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %19, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %19, align 4
  br label %24

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35, %4
  store i32 0, i32* %16, align 4
  %37 = load i32, i32* %14, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %14, align 4
  %39 = icmp ugt i32 %37, 100
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %295

41:                                               ; preds = %36
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @MIPS_IS_VALID_KERNELADDR(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  br label %295

47:                                               ; preds = %41
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @MIPS_IS_VALID_KERNELADDR(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %295

53:                                               ; preds = %47
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = sub i64 %56, 4
  store i64 %57, i64* %11, align 8
  br label %58

58:                                               ; preds = %53, %77
  %59 = load i64, i64* %11, align 8
  %60 = inttoptr i64 %59 to i32*
  %61 = call i8* @kdbpeek(i32* %60)
  %62 = ptrtoint i8* %61 to i32
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = and i32 %63, -32768
  %65 = icmp eq i32 %64, 666730496
  br i1 %65, label %70, label %66

66:                                               ; preds = %58
  %67 = load i32, i32* %12, align 4
  %68 = and i32 %67, -32768
  %69 = icmp eq i32 %68, 1740472320
  br i1 %69, label %70, label %71

70:                                               ; preds = %66, %58
  br label %80

71:                                               ; preds = %66
  %72 = load i32, i32* %12, align 4
  %73 = icmp eq i32 %72, 65011720
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i64, i64* %11, align 8
  %76 = add i64 %75, 8
  store i64 %76, i64* %11, align 8
  br label %80

77:                                               ; preds = %71
  %78 = load i64, i64* %11, align 8
  %79 = sub i64 %78, 4
  store i64 %79, i64* %11, align 8
  br label %58

80:                                               ; preds = %74, %70
  br label %81

81:                                               ; preds = %87, %80
  %82 = load i64, i64* %11, align 8
  %83 = inttoptr i64 %82 to i32*
  %84 = call i8* @kdbpeek(i32* %83)
  %85 = ptrtoint i8* %84 to i32
  store i32 %85, i32* %12, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i64, i64* %11, align 8
  %89 = add i64 %88, 4
  store i64 %89, i64* %11, align 8
  br label %81

90:                                               ; preds = %81
  store i32 0, i32* %16, align 4
  store i32 3, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %91

91:                                               ; preds = %281, %90
  %92 = load i32, i32* %15, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %283

94:                                               ; preds = %91
  %95 = load i64, i64* %11, align 8
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = icmp uge i64 %95, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %283

101:                                              ; preds = %94
  %102 = load i64, i64* %11, align 8
  %103 = inttoptr i64 %102 to i32*
  %104 = call i8* @kdbpeek(i32* %103)
  %105 = ptrtoint i8* %104 to i32
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i32 %106, i32* %107, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  switch i32 %110, label %271 [
    i32 130, label %111
    i32 149, label %118
    i32 135, label %118
    i32 134, label %118
    i32 146, label %118
    i32 143, label %118
    i32 144, label %118
    i32 145, label %118
    i32 141, label %119
    i32 140, label %119
    i32 139, label %119
    i32 138, label %119
    i32 129, label %125
    i32 131, label %190
    i32 151, label %253
    i32 150, label %253
    i32 137, label %253
    i32 136, label %253
  ]

111:                                              ; preds = %101
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  switch i32 %114, label %117 [
    i32 132, label %115
    i32 133, label %115
    i32 128, label %116
    i32 142, label %116
  ]

115:                                              ; preds = %111, %111
  store i32 2, i32* %15, align 4
  br label %117

116:                                              ; preds = %111, %111
  store i32 1, i32* %15, align 4
  br label %117

117:                                              ; preds = %116, %111, %115
  br label %271

118:                                              ; preds = %101, %101, %101, %101, %101, %101, %101
  store i32 2, i32* %15, align 4
  br label %271

119:                                              ; preds = %101, %101, %101, %101
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  switch i32 %122, label %124 [
    i32 148, label %123
    i32 147, label %123
  ]

123:                                              ; preds = %119, %119
  store i32 2, i32* %15, align 4
  br label %124

124:                                              ; preds = %123, %119
  br label %271

125:                                              ; preds = %101
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 29
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  br label %271

131:                                              ; preds = %125
  %132 = load i32, i32* %13, align 4
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = shl i32 1, %135
  %137 = and i32 %132, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %131
  br label %271

140:                                              ; preds = %131
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = shl i32 1, %143
  %145 = load i32, i32* %13, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %13, align 4
  %147 = load i32*, i32** %7, align 8
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = trunc i64 %151 to i16
  %153 = sext i16 %152 to i32
  %154 = add nsw i32 %148, %153
  %155 = sext i32 %154 to i64
  store i64 %155, i64* %20, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  switch i32 %158, label %189 [
    i32 4, label %159
    i32 5, label %159
    i32 6, label %159
    i32 7, label %159
    i32 31, label %184
  ]

159:                                              ; preds = %140, %140, %140, %140
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = sub nsw i32 %162, 4
  store i32 %163, i32* %18, align 4
  %164 = load i32*, i32** %8, align 8
  %165 = icmp ne i32* %164, null
  br i1 %165, label %166, label %175

166:                                              ; preds = %159
  %167 = load i64, i64* %20, align 8
  %168 = inttoptr i64 %167 to i32*
  %169 = call i8* @kdbpeek(i32* %168)
  %170 = ptrtoint i8* %169 to i32
  %171 = load i32*, i32** %8, align 8
  %172 = load i32, i32* %18, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  store i32 %170, i32* %174, align 4
  br label %175

175:                                              ; preds = %166, %159
  %176 = load i32*, i32** %9, align 8
  %177 = icmp ne i32* %176, null
  br i1 %177, label %178, label %183

178:                                              ; preds = %175
  %179 = load i32*, i32** %9, align 8
  %180 = load i32, i32* %18, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  store i32 1, i32* %182, align 4
  br label %183

183:                                              ; preds = %178, %175
  br label %189

184:                                              ; preds = %140
  %185 = load i64, i64* %20, align 8
  %186 = inttoptr i64 %185 to i32*
  %187 = call i8* @kdbpeek(i32* %186)
  %188 = ptrtoint i8* %187 to i32
  store i32 %188, i32* %17, align 4
  br label %189

189:                                              ; preds = %184, %140, %183
  br label %271

190:                                              ; preds = %101
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp ne i32 %193, 29
  br i1 %194, label %195, label %196

195:                                              ; preds = %190
  br label %271

196:                                              ; preds = %190
  %197 = load i32, i32* %13, align 4
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = shl i32 1, %200
  %202 = and i32 %197, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %196
  br label %271

205:                                              ; preds = %196
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = shl i32 1, %208
  %210 = load i32, i32* %13, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %13, align 4
  %212 = load i32*, i32** %7, align 8
  %213 = load i32, i32* %212, align 4
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = trunc i64 %216 to i16
  %218 = sext i16 %217 to i32
  %219 = add nsw i32 %213, %218
  %220 = sext i32 %219 to i64
  store i64 %220, i64* %20, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  switch i32 %223, label %252 [
    i32 4, label %224
    i32 5, label %224
    i32 6, label %224
    i32 7, label %224
    i32 31, label %248
  ]

224:                                              ; preds = %205, %205, %205, %205
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = sub nsw i32 %227, 4
  store i32 %228, i32* %18, align 4
  %229 = load i32*, i32** %8, align 8
  %230 = icmp ne i32* %229, null
  br i1 %230, label %231, label %239

231:                                              ; preds = %224
  %232 = load i64, i64* %20, align 8
  %233 = inttoptr i64 %232 to i32*
  %234 = call i32 @kdbpeekd(i32* %233)
  %235 = load i32*, i32** %8, align 8
  %236 = load i32, i32* %18, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  store i32 %234, i32* %238, align 4
  br label %239

239:                                              ; preds = %231, %224
  %240 = load i32*, i32** %9, align 8
  %241 = icmp ne i32* %240, null
  br i1 %241, label %242, label %247

242:                                              ; preds = %239
  %243 = load i32*, i32** %9, align 8
  %244 = load i32, i32* %18, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  store i32 1, i32* %246, align 4
  br label %247

247:                                              ; preds = %242, %239
  br label %252

248:                                              ; preds = %205
  %249 = load i64, i64* %20, align 8
  %250 = inttoptr i64 %249 to i32*
  %251 = call i32 @kdbpeekd(i32* %250)
  store i32 %251, i32* %17, align 4
  br label %252

252:                                              ; preds = %248, %205, %247
  br label %271

253:                                              ; preds = %101, %101, %101, %101
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = icmp ne i32 %256, 29
  br i1 %257, label %263, label %258

258:                                              ; preds = %253
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = icmp ne i32 %261, 29
  br i1 %262, label %263, label %264

263:                                              ; preds = %258, %253
  br label %271

264:                                              ; preds = %258
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 2
  %267 = load i64, i64* %266, align 8
  %268 = trunc i64 %267 to i16
  %269 = sext i16 %268 to i32
  %270 = sub nsw i32 0, %269
  store i32 %270, i32* %16, align 4
  br label %271

271:                                              ; preds = %264, %101, %263, %252, %204, %195, %189, %139, %130, %124, %118, %117
  br label %272

272:                                              ; preds = %271
  %273 = load i64, i64* %11, align 8
  %274 = add i64 %273, 4
  store i64 %274, i64* %11, align 8
  %275 = load i32, i32* %15, align 4
  %276 = icmp eq i32 %275, 3
  br i1 %276, label %277, label %278

277:                                              ; preds = %272
  br label %281

278:                                              ; preds = %272
  %279 = load i32, i32* %15, align 4
  %280 = sub nsw i32 %279, 1
  br label %281

281:                                              ; preds = %278, %277
  %282 = phi i32 [ 3, %277 ], [ %280, %278 ]
  store i32 %282, i32* %15, align 4
  br label %91

283:                                              ; preds = %100, %91
  %284 = load i32, i32* %17, align 4
  %285 = call i32 @MIPS_IS_VALID_KERNELADDR(i32 %284)
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %288, label %287

287:                                              ; preds = %283
  store i32 -1, i32* %5, align 4
  br label %296

288:                                              ; preds = %283
  %289 = load i32, i32* %17, align 4
  %290 = load i32*, i32** %6, align 8
  store i32 %289, i32* %290, align 4
  %291 = load i32, i32* %16, align 4
  %292 = load i32*, i32** %7, align 8
  %293 = load i32, i32* %292, align 4
  %294 = add nsw i32 %293, %291
  store i32 %294, i32* %292, align 4
  store i32 0, i32* %5, align 4
  br label %296

295:                                              ; preds = %52, %46, %40
  store i32 -1, i32* %5, align 4
  br label %296

296:                                              ; preds = %295, %288, %287
  %297 = load i32, i32* %5, align 4
  ret i32 %297
}

declare dso_local i32 @MIPS_IS_VALID_KERNELADDR(i32) #1

declare dso_local i8* @kdbpeek(i32*) #1

declare dso_local i32 @kdbpeekd(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
