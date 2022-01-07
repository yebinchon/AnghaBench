; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_catrigl.c_do_hard_work.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_catrigl.c_do_hard_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A_crossover = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@LDBL_EPSILON = common dso_local global i32 0, align 4
@FOUR_SQRT_MIN = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@B_crossover = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (x86_fp80, x86_fp80, x86_fp80*, i32*, x86_fp80*, x86_fp80*, x86_fp80*)* @do_hard_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_hard_work(x86_fp80 %0, x86_fp80 %1, x86_fp80* %2, i32* %3, x86_fp80* %4, x86_fp80* %5, x86_fp80* %6) #0 {
  %8 = alloca x86_fp80, align 16
  %9 = alloca x86_fp80, align 16
  %10 = alloca x86_fp80*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca x86_fp80*, align 8
  %13 = alloca x86_fp80*, align 8
  %14 = alloca x86_fp80*, align 8
  %15 = alloca x86_fp80, align 16
  %16 = alloca x86_fp80, align 16
  %17 = alloca x86_fp80, align 16
  %18 = alloca x86_fp80, align 16
  %19 = alloca x86_fp80, align 16
  store x86_fp80 %0, x86_fp80* %8, align 16
  store x86_fp80 %1, x86_fp80* %9, align 16
  store x86_fp80* %2, x86_fp80** %10, align 8
  store i32* %3, i32** %11, align 8
  store x86_fp80* %4, x86_fp80** %12, align 8
  store x86_fp80* %5, x86_fp80** %13, align 8
  store x86_fp80* %6, x86_fp80** %14, align 8
  %20 = load x86_fp80, x86_fp80* %8, align 16
  %21 = load x86_fp80, x86_fp80* %9, align 16
  %22 = fadd x86_fp80 %21, 0xK3FFF8000000000000000
  %23 = call x86_fp80 @hypotl(x86_fp80 %20, x86_fp80 %22) #3
  store x86_fp80 %23, x86_fp80* %15, align 16
  %24 = load x86_fp80, x86_fp80* %8, align 16
  %25 = load x86_fp80, x86_fp80* %9, align 16
  %26 = fsub x86_fp80 %25, 0xK3FFF8000000000000000
  %27 = call x86_fp80 @hypotl(x86_fp80 %24, x86_fp80 %26) #3
  store x86_fp80 %27, x86_fp80* %16, align 16
  %28 = load x86_fp80, x86_fp80* %15, align 16
  %29 = load x86_fp80, x86_fp80* %16, align 16
  %30 = fadd x86_fp80 %28, %29
  %31 = fdiv x86_fp80 %30, 0xK40008000000000000000
  store x86_fp80 %31, x86_fp80* %17, align 16
  %32 = load x86_fp80, x86_fp80* %17, align 16
  %33 = fcmp olt x86_fp80 %32, 0xK3FFF8000000000000000
  br i1 %33, label %34, label %35

34:                                               ; preds = %7
  store x86_fp80 0xK3FFF8000000000000000, x86_fp80* %17, align 16
  br label %35

35:                                               ; preds = %34, %7
  %36 = load x86_fp80, x86_fp80* %17, align 16
  %37 = load x86_fp80, x86_fp80* @A_crossover, align 16
  %38 = fcmp olt x86_fp80 %36, %37
  br i1 %38, label %39, label %116

39:                                               ; preds = %35
  %40 = load x86_fp80, x86_fp80* %9, align 16
  %41 = fcmp oeq x86_fp80 %40, 0xK3FFF8000000000000000
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load x86_fp80, x86_fp80* %8, align 16
  %44 = load i32, i32* @LDBL_EPSILON, align 4
  %45 = load i32, i32* @LDBL_EPSILON, align 4
  %46 = mul nsw i32 %44, %45
  %47 = sdiv i32 %46, 128
  %48 = sitofp i32 %47 to x86_fp80
  %49 = fcmp olt x86_fp80 %43, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = load x86_fp80, x86_fp80* %8, align 16
  %52 = fptosi x86_fp80 %51 to i32
  %53 = call x86_fp80 @sqrtl(i32 %52)
  %54 = load x86_fp80*, x86_fp80** %10, align 8
  store x86_fp80 %53, x86_fp80* %54, align 16
  br label %115

55:                                               ; preds = %42, %39
  %56 = load x86_fp80, x86_fp80* %8, align 16
  %57 = load i32, i32* @LDBL_EPSILON, align 4
  %58 = load x86_fp80, x86_fp80* %9, align 16
  %59 = fsub x86_fp80 %58, 0xK3FFF8000000000000000
  %60 = call i32 @fabsl(x86_fp80 %59)
  %61 = mul nsw i32 %57, %60
  %62 = sitofp i32 %61 to x86_fp80
  %63 = fcmp oge x86_fp80 %56, %62
  br i1 %63, label %64, label %86

