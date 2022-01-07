; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_j1.c_pone.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_e_j1.c_pone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pr8 = common dso_local global double* null, align 8
@ps8 = common dso_local global double* null, align 8
@pr5 = common dso_local global double* null, align 8
@ps5 = common dso_local global double* null, align 8
@pr3 = common dso_local global double* null, align 8
@ps3 = common dso_local global double* null, align 8
@pr2 = common dso_local global double* null, align 8
@ps2 = common dso_local global double* null, align 8
@one = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double)* @pone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @pone(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double*, align 8
  %4 = alloca double*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  store double %0, double* %2, align 8
  %9 = load i32, i32* %8, align 4
  %10 = load double, double* %2, align 8
  %11 = call i32 @GET_HIGH_WORD(i32 %9, double %10)
  %12 = load i32, i32* %8, align 4
  %13 = and i32 %12, 2147483647
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp sge i32 %14, 1075838976
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load double*, double** @pr8, align 8
  store double* %17, double** %3, align 8
  %18 = load double*, double** @ps8, align 8
  store double* %18, double** %4, align 8
  br label %36

19:                                               ; preds = %1
  %20 = load i32, i32* %8, align 4
  %21 = icmp sge i32 %20, 1074933387
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load double*, double** @pr5, align 8
  store double* %23, double** %3, align 8
  %24 = load double*, double** @ps5, align 8
  store double* %24, double** %4, align 8
  br label %35

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  %27 = icmp sge i32 %26, 1074191213
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load double*, double** @pr3, align 8
  store double* %29, double** %3, align 8
  %30 = load double*, double** @ps3, align 8
  store double* %30, double** %4, align 8
  br label %34

31:                                               ; preds = %25
  %32 = load double*, double** @pr2, align 8
  store double* %32, double** %3, align 8
  %33 = load double*, double** @ps2, align 8
  store double* %33, double** %4, align 8
  br label %34

34:                                               ; preds = %31, %28
  br label %35

35:                                               ; preds = %34, %22
  br label %36

36:                                               ; preds = %35, %16
  %37 = load double, double* @one, align 8
  %38 = load double, double* %2, align 8
  %39 = load double, double* %2, align 8
  %40 = fmul double %38, %39
  %41 = fdiv double %37, %40
  store double %41, double* %5, align 8
  %42 = load double*, double** %3, align 8
  %43 = getelementptr inbounds double, double* %42, i64 0
  %44 = load double, double* %43, align 8
  %45 = load double, double* %5, align 8
  %46 = load double*, double** %3, align 8
  %47 = getelementptr inbounds double, double* %46, i64 1
  %48 = load double, double* %47, align 8
  %49 = load double, double* %5, align 8
  %50 = load double*, double** %3, align 8
  %51 = getelementptr inbounds double, double* %50, i64 2
  %52 = load double, double* %51, align 8
  %53 = load double, double* %5, align 8
  %54 = load double*, double** %3, align 8
  %55 = getelementptr inbounds double, double* %54, i64 3
  %56 = load double, double* %55, align 8
  %57 = load double, double* %5, align 8
  %58 = load double*, double** %3, align 8
  %59 = getelementptr inbounds double, double* %58, i64 4
  %60 = load double, double* %59, align 8
  %61 = load double, double* %5, align 8
  %62 = load double*, double** %3, align 8
  %63 = getelementptr inbounds double, double* %62, i64 5
  %64 = load double, double* %63, align 8
  %65 = fmul double %61, %64
  %66 = fadd double %60, %65
  %67 = fmul double %57, %66
  %68 = fadd double %56, %67
  %69 = fmul double %53, %68
  %70 = fadd double %52, %69
  %71 = fmul double %49, %70
  %72 = fadd double %48, %71
  %73 = fmul double %45, %72
  %74 = fadd double %44, %73
  store double %74, double* %6, align 8
  %75 = load double, double* @one, align 8
  %76 = load double, double* %5, align 8
  %77 = load double*, double** %4, align 8
  %78 = getelementptr inbounds double, double* %77, i64 0
  %79 = load double, double* %78, align 8
  %80 = load double, double* %5, align 8
  %81 = load double*, double** %4, align 8
  %82 = getelementptr inbounds double, double* %81, i64 1
  %83 = load double, double* %82, align 8
  %84 = load double, double* %5, align 8
  %85 = load double*, double** %4, align 8
  %86 = getelementptr inbounds double, double* %85, i64 2
  %87 = load double, double* %86, align 8
  %88 = load double, double* %5, align 8
  %89 = load double*, double** %4, align 8
  %90 = getelementptr inbounds double, double* %89, i64 3
  %91 = load double, double* %90, align 8
  %92 = load double, double* %5, align 8
  %93 = load double*, double** %4, align 8
  %94 = getelementptr inbounds double, double* %93, i64 4
  %95 = load double, double* %94, align 8
  %96 = fmul double %92, %95
  %97 = fadd double %91, %96
  %98 = fmul double %88, %97
  %99 = fadd double %87, %98
  %100 = fmul double %84, %99
  %101 = fadd double %83, %100
  %102 = fmul double %80, %101
  %103 = fadd double %79, %102
  %104 = fmul double %76, %103
  %105 = fadd double %75, %104
  store double %105, double* %7, align 8
  %106 = load double, double* @one, align 8
  %107 = load double, double* %6, align 8
  %108 = load double, double* %7, align 8
  %109 = fdiv double %107, %108
  %110 = fadd double %106, %109
  ret double %110
}

declare dso_local i32 @GET_HIGH_WORD(i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
