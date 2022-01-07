; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_ldexp.c_ldexp.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_ldexp.c_ldexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@two54 = common dso_local global double 0.000000e+00, align 8
@tiny = common dso_local global double 0.000000e+00, align 8
@huge = common dso_local global double 0.000000e+00, align 8
@twom54 = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @ldexp(double %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store double %0, double* %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %8, align 4
  %11 = load double, double* %4, align 8
  %12 = call i32 @EXTRACT_WORDS(i32 %9, i32 %10, double %11)
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, 2146435072
  %15 = ashr i32 %14, 20
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, 2147483647
  %22 = or i32 %19, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load double, double* %4, align 8
  store double %25, double* %3, align 8
  br label %106

26:                                               ; preds = %18
  %27 = load double, double* @two54, align 8
  %28 = load double, double* %4, align 8
  %29 = fmul double %28, %27
  store double %29, double* %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load double, double* %4, align 8
  %32 = call i32 @GET_HIGH_WORD(i32 %30, double %31)
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, 2146435072
  %35 = ashr i32 %34, 20
  %36 = sub nsw i32 %35, 54
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, -50000
  br i1 %38, label %39, label %43

39:                                               ; preds = %26
  %40 = load double, double* @tiny, align 8
  %41 = load double, double* %4, align 8
  %42 = fmul double %40, %41
  store double %42, double* %3, align 8
  br label %106

43:                                               ; preds = %26
  br label %44

44:                                               ; preds = %43, %2
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %45, 2047
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load double, double* %4, align 8
  %49 = load double, double* %4, align 8
  %50 = fadd double %48, %49
  store double %50, double* %3, align 8
  br label %106

51:                                               ; preds = %44
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %52, %53
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp sgt i32 %55, 2046
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load double, double* @huge, align 8
  %59 = load double, double* @huge, align 8
  %60 = load double, double* %4, align 8
  %61 = call double @_copysign(double %59, double %60)
  %62 = fmul double %58, %61
  store double %62, double* %3, align 8
  br label %106

63:                                               ; preds = %51
  %64 = load i32, i32* %6, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load double, double* %4, align 8
  %68 = load i32, i32* %7, align 4
  %69 = and i32 %68, -2146435073
  %70 = load i32, i32* %6, align 4
  %71 = shl i32 %70, 20
  %72 = or i32 %69, %71
  %73 = call i32 @SET_HIGH_WORD(double %67, i32 %72)
  %74 = load double, double* %4, align 8
  store double %74, double* %3, align 8
  br label %106

75:                                               ; preds = %63
  %76 = load i32, i32* %6, align 4
  %77 = icmp sle i32 %76, -54
  br i1 %77, label %78, label %93

78:                                               ; preds = %75
  %79 = load i32, i32* %5, align 4
  %80 = icmp sgt i32 %79, 50000
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load double, double* @huge, align 8
  %83 = load double, double* @huge, align 8
  %84 = load double, double* %4, align 8
  %85 = call double @_copysign(double %83, double %84)
  %86 = fmul double %82, %85
  store double %86, double* %3, align 8
  br label %106

87:                                               ; preds = %78
  %88 = load double, double* @tiny, align 8
  %89 = load double, double* @tiny, align 8
  %90 = load double, double* %4, align 8
  %91 = call double @_copysign(double %89, double %90)
  %92 = fmul double %88, %91
  store double %92, double* %3, align 8
  br label %106

93:                                               ; preds = %75
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 54
  store i32 %95, i32* %6, align 4
  %96 = load double, double* %4, align 8
  %97 = load i32, i32* %7, align 4
  %98 = and i32 %97, -2146435073
  %99 = load i32, i32* %6, align 4
  %100 = shl i32 %99, 20
  %101 = or i32 %98, %100
  %102 = call i32 @SET_HIGH_WORD(double %96, i32 %101)
  %103 = load double, double* %4, align 8
  %104 = load double, double* @twom54, align 8
  %105 = fmul double %103, %104
  store double %105, double* %3, align 8
  br label %106

106:                                              ; preds = %93, %87, %81, %66, %57, %47, %39, %24
  %107 = load double, double* %3, align 8
  ret double %107
}

declare dso_local i32 @EXTRACT_WORDS(i32, i32, double) #1

declare dso_local i32 @GET_HIGH_WORD(i32, double) #1

declare dso_local double @_copysign(double, double) #1

declare dso_local i32 @SET_HIGH_WORD(double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
