; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_asinl.c_asinl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_asinl.c_asinl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.IEEEl2bits = type { x86_fp80 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@BIAS = common dso_local global i32 0, align 4
@LDBL_NBIT = common dso_local global i32 0, align 4
@pio2_hi = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@pio2_lo = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@ASIN_LINEAR = common dso_local global i32 0, align 4
@huge = common dso_local global i64 0, align 8
@one = common dso_local global i64 0, align 8
@THRESH = common dso_local global i32 0, align 4
@pio4_hi = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local x86_fp80 @asinl(x86_fp80 %0) #0 {
  %2 = alloca x86_fp80, align 16
  %3 = alloca x86_fp80, align 16
  %4 = alloca %union.IEEEl2bits, align 16
  %5 = alloca x86_fp80, align 16
  %6 = alloca x86_fp80, align 16
  %7 = alloca x86_fp80, align 16
  %8 = alloca x86_fp80, align 16
  %9 = alloca x86_fp80, align 16
  %10 = alloca x86_fp80, align 16
  %11 = alloca x86_fp80, align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store x86_fp80 %0, x86_fp80* %3, align 16
  store x86_fp80 0xK00000000000000000000, x86_fp80* %5, align 16
  %14 = load x86_fp80, x86_fp80* %3, align 16
  %15 = bitcast %union.IEEEl2bits* %4 to x86_fp80*
  store x86_fp80 %14, x86_fp80* %15, align 16
  %16 = bitcast %union.IEEEl2bits* %4 to %struct.TYPE_3__*
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 16
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = and i32 %19, 32767
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* @BIAS, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %56

24:                                               ; preds = %1
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* @BIAS, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %24
  %29 = bitcast %union.IEEEl2bits* %4 to %struct.TYPE_4__*
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 16
  %32 = load i32, i32* @LDBL_NBIT, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = bitcast %union.IEEEl2bits* %4 to %struct.TYPE_4__*
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %34, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %28
  %41 = load x86_fp80, x86_fp80* %3, align 16
  %42 = load x86_fp80, x86_fp80* @pio2_hi, align 16
  %43 = fmul x86_fp80 %41, %42
  %44 = load x86_fp80, x86_fp80* %3, align 16
  %45 = load x86_fp80, x86_fp80* @pio2_lo, align 16
  %46 = fmul x86_fp80 %44, %45
  %47 = fadd x86_fp80 %43, %46
  store x86_fp80 %47, x86_fp80* %2, align 16
  br label %173

48:                                               ; preds = %28, %24
  %49 = load x86_fp80, x86_fp80* %3, align 16
  %50 = load x86_fp80, x86_fp80* %3, align 16
  %51 = fsub x86_fp80 %49, %50
  %52 = load x86_fp80, x86_fp80* %3, align 16
  %53 = load x86_fp80, x86_fp80* %3, align 16
  %54 = fsub x86_fp80 %52, %53
  %55 = fdiv x86_fp80 %51, %54
  store x86_fp80 %55, x86_fp80* %2, align 16
  br label %173

56:                                               ; preds = %1
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @BIAS, align 4
  %59 = sub nsw i32 %58, 1
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %92

61:                                               ; preds = %56
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @ASIN_LINEAR, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %61
  %66 = load i64, i64* @huge, align 8
  %67 = sitofp i64 %66 to x86_fp80
  %68 = load x86_fp80, x86_fp80* %3, align 16
  %69 = fadd x86_fp80 %67, %68
  %70 = load i64, i64* @one, align 8
  %71 = sitofp i64 %70 to x86_fp80
  %72 = fcmp ogt x86_fp80 %69, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load x86_fp80, x86_fp80* %3, align 16
  store x86_fp80 %74, x86_fp80* %2, align 16
  br label %173

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75, %61
  %77 = load x86_fp80, x86_fp80* %3, align 16
  %78 = load x86_fp80, x86_fp80* %3, align 16
  %79 = fmul x86_fp80 %77, %78
  store x86_fp80 %79, x86_fp80* %5, align 16
  %80 = load x86_fp80, x86_fp80* %5, align 16
  %81 = call x86_fp80 @P(x86_fp80 %80)
  store x86_fp80 %81, x86_fp80* %7, align 16
  %82 = load x86_fp80, x86_fp80* %5, align 16
  %83 = call x86_fp80 @Q(x86_fp80 %82)
  store x86_fp80 %83, x86_fp80* %8, align 16
  %84 = load x86_fp80, x86_fp80* %7, align 16
  %85 = load x86_fp80, x86_fp80* %8, align 16
  %86 = fdiv x86_fp80 %84, %85
  store x86_fp80 %86, x86_fp80* %6, align 16
  %87 = load x86_fp80, x86_fp80* %3, align 16
  %88 = load x86_fp80, x86_fp80* %3, align 16
  %89 = load x86_fp80, x86_fp80* %6, align 16
  %90 = fmul x86_fp80 %88, %89
  %91 = fadd x86_fp80 %87, %90
  store x86_fp80 %91, x86_fp80* %2, align 16
  br label %173

92:                                               ; preds = %56
  br label %93

93:                                               ; preds = %92
  %94 = load i64, i64* @one, align 8
  %95 = load x86_fp80, x86_fp80* %3, align 16
  %96 = call i64 @fabsl(x86_fp80 %95)
  %97 = sub nsw i64 %94, %96
  %98 = sitofp i64 %97 to x86_fp80
  store x86_fp80 %98, x86_fp80* %6, align 16
  %99 = load x86_fp80, x86_fp80* %6, align 16
  %100 = fmul x86_fp80 %99, 0xK3FFE8000000000000000
  store x86_fp80 %100, x86_fp80* %5, align 16
  %101 = load x86_fp80, x86_fp80* %5, align 16
  %102 = call x86_fp80 @P(x86_fp80 %101)
  store x86_fp80 %102, x86_fp80* %7, align 16
  %103 = load x86_fp80, x86_fp80* %5, align 16
  %104 = call x86_fp80 @Q(x86_fp80 %103)
  store x86_fp80 %104, x86_fp80* %8, align 16
  %105 = load x86_fp80, x86_fp80* %5, align 16
  %106 = call x86_fp80 @sqrtl(x86_fp80 %105) #3
  store x86_fp80 %106, x86_fp80* %11, align 16
  %107 = bitcast %union.IEEEl2bits* %4 to %struct.TYPE_4__*
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 16
  %110 = load i32, i32* @THRESH, align 4
  %111 = icmp sge i32 %109, %110
  br i1 %111, label %112, label %126

112:                                              ; preds = %93
  %113 = load x86_fp80, x86_fp80* %7, align 16
  %114 = load x86_fp80, x86_fp80* %8, align 16
  %115 = fdiv x86_fp80 %113, %114
  store x86_fp80 %115, x86_fp80* %6, align 16
  %116 = load x86_fp80, x86_fp80* @pio2_hi, align 16
  %117 = load x86_fp80, x86_fp80* %11, align 16
  %118 = load x86_fp80, x86_fp80* %11, align 16
  %119 = load x86_fp80, x86_fp80* %6, align 16
  %120 = fmul x86_fp80 %118, %119
  %121 = fadd x86_fp80 %117, %120
  %122 = fmul x86_fp80 0xK40008000000000000000, %121
  %123 = load x86_fp80, x86_fp80* @pio2_lo, align 16
  %124 = fsub x86_fp80 %122, %123
  %125 = fsub x86_fp80 %116, %124
  store x86_fp80 %125, x86_fp80* %5, align 16
  br label %165

126:                                              ; preds = %93
  %127 = load x86_fp80, x86_fp80* %11, align 16
  %128 = bitcast %union.IEEEl2bits* %4 to x86_fp80*
  store x86_fp80 %127, x86_fp80* %128, align 16
  %129 = bitcast %union.IEEEl2bits* %4 to %struct.TYPE_4__*
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  store i32 0, i32* %130, align 4
  %131 = bitcast %union.IEEEl2bits* %4 to x86_fp80*
  %132 = load x86_fp80, x86_fp80* %131, align 16
  store x86_fp80 %132, x86_fp80* %6, align 16
  %133 = load x86_fp80, x86_fp80* %5, align 16
  %134 = load x86_fp80, x86_fp80* %6, align 16
  %135 = load x86_fp80, x86_fp80* %6, align 16
  %136 = fmul x86_fp80 %134, %135
  %137 = fsub x86_fp80 %133, %136
  %138 = load x86_fp80, x86_fp80* %11, align 16
  %139 = load x86_fp80, x86_fp80* %6, align 16
  %140 = fadd x86_fp80 %138, %139
  %141 = fdiv x86_fp80 %137, %140
  store x86_fp80 %141, x86_fp80* %9, align 16
  %142 = load x86_fp80, x86_fp80* %7, align 16
  %143 = load x86_fp80, x86_fp80* %8, align 16
  %144 = fdiv x86_fp80 %142, %143
  store x86_fp80 %144, x86_fp80* %10, align 16
  %145 = load x86_fp80, x86_fp80* %11, align 16
  %146 = fmul x86_fp80 0xK40008000000000000000, %145
  %147 = load x86_fp80, x86_fp80* %10, align 16
  %148 = fmul x86_fp80 %146, %147
  %149 = load x86_fp80, x86_fp80* @pio2_lo, align 16
  %150 = load x86_fp80, x86_fp80* %9, align 16
  %151 = fmul x86_fp80 0xK40008000000000000000, %150
  %152 = fsub x86_fp80 %149, %151
  %153 = fsub x86_fp80 %148, %152
  store x86_fp80 %153, x86_fp80* %7, align 16
  %154 = load double, double* @pio4_hi, align 8
  %155 = fpext double %154 to x86_fp80
  %156 = load x86_fp80, x86_fp80* %6, align 16
  %157 = fmul x86_fp80 0xK40008000000000000000, %156
  %158 = fsub x86_fp80 %155, %157
  store x86_fp80 %158, x86_fp80* %8, align 16
  %159 = load double, double* @pio4_hi, align 8
  %160 = fpext double %159 to x86_fp80
  %161 = load x86_fp80, x86_fp80* %7, align 16
  %162 = load x86_fp80, x86_fp80* %8, align 16
  %163 = fsub x86_fp80 %161, %162
  %164 = fsub x86_fp80 %160, %163
  store x86_fp80 %164, x86_fp80* %5, align 16
  br label %165

165:                                              ; preds = %126, %112
  %166 = load i32, i32* %12, align 4
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %165
  %169 = load x86_fp80, x86_fp80* %5, align 16
  store x86_fp80 %169, x86_fp80* %2, align 16
  br label %173

170:                                              ; preds = %165
  %171 = load x86_fp80, x86_fp80* %5, align 16
  %172 = fneg x86_fp80 %171
  store x86_fp80 %172, x86_fp80* %2, align 16
  br label %173

173:                                              ; preds = %170, %168, %76, %73, %48, %40
  %174 = load x86_fp80, x86_fp80* %2, align 16
  ret x86_fp80 %174
}

declare dso_local x86_fp80 @P(x86_fp80) #1

declare dso_local x86_fp80 @Q(x86_fp80) #1

declare dso_local i64 @fabsl(x86_fp80) #1

; Function Attrs: nounwind
declare dso_local x86_fp80 @sqrtl(x86_fp80) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
