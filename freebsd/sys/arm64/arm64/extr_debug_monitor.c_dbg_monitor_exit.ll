; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_debug_monitor.c_dbg_monitor_exit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_debug_monitor.c_dbg_monitor_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.thread = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.trapframe = type { i32 }

@PSR_D = common dso_local global i32 0, align 4
@DBGMON_ENABLED = common dso_local global i32 0, align 4
@kernel_monitor = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
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
define dso_local void @dbg_monitor_exit(%struct.thread* %0, %struct.trapframe* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.trapframe*, align 8
  %5 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.trapframe* %1, %struct.trapframe** %4, align 8
  %6 = load i32, i32* @PSR_D, align 4
  %7 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %8 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %9, %6
  store i32 %10, i32* %8, align 4
  %11 = load %struct.thread*, %struct.thread** %3, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DBGMON_ENABLED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %2
  %21 = load %struct.thread*, %struct.thread** %3, align 8
  %22 = getelementptr inbounds %struct.thread, %struct.thread* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = call i32 @dbg_register_sync(%struct.TYPE_6__* %24)
  %26 = load i32, i32* @PSR_D, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %29 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %79

32:                                               ; preds = %2
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kernel_monitor, i32 0, i32 0), align 4
  %34 = load i32, i32* @DBGMON_ENABLED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %78

37:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %49, %37
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @dbg_watchpoint_num, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = load i32, i32* @DBG_REG_BASE_WCR, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @dbg_wb_write_reg(i32 %43, i32 %44, i32 0)
  %46 = load i32, i32* @DBG_REG_BASE_WVR, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @dbg_wb_write_reg(i32 %46, i32 %47, i32 0)
  br label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %38

52:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %64, %52
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @dbg_breakpoint_num, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = load i32, i32* @DBG_REG_BASE_BCR, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @dbg_wb_write_reg(i32 %58, i32 %59, i32 0)
  %61 = load i32, i32* @DBG_REG_BASE_BVR, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @dbg_wb_write_reg(i32 %61, i32 %62, i32 0)
  br label %64

64:                                               ; preds = %57
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %53

67:                                               ; preds = %53
  %68 = load i32, i32* @mdscr_el1, align 4
  %69 = load i32, i32* @mdscr_el1, align 4
  %70 = call i32 @READ_SPECIALREG(i32 %69)
  %71 = load i32, i32* @DBG_MDSCR_MDE, align 4
  %72 = load i32, i32* @DBG_MDSCR_KDE, align 4
  %73 = or i32 %71, %72
  %74 = xor i32 %73, -1
  %75 = and i32 %70, %74
  %76 = call i32 @WRITE_SPECIALREG(i32 %68, i32 %75)
  %77 = call i32 (...) @isb()
  br label %78

78:                                               ; preds = %67, %32
  br label %79

79:                                               ; preds = %78, %20
  ret void
}

declare dso_local i32 @dbg_register_sync(%struct.TYPE_6__*) #1

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
