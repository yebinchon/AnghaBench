; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_debug_monitor.c_dbg_monitor_enter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_debug_monitor.c_dbg_monitor_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.thread = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@kernel_monitor = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@DBGMON_ENABLED = common dso_local global i32 0, align 4
@dbg_watchpoint_num = common dso_local global i32 0, align 4
@DBG_REG_BASE_WCR = common dso_local global i32 0, align 4
@DBG_REG_BASE_WVR = common dso_local global i32 0, align 4
@dbg_breakpoint_num = common dso_local global i32 0, align 4
@DBG_REG_BASE_BCR = common dso_local global i32 0, align 4
@DBG_REG_BASE_BVR = common dso_local global i32 0, align 4
@mdscr_el1 = common dso_local global i32 0, align 4
@DBG_MDSCR_MDE = common dso_local global i32 0, align 4
@DBG_MDSCR_KDE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dbg_monitor_enter(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %2, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @kernel_monitor, i32 0, i32 0), align 4
  %5 = load i32, i32* @DBGMON_ENABLED, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @dbg_register_sync(%struct.TYPE_7__* @kernel_monitor)
  br label %62

10:                                               ; preds = %1
  %11 = load %struct.thread*, %struct.thread** %2, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DBGMON_ENABLED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %61

20:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %32, %20
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @dbg_watchpoint_num, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load i32, i32* @DBG_REG_BASE_WCR, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @dbg_wb_write_reg(i32 %26, i32 %27, i32 0)
  %29 = load i32, i32* @DBG_REG_BASE_WVR, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @dbg_wb_write_reg(i32 %29, i32 %30, i32 0)
  br label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %21

35:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %47, %35
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @dbg_breakpoint_num, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load i32, i32* @DBG_REG_BASE_BCR, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @dbg_wb_write_reg(i32 %41, i32 %42, i32 0)
  %44 = load i32, i32* @DBG_REG_BASE_BVR, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @dbg_wb_write_reg(i32 %44, i32 %45, i32 0)
  br label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %36

50:                                               ; preds = %36
  %51 = load i32, i32* @mdscr_el1, align 4
  %52 = load i32, i32* @mdscr_el1, align 4
  %53 = call i32 @READ_SPECIALREG(i32 %52)
  %54 = load i32, i32* @DBG_MDSCR_MDE, align 4
  %55 = load i32, i32* @DBG_MDSCR_KDE, align 4
  %56 = or i32 %54, %55
  %57 = xor i32 %56, -1
  %58 = and i32 %53, %57
  %59 = call i32 @WRITE_SPECIALREG(i32 %51, i32 %58)
  %60 = call i32 (...) @isb()
  br label %61

61:                                               ; preds = %50, %10
  br label %62

62:                                               ; preds = %61, %8
  ret void
}

declare dso_local i32 @dbg_register_sync(%struct.TYPE_7__*) #1

declare dso_local i32 @dbg_wb_write_reg(i32, i32, i32) #1

declare dso_local i32 @WRITE_SPECIALREG(i32, i32) #1

declare dso_local i32 @READ_SPECIALREG(i32) #1

declare dso_local i32 @isb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
