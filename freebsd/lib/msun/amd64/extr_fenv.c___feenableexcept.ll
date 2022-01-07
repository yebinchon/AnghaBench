; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/amd64/extr_fenv.c___feenableexcept.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/amd64/extr_fenv.c___feenableexcept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FE_ALL_EXCEPT = common dso_local global i32 0, align 4
@_SSE_EMASK_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__feenableexcept(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @FE_ALL_EXCEPT, align 4
  %7 = load i32, i32* %2, align 4
  %8 = and i32 %7, %6
  store i32 %8, i32* %2, align 4
  %9 = call i32 @__fnstcw(i32* %5)
  %10 = call i32 @__stmxcsr(i32* %3)
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @_SSE_EMASK_SHIFT, align 4
  %14 = ashr i32 %12, %13
  %15 = or i32 %11, %14
  %16 = xor i32 %15, -1
  %17 = load i32, i32* @FE_ALL_EXCEPT, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %2, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = call i32 @__fldcw(i32* %5)
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @_SSE_EMASK_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = call i32 @__ldmxcsr(i32* %3)
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @__fnstcw(i32*) #1

declare dso_local i32 @__stmxcsr(i32*) #1

declare dso_local i32 @__fldcw(i32*) #1

declare dso_local i32 @__ldmxcsr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
