; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_hypotl.c_hypotl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_hypotl.c_hypotl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.IEEEl2bits = type { x86_fp80 }
%struct.TYPE_2__ = type { i64 }

@MANT_DIG = common dso_local global i32 0, align 4
@MAX_EXP = common dso_local global i32 0, align 4
@LDBL_NBIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local x86_fp80 @hypotl(x86_fp80 %0, x86_fp80 %1) #0 {
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
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %union.IEEEl2bits, align 16
  %22 = alloca %union.IEEEl2bits, align 16
  %23 = alloca i32, align 4
  store x86_fp80 %0, x86_fp80* %4, align 16
  store x86_fp80 %1, x86_fp80* %5, align 16
  %24 = load x86_fp80, x86_fp80* %4, align 16
  store x86_fp80 %24, x86_fp80* %6, align 16
  %25 = load x86_fp80, x86_fp80* %5, align 16
  store x86_fp80 %25, x86_fp80* %7, align 16
  %26 = load i32, i32* %15, align 4
  %27 = load x86_fp80, x86_fp80* %4, align 16
  %28 = call i32 @GET_HIGH_WORD(i32 %26, x86_fp80 %27)
  %29 = load i32, i32* %15, align 4
  %30 = and i32 %29, 32767
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %16, align 4
  %32 = load x86_fp80, x86_fp80* %5, align 16
  %33 = call i32 @GET_HIGH_WORD(i32 %31, x86_fp80 %32)
  %34 = load i32, i32* %16, align 4
  %35 = and i32 %34, 32767
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %2
  %40 = load x86_fp80, x86_fp80* %5, align 16
  store x86_fp80 %40, x86_fp80* %6, align 16
  %41 = load x86_fp80, x86_fp80* %4, align 16
  store x86_fp80 %41, x86_fp80* %7, align 16
  %42 = load i32, i32* %15, align 4
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %16, align 4
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %13, align 4
  store i32 %44, i32* %16, align 4
  br label %48

45:                                               ; preds = %2
  %46 = load x86_fp80, x86_fp80* %4, align 16
  store x86_fp80 %46, x86_fp80* %6, align 16
  %47 = load x86_fp80, x86_fp80* %5, align 16
  store x86_fp80 %47, x86_fp80* %7, align 16
  br label %48

48:                                               ; preds = %45, %39
  %49 = load x86_fp80, x86_fp80* %6, align 16
  %50 = call x86_fp80 @llvm.fabs.f80(x86_fp80 %49)
  store x86_fp80 %50, x86_fp80* %6, align 16
  %51 = load x86_fp80, x86_fp80* %7, align 16
  %52 = call x86_fp80 @llvm.fabs.f80(x86_fp80 %51)
  store x86_fp80 %52, x86_fp80* %7, align 16
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %16, align 4
  %55 = sub nsw i32 %53, %54
  %56 = load i32, i32* @MANT_DIG, align 4
  %57 = add nsw i32 %56, 7
  %58 = call i32 @DESW(i32 %57)
  %59 = icmp sgt i32 %55, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %48
  %61 = load x86_fp80, x86_fp80* %6, align 16
  %62 = load x86_fp80, x86_fp80* %7, align 16
  %63 = fadd x86_fp80 %61, %62
  store x86_fp80 %63, x86_fp80* %3, align 16
  br label %295

64:                                               ; preds = %48
  store i32 0, i32* %14, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* @MAX_EXP, align 4
  %67 = sdiv i32 %66, 2
  %68 = sub nsw i32 %67, 12
  %69 = call i32 @ESW(i32 %68)
  %70 = icmp sgt i32 %65, %69
  br i1 %70, label %71, label %140

71:                                               ; preds = %64
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* @MAX_EXP, align 4
  %74 = call i32 @ESW(i32 %73)
  %75 = icmp sge i32 %72, %74
  br i1 %75, label %76, label %116

76:                                               ; preds = %71
  %77 = load x86_fp80, x86_fp80* %4, align 16
  %78 = fadd x86_fp80 %77, 0xK00000000000000000000
  %79 = call x86_fp80 @llvm.fabs.f80(x86_fp80 %78)
  %80 = load x86_fp80, x86_fp80* %5, align 16
  %81 = fadd x86_fp80 %80, 0xK00000000000000000000
  %82 = call x86_fp80 @llvm.fabs.f80(x86_fp80 %81)
  %83 = fsub x86_fp80 %79, %82
  store x86_fp80 %83, x86_fp80* %12, align 16
  %84 = load i64, i64* %17, align 8
  %85 = load i64, i64* %18, align 8
  %86 = load x86_fp80, x86_fp80* %6, align 16
  %87 = call i32 @GET_LDBL_MAN(i64 %84, i64 %85, x86_fp80 %86)
  %88 = load i64, i64* %17, align 8
  %89 = load i64, i64* @LDBL_NBIT, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %76
  %92 = load i64, i64* %18, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load x86_fp80, x86_fp80* %6, align 16
  store x86_fp80 %95, x86_fp80* %12, align 16
  br label %96

