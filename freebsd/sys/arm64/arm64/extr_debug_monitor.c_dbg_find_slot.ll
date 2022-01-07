; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_debug_monitor.c_dbg_find_slot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_debug_monitor.c_dbg_find_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_monitor_state = type { i64*, i64*, i64*, i64* }

@dbg_breakpoint_num = common dso_local global i32 0, align 4
@dbg_watchpoint_num = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unsupported debug type\0A\00", align 1
@DBG_WB_CTRL_E = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.debug_monitor_state*, i32, i64)* @dbg_find_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbg_find_slot(%struct.debug_monitor_state* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.debug_monitor_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.debug_monitor_state* %0, %struct.debug_monitor_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %29 [
    i32 129, label %13
    i32 128, label %21
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* @dbg_breakpoint_num, align 4
  store i32 %14, i32* %10, align 4
  %15 = load %struct.debug_monitor_state*, %struct.debug_monitor_state** %5, align 8
  %16 = getelementptr inbounds %struct.debug_monitor_state, %struct.debug_monitor_state* %15, i32 0, i32 3
  %17 = load i64*, i64** %16, align 8
  store i64* %17, i64** %8, align 8
  %18 = load %struct.debug_monitor_state*, %struct.debug_monitor_state** %5, align 8
  %19 = getelementptr inbounds %struct.debug_monitor_state, %struct.debug_monitor_state* %18, i32 0, i32 2
  %20 = load i64*, i64** %19, align 8
  store i64* %20, i64** %9, align 8
  br label %32

21:                                               ; preds = %3
  %22 = load i32, i32* @dbg_watchpoint_num, align 4
  store i32 %22, i32* %10, align 4
  %23 = load %struct.debug_monitor_state*, %struct.debug_monitor_state** %5, align 8
  %24 = getelementptr inbounds %struct.debug_monitor_state, %struct.debug_monitor_state* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  store i64* %25, i64** %8, align 8
  %26 = load %struct.debug_monitor_state*, %struct.debug_monitor_state** %5, align 8
  %27 = getelementptr inbounds %struct.debug_monitor_state, %struct.debug_monitor_state* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  store i64* %28, i64** %9, align 8
  br label %32

29:                                               ; preds = %3
  %30 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %4, align 4
  br label %61

32:                                               ; preds = %21, %13
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %57, %32
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %60

37:                                               ; preds = %33
  %38 = load i64*, i64** %8, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %37
  %46 = load i64*, i64** %9, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @DBG_WB_CTRL_E, align 8
  %52 = and i64 %50, %51
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %4, align 4
  br label %61

56:                                               ; preds = %45, %37
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %11, align 4
  br label %33

60:                                               ; preds = %33
  store i32 -1, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %54, %29
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
