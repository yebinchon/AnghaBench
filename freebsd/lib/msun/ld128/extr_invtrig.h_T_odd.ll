; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/ld128/extr_invtrig.h_T_odd.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/ld128/extr_invtrig.h_T_odd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aT = common dso_local global x86_fp80* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (x86_fp80 (x86_fp80)* @T_odd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal x86_fp80 @T_odd(x86_fp80 %0) #0 {
  %2 = alloca x86_fp80, align 16
  store x86_fp80 %0, x86_fp80* %2, align 16
  %3 = load x86_fp80*, x86_fp80** @aT, align 8
  %4 = getelementptr inbounds x86_fp80, x86_fp80* %3, i64 1
  %5 = load x86_fp80, x86_fp80* %4, align 16
  %6 = load x86_fp80, x86_fp80* %2, align 16
  %7 = load x86_fp80*, x86_fp80** @aT, align 8
  %8 = getelementptr inbounds x86_fp80, x86_fp80* %7, i64 3
  %9 = load x86_fp80, x86_fp80* %8, align 16
  %10 = load x86_fp80, x86_fp80* %2, align 16
  %11 = load x86_fp80*, x86_fp80** @aT, align 8
  %12 = getelementptr inbounds x86_fp80, x86_fp80* %11, i64 5
  %13 = load x86_fp80, x86_fp80* %12, align 16
  %14 = load x86_fp80, x86_fp80* %2, align 16
  %15 = load x86_fp80*, x86_fp80** @aT, align 8
  %16 = getelementptr inbounds x86_fp80, x86_fp80* %15, i64 7
  %17 = load x86_fp80, x86_fp80* %16, align 16
  %18 = load x86_fp80, x86_fp80* %2, align 16
  %19 = load x86_fp80*, x86_fp80** @aT, align 8
  %20 = getelementptr inbounds x86_fp80, x86_fp80* %19, i64 9
  %21 = load x86_fp80, x86_fp80* %20, align 16
  %22 = load x86_fp80, x86_fp80* %2, align 16
  %23 = load x86_fp80*, x86_fp80** @aT, align 8
  %24 = getelementptr inbounds x86_fp80, x86_fp80* %23, i64 11
  %25 = load x86_fp80, x86_fp80* %24, align 16
  %26 = load x86_fp80, x86_fp80* %2, align 16
  %27 = load x86_fp80*, x86_fp80** @aT, align 8
  %28 = getelementptr inbounds x86_fp80, x86_fp80* %27, i64 13
  %29 = load x86_fp80, x86_fp80* %28, align 16
  %30 = load x86_fp80, x86_fp80* %2, align 16
  %31 = load x86_fp80*, x86_fp80** @aT, align 8
  %32 = getelementptr inbounds x86_fp80, x86_fp80* %31, i64 15
  %33 = load x86_fp80, x86_fp80* %32, align 16
  %34 = load x86_fp80, x86_fp80* %2, align 16
  %35 = load x86_fp80*, x86_fp80** @aT, align 8
  %36 = getelementptr inbounds x86_fp80, x86_fp80* %35, i64 17
  %37 = load x86_fp80, x86_fp80* %36, align 16
  %38 = load x86_fp80, x86_fp80* %2, align 16
  %39 = load x86_fp80*, x86_fp80** @aT, align 8
  %40 = getelementptr inbounds x86_fp80, x86_fp80* %39, i64 19
  %41 = load x86_fp80, x86_fp80* %40, align 16
  %42 = load x86_fp80, x86_fp80* %2, align 16
  %43 = load x86_fp80*, x86_fp80** @aT, align 8
  %44 = getelementptr inbounds x86_fp80, x86_fp80* %43, i64 21
  %45 = load x86_fp80, x86_fp80* %44, align 16
  %46 = load x86_fp80, x86_fp80* %2, align 16
  %47 = load x86_fp80*, x86_fp80** @aT, align 8
  %48 = getelementptr inbounds x86_fp80, x86_fp80* %47, i64 23
  %49 = load x86_fp80, x86_fp80* %48, align 16
  %50 = fmul x86_fp80 %46, %49
  %51 = fadd x86_fp80 %45, %50
  %52 = fmul x86_fp80 %42, %51
  %53 = fadd x86_fp80 %41, %52
  %54 = fmul x86_fp80 %38, %53
  %55 = fadd x86_fp80 %37, %54
  %56 = fmul x86_fp80 %34, %55
  %57 = fadd x86_fp80 %33, %56
  %58 = fmul x86_fp80 %30, %57
  %59 = fadd x86_fp80 %29, %58
  %60 = fmul x86_fp80 %26, %59
  %61 = fadd x86_fp80 %25, %60
  %62 = fmul x86_fp80 %22, %61
  %63 = fadd x86_fp80 %21, %62
  %64 = fmul x86_fp80 %18, %63
  %65 = fadd x86_fp80 %17, %64
  %66 = fmul x86_fp80 %14, %65
  %67 = fadd x86_fp80 %13, %66
  %68 = fmul x86_fp80 %10, %67
  %69 = fadd x86_fp80 %9, %68
  %70 = fmul x86_fp80 %6, %69
  %71 = fadd x86_fp80 %5, %70
  ret x86_fp80 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
