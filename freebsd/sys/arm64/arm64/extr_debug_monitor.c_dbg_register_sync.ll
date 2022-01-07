; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_debug_monitor.c_dbg_register_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_debug_monitor.c_dbg_register_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_monitor_state = type { i32, i32*, i32*, i32*, i32* }

@kernel_monitor = common dso_local global %struct.debug_monitor_state zeroinitializer, align 8
@mdscr_el1 = common dso_local global i32 0, align 4
@DBGMON_ENABLED = common dso_local global i32 0, align 4
@DBG_MDSCR_MDE = common dso_local global i32 0, align 4
@DBG_MDSCR_KDE = common dso_local global i32 0, align 4
@dbg_breakpoint_num = common dso_local global i32 0, align 4
@DBG_REG_BASE_BCR = common dso_local global i32 0, align 4
@DBG_REG_BASE_BVR = common dso_local global i32 0, align 4
@dbg_watchpoint_num = common dso_local global i32 0, align 4
@DBG_REG_BASE_WCR = common dso_local global i32 0, align 4
@DBG_REG_BASE_WVR = common dso_local global i32 0, align 4
@DBGMON_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dbg_register_sync(%struct.debug_monitor_state* %0) #0 {
  %2 = alloca %struct.debug_monitor_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.debug_monitor_state* %0, %struct.debug_monitor_state** %2, align 8
  %5 = load %struct.debug_monitor_state*, %struct.debug_monitor_state** %2, align 8
  %6 = icmp eq %struct.debug_monitor_state* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.debug_monitor_state* @kernel_monitor, %struct.debug_monitor_state** %2, align 8
  br label %8

8:                                                ; preds = %7, %1
  %9 = load i32, i32* @mdscr_el1, align 4
  %10 = call i32 @READ_SPECIALREG(i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.debug_monitor_state*, %struct.debug_monitor_state** %2, align 8
  %12 = getelementptr inbounds %struct.debug_monitor_state, %struct.debug_monitor_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @DBGMON_ENABLED, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %8
  %18 = load i32, i32* @DBG_MDSCR_MDE, align 4
  %19 = load i32, i32* @DBG_MDSCR_KDE, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %3, align 4
  br label %98

24:                                               ; preds = %8
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %50, %24
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @dbg_breakpoint_num, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %53

29:                                               ; preds = %25
  %30 = load i32, i32* @DBG_REG_BASE_BCR, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.debug_monitor_state*, %struct.debug_monitor_state** %2, align 8
  %33 = getelementptr inbounds %struct.debug_monitor_state, %struct.debug_monitor_state* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dbg_wb_write_reg(i32 %30, i32 %31, i32 %38)
  %40 = load i32, i32* @DBG_REG_BASE_BVR, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.debug_monitor_state*, %struct.debug_monitor_state** %2, align 8
  %43 = getelementptr inbounds %struct.debug_monitor_state, %struct.debug_monitor_state* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dbg_wb_write_reg(i32 %40, i32 %41, i32 %48)
  br label %50

50:                                               ; preds = %29
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %25

53:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %79, %53
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @dbg_watchpoint_num, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %82

58:                                               ; preds = %54
  %59 = load i32, i32* @DBG_REG_BASE_WCR, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.debug_monitor_state*, %struct.debug_monitor_state** %2, align 8
  %62 = getelementptr inbounds %struct.debug_monitor_state, %struct.debug_monitor_state* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dbg_wb_write_reg(i32 %59, i32 %60, i32 %67)
  %69 = load i32, i32* @DBG_REG_BASE_WVR, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.debug_monitor_state*, %struct.debug_monitor_state** %2, align 8
  %72 = getelementptr inbounds %struct.debug_monitor_state, %struct.debug_monitor_state* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @dbg_wb_write_reg(i32 %69, i32 %70, i32 %77)
  br label %79

79:                                               ; preds = %58
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %54

82:                                               ; preds = %54
  %83 = load i32, i32* @DBG_MDSCR_MDE, align 4
  %84 = load i32, i32* %3, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %3, align 4
  %86 = load %struct.debug_monitor_state*, %struct.debug_monitor_state** %2, align 8
  %87 = getelementptr inbounds %struct.debug_monitor_state, %struct.debug_monitor_state* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @DBGMON_KERNEL, align 4
  %90 = and i32 %88, %89
  %91 = load i32, i32* @DBGMON_KERNEL, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %82
  %94 = load i32, i32* @DBG_MDSCR_KDE, align 4
  %95 = load i32, i32* %3, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %93, %82
  br label %98

98:                                               ; preds = %97, %17
  %99 = load i32, i32* @mdscr_el1, align 4
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @WRITE_SPECIALREG(i32 %99, i32 %100)
  %102 = call i32 (...) @isb()
  ret void
}

declare dso_local i32 @READ_SPECIALREG(i32) #1

declare dso_local i32 @dbg_wb_write_reg(i32, i32, i32) #1

declare dso_local i32 @WRITE_SPECIALREG(i32, i32) #1

declare dso_local i32 @isb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
