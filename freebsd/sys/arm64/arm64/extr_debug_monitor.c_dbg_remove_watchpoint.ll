; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_debug_monitor.c_dbg_remove_watchpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_debug_monitor.c_dbg_remove_watchpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_monitor_state = type { i64, i32, i64*, i64* }

@kernel_monitor = common dso_local global %struct.debug_monitor_state zeroinitializer, align 8
@DBG_TYPE_WATCHPOINT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Can not find watchpoint for address 0%lx\0A\00", align 1
@DBGMON_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbg_remove_watchpoint(%struct.debug_monitor_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.debug_monitor_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.debug_monitor_state* %0, %struct.debug_monitor_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.debug_monitor_state*, %struct.debug_monitor_state** %5, align 8
  %10 = icmp eq %struct.debug_monitor_state* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store %struct.debug_monitor_state* @kernel_monitor, %struct.debug_monitor_state** %5, align 8
  br label %12

12:                                               ; preds = %11, %3
  %13 = load %struct.debug_monitor_state*, %struct.debug_monitor_state** %5, align 8
  %14 = load i32, i32* @DBG_TYPE_WATCHPOINT, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @dbg_find_slot(%struct.debug_monitor_state* %13, i32 %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %54

23:                                               ; preds = %12
  %24 = load %struct.debug_monitor_state*, %struct.debug_monitor_state** %5, align 8
  %25 = getelementptr inbounds %struct.debug_monitor_state, %struct.debug_monitor_state* %24, i32 0, i32 3
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  store i64 0, i64* %29, align 8
  %30 = load %struct.debug_monitor_state*, %struct.debug_monitor_state** %5, align 8
  %31 = getelementptr inbounds %struct.debug_monitor_state, %struct.debug_monitor_state* %30, i32 0, i32 2
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  store i64 0, i64* %35, align 8
  %36 = load %struct.debug_monitor_state*, %struct.debug_monitor_state** %5, align 8
  %37 = getelementptr inbounds %struct.debug_monitor_state, %struct.debug_monitor_state* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, -1
  store i64 %39, i64* %37, align 8
  %40 = load %struct.debug_monitor_state*, %struct.debug_monitor_state** %5, align 8
  %41 = getelementptr inbounds %struct.debug_monitor_state, %struct.debug_monitor_state* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %23
  %45 = load i32, i32* @DBGMON_ENABLED, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.debug_monitor_state*, %struct.debug_monitor_state** %5, align 8
  %48 = getelementptr inbounds %struct.debug_monitor_state, %struct.debug_monitor_state* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %51

51:                                               ; preds = %44, %23
  %52 = load %struct.debug_monitor_state*, %struct.debug_monitor_state** %5, align 8
  %53 = call i32 @dbg_register_sync(%struct.debug_monitor_state* %52)
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %51, %19
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @dbg_find_slot(%struct.debug_monitor_state*, i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @dbg_register_sync(%struct.debug_monitor_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