96:                                               ; preds = %94, %91, %76
  %97 = load i64, i64* %17, align 8
  %98 = load i64, i64* %18, align 8
  %99 = load x86_fp80, x86_fp80* %7, align 16
  %100 = call i32 @GET_LDBL_MAN(i64 %97, i64 %98, x86_fp80 %99)
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* @MAX_EXP, align 4
  %103 = call i32 @ESW(i32 %102)
  %104 = icmp sge i32 %101, %103
  br i1 %104, label %105, label %114

105:                                              ; preds = %96
  %106 = load i64, i64* %17, align 8
  %107 = load i64, i64* @LDBL_NBIT, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = load i64, i64* %18, align 8
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %109
  %113 = load x86_fp80, x86_fp80* %7, align 16
  store x86_fp80 %113, x86_fp80* %12, align 16
  br label %114

114:                                              ; preds = %112, %109, %105, %96
  %115 = load x86_fp80, x86_fp80* %12, align 16
  store x86_fp80 %115, x86_fp80* %3, align 16
  br label %295

116:                                              ; preds = %71
  %117 = load i32, i32* @MAX_EXP, align 4
  %118 = sdiv i32 %117, 2
  %119 = add nsw i32 %118, 88
  %120 = call i32 @DESW(i32 %119)
  %121 = load i32, i32* %15, align 4
  %122 = sub nsw i32 %121, %120
  store i32 %122, i32* %15, align 4
  %123 = load i32, i32* @MAX_EXP, align 4
  %124 = sdiv i32 %123, 2
  %125 = add nsw i32 %124, 88
  %126 = call i32 @DESW(i32 %125)
  %127 = load i32, i32* %16, align 4
  %128 = sub nsw i32 %127, %126
  store i32 %128, i32* %16, align 4
  %129 = load i32, i32* @MAX_EXP, align 4
  %130 = sdiv i32 %129, 2
  %131 = add nsw i32 %130, 88
  %132 = load i32, i32* %14, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %14, align 4
  %134 = load x86_fp80, x86_fp80* %6, align 16
  %135 = load i32, i32* %15, align 4
  %136 = call i32 @SET_HIGH_WORD(x86_fp80 %134, i32 %135)
  %137 = load x86_fp80, x86_fp80* %7, align 16
  %138 = load i32, i32* %16, align 4
  %139 = call i32 @SET_HIGH_WORD(x86_fp80 %137, i32 %138)
  br label %140

140:                                              ; preds = %116, %64
  %141 = load i32, i32* %16, align 4
  %142 = load i32, i32* @MAX_EXP, align 4
  %143 = sdiv i32 %142, 2
  %144 = sub nsw i32 %143, 12
  %145 = sub nsw i32 0, %144
  %146 = call i32 @ESW(i32 %145)
  %147 = icmp slt i32 %141, %146
  br i1 %147, label %148, label %203

148:                                              ; preds = %140
  %149 = load i32, i32* %16, align 4
  %150 = icmp sle i32 %149, 0
  br i1 %150, label %151, label %178

151:                                              ; preds = %148
  %152 = load i64, i64* %19, align 8
  %153 = load i64, i64* %20, align 8
  %154 = load x86_fp80, x86_fp80* %7, align 16
  %155 = call i32 @GET_LDBL_MAN(i64 %152, i64 %153, x86_fp80 %154)
  %156 = load i64, i64* %19, align 8
  %157 = load i64, i64* %20, align 8
  %158 = or i64 %156, %157
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %151
  %161 = load x86_fp80, x86_fp80* %6, align 16
  store x86_fp80 %161, x86_fp80* %3, align 16
  br label %295

162:                                              ; preds = %151
  store x86_fp80 0xK00000000000000000000, x86_fp80* %8, align 16
  %163 = load x86_fp80, x86_fp80* %8, align 16
  %164 = load i32, i32* @MAX_EXP, align 4
  %165 = sub nsw i32 %164, 2
  %166 = call i32 @ESW(i32 %165)
  %167 = call i32 @SET_HIGH_WORD(x86_fp80 %163, i32 %166)
  %168 = load x86_fp80, x86_fp80* %8, align 16
  %169 = load x86_fp80, x86_fp80* %7, align 16
  %170 = fmul x86_fp80 %169, %168
  store x86_fp80 %170, x86_fp80* %7, align 16
  %171 = load x86_fp80, x86_fp80* %8, align 16
  %172 = load x86_fp80, x86_fp80* %6, align 16
  %173 = fmul x86_fp80 %172, %171
  store x86_fp80 %173, x86_fp80* %6, align 16
  %174 = load i32, i32* @MAX_EXP, align 4
  %175 = sub nsw i32 %174, 2
  %176 = load i32, i32* %14, align 4
  %177 = sub nsw i32 %176, %175
  store i32 %177, i32* %14, align 4
  br label %202

