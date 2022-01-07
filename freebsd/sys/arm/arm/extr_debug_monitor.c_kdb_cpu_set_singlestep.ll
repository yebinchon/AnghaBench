; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_debug_monitor.c_kdb_cpu_set_singlestep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_debug_monitor.c_kdb_cpu_set_singlestep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dbg_watchpoint_num = common dso_local global i64 0, align 8
@DBG_REG_BASE_WCR = common dso_local global i32 0, align 4
@DBG_WB_CTRL_E = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@INSN_SIZE = common dso_local global i32 0, align 4
@DBG_BKPT_BT_SLOT = common dso_local global i32 0, align 4
@DBG_BKPT_BNT_SLOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kdb_cpu_set_singlestep() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = call i32 (...) @dbg_capable()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %65

9:                                                ; preds = %0
  store i64 0, i64* %5, align 8
  br label %10

10:                                               ; preds = %31, %9
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @dbg_watchpoint_num, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %10
  %15 = load i32, i32* @DBG_REG_BASE_WCR, align 4
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @dbg_wb_read_reg(i32 %15, i64 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @DBG_WB_CTRL_E, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %14
  %23 = load i32, i32* @DBG_REG_BASE_WCR, align 4
  %24 = load i64, i64* %5, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @DBG_WB_CTRL_E, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = call i32 @dbg_wb_write_reg(i32 %23, i64 %24, i32 %28)
  br label %30

30:                                               ; preds = %22, %14
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %5, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %5, align 8
  br label %10

34:                                               ; preds = %10
  %35 = call i32 (...) @PC_REGS()
  store i32 %35, i32* %2, align 4
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @FALSE, align 4
  %38 = call i32 @db_get_value(i32 %36, i32 4, i32 %37)
  store i32 %38, i32* %1, align 4
  %39 = load i32, i32* %1, align 4
  %40 = call i64 @inst_branch(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %1, align 4
  %44 = call i64 @inst_call(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %1, align 4
  %48 = call i64 @inst_return(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %46, %42, %34
  %51 = load i32, i32* %1, align 4
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @branch_taken(i32 %51, i32 %52)
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @INSN_SIZE, align 4
  %56 = load i32, i32* @DBG_BKPT_BT_SLOT, align 4
  %57 = call i32 @dbg_setup_breakpoint(i32 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %50, %46
  %59 = load i32, i32* %2, align 4
  %60 = call i32 @next_instr_address(i32 %59, i32 0)
  store i32 %60, i32* %2, align 4
  %61 = load i32, i32* %2, align 4
  %62 = load i32, i32* @INSN_SIZE, align 4
  %63 = load i32, i32* @DBG_BKPT_BNT_SLOT, align 4
  %64 = call i32 @dbg_setup_breakpoint(i32 %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %58, %8
  ret void
}

declare dso_local i32 @dbg_capable(...) #1

declare dso_local i32 @dbg_wb_read_reg(i32, i64) #1

declare dso_local i32 @dbg_wb_write_reg(i32, i64, i32) #1

declare dso_local i32 @PC_REGS(...) #1

declare dso_local i32 @db_get_value(i32, i32, i32) #1

declare dso_local i64 @inst_branch(i32) #1

declare dso_local i64 @inst_call(i32) #1

declare dso_local i64 @inst_return(i32) #1

declare dso_local i32 @branch_taken(i32, i32) #1

declare dso_local i32 @dbg_setup_breakpoint(i32, i32, i32) #1

declare dso_local i32 @next_instr_address(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
