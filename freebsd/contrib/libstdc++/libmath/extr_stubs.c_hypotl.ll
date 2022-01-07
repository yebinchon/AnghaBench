; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libstdc++/libmath/extr_stubs.c_hypotl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libstdc++/libmath/extr_stubs.c_hypotl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local x86_fp80 @hypotl(x86_fp80 %0, x86_fp80 %1) #0 {
  %3 = alloca x86_fp80, align 16
  %4 = alloca x86_fp80, align 16
  %5 = alloca x86_fp80, align 16
  %6 = alloca x86_fp80, align 16
  store x86_fp80 %0, x86_fp80* %4, align 16
  store x86_fp80 %1, x86_fp80* %5, align 16
  %7 = load x86_fp80, x86_fp80* %4, align 16
  %8 = call x86_fp80 @llvm.fabs.f80(x86_fp80 %7)
  %9 = load x86_fp80, x86_fp80* %5, align 16
  %10 = call x86_fp80 @llvm.fabs.f80(x86_fp80 %9)
  %11 = fadd x86_fp80 %8, %10
  store x86_fp80 %11, x86_fp80* %6, align 16
  %12 = load x86_fp80, x86_fp80* %6, align 16
  %13 = fcmp oeq x86_fp80 %12, 0xK00000000000000000000
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load x86_fp80, x86_fp80* %6, align 16
  store x86_fp80 %15, x86_fp80* %3, align 16
  br label %33

16:                                               ; preds = %2
  %17 = load x86_fp80, x86_fp80* %6, align 16
  %18 = load x86_fp80, x86_fp80* %4, align 16
  %19 = fdiv x86_fp80 %18, %17
  store x86_fp80 %19, x86_fp80* %4, align 16
  %20 = load x86_fp80, x86_fp80* %6, align 16
  %21 = load x86_fp80, x86_fp80* %5, align 16
  %22 = fdiv x86_fp80 %21, %20
  store x86_fp80 %22, x86_fp80* %5, align 16
  %23 = load x86_fp80, x86_fp80* %6, align 16
  %24 = load x86_fp80, x86_fp80* %4, align 16
  %25 = load x86_fp80, x86_fp80* %4, align 16
  %26 = fmul x86_fp80 %24, %25
  %27 = load x86_fp80, x86_fp80* %5, align 16
  %28 = load x86_fp80, x86_fp80* %5, align 16
  %29 = fmul x86_fp80 %27, %28
  %30 = fadd x86_fp80 %26, %29
  %31 = call x86_fp80 @sqrtl(x86_fp80 %30) #3
  %32 = fmul x86_fp80 %23, %31
  store x86_fp80 %32, x86_fp80* %3, align 16
  br label %33

33:                                               ; preds = %16, %14
  %34 = load x86_fp80, x86_fp80* %3, align 16
  ret x86_fp80 %34
}

; Function Attrs: nounwind readnone speculatable willreturn
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #1

; Function Attrs: nounwind
declare dso_local x86_fp80 @sqrtl(x86_fp80) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
