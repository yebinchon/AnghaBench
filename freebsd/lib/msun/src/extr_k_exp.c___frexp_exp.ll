; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_k_exp.c___frexp_exp.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_k_exp.c___frexp_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kln2 = common dso_local global i64 0, align 8
@k = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double, i32*)* @__frexp_exp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @__frexp_exp(double %0, i32* %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca i32*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  store double %0, double* %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load double, double* %3, align 8
  %8 = load i64, i64* @kln2, align 8
  %9 = sitofp i64 %8 to double
  %10 = fsub double %7, %9
  %11 = fptosi double %10 to i64
  %12 = call double @exp(i64 %11)
  store double %12, double* %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load double, double* %5, align 8
  %15 = call i32 @GET_HIGH_WORD(i32 %13, double %14)
  %16 = load i32, i32* %6, align 4
  %17 = ashr i32 %16, 20
  %18 = sub nsw i32 %17, 2046
  %19 = load i32, i32* @k, align 4
  %20 = add nsw i32 %18, %19
  %21 = load i32*, i32** %4, align 8
  store i32 %20, i32* %21, align 4
  %22 = load double, double* %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, 1048575
  %25 = or i32 %24, 2145386496
  %26 = call i32 @SET_HIGH_WORD(double %22, i32 %25)
  %27 = load double, double* %5, align 8
  ret double %27
}

declare dso_local double @exp(i64) #1

declare dso_local i32 @GET_HIGH_WORD(i32, double) #1

declare dso_local i32 @SET_HIGH_WORD(double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
