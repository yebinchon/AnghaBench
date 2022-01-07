; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/ld128/extr_s_logl.c_log1pl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/ld128/extr_s_logl.c_log1pl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zero = common dso_local global i32 0, align 4
@L2I = common dso_local global i32 0, align 4
@P3 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@P4 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@P5 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@P6 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@P7 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@P8 = common dso_local global double 0.000000e+00, align 8
@P9 = common dso_local global double 0.000000e+00, align 8
@P10 = common dso_local global double 0.000000e+00, align 8
@P11 = common dso_local global double 0.000000e+00, align 8
@P12 = common dso_local global double 0.000000e+00, align 8
@P13 = common dso_local global double 0.000000e+00, align 8
@P14 = common dso_local global double 0.000000e+00, align 8
@ln2_lo = common dso_local global double 0.000000e+00, align 8
@P2 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@ln2_hi = common dso_local global double 0.000000e+00, align 8
@FE_UNDERFLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local x86_fp80 @log1pl(x86_fp80 %0) #0 {
  %2 = alloca x86_fp80, align 16
  %3 = alloca x86_fp80, align 16
  %4 = alloca x86_fp80, align 16
  %5 = alloca x86_fp80, align 16
  %6 = alloca x86_fp80, align 16
  %7 = alloca x86_fp80, align 16
  %8 = alloca x86_fp80, align 16
  %9 = alloca x86_fp80, align 16
  %10 = alloca x86_fp80, align 16
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca x86_fp80, align 16
  %21 = alloca double, align 8
  store x86_fp80 %0, x86_fp80* %3, align 16
  %22 = call i32 @DOPRINT_START(x86_fp80* %3)
  %23 = load i32, i32* %19, align 4
  %24 = load i64, i64* %14, align 8
  %25 = load i64, i64* %15, align 8
  %26 = load x86_fp80, x86_fp80* %3, align 16
  %27 = call i32 @EXTRACT_LDBL128_WORDS(i32 %23, i64 %24, i64 %25, x86_fp80 %26)
  %28 = load i32, i32* %19, align 4
  %29 = icmp slt i32 %28, 16383
  br i1 %29, label %30, label %70

30:                                               ; preds = %1
  %31 = load i32, i32* %19, align 4
  %32 = and i32 %31, 32767
  store i32 %32, i32* %18, align 4
  %33 = load i32, i32* %18, align 4
  %34 = icmp sge i32 %33, 16383
  br i1 %34, label %35, label %57

35:                                               ; preds = %30
  %36 = load i32, i32* %18, align 4
  %37 = icmp eq i32 %36, 16383
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = load i64, i64* %14, align 8
  %40 = load i64, i64* %15, align 8
  %41 = or i64 %39, %40
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i32, i32* @zero, align 4
  %45 = sdiv i32 -1, %44
  %46 = sitofp i32 %45 to x86_fp80
  %47 = call i32 @RETURNP(x86_fp80 %46)
  br label %48

48:                                               ; preds = %43, %38, %35
  %49 = load x86_fp80, x86_fp80* %3, align 16
  %50 = load x86_fp80, x86_fp80* %3, align 16
  %51 = fsub x86_fp80 %49, %50
  %52 = load x86_fp80, x86_fp80* %3, align 16
  %53 = load x86_fp80, x86_fp80* %3, align 16
  %54 = fsub x86_fp80 %52, %53
  %55 = fdiv x86_fp80 %51, %54
  %56 = call i32 @RETURNP(x86_fp80 %55)
  br label %57

57:                                               ; preds = %48, %30
  %58 = load i32, i32* %18, align 4
  %59 = icmp sle i32 %58, 16269
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load x86_fp80, x86_fp80* %3, align 16
  %62 = fptosi x86_fp80 %61 to i32
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load x86_fp80, x86_fp80* %3, align 16
  %66 = call i32 @RETURNP(x86_fp80 %65)
  br label %67

67:                                               ; preds = %64, %60
  br label %68

