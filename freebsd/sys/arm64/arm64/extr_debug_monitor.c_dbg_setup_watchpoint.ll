; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_debug_monitor.c_dbg_setup_watchpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_debug_monitor.c_dbg_setup_watchpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_monitor_state = type { i32, i32*, i32, i32* }

@kernel_monitor = common dso_local global %struct.debug_monitor_state zeroinitializer, align 8
@DBG_TYPE_WATCHPOINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Can not find slot for watchpoint, max %d watchpoints supported\0A\00", align 1
@dbg_watchpoint_num = common dso_local global i32 0, align 4
@DBG_WATCH_CTRL_LEN_1 = common dso_local global i32 0, align 4
@DBG_WATCH_CTRL_LEN_2 = common dso_local global i32 0, align 4
@DBG_WATCH_CTRL_LEN_4 = common dso_local global i32 0, align 4
@DBG_WATCH_CTRL_LEN_8 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Unsupported address size for watchpoint\0A\00", align 1
@DBGMON_KERNEL = common dso_local global i32 0, align 4
@DBG_WB_CTRL_EL0 = common dso_local global i32 0, align 4
@DBG_WB_CTRL_EL1 = common dso_local global i32 0, align 4
@DBG_WATCH_CTRL_EXEC = common dso_local global i32 0, align 4
@DBG_WATCH_CTRL_LOAD = common dso_local global i32 0, align 4
@DBG_WATCH_CTRL_STORE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Unsupported exception level for watchpoint\0A\00", align 1
@DBG_WB_CTRL_E = common dso_local global i32 0, align 4
@DBGMON_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbg_setup_watchpoint(%struct.debug_monitor_state* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.debug_monitor_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.debug_monitor_state* %0, %struct.debug_monitor_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.debug_monitor_state*, %struct.debug_monitor_state** %6, align 8
  %15 = icmp eq %struct.debug_monitor_state* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store %struct.debug_monitor_state* @kernel_monitor, %struct.debug_monitor_state** %6, align 8
  br label %17

17:                                               ; preds = %16, %4
  %18 = load %struct.debug_monitor_state*, %struct.debug_monitor_state** %6, align 8
  %19 = load i32, i32* @DBG_TYPE_WATCHPOINT, align 4
  %20 = call i32 @dbg_find_free_slot(%struct.debug_monitor_state* %18, i32 %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i32, i32* @dbg_watchpoint_num, align 4
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %5, align 4
  br label %96

27:                                               ; preds = %17
  %28 = load i32, i32* %8, align 4
  switch i32 %28, label %37 [
    i32 1, label %29
    i32 2, label %31
    i32 4, label %33
    i32 8, label %35
  ]

29:                                               ; preds = %27
  %30 = load i32, i32* @DBG_WATCH_CTRL_LEN_1, align 4
  store i32 %30, i32* %10, align 4
  br label %39

31:                                               ; preds = %27
  %32 = load i32, i32* @DBG_WATCH_CTRL_LEN_2, align 4
  store i32 %32, i32* %10, align 4
  br label %39

33:                                               ; preds = %27
  %34 = load i32, i32* @DBG_WATCH_CTRL_LEN_4, align 4
  store i32 %34, i32* %10, align 4
  br label %39

35:                                               ; preds = %27
  %36 = load i32, i32* @DBG_WATCH_CTRL_LEN_8, align 4
  store i32 %36, i32* %10, align 4
  br label %39

37:                                               ; preds = %27
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %96

39:                                               ; preds = %35, %33, %31, %29
  %40 = load %struct.debug_monitor_state*, %struct.debug_monitor_state** %6, align 8
  %41 = getelementptr inbounds %struct.debug_monitor_state, %struct.debug_monitor_state* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @DBGMON_KERNEL, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* @DBG_WB_CTRL_EL0, align 4
  store i32 %47, i32* %11, align 4
  br label %50

48:                                               ; preds = %39
  %49 = load i32, i32* @DBG_WB_CTRL_EL1, align 4
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = load i32, i32* %9, align 4
  switch i32 %51, label %62 [
    i32 128, label %52
    i32 131, label %54
    i32 129, label %56
    i32 130, label %58
  ]

52:                                               ; preds = %50
  %53 = load i32, i32* @DBG_WATCH_CTRL_EXEC, align 4
  store i32 %53, i32* %12, align 4
  br label %64

54:                                               ; preds = %50
  %55 = load i32, i32* @DBG_WATCH_CTRL_LOAD, align 4
  store i32 %55, i32* %12, align 4
  br label %64

56:                                               ; preds = %50
  %57 = load i32, i32* @DBG_WATCH_CTRL_STORE, align 4
  store i32 %57, i32* %12, align 4
  br label %64

58:                                               ; preds = %50
  %59 = load i32, i32* @DBG_WATCH_CTRL_LOAD, align 4
  %60 = load i32, i32* @DBG_WATCH_CTRL_STORE, align 4
  %61 = or i32 %59, %60
  store i32 %61, i32* %12, align 4
  br label %64

62:                                               ; preds = %50
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %96

64:                                               ; preds = %58, %56, %54, %52
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.debug_monitor_state*, %struct.debug_monitor_state** %6, align 8
  %67 = getelementptr inbounds %struct.debug_monitor_state, %struct.debug_monitor_state* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %65, i32* %71, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %12, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* %11, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @DBG_WB_CTRL_E, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.debug_monitor_state*, %struct.debug_monitor_state** %6, align 8
  %80 = getelementptr inbounds %struct.debug_monitor_state, %struct.debug_monitor_state* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %78, i32* %84, align 4
  %85 = load %struct.debug_monitor_state*, %struct.debug_monitor_state** %6, align 8
  %86 = getelementptr inbounds %struct.debug_monitor_state, %struct.debug_monitor_state* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  %89 = load i32, i32* @DBGMON_ENABLED, align 4
  %90 = load %struct.debug_monitor_state*, %struct.debug_monitor_state** %6, align 8
  %91 = getelementptr inbounds %struct.debug_monitor_state, %struct.debug_monitor_state* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load %struct.debug_monitor_state*, %struct.debug_monitor_state** %6, align 8
  %95 = call i32 @dbg_register_sync(%struct.debug_monitor_state* %94)
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %64, %62, %37, %23
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i32 @dbg_find_free_slot(%struct.debug_monitor_state*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @dbg_register_sync(%struct.debug_monitor_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
