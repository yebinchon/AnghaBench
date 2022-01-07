; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_cbrt.c_cbrt.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_cbrt.c_cbrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { double }

@B2 = common dso_local global i32 0, align 4
@B1 = common dso_local global i32 0, align 4
@P0 = common dso_local global double 0.000000e+00, align 8
@P1 = common dso_local global double 0.000000e+00, align 8
@P2 = common dso_local global double 0.000000e+00, align 8
@P3 = common dso_local global double 0.000000e+00, align 8
@P4 = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone readnone uwtable
define dso_local double @cbrt(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.anon, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store double %0, double* %3, align 8
  store double 0.000000e+00, double* %8, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %12, align 4
  %15 = load double, double* %3, align 8
  %16 = call i32 @EXTRACT_WORDS(i32 %13, i32 %14, double %15)
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, -2147483648
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %4, align 4
  %21 = xor i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp sge i32 %22, 2146435072
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load double, double* %3, align 8
  %26 = load double, double* %3, align 8
  %27 = fadd double %25, %26
  store double %27, double* %2, align 8
  br label %129

28:                                               ; preds = %1
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 1048576
  br i1 %30, label %31, label %56

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %12, align 4
  %34 = or i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load double, double* %3, align 8
  store double %37, double* %2, align 8
  br label %129

38:                                               ; preds = %31
  %39 = load double, double* %8, align 8
  %40 = call i32 @SET_HIGH_WORD(double %39, i32 1129316352)
  %41 = load double, double* %3, align 8
  %42 = load double, double* %8, align 8
  %43 = fmul double %42, %41
  store double %43, double* %8, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load double, double* %8, align 8
  %46 = call i32 @GET_HIGH_WORD(i32 %44, double %45)
  %47 = load double, double* %8, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = and i32 %49, 2147483647
  %51 = sdiv i32 %50, 3
  %52 = load i32, i32* @B2, align 4
  %53 = add nsw i32 %51, %52
  %54 = or i32 %48, %53
  %55 = call i32 @INSERT_WORDS(double %47, i32 %54, i32 0)
  br label %65

56:                                               ; preds = %28
  %57 = load double, double* %8, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %4, align 4
  %60 = sdiv i32 %59, 3
  %61 = load i32, i32* @B1, align 4
  %62 = add nsw i32 %60, %61
  %63 = or i32 %58, %62
  %64 = call i32 @INSERT_WORDS(double %57, i32 %63, i32 0)
  br label %65

65:                                               ; preds = %56, %38
  %66 = load double, double* %8, align 8
  %67 = load double, double* %8, align 8
  %68 = fmul double %66, %67
  %69 = load double, double* %8, align 8
  %70 = load double, double* %3, align 8
  %71 = fdiv double %69, %70
  %72 = fmul double %68, %71
  store double %72, double* %6, align 8
  %73 = load double, double* %8, align 8
  %74 = load double, double* @P0, align 8
  %75 = load double, double* %6, align 8
  %76 = load double, double* @P1, align 8
  %77 = load double, double* %6, align 8
  %78 = load double, double* @P2, align 8
  %79 = fmul double %77, %78
  %80 = fadd double %76, %79
  %81 = fmul double %75, %80
  %82 = fadd double %74, %81
  %83 = load double, double* %6, align 8
  %84 = load double, double* %6, align 8
  %85 = fmul double %83, %84
  %86 = load double, double* %6, align 8
  %87 = fmul double %85, %86
  %88 = load double, double* @P3, align 8
  %89 = load double, double* %6, align 8
  %90 = load double, double* @P4, align 8
  %91 = fmul double %89, %90
  %92 = fadd double %88, %91
  %93 = fmul double %87, %92
  %94 = fadd double %82, %93
  %95 = fmul double %73, %94
  store double %95, double* %8, align 8
  %96 = load double, double* %8, align 8
  %97 = bitcast %union.anon* %5 to double*
  store double %96, double* %97, align 8
  %98 = bitcast %union.anon* %5 to i32*
  %99 = load i32, i32* %98, align 8
  %100 = add i32 %99, -2147483648
  %101 = zext i32 %100 to i64
  %102 = and i64 %101, -1073741824
  %103 = trunc i64 %102 to i32
  %104 = bitcast %union.anon* %5 to i32*
  store i32 %103, i32* %104, align 8
  %105 = bitcast %union.anon* %5 to double*
  %106 = load double, double* %105, align 8
  store double %106, double* %8, align 8
  %107 = load double, double* %8, align 8
  %108 = load double, double* %8, align 8
  %109 = fmul double %107, %108
  store double %109, double* %7, align 8
  %110 = load double, double* %3, align 8
  %111 = load double, double* %7, align 8
  %112 = fdiv double %110, %111
  store double %112, double* %6, align 8
  %113 = load double, double* %8, align 8
  %114 = load double, double* %8, align 8
  %115 = fadd double %113, %114
  store double %115, double* %9, align 8
  %116 = load double, double* %6, align 8
  %117 = load double, double* %8, align 8
  %118 = fsub double %116, %117
  %119 = load double, double* %9, align 8
  %120 = load double, double* %6, align 8
  %121 = fadd double %119, %120
  %122 = fdiv double %118, %121
  store double %122, double* %6, align 8
  %123 = load double, double* %8, align 8
  %124 = load double, double* %8, align 8
  %125 = load double, double* %6, align 8
  %126 = fmul double %124, %125
  %127 = fadd double %123, %126
  store double %127, double* %8, align 8
  %128 = load double, double* %8, align 8
  store double %128, double* %2, align 8
  br label %129

129:                                              ; preds = %65, %36, %24
  %130 = load double, double* %2, align 8
  ret double %130
}

declare dso_local i32 @EXTRACT_WORDS(i32, i32, double) #1

declare dso_local i32 @SET_HIGH_WORD(double, i32) #1

declare dso_local i32 @GET_HIGH_WORD(i32, double) #1

declare dso_local i32 @INSERT_WORDS(double, i32, i32) #1

attributes #0 = { noinline nounwind optnone readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
