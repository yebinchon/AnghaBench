; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/stdio/extr_scanfloat_test.c__eq.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/stdio/extr_scanfloat_test.c__eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (x86_fp80, x86_fp80, x86_fp80)* @_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_eq(x86_fp80 %0, x86_fp80 %1, x86_fp80 %2) #0 {
  %4 = alloca x86_fp80, align 16
  %5 = alloca x86_fp80, align 16
  %6 = alloca x86_fp80, align 16
  %7 = alloca x86_fp80, align 16
  store x86_fp80 %0, x86_fp80* %4, align 16
  store x86_fp80 %1, x86_fp80* %5, align 16
  store x86_fp80 %2, x86_fp80* %6, align 16
  %8 = load x86_fp80, x86_fp80* %5, align 16
  %9 = load x86_fp80, x86_fp80* %6, align 16
  %10 = fsub x86_fp80 %8, %9
  %11 = call x86_fp80 @llvm.fabs.f80(x86_fp80 %10)
  store x86_fp80 %11, x86_fp80* %7, align 16
  %12 = load x86_fp80, x86_fp80* %7, align 16
  %13 = load x86_fp80, x86_fp80* %4, align 16
  %14 = fcmp ole x86_fp80 %12, %13
  %15 = zext i1 %14 to i32
  ret i32 %15
}

; Function Attrs: nounwind readnone speculatable willreturn
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