64:                                               ; preds = %55
  %65 = load x86_fp80, x86_fp80* %8, align 16
  %66 = load x86_fp80, x86_fp80* %9, align 16
  %67 = fadd x86_fp80 0xK3FFF8000000000000000, %66
  %68 = load x86_fp80, x86_fp80* %15, align 16
  %69 = call x86_fp80 @f(x86_fp80 %65, x86_fp80 %67, x86_fp80 %68)
  %70 = load x86_fp80, x86_fp80* %8, align 16
  %71 = load x86_fp80, x86_fp80* %9, align 16
  %72 = fsub x86_fp80 0xK3FFF8000000000000000, %71
  %73 = load x86_fp80, x86_fp80* %16, align 16
  %74 = call x86_fp80 @f(x86_fp80 %70, x86_fp80 %72, x86_fp80 %73)
  %75 = fadd x86_fp80 %69, %74
  store x86_fp80 %75, x86_fp80* %18, align 16
  %76 = load x86_fp80, x86_fp80* %18, align 16
  %77 = load x86_fp80, x86_fp80* %18, align 16
  %78 = load x86_fp80, x86_fp80* %17, align 16
  %79 = fadd x86_fp80 %78, 0xK3FFF8000000000000000
  %80 = fmul x86_fp80 %77, %79
  %81 = fptosi x86_fp80 %80 to i32
  %82 = call x86_fp80 @sqrtl(i32 %81)
  %83 = fadd x86_fp80 %76, %82
  %84 = call x86_fp80 @log1pl(x86_fp80 %83) #3
  %85 = load x86_fp80*, x86_fp80** %10, align 8
  store x86_fp80 %84, x86_fp80* %85, align 16
  br label %114

86:                                               ; preds = %55
  %87 = load x86_fp80, x86_fp80* %9, align 16
  %88 = fcmp olt x86_fp80 %87, 0xK3FFF8000000000000000
  br i1 %88, label %89, label %100

89:                                               ; preds = %86
  %90 = load x86_fp80, x86_fp80* %8, align 16
  %91 = load x86_fp80, x86_fp80* %9, align 16
  %92 = fsub x86_fp80 0xK3FFF8000000000000000, %91
  %93 = load x86_fp80, x86_fp80* %9, align 16
  %94 = fadd x86_fp80 0xK3FFF8000000000000000, %93
  %95 = fmul x86_fp80 %92, %94
  %96 = fptosi x86_fp80 %95 to i32
  %97 = call x86_fp80 @sqrtl(i32 %96)
  %98 = fdiv x86_fp80 %90, %97
  %99 = load x86_fp80*, x86_fp80** %10, align 8
  store x86_fp80 %98, x86_fp80* %99, align 16
  br label %113

100:                                              ; preds = %86
  %101 = load x86_fp80, x86_fp80* %9, align 16
  %102 = fsub x86_fp80 %101, 0xK3FFF8000000000000000
  %103 = load x86_fp80, x86_fp80* %9, align 16
  %104 = fsub x86_fp80 %103, 0xK3FFF8000000000000000
  %105 = load x86_fp80, x86_fp80* %9, align 16
  %106 = fadd x86_fp80 %105, 0xK3FFF8000000000000000
  %107 = fmul x86_fp80 %104, %106
  %108 = fptosi x86_fp80 %107 to i32
  %109 = call x86_fp80 @sqrtl(i32 %108)
  %110 = fadd x86_fp80 %102, %109
  %111 = call x86_fp80 @log1pl(x86_fp80 %110) #3
  %112 = load x86_fp80*, x86_fp80** %10, align 8
  store x86_fp80 %111, x86_fp80* %112, align 16
  br label %113

113:                                              ; preds = %100, %89
  br label %114

114:                                              ; preds = %113, %64
  br label %115

115:                                              ; preds = %114, %50
  br label %127

116:                                              ; preds = %35
  %117 = load x86_fp80, x86_fp80* %17, align 16
  %118 = load x86_fp80, x86_fp80* %17, align 16
  %119 = load x86_fp80, x86_fp80* %17, align 16
  %120 = fmul x86_fp80 %118, %119
  %121 = fsub x86_fp80 %120, 0xK3FFF8000000000000000
  %122 = fptosi x86_fp80 %121 to i32
  %123 = call x86_fp80 @sqrtl(i32 %122)
  %124 = fadd x86_fp80 %117, %123
  %125 = call x86_fp80 @logl(x86_fp80 %124) #3
  %126 = load x86_fp80*, x86_fp80** %10, align 8
  store x86_fp80 %125, x86_fp80* %126, align 16
  br label %127

