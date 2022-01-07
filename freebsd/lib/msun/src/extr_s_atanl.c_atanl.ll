; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_atanl.c_atanl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_atanl.c_atanl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.IEEEl2bits = type { x86_fp80 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@ATAN_CONST = common dso_local global i32 0, align 4
@BIAS = common dso_local global i32 0, align 4
@LDBL_MAX_EXP = common dso_local global i32 0, align 4
@LDBL_NBIT = common dso_local global i32 0, align 4
@atanhi = common dso_local global x86_fp80* null, align 8
@atanlo = common dso_local global x86_fp80* null, align 8
@MANH_SIZE = common dso_local global i32 0, align 4
@ATAN_LINEAR = common dso_local global i32 0, align 4
@huge = common dso_local global double 0.000000e+00, align 8
@one = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local x86_fp80 @atanl(x86_fp80 %0) #0 {
  %2 = alloca x86_fp80, align 16
  %3 = alloca x86_fp80, align 16
  %4 = alloca %union.IEEEl2bits, align 16
  %5 = alloca x86_fp80, align 16
  %6 = alloca x86_fp80, align 16
  %7 = alloca x86_fp80, align 16
  %8 = alloca x86_fp80, align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store x86_fp80 %0, x86_fp80* %3, align 16
  %13 = load x86_fp80, x86_fp80* %3, align 16
  %14 = bitcast %union.IEEEl2bits* %4 to x86_fp80*
  store x86_fp80 %13, x86_fp80* %14, align 16
  %15 = bitcast %union.IEEEl2bits* %4 to %struct.TYPE_3__*
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 16
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = and i32 %18, 32767
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @ATAN_CONST, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %65

23:                                               ; preds = %1
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @BIAS, align 4
  %26 = load i32, i32* @LDBL_MAX_EXP, align 4
  %27 = add nsw i32 %25, %26
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %23
  %30 = bitcast %union.IEEEl2bits* %4 to %struct.TYPE_4__*
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 16
  %33 = load i32, i32* @LDBL_NBIT, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = bitcast %union.IEEEl2bits* %4 to %struct.TYPE_4__*
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %29
  %42 = load x86_fp80, x86_fp80* %3, align 16
  %43 = load x86_fp80, x86_fp80* %3, align 16
  %44 = fadd x86_fp80 %42, %43
  store x86_fp80 %44, x86_fp80* %2, align 16
  br label %208

45:                                               ; preds = %29, %23
  %46 = load i32, i32* %10, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load x86_fp80*, x86_fp80** @atanhi, align 8
  %50 = getelementptr inbounds x86_fp80, x86_fp80* %49, i64 3
  %51 = load x86_fp80, x86_fp80* %50, align 16
  %52 = load x86_fp80*, x86_fp80** @atanlo, align 8
  %53 = getelementptr inbounds x86_fp80, x86_fp80* %52, i64 3
  %54 = load x86_fp80, x86_fp80* %53, align 16
  %55 = fadd x86_fp80 %51, %54
  store x86_fp80 %55, x86_fp80* %2, align 16
  br label %208

56:                                               ; preds = %45
  %57 = load x86_fp80*, x86_fp80** @atanhi, align 8
  %58 = getelementptr inbounds x86_fp80, x86_fp80* %57, i64 3
  %59 = load x86_fp80, x86_fp80* %58, align 16
  %60 = fneg x86_fp80 %59
  %61 = load x86_fp80*, x86_fp80** @atanlo, align 8
  %62 = getelementptr inbounds x86_fp80, x86_fp80* %61, i64 3
  %63 = load x86_fp80, x86_fp80* %62, align 16
  %64 = fsub x86_fp80 %60, %63
  store x86_fp80 %64, x86_fp80* %2, align 16
  br label %208

65:                                               ; preds = %1
  %66 = load i32, i32* %11, align 4
  %67 = shl i32 %66, 8
  %68 = bitcast %union.IEEEl2bits* %4 to %struct.TYPE_4__*
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 16
  %71 = load i32, i32* @MANH_SIZE, align 4
  %72 = sub nsw i32 %71, 9
  %73 = ashr i32 %70, %72
  %74 = and i32 %73, 255
  %75 = or i32 %67, %74
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @BIAS, align 4
  %78 = sub nsw i32 %77, 2
  %79 = shl i32 %78, 8
  %80 = add nsw i32 %79, 192
  %81 = icmp slt i32 %76, %80
  br i1 %81, label %82, label %98

82:                                               ; preds = %65
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @ATAN_LINEAR, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %97

86:                                               ; preds = %82
  %87 = load double, double* @huge, align 8
  %88 = fpext double %87 to x86_fp80
  %89 = load x86_fp80, x86_fp80* %3, align 16
  %90 = fadd x86_fp80 %88, %89
  %91 = load double, double* @one, align 8
  %92 = fpext double %91 to x86_fp80
  %93 = fcmp ogt x86_fp80 %90, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = load x86_fp80, x86_fp80* %3, align 16
  store x86_fp80 %95, x86_fp80* %2, align 16
  br label %208

96:                                               ; preds = %86
  br label %97

97:                                               ; preds = %96, %82
  store i32 -1, i32* %9, align 4
  br label %154

98:                                               ; preds = %65
  %99 = load x86_fp80, x86_fp80* %3, align 16
  %100 = call x86_fp80 @llvm.fabs.f80(x86_fp80 %99)
  store x86_fp80 %100, x86_fp80* %3, align 16
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* @BIAS, align 4
  %103 = shl i32 %102, 8
  %104 = add nsw i32 %103, 48
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %133

106:                                              ; preds = %98
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* @BIAS, align 4
  %109 = sub nsw i32 %108, 1
  %110 = shl i32 %109, 8
  %111 = add nsw i32 %110, 96
  %112 = icmp slt i32 %107, %111
  br i1 %112, label %113, label %122

113:                                              ; preds = %106
  store i32 0, i32* %9, align 4
  %114 = load x86_fp80, x86_fp80* %3, align 16
  %115 = fmul x86_fp80 0xK40008000000000000000, %114
  %116 = load double, double* @one, align 8
  %117 = fpext double %116 to x86_fp80
  %118 = fsub x86_fp80 %115, %117
  %119 = load x86_fp80, x86_fp80* %3, align 16
  %120 = fadd x86_fp80 0xK40008000000000000000, %119
  %121 = fdiv x86_fp80 %118, %120
  store x86_fp80 %121, x86_fp80* %3, align 16
  br label %132

122:                                              ; preds = %106
  store i32 1, i32* %9, align 4
  %123 = load x86_fp80, x86_fp80* %3, align 16
  %124 = load double, double* @one, align 8
  %125 = fpext double %124 to x86_fp80
  %126 = fsub x86_fp80 %123, %125
  %127 = load x86_fp80, x86_fp80* %3, align 16
  %128 = load double, double* @one, align 8
  %129 = fpext double %128 to x86_fp80
  %130 = fadd x86_fp80 %127, %129
  %131 = fdiv x86_fp80 %126, %130
  store x86_fp80 %131, x86_fp80* %3, align 16
  br label %132

132:                                              ; preds = %122, %113
  br label %153

133:                                              ; preds = %98
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* @BIAS, align 4
  %136 = add nsw i32 %135, 1
  %137 = shl i32 %136, 8
  %138 = add nsw i32 %137, 56
  %139 = icmp slt i32 %134, %138
  br i1 %139, label %140, label %149

140:                                              ; preds = %133
  store i32 2, i32* %9, align 4
  %141 = load x86_fp80, x86_fp80* %3, align 16
  %142 = fsub x86_fp80 %141, 0xK3FFFC000000000000000
  %143 = load double, double* @one, align 8
  %144 = fpext double %143 to x86_fp80
  %145 = load x86_fp80, x86_fp80* %3, align 16
  %146 = fmul x86_fp80 0xK3FFFC000000000000000, %145
  %147 = fadd x86_fp80 %144, %146
  %148 = fdiv x86_fp80 %142, %147
  store x86_fp80 %148, x86_fp80* %3, align 16
  br label %152

149:                                              ; preds = %133
  store i32 3, i32* %9, align 4
  %150 = load x86_fp80, x86_fp80* %3, align 16
  %151 = fdiv x86_fp80 0xKBFFF8000000000000000, %150
  store x86_fp80 %151, x86_fp80* %3, align 16
  br label %152

152:                                              ; preds = %149, %140
  br label %153

153:                                              ; preds = %152, %132
  br label %154

154:                                              ; preds = %153, %97
  %155 = load x86_fp80, x86_fp80* %3, align 16
  %156 = load x86_fp80, x86_fp80* %3, align 16
  %157 = fmul x86_fp80 %155, %156
  store x86_fp80 %157, x86_fp80* %8, align 16
  %158 = load x86_fp80, x86_fp80* %8, align 16
  %159 = load x86_fp80, x86_fp80* %8, align 16
  %160 = fmul x86_fp80 %158, %159
  store x86_fp80 %160, x86_fp80* %5, align 16
  %161 = load x86_fp80, x86_fp80* %8, align 16
  %162 = load x86_fp80, x86_fp80* %5, align 16
  %163 = call x86_fp80 @T_even(x86_fp80 %162)
  %164 = fmul x86_fp80 %161, %163
  store x86_fp80 %164, x86_fp80* %6, align 16
  %165 = load x86_fp80, x86_fp80* %5, align 16
  %166 = load x86_fp80, x86_fp80* %5, align 16
  %167 = call x86_fp80 @T_odd(x86_fp80 %166)
  %168 = fmul x86_fp80 %165, %167
  store x86_fp80 %168, x86_fp80* %7, align 16
  %169 = load i32, i32* %9, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %154
  %172 = load x86_fp80, x86_fp80* %3, align 16
  %173 = load x86_fp80, x86_fp80* %3, align 16
  %174 = load x86_fp80, x86_fp80* %6, align 16
  %175 = load x86_fp80, x86_fp80* %7, align 16
  %176 = fadd x86_fp80 %174, %175
  %177 = fmul x86_fp80 %173, %176
  %178 = fsub x86_fp80 %172, %177
  store x86_fp80 %178, x86_fp80* %2, align 16
  br label %208

179:                                              ; preds = %154
  %180 = load x86_fp80*, x86_fp80** @atanhi, align 8
  %181 = load i32, i32* %9, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds x86_fp80, x86_fp80* %180, i64 %182
  %184 = load x86_fp80, x86_fp80* %183, align 16
  %185 = load x86_fp80, x86_fp80* %3, align 16
  %186 = load x86_fp80, x86_fp80* %6, align 16
  %187 = load x86_fp80, x86_fp80* %7, align 16
  %188 = fadd x86_fp80 %186, %187
  %189 = fmul x86_fp80 %185, %188
  %190 = load x86_fp80*, x86_fp80** @atanlo, align 8
  %191 = load i32, i32* %9, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds x86_fp80, x86_fp80* %190, i64 %192
  %194 = load x86_fp80, x86_fp80* %193, align 16
  %195 = fsub x86_fp80 %189, %194
  %196 = load x86_fp80, x86_fp80* %3, align 16
  %197 = fsub x86_fp80 %195, %196
  %198 = fsub x86_fp80 %184, %197
  store x86_fp80 %198, x86_fp80* %8, align 16
  %199 = load i32, i32* %10, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %179
  %202 = load x86_fp80, x86_fp80* %8, align 16
  %203 = fneg x86_fp80 %202
  br label %206

204:                                              ; preds = %179
  %205 = load x86_fp80, x86_fp80* %8, align 16
  br label %206

206:                                              ; preds = %204, %201
  %207 = phi x86_fp80 [ %203, %201 ], [ %205, %204 ]
  store x86_fp80 %207, x86_fp80* %2, align 16
  br label %208

208:                                              ; preds = %206, %171, %94, %56, %48, %41
  %209 = load x86_fp80, x86_fp80* %2, align 16
  ret x86_fp80 %209
}

; Function Attrs: nounwind readnone speculatable willreturn
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #1

declare dso_local x86_fp80 @T_even(x86_fp80) #2

declare dso_local x86_fp80 @T_odd(x86_fp80) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