68:                                               ; preds = %67, %57
  store x86_fp80 0xK3FFF8000000000000000, x86_fp80* %9, align 16
  %69 = load x86_fp80, x86_fp80* %3, align 16
  store x86_fp80 %69, x86_fp80* %6, align 16
  br label %87

70:                                               ; preds = %1
  %71 = load i32, i32* %19, align 4
  %72 = icmp sge i32 %71, 32767
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load x86_fp80, x86_fp80* %3, align 16
  %75 = load x86_fp80, x86_fp80* %3, align 16
  %76 = fadd x86_fp80 %74, %75
  %77 = call i32 @RETURNP(x86_fp80 %76)
  br label %86

78:                                               ; preds = %70
  %79 = load i32, i32* %19, align 4
  %80 = icmp slt i32 %79, 16609
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load x86_fp80, x86_fp80* %3, align 16
  store x86_fp80 %82, x86_fp80* %9, align 16
  store x86_fp80 0xK3FFF8000000000000000, x86_fp80* %6, align 16
  br label %85

83:                                               ; preds = %78
  %84 = load x86_fp80, x86_fp80* %3, align 16
  store x86_fp80 %84, x86_fp80* %9, align 16
  store x86_fp80 0xK00000000000000000000, x86_fp80* %6, align 16
  br label %85

85:                                               ; preds = %83, %81
  br label %86

86:                                               ; preds = %85, %73
  br label %87

