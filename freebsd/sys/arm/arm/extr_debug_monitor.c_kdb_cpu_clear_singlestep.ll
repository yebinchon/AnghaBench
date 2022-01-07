; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_debug_monitor.c_kdb_cpu_clear_singlestep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_debug_monitor.c_kdb_cpu_clear_singlestep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DBG_BKPT_BT_SLOT = common dso_local global i32 0, align 4
@DBG_BKPT_BNT_SLOT = common dso_local global i32 0, align 4
@dbg_watchpoint_num = common dso_local global i64 0, align 8
@DBG_REG_BASE_WCR = common dso_local global i32 0, align 4
@DBG_REG_BASE_WVR = common dso_local global i32 0, align 4
@DBGWVR_ADDR_MASK = common dso_local global i32 0, align 4
@DBG_WB_CTRL_E = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kdb_cpu_clear_singlestep() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = call i32 (...) @dbg_capable()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  br label %38

7:                                                ; preds = %0
  %8 = load i32, i32* @DBG_BKPT_BT_SLOT, align 4
  %9 = call i32 @dbg_remove_breakpoint(i32 %8)
  %10 = load i32, i32* @DBG_BKPT_BNT_SLOT, align 4
  %11 = call i32 @dbg_remove_breakpoint(i32 %10)
  store i64 0, i64* %3, align 8
  br label %12

12:                                               ; preds = %35, %7
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @dbg_watchpoint_num, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %12
  %17 = load i32, i32* @DBG_REG_BASE_WCR, align 4
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @dbg_wb_read_reg(i32 %17, i64 %18)
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* @DBG_REG_BASE_WVR, align 4
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @dbg_wb_read_reg(i32 %20, i64 %21)
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* @DBGWVR_ADDR_MASK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %16
  %28 = load i32, i32* @DBG_REG_BASE_WCR, align 4
  %29 = load i64, i64* %3, align 8
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @DBG_WB_CTRL_E, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @dbg_wb_write_reg(i32 %28, i64 %29, i32 %32)
  br label %34

34:                                               ; preds = %27, %16
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %3, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %3, align 8
  br label %12

38:                                               ; preds = %6, %12
  ret void
}

declare dso_local i32 @dbg_capable(...) #1

declare dso_local i32 @dbg_remove_breakpoint(i32) #1

declare dso_local i32 @dbg_wb_read_reg(i32, i64) #1

declare dso_local i32 @dbg_wb_write_reg(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