178:                                              ; preds = %148
  %179 = load i32, i32* @MAX_EXP, align 4
  %180 = sdiv i32 %179, 2
  %181 = add nsw i32 %180, 88
  %182 = call i32 @DESW(i32 %181)
  %183 = load i32, i32* %15, align 4
  %184 = add nsw i32 %183, %182
  store i32 %184, i32* %15, align 4
  %185 = load i32, i32* @MAX_EXP, align 4
  %186 = sdiv i32 %185, 2
  %187 = add nsw i32 %186, 88
  %188 = call i32 @DESW(i32 %187)
  %189 = load i32, i32* %16, align 4
  %190 = add nsw i32 %189, %188
  store i32 %190, i32* %16, align 4
  %191 = load i32, i32* @MAX_EXP, align 4
  %192 = sdiv i32 %191, 2
  %193 = add nsw i32 %192, 88
  %194 = load i32, i32* %14, align 4
  %195 = sub nsw i32 %194, %193
  store i32 %195, i32* %14, align 4
  %196 = load x86_fp80, x86_fp80* %6, align 16
  %197 = load i32, i32* %15, align 4
  %198 = call i32 @SET_HIGH_WORD(x86_fp80 %196, i32 %197)
  %199 = load x86_fp80, x86_fp80* %7, align 16
  %200 = load i32, i32* %16, align 4
  %201 = call i32 @SET_HIGH_WORD(x86_fp80 %199, i32 %200)
  br label %202

202:                                              ; preds = %178, %162
  br label %203

203:                                              ; preds = %202, %140
  %204 = load x86_fp80, x86_fp80* %6, align 16
  %205 = load x86_fp80, x86_fp80* %7, align 16
  %206 = fsub x86_fp80 %204, %205
  store x86_fp80 %206, x86_fp80* %12, align 16
  %207 = load x86_fp80, x86_fp80* %12, align 16
  %208 = load x86_fp80, x86_fp80* %7, align 16
  %209 = fcmp ogt x86_fp80 %207, %208
  br i1 %209, label %210, label %236

210:                                              ; preds = %203
  %211 = load x86_fp80, x86_fp80* %6, align 16
  store x86_fp80 %211, x86_fp80* %8, align 16
  %212 = load x86_fp80, x86_fp80* %8, align 16
  %213 = bitcast %union.IEEEl2bits* %21 to x86_fp80*
  store x86_fp80 %212, x86_fp80* %213, align 16
  %214 = bitcast %union.IEEEl2bits* %21 to %struct.TYPE_2__*
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 0
  store i64 0, i64* %215, align 16
  %216 = bitcast %union.IEEEl2bits* %21 to x86_fp80*
  %217 = load x86_fp80, x86_fp80* %216, align 16
  store x86_fp80 %217, x86_fp80* %8, align 16
  %218 = load x86_fp80, x86_fp80* %6, align 16
  %219 = load x86_fp80, x86_fp80* %8, align 16
  %220 = fsub x86_fp80 %218, %219
  store x86_fp80 %220, x86_fp80* %9, align 16
  %221 = load x86_fp80, x86_fp80* %8, align 16
  %222 = load x86_fp80, x86_fp80* %8, align 16
  %223 = fmul x86_fp80 %221, %222
  %224 = load x86_fp80, x86_fp80* %7, align 16
  %225 = load x86_fp80, x86_fp80* %7, align 16
  %226 = fneg x86_fp80 %225
  %227 = fmul x86_fp80 %224, %226
  %228 = load x86_fp80, x86_fp80* %9, align 16
  %229 = load x86_fp80, x86_fp80* %6, align 16
  %230 = load x86_fp80, x86_fp80* %8, align 16
  %231 = fadd x86_fp80 %229, %230
  %232 = fmul x86_fp80 %228, %231
  %233 = fsub x86_fp80 %227, %232
  %234 = fsub x86_fp80 %223, %233
  %235 = call x86_fp80 @sqrtl(x86_fp80 %234) #4
  store x86_fp80 %235, x86_fp80* %12, align 16
  br label %277