87:                                               ; preds = %86, %68
  %88 = call i32 (...) @ENTERI()
  %89 = load x86_fp80, x86_fp80* %9, align 16
  %90 = load x86_fp80, x86_fp80* %6, align 16
  %91 = fadd x86_fp80 %89, %90
  store x86_fp80 %91, x86_fp80* %3, align 16
  %92 = load x86_fp80, x86_fp80* %9, align 16
  %93 = load x86_fp80, x86_fp80* %3, align 16
  %94 = fsub x86_fp80 %92, %93
  %95 = load x86_fp80, x86_fp80* %6, align 16
  %96 = fadd x86_fp80 %94, %95
  store x86_fp80 %96, x86_fp80* %6, align 16
  %97 = load i32, i32* %19, align 4
  %98 = load i64, i64* %14, align 8
  %99 = load i64, i64* %15, align 8
  %100 = load x86_fp80, x86_fp80* %3, align 16
  %101 = call i32 @EXTRACT_LDBL128_WORDS(i32 %97, i64 %98, i64 %99, x86_fp80 %100)
  store i32 -16383, i32* %17, align 4
  %102 = load i32, i32* %19, align 4
  %103 = load i32, i32* %17, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %17, align 4
  %105 = load i32, i32* %17, align 4
  %106 = sitofp i32 %105 to double
  store double %106, double* %13, align 8
  %107 = load x86_fp80, x86_fp80* %3, align 16
  %108 = call i32 @SET_LDBL_EXPSIGN(x86_fp80 %107, i32 16383)
  store x86_fp80 0xK3FFF8000000000000000, x86_fp80* %10, align 16
  %109 = load x86_fp80, x86_fp80* %10, align 16
  %110 = load i32, i32* %19, align 4
  %111 = and i32 %110, 32767
  %112 = sub nsw i32 32766, %111
  %113 = call i32 @SET_LDBL_EXPSIGN(x86_fp80 %109, i32 %112)
  %114 = load x86_fp80, x86_fp80* %10, align 16
  %115 = load x86_fp80, x86_fp80* %6, align 16
  %116 = fmul x86_fp80 %115, %114
  store x86_fp80 %116, x86_fp80* %6, align 16
  %117 = load i64, i64* %14, align 8
  %118 = load i32, i32* @L2I, align 4
  %119 = sub nsw i32 %118, 2
  %120 = zext i32 %119 to i64
  %121 = shl i64 1, %120
  %122 = add nsw i64 %117, %121
  %123 = load i32, i32* @L2I, align 4
  %124 = sub nsw i32 %123, 1
  %125 = zext i32 %124 to i64
  %126 = ashr i64 %122, %125
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %16, align 4
  %128 = load x86_fp80, x86_fp80* %20, align 16
  %129 = load i64, i64* %14, align 8
  %130 = load i64, i64* %15, align 8
  %131 = and i64 %130, -16777216
  %132 = call i32 @INSERT_LDBL128_WORDS(x86_fp80 %128, i32 16383, i64 %129, i64 %131)
  %133 = load x86_fp80, x86_fp80* %3, align 16
  %134 = load x86_fp80, x86_fp80* %20, align 16
  %135 = fsub x86_fp80 %133, %134
  %136 = fptrunc x86_fp80 %135 to double
  store double %136, double* %21, align 8
  %137 = load x86_fp80, x86_fp80* %20, align 16
  %138 = load i32, i32* %16, align 4
  %139 = call x86_fp80 @G(i32 %138)
  %140 = fmul x86_fp80 %137, %139
  %141 = fsub x86_fp80 %140, 0xK3FFF8000000000000000
  %142 = load double, double* %21, align 8
  %143 = fpext double %142 to x86_fp80
  %144 = load i32, i32* %16, align 4
  %145 = call x86_fp80 @G(i32 %144)
  %146 = fmul x86_fp80 %143, %145
  %147 = fadd x86_fp80 %141, %146
  store x86_fp80 %147, x86_fp80* %5, align 16
  %148 = load x86_fp80, x86_fp80* %6, align 16
  %149 = load i32, i32* %16, align 4
  %150 = call x86_fp80 @G(i32 %149)
  %151 = fmul x86_fp80 %148, %150
  %152 = fptrunc x86_fp80 %151 to double
  store double %152, double* %11, align 8
  %153 = load x86_fp80, x86_fp80* %5, align 16
  %154 = load double, double* %11, align 8
  %155 = fpext double %154 to x86_fp80
  %156 = fadd x86_fp80 %153, %155
  store x86_fp80 %156, x86_fp80* %4, align 16
  %157 = load x86_fp80, x86_fp80* %5, align 16
  %158 = load x86_fp80, x86_fp80* %4, align 16
  %159 = fsub x86_fp80 %157, %158
  %160 = load double, double* %11, align 8
  %161 = fpext double %160 to x86_fp80
  %162 = fadd x86_fp80 %159, %161
  %163 = fptrunc x86_fp80 %162 to double
  store double %163, double* %11, align 8
  %164 = load x86_fp80, x86_fp80* %4, align 16
  store x86_fp80 %164, x86_fp80* %5, align 16
  %165 = load x86_fp80, x86_fp80* %4, align 16
  %166 = fptrunc x86_fp80 %165 to double
  store double %166, double* %12, align 8
  %167 = load x86_fp80, x86_fp80* %4, align 16
  %168 = load x86_fp80, x86_fp80* %4, align 16
  %169 = fmul x86_fp80 %167, %168
  %170 = load x86_fp80, x86_fp80* %4, align 16
  %171 = fmul x86_fp80 %169, %170
  %172 = load x86_fp80, x86_fp80* @P3, align 16
  %173 = load x86_fp80, x86_fp80* %4, align 16
  %174 = load x86_fp80, x86_fp80* @P4, align 16
  %175 = load x86_fp80, x86_fp80* %4, align 16
  %176 = load x86_fp80, x86_fp80* @P5, align 16
  %177 = load x86_fp80, x86_fp80* %4, align 16
  %178 = load x86_fp80, x86_fp80* @P6, align 16
  %179 = load x86_fp80, x86_fp80* %4, align 16
  %180 = load x86_fp80, x86_fp80* @P7, align 16
  %181 = load x86_fp80, x86_fp80* %4, align 16
  %182 = load double, double* @P8, align 8
  %183 = load double, double* %12, align 8
  %184 = load double, double* @P9, align 8
  %185 = load double, double* %12, align 8
  %186 = load double, double* @P10, align 8
  %187 = load double, double* %12, align 8
  %188 = load double, double* @P11, align 8
  %189 = load double, double* %12, align 8
  %190 = load double, double* @P12, align 8
  %191 = load double, double* %12, align 8
  %192 = load double, double* @P13, align 8
  %193 = load double, double* %12, align 8
  %194 = load double, double* @P14, align 8
  %195 = fmul double %193, %194
  %196 = fadd double %192, %195
  %197 = fmul double %191, %196
  %198 = fadd double %190, %197
  %199 = fmul double %189, %198
  %200 = fadd double %188, %199
  %201 = fmul double %187, %200
  %202 = fadd double %186, %201
  %203 = fmul double %185, %202
  %204 = fadd double %184, %203
  %205 = fmul double %183, %204
  %206 = fadd double %182, %205
  %207 = fpext double %206 to x86_fp80
  %208 = fmul x86_fp80 %181, %207
  %209 = fadd x86_fp80 %180, %208
  %210 = fmul x86_fp80 %179, %209
  %211 = fadd x86_fp80 %178, %210
  %212 = fmul x86_fp80 %177, %211
  %213 = fadd x86_fp80 %176, %212
  %214 = fmul x86_fp80 %175, %213
  %215 = fadd x86_fp80 %174, %214
  %216 = fmul x86_fp80 %173, %215
  %217 = fadd x86_fp80 %172, %216
  %218 = fmul x86_fp80 %171, %217
  %219 = load i32, i32* %16, align 4
  %220 = call double @F_lo(i32 %219)
  %221 = load double, double* %13, align 8
  %222 = load double, double* @ln2_lo, align 8
  %223 = fmul double %221, %222
  %224 = fadd double %220, %223
  %225 = load double, double* %11, align 8
  %226 = fadd double %224, %225
  %227 = fpext double %226 to x86_fp80
  %228 = fadd x86_fp80 %218, %227
  %229 = load x86_fp80, x86_fp80* %4, align 16
  %230 = load x86_fp80, x86_fp80* %4, align 16
  %231 = fmul x86_fp80 %229, %230
  %232 = load x86_fp80, x86_fp80* @P2, align 16
  %233 = fmul x86_fp80 %231, %232
  %234 = fadd x86_fp80 %228, %233
  store x86_fp80 %234, x86_fp80* %8, align 16
  %235 = load x86_fp80, x86_fp80* %5, align 16
  store x86_fp80 %235, x86_fp80* %7, align 16
  %236 = load x86_fp80, x86_fp80* %7, align 16
  %237 = load x86_fp80, x86_fp80* %8, align 16
  %238 = load i32, i32* %16, align 4
  %239 = call i64 @F_hi(i32 %238)
  %240 = sitofp i64 %239 to double
  %241 = load double, double* %13, align 8
  %242 = load double, double* @ln2_hi, align 8
  %243 = fmul double %241, %242
  %244 = fadd double %240, %243
  %245 = fptosi double %244 to i64
  %246 = call i32 @_3sumF(x86_fp80 %236, x86_fp80 %237, i64 %245)
  %247 = load x86_fp80, x86_fp80* %7, align 16
  %248 = load x86_fp80, x86_fp80* %8, align 16
  %249 = call i32 @RETURN2PI(x86_fp80 %247, x86_fp80 %248)
  %250 = load x86_fp80, x86_fp80* %2, align 16
  ret x86_fp80 %250
}

declare dso_local i32 @DOPRINT_START(x86_fp80*) #1

declare dso_local i32 @EXTRACT_LDBL128_WORDS(i32, i64, i64, x86_fp80) #1

declare dso_local i32 @RETURNP(x86_fp80) #1

declare dso_local i32 @ENTERI(...) #1

declare dso_local i32 @SET_LDBL_EXPSIGN(x86_fp80, i32) #1

declare dso_local i32 @INSERT_LDBL128_WORDS(x86_fp80, i32, i64, i64) #1

declare dso_local x86_fp80 @G(i32) #1

declare dso_local double @F_lo(i32) #1

declare dso_local i32 @_3sumF(x86_fp80, x86_fp80, i64) #1

declare dso_local i64 @F_hi(i32) #1

declare dso_local i32 @RETURN2PI(x86_fp80, x86_fp80) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
