; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_machdep.c_set_dbregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_machdep.c_set_dbregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.debug_monitor_state }
%struct.debug_monitor_state = type { i64, i32*, i32, i32* }
%struct.dbreg = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@DBG_BRP_MAX = common dso_local global i32 0, align 4
@DBGMON_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_dbregs(%struct.thread* %0, %struct.dbreg* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.dbreg*, align 8
  %5 = alloca %struct.debug_monitor_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.dbreg* %1, %struct.dbreg** %4, align 8
  %8 = load %struct.thread*, %struct.thread** %3, align 8
  %9 = getelementptr inbounds %struct.thread, %struct.thread* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.debug_monitor_state* %11, %struct.debug_monitor_state** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.debug_monitor_state*, %struct.debug_monitor_state** %5, align 8
  %13 = getelementptr inbounds %struct.debug_monitor_state, %struct.debug_monitor_state* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %62, %2
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @DBG_BRP_MAX, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %65

18:                                               ; preds = %14
  %19 = load %struct.dbreg*, %struct.dbreg** %4, align 8
  %20 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.debug_monitor_state*, %struct.debug_monitor_state** %5, align 8
  %28 = getelementptr inbounds %struct.debug_monitor_state, %struct.debug_monitor_state* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %26, i32* %32, align 4
  %33 = load %struct.dbreg*, %struct.dbreg** %4, align 8
  %34 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.debug_monitor_state*, %struct.debug_monitor_state** %5, align 8
  %42 = getelementptr inbounds %struct.debug_monitor_state, %struct.debug_monitor_state* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %40, i32* %46, align 4
  %47 = load %struct.debug_monitor_state*, %struct.debug_monitor_state** %5, align 8
  %48 = getelementptr inbounds %struct.debug_monitor_state, %struct.debug_monitor_state* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 1
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %18
  %57 = load %struct.debug_monitor_state*, %struct.debug_monitor_state** %5, align 8
  %58 = getelementptr inbounds %struct.debug_monitor_state, %struct.debug_monitor_state* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %58, align 8
  br label %61

61:                                               ; preds = %56, %18
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %14

65:                                               ; preds = %14
  %66 = load %struct.debug_monitor_state*, %struct.debug_monitor_state** %5, align 8
  %67 = getelementptr inbounds %struct.debug_monitor_state, %struct.debug_monitor_state* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load i32, i32* @DBGMON_ENABLED, align 4
  %72 = load %struct.debug_monitor_state*, %struct.debug_monitor_state** %5, align 8
  %73 = getelementptr inbounds %struct.debug_monitor_state, %struct.debug_monitor_state* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %70, %65
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
