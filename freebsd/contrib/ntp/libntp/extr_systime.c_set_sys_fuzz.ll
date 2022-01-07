; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_systime.c_set_sys_fuzz.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_systime.c_set_sys_fuzz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sys_fuzz = common dso_local global double 0.000000e+00, align 8
@sys_fuzz_nsec = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_sys_fuzz(double %0) #0 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  %3 = load double, double* %2, align 8
  store double %3, double* @sys_fuzz, align 8
  %4 = load double, double* @sys_fuzz, align 8
  %5 = fcmp oge double %4, 0.000000e+00
  %6 = zext i1 %5 to i32
  %7 = call i32 @INSIST(i32 %6)
  %8 = load double, double* @sys_fuzz, align 8
  %9 = fcmp ole double %8, 1.000000e+00
  %10 = zext i1 %9 to i32
  %11 = call i32 @INSIST(i32 %10)
  %12 = load double, double* @sys_fuzz, align 8
  %13 = fmul double %12, 1.000000e+09
  %14 = call i64 @ceil(double %13)
  store i64 %14, i64* @sys_fuzz_nsec, align 8
  ret void
}

declare dso_local i32 @INSIST(i32) #1

declare dso_local i64 @ceil(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
