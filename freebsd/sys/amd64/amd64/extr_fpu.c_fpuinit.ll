; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_fpu.c_fpuinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_fpu.c_fpuinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@use_xsave = common dso_local global i64 0, align 8
@CR4_XSAVE = common dso_local global i32 0, align 4
@XCR0 = common dso_local global i32 0, align 4
@xsave_mask = common dso_local global i32 0, align 4
@__INITIAL_FPUCW__ = common dso_local global i32 0, align 4
@__INITIAL_MXCSR__ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fpuinit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i64 (...) @IS_BSP()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 (...) @fpuinit_bsp1()
  br label %8

8:                                                ; preds = %6, %0
  %9 = load i64, i64* @use_xsave, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = call i32 (...) @rcr4()
  %13 = load i32, i32* @CR4_XSAVE, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @load_cr4(i32 %14)
  %16 = load i32, i32* @XCR0, align 4
  %17 = load i32, i32* @xsave_mask, align 4
  %18 = call i32 @load_xcr(i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %11, %8
  %20 = call i64 (...) @IS_BSP()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 (...) @fpuinit_bsp2()
  br label %24

24:                                               ; preds = %22, %19
  %25 = call i32 (...) @intr_disable()
  store i32 %25, i32* %1, align 4
  %26 = call i32 (...) @stop_emulating()
  %27 = call i32 (...) @fninit()
  %28 = load i32, i32* @__INITIAL_FPUCW__, align 4
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @fldcw(i32 %29)
  %31 = load i32, i32* @__INITIAL_MXCSR__, align 4
  store i32 %31, i32* %2, align 4
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @ldmxcsr(i32 %32)
  %34 = call i32 (...) @start_emulating()
  %35 = load i32, i32* %1, align 4
  %36 = call i32 @intr_restore(i32 %35)
  ret void
}

declare dso_local i64 @IS_BSP(...) #1

declare dso_local i32 @fpuinit_bsp1(...) #1

declare dso_local i32 @load_cr4(i32) #1

declare dso_local i32 @rcr4(...) #1

declare dso_local i32 @load_xcr(i32, i32) #1

declare dso_local i32 @fpuinit_bsp2(...) #1

declare dso_local i32 @intr_disable(...) #1

declare dso_local i32 @stop_emulating(...) #1

declare dso_local i32 @fninit(...) #1

declare dso_local i32 @fldcw(i32) #1

declare dso_local i32 @ldmxcsr(i32) #1

declare dso_local i32 @start_emulating(...) #1

declare dso_local i32 @intr_restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