127:                                              ; preds = %116, %115
  %128 = load x86_fp80, x86_fp80* %9, align 16
  %129 = load x86_fp80*, x86_fp80** %14, align 8
  store x86_fp80 %128, x86_fp80* %129, align 16
  %130 = load x86_fp80, x86_fp80* %9, align 16
  %131 = load x86_fp80, x86_fp80* @FOUR_SQRT_MIN, align 16
  %132 = fcmp olt x86_fp80 %130, %131
  br i1 %132, label %133, label %147

133:                                              ; preds = %127
  %134 = load i32*, i32** %11, align 8
  store i32 0, i32* %134, align 4
  %135 = load x86_fp80, x86_fp80* %17, align 16
  %136 = load i32, i32* @LDBL_EPSILON, align 4
  %137 = sdiv i32 2, %136
  %138 = sitofp i32 %137 to x86_fp80
  %139 = fmul x86_fp80 %135, %138
  %140 = load x86_fp80*, x86_fp80** %13, align 8
  store x86_fp80 %139, x86_fp80* %140, align 16
  %141 = load x86_fp80, x86_fp80* %9, align 16
  %142 = load i32, i32* @LDBL_EPSILON, align 4
  %143 = sdiv i32 2, %142
  %144 = sitofp i32 %143 to x86_fp80
  %145 = fmul x86_fp80 %141, %144
  %146 = load x86_fp80*, x86_fp80** %14, align 8
  store x86_fp80 %145, x86_fp80* %146, align 16
  br label %250

147:                                              ; preds = %127
  %148 = load x86_fp80, x86_fp80* %9, align 16
  %149 = load x86_fp80, x86_fp80* %17, align 16
  %150 = fdiv x86_fp80 %148, %149
  %151 = load x86_fp80*, x86_fp80** %12, align 8
  store x86_fp80 %150, x86_fp80* %151, align 16
  %152 = load i32*, i32** %11, align 8
  store i32 1, i32* %152, align 4
  %153 = load x86_fp80*, x86_fp80** %12, align 8
  %154 = load x86_fp80, x86_fp80* %153, align 16
  %155 = load x86_fp80, x86_fp80* @B_crossover, align 16
  %156 = fcmp ogt x86_fp80 %154, %155
  br i1 %156, label %157, label %250

157:                                              ; preds = %147
  %158 = load i32*, i32** %11, align 8
  store i32 0, i32* %158, align 4
  %159 = load x86_fp80, x86_fp80* %9, align 16
  %160 = fcmp oeq x86_fp80 %159, 0xK3FFF8000000000000000
  br i1 %160, label %161, label %179

161:                                              ; preds = %157
  %162 = load x86_fp80, x86_fp80* %8, align 16
  %163 = load i32, i32* @LDBL_EPSILON, align 4
  %164 = sdiv i32 %163, 128
  %165 = sitofp i32 %164 to x86_fp80
  %166 = fcmp olt x86_fp80 %162, %165
  br i1 %166, label %167, label %179

167:                                              ; preds = %161
  %168 = load x86_fp80, x86_fp80* %8, align 16
  %169 = fptosi x86_fp80 %168 to i32
  %170 = call x86_fp80 @sqrtl(i32 %169)
  %171 = load x86_fp80, x86_fp80* %17, align 16
  %172 = load x86_fp80, x86_fp80* %9, align 16
  %173 = fadd x86_fp80 %171, %172
  %174 = fdiv x86_fp80 %173, 0xK40008000000000000000
  %175 = fptosi x86_fp80 %174 to i32
  %176 = call x86_fp80 @sqrtl(i32 %175)
  %177 = fmul x86_fp80 %170, %176
  %178 = load x86_fp80*, x86_fp80** %13, align 8
  store x86_fp80 %177, x86_fp80* %178, align 16
  br label %249

179:                                              ; preds = %161, %157
  %180 = load x86_fp80, x86_fp80* %8, align 16
  %181 = load i32, i32* @LDBL_EPSILON, align 4
  %182 = load x86_fp80, x86_fp80* %9, align 16
  %183 = fsub x86_fp80 %182, 0xK3FFF8000000000000000
  %184 = call i32 @fabsl(x86_fp80 %183)
  %185 = mul nsw i32 %181, %184
  %186 = sitofp i32 %185 to x86_fp80
  %187 = fcmp oge x86_fp80 %180, %186
  br i1 %187, label %188, label %208

