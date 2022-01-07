; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_nexttowardf.c_nexttowardf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_nexttowardf.c_nexttowardf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.IEEEl2bits = type { x86_fp80, [16 x i8] }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }

@LDBL_INFNAN_EXP = common dso_local global i64 0, align 8
@LDBL_NBIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @nexttowardf(float %0, x86_fp80 %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca x86_fp80, align 16
  %6 = alloca %union.IEEEl2bits, align 16
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store float %0, float* %4, align 4
  store x86_fp80 %1, x86_fp80* %5, align 16
  %10 = load i32, i32* %8, align 4
  %11 = load float, float* %4, align 4
  %12 = call i32 @GET_FLOAT_WORD(i32 %10, float %11)
  %13 = load i32, i32* %8, align 4
  %14 = and i32 %13, 2147483647
  store i32 %14, i32* %9, align 4
  %15 = load x86_fp80, x86_fp80* %5, align 16
  %16 = bitcast %union.IEEEl2bits* %6 to x86_fp80*
  store x86_fp80 %15, x86_fp80* %16, align 16
  %17 = load i32, i32* %9, align 4
  %18 = icmp sgt i32 %17, 2139095040
  br i1 %18, label %37, label %19

19:                                               ; preds = %2
  %20 = bitcast %union.IEEEl2bits* %6 to %struct.TYPE_2__*
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 16
  %23 = load i64, i64* @LDBL_INFNAN_EXP, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %19
  %26 = bitcast %union.IEEEl2bits* %6 to %struct.TYPE_2__*
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @LDBL_NBIT, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = bitcast %union.IEEEl2bits* %6 to %struct.TYPE_2__*
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %25, %2
  %38 = load float, float* %4, align 4
  %39 = fpext float %38 to x86_fp80
  %40 = load x86_fp80, x86_fp80* %5, align 16
  %41 = fadd x86_fp80 %39, %40
  %42 = fptrunc x86_fp80 %41 to float
  store float %42, float* %3, align 4
  br label %119

43:                                               ; preds = %25, %19
  %44 = load float, float* %4, align 4
  %45 = fpext float %44 to x86_fp80
  %46 = load x86_fp80, x86_fp80* %5, align 16
  %47 = fcmp oeq x86_fp80 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load x86_fp80, x86_fp80* %5, align 16
  %50 = fptrunc x86_fp80 %49 to float
  store float %50, float* %3, align 4
  br label %119

51:                                               ; preds = %43
  %52 = load i32, i32* %9, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %51
  %55 = load float, float* %4, align 4
  %56 = bitcast %union.IEEEl2bits* %6 to %struct.TYPE_2__*
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 16
  %59 = shl i32 %58, 31
  %60 = or i32 %59, 1
  %61 = call i32 @SET_FLOAT_WORD(float %55, i32 %60)
  %62 = load float, float* %4, align 4
  %63 = load float, float* %4, align 4
  %64 = fmul float %62, %63
  store volatile float %64, float* %7, align 4
  %65 = load volatile float, float* %7, align 4
  %66 = load float, float* %4, align 4
  %67 = fcmp oeq float %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %54
  %69 = load volatile float, float* %7, align 4
  store float %69, float* %3, align 4
  br label %119

70:                                               ; preds = %54
  %71 = load float, float* %4, align 4
  store float %71, float* %3, align 4
  br label %119

72:                                               ; preds = %51
  %73 = load i32, i32* %8, align 4
  %74 = icmp sge i32 %73, 0
  %75 = zext i1 %74 to i32
  %76 = load float, float* %4, align 4
  %77 = fpext float %76 to x86_fp80
  %78 = load x86_fp80, x86_fp80* %5, align 16
  %79 = fcmp olt x86_fp80 %77, %78
  %80 = zext i1 %79 to i32
  %81 = xor i32 %75, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %72
  %84 = load i32, i32* %8, align 4
  %85 = sub nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %89

86:                                               ; preds = %72
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %86, %83
  %90 = load i32, i32* %8, align 4
  %91 = and i32 %90, 2139095040
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp sge i32 %92, 2139095040
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load float, float* %4, align 4
  %96 = load float, float* %4, align 4
  %97 = fadd float %95, %96
  store float %97, float* %3, align 4
  br label %119

98:                                               ; preds = %89
  %99 = load i32, i32* %9, align 4
  %100 = icmp slt i32 %99, 8388608
  br i1 %100, label %101, label %114

101:                                              ; preds = %98
  %102 = load float, float* %4, align 4
  %103 = load float, float* %4, align 4
  %104 = fmul float %102, %103
  store volatile float %104, float* %7, align 4
  %105 = load volatile float, float* %7, align 4
  %106 = load float, float* %4, align 4
  %107 = fcmp une float %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %101
  %109 = load float, float* %4, align 4
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @SET_FLOAT_WORD(float %109, i32 %110)
  %112 = load float, float* %4, align 4
  store float %112, float* %3, align 4
  br label %119

113:                                              ; preds = %101
  br label %114

114:                                              ; preds = %113, %98
  %115 = load float, float* %4, align 4
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @SET_FLOAT_WORD(float %115, i32 %116)
  %118 = load float, float* %4, align 4
  store float %118, float* %3, align 4
  br label %119

119:                                              ; preds = %114, %108, %94, %70, %68, %48, %37
  %120 = load float, float* %3, align 4
  ret float %120
}

declare dso_local i32 @GET_FLOAT_WORD(i32, float) #1

declare dso_local i32 @SET_FLOAT_WORD(float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
