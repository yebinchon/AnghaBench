; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_trap.c_amd64_syscall_ret_flush_l1d_recalc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_trap.c_amd64_syscall_ret_flush_l1d_recalc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_stdext_feature3 = common dso_local global i32 0, align 4
@CPUID_STDEXT3_L1D_FLUSH = common dso_local global i32 0, align 4
@syscall_ret_l1d_flush_mode = common dso_local global i32 0, align 4
@syscall_ret_l1d_flush = common dso_local global i32* null, align 8
@flush_l1d_hw = common dso_local global i32* null, align 8
@flush_l1d_sw_abi = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amd64_syscall_ret_flush_l1d_recalc() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @cpu_stdext_feature3, align 4
  %3 = load i32, i32* @CPUID_STDEXT3_L1D_FLUSH, align 4
  %4 = and i32 %2, %3
  %5 = icmp ne i32 %4, 0
  %6 = zext i1 %5 to i32
  store i32 %6, i32* %1, align 4
  br label %7

7:                                                ; preds = %29, %0
  %8 = load i32, i32* @syscall_ret_l1d_flush_mode, align 4
  switch i32 %8, label %29 [
    i32 0, label %9
    i32 1, label %10
    i32 2, label %19
    i32 3, label %27
  ]

9:                                                ; preds = %7
  store i32* null, i32** @syscall_ret_l1d_flush, align 8
  br label %30

10:                                               ; preds = %7
  %11 = load i32, i32* %1, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load i32*, i32** @flush_l1d_hw, align 8
  br label %17

15:                                               ; preds = %10
  %16 = load i32*, i32** @flush_l1d_sw_abi, align 8
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32* [ %14, %13 ], [ %16, %15 ]
  store i32* %18, i32** @syscall_ret_l1d_flush, align 8
  br label %30

19:                                               ; preds = %7
  %20 = load i32, i32* %1, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32*, i32** @flush_l1d_hw, align 8
  br label %25

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32* [ %23, %22 ], [ null, %24 ]
  store i32* %26, i32** @syscall_ret_l1d_flush, align 8
  br label %30

27:                                               ; preds = %7
  %28 = load i32*, i32** @flush_l1d_sw_abi, align 8
  store i32* %28, i32** @syscall_ret_l1d_flush, align 8
  br label %30

29:                                               ; preds = %7
  store i32 1, i32* @syscall_ret_l1d_flush_mode, align 4
  br label %7

30:                                               ; preds = %27, %25, %17, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
