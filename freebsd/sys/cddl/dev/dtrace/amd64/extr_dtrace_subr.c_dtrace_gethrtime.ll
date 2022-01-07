; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/amd64/extr_dtrace_subr.c_dtrace_gethrtime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/amd64/extr_dtrace_subr.c_dtrace_gethrtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tsc_skew = common dso_local global i32* null, align 8
@curcpu = common dso_local global i64 0, align 8
@nsec_scale = common dso_local global i32 0, align 4
@SCALE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_gethrtime() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (...) @intr_disable()
  store i32 %5, i32* %4, align 4
  %6 = call i32 (...) @rdtsc()
  %7 = load i32*, i32** @tsc_skew, align 8
  %8 = load i64, i64* @curcpu, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = sub nsw i32 %6, %10
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @intr_restore(i32 %12)
  %14 = load i32, i32* %1, align 4
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %1, align 4
  %16 = ashr i32 %15, 32
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @nsec_scale, align 4
  %19 = mul nsw i32 %17, %18
  %20 = load i32, i32* @SCALE_SHIFT, align 4
  %21 = ashr i32 %19, %20
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @nsec_scale, align 4
  %24 = mul nsw i32 %22, %23
  %25 = load i32, i32* @SCALE_SHIFT, align 4
  %26 = sub nsw i32 32, %25
  %27 = shl i32 %24, %26
  %28 = add nsw i32 %21, %27
  ret i32 %28
}

declare dso_local i32 @intr_disable(...) #1

declare dso_local i32 @rdtsc(...) #1

declare dso_local i32 @intr_restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