236:                                              ; preds = %203
  %237 = load x86_fp80, x86_fp80* %6, align 16
  %238 = load x86_fp80, x86_fp80* %6, align 16
  %239 = fadd x86_fp80 %237, %238
  store x86_fp80 %239, x86_fp80* %6, align 16
  %240 = load x86_fp80, x86_fp80* %7, align 16
  store x86_fp80 %240, x86_fp80* %10, align 16
  %241 = load x86_fp80, x86_fp80* %10, align 16
  %242 = bitcast %union.IEEEl2bits* %22 to x86_fp80*
  store x86_fp80 %241, x86_fp80* %242, align 16
  %243 = bitcast %union.IEEEl2bits* %22 to %struct.TYPE_2__*
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 0
  store i64 0, i64* %244, align 16
  %245 = bitcast %union.IEEEl2bits* %22 to x86_fp80*
  %246 = load x86_fp80, x86_fp80* %245, align 16
  store x86_fp80 %246, x86_fp80* %10, align 16
  %247 = load x86_fp80, x86_fp80* %7, align 16
  %248 = load x86_fp80, x86_fp80* %10, align 16
  %249 = fsub x86_fp80 %247, %248
  store x86_fp80 %249, x86_fp80* %11, align 16
  %250 = load x86_fp80, x86_fp80* %6, align 16
  store x86_fp80 %250, x86_fp80* %8, align 16
  %251 = load x86_fp80, x86_fp80* %8, align 16
  %252 = bitcast %union.IEEEl2bits* %22 to x86_fp80*
  store x86_fp80 %251, x86_fp80* %252, align 16
  %253 = bitcast %union.IEEEl2bits* %22 to %struct.TYPE_2__*
  %254 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i32 0, i32 0
  store i64 0, i64* %254, align 16
  %255 = bitcast %union.IEEEl2bits* %22 to x86_fp80*
  %256 = load x86_fp80, x86_fp80* %255, align 16
  store x86_fp80 %256, x86_fp80* %8, align 16
  %257 = load x86_fp80, x86_fp80* %6, align 16
  %258 = load x86_fp80, x86_fp80* %8, align 16
  %259 = fsub x86_fp80 %257, %258
  store x86_fp80 %259, x86_fp80* %9, align 16
  %260 = load x86_fp80, x86_fp80* %8, align 16
  %261 = load x86_fp80, x86_fp80* %10, align 16
  %262 = fmul x86_fp80 %260, %261
  %263 = load x86_fp80, x86_fp80* %12, align 16
  %264 = load x86_fp80, x86_fp80* %12, align 16
  %265 = fneg x86_fp80 %264
  %266 = fmul x86_fp80 %263, %265
  %267 = load x86_fp80, x86_fp80* %8, align 16
  %268 = load x86_fp80, x86_fp80* %11, align 16
  %269 = fmul x86_fp80 %267, %268
  %270 = load x86_fp80, x86_fp80* %9, align 16
  %271 = load x86_fp80, x86_fp80* %7, align 16
  %272 = fmul x86_fp80 %270, %271
  %273 = fadd x86_fp80 %269, %272
  %274 = fsub x86_fp80 %266, %273
  %275 = fsub x86_fp80 %262, %274
  %276 = call x86_fp80 @sqrtl(x86_fp80 %275) #4
  store x86_fp80 %276, x86_fp80* %12, align 16
  br label %277

277:                                              ; preds = %236, %210
  %278 = load i32, i32* %14, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %293

280:                                              ; preds = %277
  store x86_fp80 0xK3FFF8000000000000000, x86_fp80* %8, align 16
  %281 = load i32, i32* %23, align 4
  %282 = load x86_fp80, x86_fp80* %8, align 16
  %283 = call i32 @GET_HIGH_WORD(i32 %281, x86_fp80 %282)
  %284 = load x86_fp80, x86_fp80* %8, align 16
  %285 = load i32, i32* %23, align 4
  %286 = load i32, i32* %14, align 4
  %287 = call i32 @DESW(i32 %286)
  %288 = add nsw i32 %285, %287
  %289 = call i32 @SET_HIGH_WORD(x86_fp80 %284, i32 %288)
  %290 = load x86_fp80, x86_fp80* %8, align 16
  %291 = load x86_fp80, x86_fp80* %12, align 16
  %292 = fmul x86_fp80 %290, %291
  store x86_fp80 %292, x86_fp80* %3, align 16
  br label %295

293:                                              ; preds = %277
  %294 = load x86_fp80, x86_fp80* %12, align 16
  store x86_fp80 %294, x86_fp80* %3, align 16
  br label %295

295:                                              ; preds = %293, %280, %160, %114, %60
  %296 = load x86_fp80, x86_fp80* %3, align 16
  ret x86_fp80 %296
}

declare dso_local i32 @GET_HIGH_WORD(i32, x86_fp80) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #2

declare dso_local i32 @DESW(i32) #1

declare dso_local i32 @ESW(i32) #1

declare dso_local i32 @GET_LDBL_MAN(i64, i64, x86_fp80) #1

declare dso_local i32 @SET_HIGH_WORD(x86_fp80, i32) #1

; Function Attrs: nounwind
declare dso_local x86_fp80 @sqrtl(x86_fp80) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
