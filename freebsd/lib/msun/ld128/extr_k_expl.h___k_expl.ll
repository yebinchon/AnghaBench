; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/ld128/extr_k_expl.h___k_expl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/ld128/extr_k_expl.h___k_expl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { x86_fp80, x86_fp80 }

@INV_L = common dso_local global double 0.000000e+00, align 8
@INTERVALS = common dso_local global i32 0, align 4
@LOG2_INTERVALS = common dso_local global i32 0, align 4
@L1 = common dso_local global double 0.000000e+00, align 8
@L2 = common dso_local global double 0.000000e+00, align 8
@A2 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@A3 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@A4 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@A5 = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@A6 = common dso_local global double 0.000000e+00, align 8
@A7 = common dso_local global double 0.000000e+00, align 8
@A8 = common dso_local global double 0.000000e+00, align 8
@A9 = common dso_local global double 0.000000e+00, align 8
@A10 = common dso_local global double 0.000000e+00, align 8
@tbl = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (x86_fp80, x86_fp80*, x86_fp80*, i32*)* @__k_expl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__k_expl(x86_fp80 %0, x86_fp80* %1, x86_fp80* %2, i32* %3) #0 {
  %5 = alloca x86_fp80, align 16
  %6 = alloca x86_fp80*, align 8
  %7 = alloca x86_fp80*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca x86_fp80, align 16
  %10 = alloca x86_fp80, align 16
  %11 = alloca x86_fp80, align 16
  %12 = alloca x86_fp80, align 16
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store x86_fp80 %0, x86_fp80* %5, align 16
  store x86_fp80* %1, x86_fp80** %6, align 8
  store x86_fp80* %2, x86_fp80** %7, align 8
  store i32* %3, i32** %8, align 8
  %18 = load x86_fp80, x86_fp80* %5, align 16
  %19 = fptrunc x86_fp80 %18 to double
  %20 = load double, double* @INV_L, align 8
  %21 = fmul double %19, %20
  %22 = call double @rnint(double %21)
  store double %22, double* %14, align 8
  %23 = load double, double* %14, align 8
  %24 = call i32 @irint(double %23)
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %16, align 4
  %26 = load i32, i32* @INTERVALS, align 4
  %27 = urem i32 %25, %26
  store i32 %27, i32* %17, align 4
  %28 = load i32, i32* %16, align 4
  %29 = load i32, i32* @LOG2_INTERVALS, align 4
  %30 = ashr i32 %28, %29
  %31 = load i32*, i32** %8, align 8
  store i32 %30, i32* %31, align 4
  %32 = load x86_fp80, x86_fp80* %5, align 16
  %33 = load double, double* %14, align 8
  %34 = load double, double* @L1, align 8
  %35 = fmul double %33, %34
  %36 = fpext double %35 to x86_fp80
  %37 = fsub x86_fp80 %32, %36
  store x86_fp80 %37, x86_fp80* %11, align 16
  %38 = load double, double* %14, align 8
  %39 = load double, double* @L2, align 8
  %40 = fneg double %39
  %41 = fmul double %38, %40
  store double %41, double* %15, align 8
  %42 = load x86_fp80, x86_fp80* %11, align 16
  %43 = load double, double* %15, align 8
  %44 = fpext double %43 to x86_fp80
  %45 = fadd x86_fp80 %42, %44
  store x86_fp80 %45, x86_fp80* %10, align 16
  %46 = load x86_fp80, x86_fp80* %10, align 16
  %47 = fptrunc x86_fp80 %46 to double
  store double %47, double* %13, align 8
  %48 = load double, double* %15, align 8
  %49 = fpext double %48 to x86_fp80
  %50 = load x86_fp80, x86_fp80* %10, align 16
  %51 = load x86_fp80, x86_fp80* %10, align 16
  %52 = fmul x86_fp80 %50, %51
  %53 = load x86_fp80, x86_fp80* @A2, align 16
  %54 = load x86_fp80, x86_fp80* %10, align 16
  %55 = load x86_fp80, x86_fp80* @A3, align 16
  %56 = load x86_fp80, x86_fp80* %10, align 16
  %57 = load x86_fp80, x86_fp80* @A4, align 16
  %58 = load x86_fp80, x86_fp80* %10, align 16
  %59 = load x86_fp80, x86_fp80* @A5, align 16
  %60 = load x86_fp80, x86_fp80* %10, align 16
  %61 = load double, double* @A6, align 8
  %62 = load double, double* %13, align 8
  %63 = load double, double* @A7, align 8
  %64 = load double, double* %13, align 8
  %65 = load double, double* @A8, align 8
  %66 = load double, double* %13, align 8
  %67 = load double, double* @A9, align 8
  %68 = load double, double* %13, align 8
  %69 = load double, double* @A10, align 8
  %70 = fmul double %68, %69
  %71 = fadd double %67, %70
  %72 = fmul double %66, %71
  %73 = fadd double %65, %72
  %74 = fmul double %64, %73
  %75 = fadd double %63, %74
  %76 = fmul double %62, %75
  %77 = fadd double %61, %76
  %78 = fpext double %77 to x86_fp80
  %79 = fmul x86_fp80 %60, %78
  %80 = fadd x86_fp80 %59, %79
  %81 = fmul x86_fp80 %58, %80
  %82 = fadd x86_fp80 %57, %81
  %83 = fmul x86_fp80 %56, %82
  %84 = fadd x86_fp80 %55, %83
  %85 = fmul x86_fp80 %54, %84
  %86 = fadd x86_fp80 %53, %85
  %87 = fmul x86_fp80 %52, %86
  %88 = fadd x86_fp80 %49, %87
  store x86_fp80 %88, x86_fp80* %9, align 16
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tbl, align 8
  %90 = load i32, i32* %17, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load x86_fp80, x86_fp80* %93, align 16
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tbl, align 8
  %96 = load i32, i32* %17, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load x86_fp80, x86_fp80* %99, align 16
  %101 = fadd x86_fp80 %94, %100
  store x86_fp80 %101, x86_fp80* %12, align 16
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tbl, align 8
  %103 = load i32, i32* %17, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = load x86_fp80, x86_fp80* %106, align 16
  %108 = load x86_fp80*, x86_fp80** %6, align 8
  store x86_fp80 %107, x86_fp80* %108, align 16
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tbl, align 8
  %110 = load i32, i32* %17, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load x86_fp80, x86_fp80* %113, align 16
  %115 = load x86_fp80, x86_fp80* %12, align 16
  %116 = load x86_fp80, x86_fp80* %9, align 16
  %117 = load x86_fp80, x86_fp80* %11, align 16
  %118 = fadd x86_fp80 %116, %117
  %119 = fmul x86_fp80 %115, %118
  %120 = fadd x86_fp80 %114, %119
  %121 = load x86_fp80*, x86_fp80** %7, align 8
  store x86_fp80 %120, x86_fp80* %121, align 16
  ret void
}

declare dso_local double @rnint(double) #1

declare dso_local i32 @irint(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
