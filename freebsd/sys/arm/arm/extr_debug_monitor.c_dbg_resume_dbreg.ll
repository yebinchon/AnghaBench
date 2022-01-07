; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_debug_monitor.c_dbg_resume_dbreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_debug_monitor.c_dbg_resume_dbreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dbreg = type { i32*, i32* }

@dbreg_cmd = common dso_local global i32 0, align 4
@dbreg = common dso_local global i32 0, align 4
@dbg_watchpoint_num = common dso_local global i64 0, align 8
@DBG_REG_BASE_WVR = common dso_local global i32 0, align 4
@DBG_REG_BASE_WCR = common dso_local global i32 0, align 4
@PC_DBREG_CMD_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dbg_resume_dbreg() #0 {
  %1 = alloca %struct.dbreg*, align 8
  %2 = alloca i64, align 8
  %3 = call i32 (...) @dbg_capable()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %44

6:                                                ; preds = %0
  %7 = call i32 (...) @atomic_thread_fence_acq()
  %8 = load i32, i32* @dbreg_cmd, align 4
  %9 = call i32 @PCPU_GET(i32 %8)
  switch i32 %9, label %44 [
    i32 128, label %10
  ]

10:                                               ; preds = %6
  %11 = load i32, i32* @dbreg, align 4
  %12 = call i64 @PCPU_PTR(i32 %11)
  %13 = inttoptr i64 %12 to %struct.dbreg*
  store %struct.dbreg* %13, %struct.dbreg** %1, align 8
  store i64 0, i64* %2, align 8
  br label %14

14:                                               ; preds = %37, %10
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* @dbg_watchpoint_num, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %14
  %19 = load i32, i32* @DBG_REG_BASE_WVR, align 4
  %20 = load i64, i64* %2, align 8
  %21 = load %struct.dbreg*, %struct.dbreg** %1, align 8
  %22 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* %2, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dbg_wb_write_reg(i32 %19, i64 %20, i32 %26)
  %28 = load i32, i32* @DBG_REG_BASE_WCR, align 4
  %29 = load i64, i64* %2, align 8
  %30 = load %struct.dbreg*, %struct.dbreg** %1, align 8
  %31 = getelementptr inbounds %struct.dbreg, %struct.dbreg* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* %2, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dbg_wb_write_reg(i32 %28, i64 %29, i32 %35)
  br label %37

37:                                               ; preds = %18
  %38 = load i64, i64* %2, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %2, align 8
  br label %14

40:                                               ; preds = %14
  %41 = load i32, i32* @dbreg_cmd, align 4
  %42 = load i32, i32* @PC_DBREG_CMD_NONE, align 4
  %43 = call i32 @PCPU_SET(i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %5, %6, %40
  ret void
}

declare dso_local i32 @dbg_capable(...) #1

declare dso_local i32 @atomic_thread_fence_acq(...) #1

declare dso_local i32 @PCPU_GET(i32) #1

declare dso_local i64 @PCPU_PTR(i32) #1

declare dso_local i32 @dbg_wb_write_reg(i32, i64, i32) #1

declare dso_local i32 @PCPU_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
