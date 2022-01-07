; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_tanhl.c_divl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_tanhl.c_divl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (x86_fp80 (x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80, x86_fp80)* @divl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal x86_fp80 @divl(x86_fp80 %0, x86_fp80 %1, x86_fp80 %2, x86_fp80 %3, x86_fp80 %4, x86_fp80 %5) #0 {
  %7 = alloca x86_fp80, align 16
  %8 = alloca x86_fp80, align 16
  %9 = alloca x86_fp80, align 16
  %10 = alloca x86_fp80, align 16
  %11 = alloca x86_fp80, align 16
  %12 = alloca x86_fp80, align 16
  %13 = alloca x86_fp80, align 16
  %14 = alloca x86_fp80, align 16
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  store x86_fp80 %0, x86_fp80* %7, align 16
  store x86_fp80 %1, x86_fp80* %8, align 16
  store x86_fp80 %2, x86_fp80* %9, align 16
  store x86_fp80 %3, x86_fp80* %10, align 16
  store x86_fp80 %4, x86_fp80* %11, align 16
  store x86_fp80 %5, x86_fp80* %12, align 16
  %17 = load x86_fp80, x86_fp80* %7, align 16
  %18 = load x86_fp80, x86_fp80* %9, align 16
  %19 = call i32 @_2sumF(x86_fp80 %17, x86_fp80 %18)
  %20 = load x86_fp80, x86_fp80* %8, align 16
  %21 = load x86_fp80, x86_fp80* %9, align 16
  %22 = fadd x86_fp80 %20, %21
  store x86_fp80 %22, x86_fp80* %8, align 16
  %23 = load x86_fp80, x86_fp80* %10, align 16
  %24 = load x86_fp80, x86_fp80* %12, align 16
  %25 = call i32 @_2sumF(x86_fp80 %23, x86_fp80 %24)
  %26 = load x86_fp80, x86_fp80* %11, align 16
  %27 = load x86_fp80, x86_fp80* %12, align 16
  %28 = fadd x86_fp80 %26, %27
  store x86_fp80 %28, x86_fp80* %11, align 16
  %29 = load x86_fp80, x86_fp80* %10, align 16
  %30 = load x86_fp80, x86_fp80* %11, align 16
  %31 = fadd x86_fp80 %29, %30
  %32 = fdiv x86_fp80 0xK3FFF8000000000000000, %31
  store x86_fp80 %32, x86_fp80* %13, align 16
  %33 = load x86_fp80, x86_fp80* %7, align 16
  %34 = load x86_fp80, x86_fp80* %8, align 16
  %35 = fadd x86_fp80 %33, %34
  %36 = load x86_fp80, x86_fp80* %13, align 16
  %37 = fmul x86_fp80 %35, %36
  store x86_fp80 %37, x86_fp80* %14, align 16
  %38 = load x86_fp80, x86_fp80* %14, align 16
  %39 = fptrunc x86_fp80 %38 to float
  store float %39, float* %15, align 4
  %40 = load float, float* %15, align 4
  %41 = fpext float %40 to x86_fp80
  store x86_fp80 %41, x86_fp80* %14, align 16
  %42 = load x86_fp80, x86_fp80* %10, align 16
  %43 = load x86_fp80, x86_fp80* %11, align 16
  %44 = fadd x86_fp80 %42, %43
  %45 = fptrunc x86_fp80 %44 to float
  store float %45, float* %16, align 4
  %46 = load x86_fp80, x86_fp80* %10, align 16
  %47 = load float, float* %16, align 4
  %48 = fpext float %47 to x86_fp80
  %49 = fsub x86_fp80 %46, %48
  %50 = load x86_fp80, x86_fp80* %11, align 16
  %51 = fadd x86_fp80 %49, %50
  store x86_fp80 %51, x86_fp80* %11, align 16
  %52 = load float, float* %16, align 4
  %53 = fpext float %52 to x86_fp80
  store x86_fp80 %53, x86_fp80* %10, align 16
  %54 = load x86_fp80, x86_fp80* %14, align 16
  %55 = load x86_fp80, x86_fp80* %7, align 16
  %56 = load x86_fp80, x86_fp80* %10, align 16
  %57 = load x86_fp80, x86_fp80* %14, align 16
  %58 = fmul x86_fp80 %56, %57
  %59 = fsub x86_fp80 %55, %58
  %60 = load x86_fp80, x86_fp80* %8, align 16
  %61 = fadd x86_fp80 %59, %60
  %62 = load x86_fp80, x86_fp80* %11, align 16
  %63 = load x86_fp80, x86_fp80* %14, align 16
  %64 = fmul x86_fp80 %62, %63
  %65 = fsub x86_fp80 %61, %64
  %66 = load x86_fp80, x86_fp80* %13, align 16
  %67 = fmul x86_fp80 %65, %66
  %68 = fadd x86_fp80 %54, %67
  store x86_fp80 %68, x86_fp80* %14, align 16
  %69 = load x86_fp80, x86_fp80* %14, align 16
  ret x86_fp80 %69
}

declare dso_local i32 @_2sumF(x86_fp80, x86_fp80) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
