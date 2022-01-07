; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_modf.c_modf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_modf.c_modf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@one = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @modf(double %0, double* %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store double %0, double* %4, align 8
  store double* %1, double** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load double, double* %4, align 8
  %16 = call i32 @EXTRACT_WORDS(i32 %13, i32 %14, double %15)
  %17 = load i32, i32* %6, align 4
  %18 = ashr i32 %17, 20
  %19 = and i32 %18, 2047
  %20 = sub nsw i32 %19, 1023
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 20
  br i1 %22, label %23, label %65

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load double*, double** %5, align 8
  %28 = load double, double* %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, -2147483648
  %31 = call i32 @INSERT_WORDS(double %28, i32 %30, i32 0)
  %32 = load double, double* %4, align 8
  store double %32, double* %3, align 8
  br label %121

33:                                               ; preds = %23
  %34 = load i32, i32* %8, align 4
  %35 = ashr i32 1048575, %34
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %33
  %43 = load double, double* %4, align 8
  %44 = load double*, double** %5, align 8
  store double %43, double* %44, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load double, double* %4, align 8
  %47 = call i32 @GET_HIGH_WORD(i32 %45, double %46)
  %48 = load double, double* %4, align 8
  %49 = load i32, i32* %10, align 4
  %50 = and i32 %49, -2147483648
  %51 = call i32 @INSERT_WORDS(double %48, i32 %50, i32 0)
  %52 = load double, double* %4, align 8
  store double %52, double* %3, align 8
  br label %121

53:                                               ; preds = %33
  %54 = load double*, double** %5, align 8
  %55 = load double, double* %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %9, align 4
  %58 = xor i32 %57, -1
  %59 = and i32 %56, %58
  %60 = call i32 @INSERT_WORDS(double %55, i32 %59, i32 0)
  %61 = load double, double* %4, align 8
  %62 = load double*, double** %5, align 8
  %63 = load double, double* %62, align 8
  %64 = fsub double %61, %63
  store double %64, double* %3, align 8
  br label %121

65:                                               ; preds = %2
  %66 = load i32, i32* %8, align 4
  %67 = icmp sgt i32 %66, 51
  br i1 %67, label %68, label %89

68:                                               ; preds = %65
  %69 = load i32, i32* %8, align 4
  %70 = icmp eq i32 %69, 1024
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load double, double* %4, align 8
  %73 = load double*, double** %5, align 8
  store double %72, double* %73, align 8
  %74 = load double, double* %4, align 8
  %75 = fdiv double 0.000000e+00, %74
  store double %75, double* %3, align 8
  br label %121

76:                                               ; preds = %68
  %77 = load double, double* %4, align 8
  %78 = load double, double* @one, align 8
  %79 = fmul double %77, %78
  %80 = load double*, double** %5, align 8
  store double %79, double* %80, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load double, double* %4, align 8
  %83 = call i32 @GET_HIGH_WORD(i32 %81, double %82)
  %84 = load double, double* %4, align 8
  %85 = load i32, i32* %11, align 4
  %86 = and i32 %85, -2147483648
  %87 = call i32 @INSERT_WORDS(double %84, i32 %86, i32 0)
  %88 = load double, double* %4, align 8
  store double %88, double* %3, align 8
  br label %121

89:                                               ; preds = %65
  %90 = load i32, i32* %8, align 4
  %91 = sub nsw i32 %90, 20
  %92 = ashr i32 -1, %91
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %9, align 4
  %95 = and i32 %93, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %89
  %98 = load double, double* %4, align 8
  %99 = load double*, double** %5, align 8
  store double %98, double* %99, align 8
  %100 = load i32, i32* %12, align 4
  %101 = load double, double* %4, align 8
  %102 = call i32 @GET_HIGH_WORD(i32 %100, double %101)
  %103 = load double, double* %4, align 8
  %104 = load i32, i32* %12, align 4
  %105 = and i32 %104, -2147483648
  %106 = call i32 @INSERT_WORDS(double %103, i32 %105, i32 0)
  %107 = load double, double* %4, align 8
  store double %107, double* %3, align 8
  br label %121

108:                                              ; preds = %89
  %109 = load double*, double** %5, align 8
  %110 = load double, double* %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %9, align 4
  %114 = xor i32 %113, -1
  %115 = and i32 %112, %114
  %116 = call i32 @INSERT_WORDS(double %110, i32 %111, i32 %115)
  %117 = load double, double* %4, align 8
  %118 = load double*, double** %5, align 8
  %119 = load double, double* %118, align 8
  %120 = fsub double %117, %119
  store double %120, double* %3, align 8
  br label %121

121:                                              ; preds = %108, %97, %76, %71, %53, %42, %26
  %122 = load double, double* %3, align 8
  ret double %122
}

declare dso_local i32 @EXTRACT_WORDS(i32, i32, double) #1

declare dso_local i32 @INSERT_WORDS(double, i32, i32) #1

declare dso_local i32 @GET_HIGH_WORD(i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
