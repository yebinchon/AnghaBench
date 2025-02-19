; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/bsdsrc/extr_mathimpl.h__b_trunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/bsdsrc/extr_mathimpl.h__b_trunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double*)* @_b_trunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_b_trunc(double* %0) #0 {
  %2 = alloca double*, align 8
  %3 = alloca i32, align 4
  store double* %0, double** %2, align 8
  %4 = load i32, i32* %3, align 4
  %5 = load double*, double** %2, align 8
  %6 = load volatile double, double* %5, align 8
  %7 = call i32 @GET_LOW_WORD(i32 %4, double %6)
  %8 = load double*, double** %2, align 8
  %9 = load volatile double, double* %8, align 8
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, -134217728
  %12 = call i32 @SET_LOW_WORD(double %9, i32 %11)
  ret void
}

declare dso_local i32 @GET_LOW_WORD(i32, double) #1

declare dso_local i32 @SET_LOW_WORD(double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
