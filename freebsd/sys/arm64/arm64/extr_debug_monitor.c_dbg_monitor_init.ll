; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_debug_monitor.c_dbg_monitor_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_debug_monitor.c_dbg_monitor_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@id_aa64dfr0_el1 = common dso_local global i32 0, align 4
@dbg_watchpoint_num = common dso_local global i32 0, align 4
@dbg_breakpoint_num = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@cpuid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"%d watchpoints and %d breakpoints supported\0A\00", align 1
@DBG_REG_BASE_WCR = common dso_local global i32 0, align 4
@DBG_REG_BASE_WVR = common dso_local global i32 0, align 4
@DBG_REG_BASE_BCR = common dso_local global i32 0, align 4
@DBG_REG_BASE_BVR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dbg_monitor_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @id_aa64dfr0_el1, align 4
  %3 = call i32 @READ_SPECIALREG(i32 %2)
  %4 = ashr i32 %3, 20
  %5 = and i32 %4, 15
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @dbg_watchpoint_num, align 4
  %7 = load i32, i32* @id_aa64dfr0_el1, align 4
  %8 = call i32 @READ_SPECIALREG(i32 %7)
  %9 = ashr i32 %8, 12
  %10 = and i32 %9, 15
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @dbg_breakpoint_num, align 4
  %12 = load i64, i64* @bootverbose, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %0
  %15 = load i32, i32* @cpuid, align 4
  %16 = call i64 @PCPU_GET(i32 %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* @dbg_watchpoint_num, align 4
  %20 = load i32, i32* @dbg_breakpoint_num, align 4
  %21 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %14, %0
  store i32 0, i32* %1, align 4
  br label %23

23:                                               ; preds = %34, %22
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* @dbg_watchpoint_num, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load i32, i32* @DBG_REG_BASE_WCR, align 4
  %29 = load i32, i32* %1, align 4
  %30 = call i32 @dbg_wb_write_reg(i32 %28, i32 %29, i32 0)
  %31 = load i32, i32* @DBG_REG_BASE_WVR, align 4
  %32 = load i32, i32* %1, align 4
  %33 = call i32 @dbg_wb_write_reg(i32 %31, i32 %32, i32 0)
  br label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %1, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %1, align 4
  br label %23

37:                                               ; preds = %23
  store i32 0, i32* %1, align 4
  br label %38

38:                                               ; preds = %49, %37
  %39 = load i32, i32* %1, align 4
  %40 = load i32, i32* @dbg_breakpoint_num, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = load i32, i32* @DBG_REG_BASE_BCR, align 4
  %44 = load i32, i32* %1, align 4
  %45 = call i32 @dbg_wb_write_reg(i32 %43, i32 %44, i32 0)
  %46 = load i32, i32* @DBG_REG_BASE_BVR, align 4
  %47 = load i32, i32* %1, align 4
  %48 = call i32 @dbg_wb_write_reg(i32 %46, i32 %47, i32 0)
  br label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %1, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %1, align 4
  br label %38

52:                                               ; preds = %38
  %53 = call i32 (...) @dbg_enable()
  ret void
}

declare dso_local i32 @READ_SPECIALREG(i32) #1

declare dso_local i64 @PCPU_GET(i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @dbg_wb_write_reg(i32, i32, i32) #1

declare dso_local i32 @dbg_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
