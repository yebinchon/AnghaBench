; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_ldexp.c__copysign.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_ldexp.c__copysign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (double, double)* @_copysign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @_copysign(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load double, double* %3, align 8
  %9 = call i32 @GET_HIGH_WORD(i32 %7, double %8)
  %10 = load i32, i32* %6, align 4
  %11 = load double, double* %4, align 8
  %12 = call i32 @GET_HIGH_WORD(i32 %10, double %11)
  %13 = load double, double* %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 2147483647
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, -2147483648
  %18 = or i32 %15, %17
  %19 = call i32 @SET_HIGH_WORD(double %13, i32 %18)
  %20 = load double, double* %3, align 8
  ret double %20
}

declare dso_local i32 @GET_HIGH_WORD(i32, double) #1

declare dso_local i32 @SET_HIGH_WORD(double, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
