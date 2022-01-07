; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tzcode/zic/extr_zdump.c_setabsolutes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tzcode/zic/extr_zdump.c_setabsolutes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DBL_MAX = common dso_local global i64 0, align 8
@absolute_min_time = common dso_local global double 0.000000e+00, align 8
@absolute_max_time = common dso_local global double 0.000000e+00, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@FLT_MAX = common dso_local global i64 0, align 8
@progname = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setabsolutes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setabsolutes() #0 {
  %1 = load i64, i64* @DBL_MAX, align 8
  %2 = sub nsw i64 0, %1
  %3 = sitofp i64 %2 to double
  store double %3, double* @absolute_min_time, align 8
  %4 = load i64, i64* @DBL_MAX, align 8
  %5 = sitofp i64 %4 to double
  store double %5, double* @absolute_max_time, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
