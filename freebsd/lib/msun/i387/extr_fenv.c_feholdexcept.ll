; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/i387/extr_fenv.c_feholdexcept.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/i387/extr_fenv.c_feholdexcept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FE_ALL_EXCEPT = common dso_local global i32 0, align 4
@_SSE_EMASK_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @feholdexcept(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @__fnstenv(i32* %4)
  %6 = call i32 (...) @__fnclex()
  %7 = call i64 (...) @__HAS_SSE()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  %10 = call i32 @__stmxcsr(i32* %3)
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @__set_mxcsr(i32 %12, i32 %13)
  %15 = load i32, i32* @FE_ALL_EXCEPT, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @FE_ALL_EXCEPT, align 4
  %20 = load i32, i32* @_SSE_EMASK_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = call i32 @__ldmxcsr(i32* %3)
  br label %25

25:                                               ; preds = %9, %1
  ret i32 0
}

declare dso_local i32 @__fnstenv(i32*) #1

declare dso_local i32 @__fnclex(...) #1

declare dso_local i64 @__HAS_SSE(...) #1

declare dso_local i32 @__stmxcsr(i32*) #1

declare dso_local i32 @__set_mxcsr(i32, i32) #1

declare dso_local i32 @__ldmxcsr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
