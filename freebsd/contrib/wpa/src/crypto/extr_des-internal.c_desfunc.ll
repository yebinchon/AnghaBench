; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_des-internal.c_desfunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_des-internal.c_desfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SP7 = common dso_local global i32* null, align 8
@SP5 = common dso_local global i32* null, align 8
@SP3 = common dso_local global i32* null, align 8
@SP1 = common dso_local global i32* null, align 8
@SP8 = common dso_local global i32* null, align 8
@SP6 = common dso_local global i32* null, align 8
@SP4 = common dso_local global i32* null, align 8
@SP2 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @desfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @desfunc(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = ashr i32 %15, 4
  %17 = load i32, i32* %6, align 4
  %18 = xor i32 %16, %17
  %19 = sext i32 %18 to i64
  %20 = and i64 %19, 252645135
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = xor i32 %23, %22
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = shl i32 %25, 4
  %27 = load i32, i32* %7, align 4
  %28 = xor i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = ashr i32 %29, 16
  %31 = load i32, i32* %6, align 4
  %32 = xor i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = and i64 %33, 65535
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = xor i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %5, align 4
  %40 = shl i32 %39, 16
  %41 = load i32, i32* %7, align 4
  %42 = xor i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = ashr i32 %43, 2
  %45 = load i32, i32* %7, align 4
  %46 = xor i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = and i64 %47, 858993459
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %7, align 4
  %52 = xor i32 %51, %50
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %5, align 4
  %54 = shl i32 %53, 2
  %55 = load i32, i32* %6, align 4
  %56 = xor i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = ashr i32 %57, 8
  %59 = load i32, i32* %7, align 4
  %60 = xor i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = and i64 %61, 16711935
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %7, align 4
  %66 = xor i32 %65, %64
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %5, align 4
  %68 = shl i32 %67, 8
  %69 = load i32, i32* %6, align 4
  %70 = xor i32 %69, %68
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @ROLc(i32 %71, i32 1)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %6, align 4
  %75 = xor i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = and i64 %76, 2863311530
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %7, align 4
  %81 = xor i32 %80, %79
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %6, align 4
  %84 = xor i32 %83, %82
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @ROLc(i32 %85, i32 1)
  store i32 %86, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %87

87:                                               ; preds = %241, %2
  %88 = load i32, i32* %8, align 4
  %89 = icmp slt i32 %88, 8
  br i1 %89, label %90, label %244

90:                                               ; preds = %87
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @RORc(i32 %91, i32 4)
  %93 = load i32*, i32** %4, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %4, align 8
  %95 = load i32, i32* %93, align 4
  %96 = xor i32 %92, %95
  store i32 %96, i32* %5, align 4
  %97 = load i32*, i32** @SP7, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = and i64 %99, 63
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** @SP5, align 8
  %104 = load i32, i32* %5, align 4
  %105 = ashr i32 %104, 8
  %106 = sext i32 %105 to i64
  %107 = and i64 %106, 63
  %108 = getelementptr inbounds i32, i32* %103, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = xor i32 %102, %109
  %111 = load i32*, i32** @SP3, align 8
  %112 = load i32, i32* %5, align 4
  %113 = ashr i32 %112, 16
  %114 = sext i32 %113 to i64
  %115 = and i64 %114, 63
  %116 = getelementptr inbounds i32, i32* %111, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = xor i32 %110, %117
  %119 = load i32*, i32** @SP1, align 8
  %120 = load i32, i32* %5, align 4
  %121 = ashr i32 %120, 24
  %122 = sext i32 %121 to i64
  %123 = and i64 %122, 63
  %124 = getelementptr inbounds i32, i32* %119, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = xor i32 %118, %125
  %127 = load i32, i32* %7, align 4
  %128 = xor i32 %127, %126
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %6, align 4
  %130 = load i32*, i32** %4, align 8
  %131 = getelementptr inbounds i32, i32* %130, i32 1
  store i32* %131, i32** %4, align 8
  %132 = load i32, i32* %130, align 4
  %133 = xor i32 %129, %132
  store i32 %133, i32* %5, align 4
  %134 = load i32*, i32** @SP8, align 8
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = and i64 %136, 63
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32*, i32** @SP6, align 8
  %141 = load i32, i32* %5, align 4
  %142 = ashr i32 %141, 8
  %143 = sext i32 %142 to i64
  %144 = and i64 %143, 63
  %145 = getelementptr inbounds i32, i32* %140, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = xor i32 %139, %146
  %148 = load i32*, i32** @SP4, align 8
  %149 = load i32, i32* %5, align 4
  %150 = ashr i32 %149, 16
  %151 = sext i32 %150 to i64
  %152 = and i64 %151, 63
  %153 = getelementptr inbounds i32, i32* %148, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = xor i32 %147, %154
  %156 = load i32*, i32** @SP2, align 8
  %157 = load i32, i32* %5, align 4
  %158 = ashr i32 %157, 24
  %159 = sext i32 %158 to i64
  %160 = and i64 %159, 63
  %161 = getelementptr inbounds i32, i32* %156, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = xor i32 %155, %162
  %164 = load i32, i32* %7, align 4
  %165 = xor i32 %164, %163
  store i32 %165, i32* %7, align 4
  %166 = load i32, i32* %7, align 4
  %167 = call i32 @RORc(i32 %166, i32 4)
  %168 = load i32*, i32** %4, align 8
  %169 = getelementptr inbounds i32, i32* %168, i32 1
  store i32* %169, i32** %4, align 8
  %170 = load i32, i32* %168, align 4
  %171 = xor i32 %167, %170
  store i32 %171, i32* %5, align 4
  %172 = load i32*, i32** @SP7, align 8
  %173 = load i32, i32* %5, align 4
  %174 = sext i32 %173 to i64
  %175 = and i64 %174, 63
  %176 = getelementptr inbounds i32, i32* %172, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = load i32*, i32** @SP5, align 8
  %179 = load i32, i32* %5, align 4
  %180 = ashr i32 %179, 8
  %181 = sext i32 %180 to i64
  %182 = and i64 %181, 63
  %183 = getelementptr inbounds i32, i32* %178, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = xor i32 %177, %184
  %186 = load i32*, i32** @SP3, align 8
  %187 = load i32, i32* %5, align 4
  %188 = ashr i32 %187, 16
  %189 = sext i32 %188 to i64
  %190 = and i64 %189, 63
  %191 = getelementptr inbounds i32, i32* %186, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = xor i32 %185, %192
  %194 = load i32*, i32** @SP1, align 8
  %195 = load i32, i32* %5, align 4
  %196 = ashr i32 %195, 24
  %197 = sext i32 %196 to i64
  %198 = and i64 %197, 63
  %199 = getelementptr inbounds i32, i32* %194, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = xor i32 %193, %200
  %202 = load i32, i32* %6, align 4
  %203 = xor i32 %202, %201
  store i32 %203, i32* %6, align 4
  %204 = load i32, i32* %7, align 4
  %205 = load i32*, i32** %4, align 8
  %206 = getelementptr inbounds i32, i32* %205, i32 1
  store i32* %206, i32** %4, align 8
  %207 = load i32, i32* %205, align 4
  %208 = xor i32 %204, %207
  store i32 %208, i32* %5, align 4
  %209 = load i32*, i32** @SP8, align 8
  %210 = load i32, i32* %5, align 4
  %211 = sext i32 %210 to i64
  %212 = and i64 %211, 63
  %213 = getelementptr inbounds i32, i32* %209, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = load i32*, i32** @SP6, align 8
  %216 = load i32, i32* %5, align 4
  %217 = ashr i32 %216, 8
  %218 = sext i32 %217 to i64
  %219 = and i64 %218, 63
  %220 = getelementptr inbounds i32, i32* %215, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = xor i32 %214, %221
  %223 = load i32*, i32** @SP4, align 8
  %224 = load i32, i32* %5, align 4
  %225 = ashr i32 %224, 16
  %226 = sext i32 %225 to i64
  %227 = and i64 %226, 63
  %228 = getelementptr inbounds i32, i32* %223, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = xor i32 %222, %229
  %231 = load i32*, i32** @SP2, align 8
  %232 = load i32, i32* %5, align 4
  %233 = ashr i32 %232, 24
  %234 = sext i32 %233 to i64
  %235 = and i64 %234, 63
  %236 = getelementptr inbounds i32, i32* %231, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = xor i32 %230, %237
  %239 = load i32, i32* %6, align 4
  %240 = xor i32 %239, %238
  store i32 %240, i32* %6, align 4
  br label %241

241:                                              ; preds = %90
  %242 = load i32, i32* %8, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %8, align 4
  br label %87

244:                                              ; preds = %87
  %245 = load i32, i32* %6, align 4
  %246 = call i32 @RORc(i32 %245, i32 1)
  store i32 %246, i32* %6, align 4
  %247 = load i32, i32* %7, align 4
  %248 = load i32, i32* %6, align 4
  %249 = xor i32 %247, %248
  %250 = sext i32 %249 to i64
  %251 = and i64 %250, 2863311530
  %252 = trunc i64 %251 to i32
  store i32 %252, i32* %5, align 4
  %253 = load i32, i32* %5, align 4
  %254 = load i32, i32* %7, align 4
  %255 = xor i32 %254, %253
  store i32 %255, i32* %7, align 4
  %256 = load i32, i32* %5, align 4
  %257 = load i32, i32* %6, align 4
  %258 = xor i32 %257, %256
  store i32 %258, i32* %6, align 4
  %259 = load i32, i32* %7, align 4
  %260 = call i32 @RORc(i32 %259, i32 1)
  store i32 %260, i32* %7, align 4
  %261 = load i32, i32* %7, align 4
  %262 = ashr i32 %261, 8
  %263 = load i32, i32* %6, align 4
  %264 = xor i32 %262, %263
  %265 = sext i32 %264 to i64
  %266 = and i64 %265, 16711935
  %267 = trunc i64 %266 to i32
  store i32 %267, i32* %5, align 4
  %268 = load i32, i32* %5, align 4
  %269 = load i32, i32* %6, align 4
  %270 = xor i32 %269, %268
  store i32 %270, i32* %6, align 4
  %271 = load i32, i32* %5, align 4
  %272 = shl i32 %271, 8
  %273 = load i32, i32* %7, align 4
  %274 = xor i32 %273, %272
  store i32 %274, i32* %7, align 4
  %275 = load i32, i32* %7, align 4
  %276 = ashr i32 %275, 2
  %277 = load i32, i32* %6, align 4
  %278 = xor i32 %276, %277
  %279 = sext i32 %278 to i64
  %280 = and i64 %279, 858993459
  %281 = trunc i64 %280 to i32
  store i32 %281, i32* %5, align 4
  %282 = load i32, i32* %5, align 4
  %283 = load i32, i32* %6, align 4
  %284 = xor i32 %283, %282
  store i32 %284, i32* %6, align 4
  %285 = load i32, i32* %5, align 4
  %286 = shl i32 %285, 2
  %287 = load i32, i32* %7, align 4
  %288 = xor i32 %287, %286
  store i32 %288, i32* %7, align 4
  %289 = load i32, i32* %6, align 4
  %290 = ashr i32 %289, 16
  %291 = load i32, i32* %7, align 4
  %292 = xor i32 %290, %291
  %293 = sext i32 %292 to i64
  %294 = and i64 %293, 65535
  %295 = trunc i64 %294 to i32
  store i32 %295, i32* %5, align 4
  %296 = load i32, i32* %5, align 4
  %297 = load i32, i32* %7, align 4
  %298 = xor i32 %297, %296
  store i32 %298, i32* %7, align 4
  %299 = load i32, i32* %5, align 4
  %300 = shl i32 %299, 16
  %301 = load i32, i32* %6, align 4
  %302 = xor i32 %301, %300
  store i32 %302, i32* %6, align 4
  %303 = load i32, i32* %6, align 4
  %304 = ashr i32 %303, 4
  %305 = load i32, i32* %7, align 4
  %306 = xor i32 %304, %305
  %307 = sext i32 %306 to i64
  %308 = and i64 %307, 252645135
  %309 = trunc i64 %308 to i32
  store i32 %309, i32* %5, align 4
  %310 = load i32, i32* %5, align 4
  %311 = load i32, i32* %7, align 4
  %312 = xor i32 %311, %310
  store i32 %312, i32* %7, align 4
  %313 = load i32, i32* %5, align 4
  %314 = shl i32 %313, 4
  %315 = load i32, i32* %6, align 4
  %316 = xor i32 %315, %314
  store i32 %316, i32* %6, align 4
  %317 = load i32, i32* %6, align 4
  %318 = load i32*, i32** %3, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 0
  store i32 %317, i32* %319, align 4
  %320 = load i32, i32* %7, align 4
  %321 = load i32*, i32** %3, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 1
  store i32 %320, i32* %322, align 4
  ret void
}

declare dso_local i32 @ROLc(i32, i32) #1

declare dso_local i32 @RORc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