188:                                              ; preds = %179
  %189 = load x86_fp80, x86_fp80* %8, align 16
  %190 = load x86_fp80, x86_fp80* %9, align 16
  %191 = fadd x86_fp80 %190, 0xK3FFF8000000000000000
  %192 = load x86_fp80, x86_fp80* %15, align 16
  %193 = call x86_fp80 @f(x86_fp80 %189, x86_fp80 %191, x86_fp80 %192)
  %194 = load x86_fp80, x86_fp80* %8, align 16
  %195 = load x86_fp80, x86_fp80* %9, align 16
  %196 = fsub x86_fp80 %195, 0xK3FFF8000000000000000
  %197 = load x86_fp80, x86_fp80* %16, align 16
  %198 = call x86_fp80 @f(x86_fp80 %194, x86_fp80 %196, x86_fp80 %197)
  %199 = fadd x86_fp80 %193, %198
  store x86_fp80 %199, x86_fp80* %19, align 16
  %200 = load x86_fp80, x86_fp80* %19, align 16
  %201 = load x86_fp80, x86_fp80* %17, align 16
  %202 = load x86_fp80, x86_fp80* %9, align 16
  %203 = fadd x86_fp80 %201, %202
  %204 = fmul x86_fp80 %200, %203
  %205 = fptosi x86_fp80 %204 to i32
  %206 = call x86_fp80 @sqrtl(i32 %205)
  %207 = load x86_fp80*, x86_fp80** %13, align 8
  store x86_fp80 %206, x86_fp80* %207, align 16
  br label %248

208:                                              ; preds = %179
  %209 = load x86_fp80, x86_fp80* %9, align 16
  %210 = fcmp ogt x86_fp80 %209, 0xK3FFF8000000000000000
  br i1 %210, label %211, label %238

211:                                              ; preds = %208
  %212 = load x86_fp80, x86_fp80* %8, align 16
  %213 = load i32, i32* @LDBL_EPSILON, align 4
  %214 = sdiv i32 4, %213
  %215 = load i32, i32* @LDBL_EPSILON, align 4
  %216 = sdiv i32 %214, %215
  %217 = sitofp i32 %216 to x86_fp80
  %218 = fmul x86_fp80 %212, %217
  %219 = load x86_fp80, x86_fp80* %9, align 16
  %220 = fmul x86_fp80 %218, %219
  %221 = load x86_fp80, x86_fp80* %9, align 16
  %222 = fadd x86_fp80 %221, 0xK3FFF8000000000000000
  %223 = load x86_fp80, x86_fp80* %9, align 16
  %224 = fsub x86_fp80 %223, 0xK3FFF8000000000000000
  %225 = fmul x86_fp80 %222, %224
  %226 = fptosi x86_fp80 %225 to i32
  %227 = call x86_fp80 @sqrtl(i32 %226)
  %228 = fdiv x86_fp80 %220, %227
  %229 = load x86_fp80*, x86_fp80** %13, align 8
  store x86_fp80 %228, x86_fp80* %229, align 16
  %230 = load x86_fp80, x86_fp80* %9, align 16
  %231 = load i32, i32* @LDBL_EPSILON, align 4
  %232 = sdiv i32 4, %231
  %233 = load i32, i32* @LDBL_EPSILON, align 4
  %234 = sdiv i32 %232, %233
  %235 = sitofp i32 %234 to x86_fp80
  %236 = fmul x86_fp80 %230, %235
  %237 = load x86_fp80*, x86_fp80** %14, align 8
  store x86_fp80 %236, x86_fp80* %237, align 16
  br label %247

238:                                              ; preds = %208
  %239 = load x86_fp80, x86_fp80* %9, align 16
  %240 = fsub x86_fp80 0xK3FFF8000000000000000, %239
  %241 = load x86_fp80, x86_fp80* %9, align 16
  %242 = fadd x86_fp80 0xK3FFF8000000000000000, %241
  %243 = fmul x86_fp80 %240, %242
  %244 = fptosi x86_fp80 %243 to i32
  %245 = call x86_fp80 @sqrtl(i32 %244)
  %246 = load x86_fp80*, x86_fp80** %13, align 8
  store x86_fp80 %245, x86_fp80* %246, align 16
  br label %247

247:                                              ; preds = %238, %211
  br label %248

248:                                              ; preds = %247, %188
  br label %249

249:                                              ; preds = %248, %167
  br label %250

250:                                              ; preds = %133, %249, %147
  ret void
}

; Function Attrs: nounwind
declare dso_local x86_fp80 @hypotl(x86_fp80, x86_fp80) #1

declare dso_local x86_fp80 @sqrtl(i32) #2

declare dso_local i32 @fabsl(x86_fp80) #2

declare dso_local x86_fp80 @f(x86_fp80, x86_fp80, x86_fp80) #2

; Function Attrs: nounwind
declare dso_local x86_fp80 @log1pl(x86_fp80) #1

; Function Attrs: nounwind
declare dso_local x86_fp80 @logl(x86_fp80) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
