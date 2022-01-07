; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/ld80/extr_s_logl.c_log1pl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/ld80/extr_s_logl.c_log1pl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zero = common dso_local global i32 0, align 4
@L2I = common dso_local global i32 0, align 4
@P8 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@P7 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@P6 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@P5 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@ln2_lo = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@P4 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@P3 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@P2 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@ln2_hi = common dso_local global x86_fp80 0xK00000000000000000000, align 16
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
  %11 = alloca x86_fp80, align 16
  %12 = alloca x86_fp80, align 16
  %13 = alloca x86_fp80, align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca x86_fp80, align 16
  %21 = alloca x86_fp80, align 16
  %22 = alloca float, align 4
  store x86_fp80 %0, x86_fp80* %3, align 16
  %23 = call i32 @DOPRINT_START(x86_fp80* %3)
  %24 = load i32, i32* %19, align 4
  %25 = load i32, i32* %15, align 4
  %26 = load x86_fp80, x86_fp80* %3, align 16
  %27 = call i32 @EXTRACT_LDBL80_WORDS(i32 %24, i32 %25, x86_fp80 %26)
  %28 = load i32, i32* %19, align 4
  %29 = icmp slt i32 %28, 16383
  br i1 %29, label %30, label %69

30:                                               ; preds = %1
  %31 = load i32, i32* %19, align 4
  %32 = and i32 %31, 32767
  store i32 %32, i32* %18, align 4
  %33 = load i32, i32* %18, align 4
  %34 = icmp sge i32 %33, 16383
  br i1 %34, label %35, label %56

35:                                               ; preds = %30
  %36 = load i32, i32* %18, align 4
  %37 = icmp eq i32 %36, 16383
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load i32, i32* %15, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp eq i64 %40, -9223372036854775808
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i32, i32* @zero, align 4
  %44 = sdiv i32 -1, %43
  %45 = sitofp i32 %44 to x86_fp80
  %46 = call i32 @RETURNP(x86_fp80 %45)
  br label %47

47:                                               ; preds = %42, %38, %35
  %48 = load x86_fp80, x86_fp80* %3, align 16
  %49 = load x86_fp80, x86_fp80* %3, align 16
  %50 = fsub x86_fp80 %48, %49
  %51 = load x86_fp80, x86_fp80* %3, align 16
  %52 = load x86_fp80, x86_fp80* %3, align 16
  %53 = fsub x86_fp80 %51, %52
  %54 = fdiv x86_fp80 %50, %53
  %55 = call i32 @RETURNP(x86_fp80 %54)
  br label %56

56:                                               ; preds = %47, %30
  %57 = load i32, i32* %18, align 4
  %58 = icmp sle i32 %57, 16318
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load x86_fp80, x86_fp80* %3, align 16
  %61 = fptosi x86_fp80 %60 to i32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load x86_fp80, x86_fp80* %3, align 16
  %65 = call i32 @RETURNP(x86_fp80 %64)
  br label %66

66:                                               ; preds = %63, %59
  br label %67

67:                                               ; preds = %66, %56
  store x86_fp80 0xK3FFF8000000000000000, x86_fp80* %12, align 16
  %68 = load x86_fp80, x86_fp80* %3, align 16
  store x86_fp80 %68, x86_fp80* %8, align 16
  br label %86

69:                                               ; preds = %1
  %70 = load i32, i32* %19, align 4
  %71 = icmp sge i32 %70, 32767
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load x86_fp80, x86_fp80* %3, align 16
  %74 = load x86_fp80, x86_fp80* %3, align 16
  %75 = fadd x86_fp80 %73, %74
  %76 = call i32 @RETURNP(x86_fp80 %75)
  br label %85

77:                                               ; preds = %69
  %78 = load i32, i32* %19, align 4
  %79 = icmp slt i32 %78, 16511
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load x86_fp80, x86_fp80* %3, align 16
  store x86_fp80 %81, x86_fp80* %12, align 16
  store x86_fp80 0xK3FFF8000000000000000, x86_fp80* %8, align 16
  br label %84

82:                                               ; preds = %77
  %83 = load x86_fp80, x86_fp80* %3, align 16
  store x86_fp80 %83, x86_fp80* %12, align 16
  store x86_fp80 0xK00000000000000000000, x86_fp80* %8, align 16
  br label %84

84:                                               ; preds = %82, %80
  br label %85

85:                                               ; preds = %84, %72
  br label %86

