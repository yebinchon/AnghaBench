; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_catrigl.c_f.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_catrigl.c_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (x86_fp80 (x86_fp80, x86_fp80, x86_fp80)* @f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal x86_fp80 @f(x86_fp80 %0, x86_fp80 %1, x86_fp80 %2) #0 {
  %4 = alloca x86_fp80, align 16
  %5 = alloca x86_fp80, align 16
  %6 = alloca x86_fp80, align 16
  %7 = alloca x86_fp80, align 16
  store x86_fp80 %0, x86_fp80* %5, align 16
  store x86_fp80 %1, x86_fp80* %6, align 16
  store x86_fp80 %2, x86_fp80* %7, align 16
  %8 = load x86_fp80, x86_fp80* %6, align 16
  %9 = fcmp olt x86_fp80 %8, 0xK00000000000000000000
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load x86_fp80, x86_fp80* %7, align 16
  %12 = load x86_fp80, x86_fp80* %6, align 16
  %13 = fsub x86_fp80 %11, %12
  %14 = fdiv x86_fp80 %13, 0xK40008000000000000000
  store x86_fp80 %14, x86_fp80* %4, align 16
  br label %30

15:                                               ; preds = %3
  %16 = load x86_fp80, x86_fp80* %6, align 16
  %17 = fcmp oeq x86_fp80 %16, 0xK00000000000000000000
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load x86_fp80, x86_fp80* %5, align 16
  %20 = fdiv x86_fp80 %19, 0xK40008000000000000000
  store x86_fp80 %20, x86_fp80* %4, align 16
  br label %30

21:                                               ; preds = %15
  %22 = load x86_fp80, x86_fp80* %5, align 16
  %23 = load x86_fp80, x86_fp80* %5, align 16
  %24 = fmul x86_fp80 %22, %23
  %25 = load x86_fp80, x86_fp80* %7, align 16
  %26 = load x86_fp80, x86_fp80* %6, align 16
  %27 = fadd x86_fp80 %25, %26
  %28 = fdiv x86_fp80 %24, %27
  %29 = fdiv x86_fp80 %28, 0xK40008000000000000000
  store x86_fp80 %29, x86_fp80* %4, align 16
  br label %30

30:                                               ; preds = %21, %18, %10
  %31 = load x86_fp80, x86_fp80* %4, align 16
  ret x86_fp80 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
