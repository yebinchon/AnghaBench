; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_fabs.c_fabs.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_fabs.c_fabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone readnone uwtable
define dso_local double @fabs(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  store double %0, double* %2, align 8
  %4 = load i32, i32* %3, align 4
  %5 = load double, double* %2, align 8
  %6 = call i32 @GET_HIGH_WORD(i32 %4, double %5)
  %7 = load double, double* %2, align 8
  %8 = load i32, i32* %3, align 4
  %9 = and i32 %8, 2147483647
  %10 = call i32 @SET_HIGH_WORD(double %7, i32 %9)
  %11 = load double, double* %2, align 8
  ret double %11
}

declare dso_local i32 @GET_HIGH_WORD(i32, double) #1

declare dso_local i32 @SET_HIGH_WORD(double, i32) #1

attributes #0 = { noinline nounwind optnone readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