86:                                               ; preds = %85, %67
  %87 = call i32 (...) @ENTERI()
  %88 = load x86_fp80, x86_fp80* %12, align 16
  %89 = load x86_fp80, x86_fp80* %8, align 16
  %90 = fadd x86_fp80 %88, %89
  store x86_fp80 %90, x86_fp80* %3, align 16
  %91 = load x86_fp80, x86_fp80* %12, align 16
  %92 = load x86_fp80, x86_fp80* %3, align 16
  %93 = fsub x86_fp80 %91, %92
  %94 = load x86_fp80, x86_fp80* %8, align 16
  %95 = fadd x86_fp80 %93, %94
  store x86_fp80 %95, x86_fp80* %8, align 16
  %96 = load i32, i32* %19, align 4
  %97 = load i32, i32* %15, align 4
  %98 = load x86_fp80, x86_fp80* %3, align 16
  %99 = call i32 @EXTRACT_LDBL80_WORDS(i32 %96, i32 %97, x86_fp80 %98)
  store i32 -16383, i32* %17, align 4
  %100 = load i32, i32* %19, align 4
  %101 = load i32, i32* %17, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %17, align 4
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = and i64 %104, 9223372036854775807
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %17, align 4
  %108 = sitofp i32 %107 to x86_fp80
  store x86_fp80 %108, x86_fp80* %7, align 16
  %109 = load x86_fp80, x86_fp80* %3, align 16
  %110 = call i32 @SET_LDBL_EXPSIGN(x86_fp80 %109, i32 16383)
  store x86_fp80 0xK3FFF8000000000000000, x86_fp80* %13, align 16
  %111 = load x86_fp80, x86_fp80* %13, align 16
  %112 = load i32, i32* %19, align 4
  %113 = and i32 %112, 32767
  %114 = sub nsw i32 32766, %113
  %115 = call i32 @SET_LDBL_EXPSIGN(x86_fp80 %111, i32 %114)
  %116 = load x86_fp80, x86_fp80* %13, align 16
  %117 = load x86_fp80, x86_fp80* %8, align 16
  %118 = fmul x86_fp80 %117, %116
  store x86_fp80 %118, x86_fp80* %8, align 16
  %119 = load i32, i32* %14, align 4
  %120 = sext i32 %119 to i64
  %121 = load i32, i32* @L2I, align 4
  %122 = sub nsw i32 %121, 2
  %123 = zext i32 %122 to i64
  %124 = shl i64 1, %123
  %125 = add nsw i64 %120, %124
  %126 = load i32, i32* @L2I, align 4
  %127 = sub nsw i32 %126, 1
  %128 = zext i32 %127 to i64
  %129 = ashr i64 %125, %128
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %16, align 4
  %131 = load float, float* %22, align 4
  %132 = load i32, i32* %15, align 4
  %133 = ashr i32 %132, 40
  %134 = or i32 %133, 1065353216
  %135 = call i32 @SET_FLOAT_WORD(float %131, i32 %134)
  %136 = load float, float* %22, align 4
  %137 = fpext float %136 to x86_fp80
  store x86_fp80 %137, x86_fp80* %20, align 16
  %138 = load x86_fp80, x86_fp80* %3, align 16
  %139 = load x86_fp80, x86_fp80* %20, align 16
  %140 = fsub x86_fp80 %138, %139
  store x86_fp80 %140, x86_fp80* %21, align 16
  %141 = load x86_fp80, x86_fp80* %20, align 16
  %142 = load i32, i32* %16, align 4
  %143 = call x86_fp80 @G(i32 %142)
  %144 = fmul x86_fp80 %141, %143
  %145 = fsub x86_fp80 %144, 0xK3FFF8000000000000000
  %146 = load x86_fp80, x86_fp80* %21, align 16
  %147 = load i32, i32* %16, align 4
  %148 = call x86_fp80 @G(i32 %147)
  %149 = fmul x86_fp80 %146, %148
  %150 = fadd x86_fp80 %145, %149
  store x86_fp80 %150, x86_fp80* %5, align 16
  %151 = load x86_fp80, x86_fp80* %8, align 16
  %152 = load i32, i32* %16, align 4
  %153 = call x86_fp80 @G(i32 %152)
  %154 = fmul x86_fp80 %151, %153
  store x86_fp80 %154, x86_fp80* %6, align 16
  %155 = load x86_fp80, x86_fp80* %5, align 16
  %156 = load x86_fp80, x86_fp80* %6, align 16
  %157 = fadd x86_fp80 %155, %156
  store x86_fp80 %157, x86_fp80* %4, align 16
  %158 = load x86_fp80, x86_fp80* %5, align 16
  %159 = load x86_fp80, x86_fp80* %4, align 16
  %160 = fsub x86_fp80 %158, %159
  %161 = load x86_fp80, x86_fp80* %6, align 16
  %162 = fadd x86_fp80 %160, %161
  store x86_fp80 %162, x86_fp80* %6, align 16
  %163 = load x86_fp80, x86_fp80* %4, align 16
  store x86_fp80 %163, x86_fp80* %5, align 16
  %164 = load x86_fp80, x86_fp80* %4, align 16
  %165 = load x86_fp80, x86_fp80* %4, align 16
  %166 = fmul x86_fp80 %164, %165
  store x86_fp80 %166, x86_fp80* %11, align 16
  %167 = load x86_fp80, x86_fp80* %11, align 16
  %168 = load x86_fp80, x86_fp80* %4, align 16
  %169 = fmul x86_fp80 %167, %168
  %170 = load x86_fp80, x86_fp80* %11, align 16
  %171 = fmul x86_fp80 %169, %170
  %172 = load x86_fp80, x86_fp80* %11, align 16
  %173 = load x86_fp80, x86_fp80* %4, align 16
  %174 = load x86_fp80, x86_fp80* @P8, align 16
  %175 = fmul x86_fp80 %173, %174
  %176 = load x86_fp80, x86_fp80* @P7, align 16
  %177 = fadd x86_fp80 %175, %176
  %178 = fmul x86_fp80 %172, %177
  %179 = load x86_fp80, x86_fp80* %4, align 16
  %180 = load x86_fp80, x86_fp80* @P6, align 16
  %181 = fmul x86_fp80 %179, %180
  %182 = load x86_fp80, x86_fp80* @P5, align 16
  %183 = fadd x86_fp80 %181, %182
  %184 = fadd x86_fp80 %178, %183
  %185 = fmul x86_fp80 %171, %184
  %186 = load i32, i32* %16, align 4
  %187 = call x86_fp80 @F_lo(i32 %186)
  %188 = load x86_fp80, x86_fp80* %7, align 16
  %189 = load x86_fp80, x86_fp80* @ln2_lo, align 16
  %190 = fmul x86_fp80 %188, %189
  %191 = fadd x86_fp80 %187, %190
  %192 = load x86_fp80, x86_fp80* %6, align 16
  %193 = fadd x86_fp80 %191, %192
  %194 = load x86_fp80, x86_fp80* %11, align 16
  %195 = load x86_fp80, x86_fp80* %4, align 16
  %196 = fmul x86_fp80 %194, %195
  %197 = load x86_fp80, x86_fp80* %4, align 16
  %198 = load x86_fp80, x86_fp80* @P4, align 16
  %199 = fmul x86_fp80 %197, %198
  %200 = load x86_fp80, x86_fp80* @P3, align 16
  %201 = fadd x86_fp80 %199, %200
  %202 = fmul x86_fp80 %196, %201
  %203 = fadd x86_fp80 %193, %202
  %204 = fadd x86_fp80 %185, %203
  %205 = load x86_fp80, x86_fp80* %11, align 16
  %206 = load x86_fp80, x86_fp80* @P2, align 16
  %207 = fmul x86_fp80 %205, %206
  %208 = fadd x86_fp80 %204, %207
  store x86_fp80 %208, x86_fp80* %10, align 16
  %209 = load x86_fp80, x86_fp80* %5, align 16
  store x86_fp80 %209, x86_fp80* %9, align 16
  %210 = load x86_fp80, x86_fp80* %9, align 16
  %211 = load x86_fp80, x86_fp80* %10, align 16
  %212 = load i32, i32* %16, align 4
  %213 = call i64 @F_hi(i32 %212)
  %214 = sitofp i64 %213 to x86_fp80
  %215 = load x86_fp80, x86_fp80* %7, align 16
  %216 = load x86_fp80, x86_fp80* @ln2_hi, align 16
  %217 = fmul x86_fp80 %215, %216
  %218 = fadd x86_fp80 %214, %217
  %219 = fptosi x86_fp80 %218 to i64
  %220 = call i32 @_3sumF(x86_fp80 %210, x86_fp80 %211, i64 %219)
  %221 = load x86_fp80, x86_fp80* %9, align 16
  %222 = load x86_fp80, x86_fp80* %10, align 16
  %223 = call i32 @RETURN2PI(x86_fp80 %221, x86_fp80 %222)
  %224 = load x86_fp80, x86_fp80* %2, align 16
  ret x86_fp80 %224
}

declare dso_local i32 @DOPRINT_START(x86_fp80*) #1

declare dso_local i32 @EXTRACT_LDBL80_WORDS(i32, i32, x86_fp80) #1

declare dso_local i32 @RETURNP(x86_fp80) #1

declare dso_local i32 @ENTERI(...) #1

declare dso_local i32 @SET_LDBL_EXPSIGN(x86_fp80, i32) #1

declare dso_local i32 @SET_FLOAT_WORD(float, i32) #1

declare dso_local x86_fp80 @G(i32) #1

declare dso_local x86_fp80 @F_lo(i32) #1

declare dso_local i32 @_3sumF(x86_fp80, x86_fp80, i64) #1

declare dso_local i64 @F_hi(i32) #1

declare dso_local i32 @RETURN2PI(x86_fp80, x86_fp80) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
