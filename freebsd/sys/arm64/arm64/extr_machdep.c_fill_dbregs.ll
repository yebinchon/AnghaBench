; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_machdep.c_fill_dbregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_machdep.c_fill_dbregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.debug_monitor_state }
%struct.debug_monitor_state = type { i32, i32*, i32* }
%struct.dbreg = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@ID_AA64DFR0_EL1 = common dso_local global i32 0, align 4
@ID_AA64DFR0_DebugVer_SHIFT = common dso_local global i32 0, align 4
@ID_AA64DFR0_BRPs_SHIFT = common dso_local global i32 0, align 4
@DBGMON_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fill_dbregs(%struct.thread* %0, %struct.dbreg* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.dbreg*, align 8
  %5 = alloca %struct.debug_monitor_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.dbreg* %1, %struct.dbreg** %4, align 8
  %10 = load %struct.dbreg*, %struct.dbreg** %4, align 8
  %11 = call i32 @memset(%struct.dbreg* %10, i32 0, i32 16)
  %12 = load i32, i32* @ID_AA64DFR0_EL1, align 4
  %13 = load i32, i32* @ID_AA64DFR0_DebugVer_SHIFT, align 4
  %14 = call i32 @extract_user_id_field(i32 %12, i32 %13, i32* %8)
  %15 = load i32, i32* @ID_AA64DFR0_EL1, align 4
  %16 = load i32, i32* @ID_AA64DFR0_BRPs_SHIFT, align 4
  %17 = call i32 @extract_user_id_field(i32 %15, i32 %16, i32* %9)
  %18 = load i32, i32* %9, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.dbreg*, %struct.dbreg** %4, align 8
  %22 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.dbreg*, %struct.dbreg** %4, align 8
  %24 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = shl i32 %25, 8
  store i32 %26, i32* %24, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.dbreg*, %struct.dbreg** %4, align 8
  %29 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.thread*, %struct.thread** %3, align 8
  %33 = getelementptr inbounds %struct.thread, %struct.thread* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store %struct.debug_monitor_state* %35, %struct.debug_monitor_state** %5, align 8
  %36 = load %struct.debug_monitor_state*, %struct.debug_monitor_state** %5, align 8
  %37 = getelementptr inbounds %struct.debug_monitor_state, %struct.debug_monitor_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @DBGMON_ENABLED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %80

42:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %76, %42
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %79

47:                                               ; preds = %43
  %48 = load %struct.debug_monitor_state*, %struct.debug_monitor_state** %5, align 8
  %49 = getelementptr inbounds %struct.debug_monitor_state, %struct.debug_monitor_state* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.dbreg*, %struct.dbreg** %4, align 8
  %56 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i32 %54, i32* %61, align 4
  %62 = load %struct.debug_monitor_state*, %struct.debug_monitor_state** %5, align 8
  %63 = getelementptr inbounds %struct.debug_monitor_state, %struct.debug_monitor_state* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.dbreg*, %struct.dbreg** %4, align 8
  %70 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i32 %68, i32* %75, align 4
  br label %76

76:                                               ; preds = %47
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %43

79:                                               ; preds = %43
  br label %80

80:                                               ; preds = %79, %2
  ret i32 0
}

declare dso_local i32 @memset(%struct.dbreg*, i32, i32) #1

declare dso_local i32 @extract_user_id_field(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
