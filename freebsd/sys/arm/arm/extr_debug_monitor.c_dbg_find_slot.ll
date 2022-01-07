; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_debug_monitor.c_dbg_find_slot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_debug_monitor.c_dbg_find_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dbg_breakpoint_num = common dso_local global i32 0, align 4
@DBG_REG_BASE_BVR = common dso_local global i32 0, align 4
@DBG_REG_BASE_BCR = common dso_local global i32 0, align 4
@dbg_watchpoint_num = common dso_local global i32 0, align 4
@DBG_REG_BASE_WVR = common dso_local global i32 0, align 4
@DBG_REG_BASE_WCR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unsupported debug type\0A\00", align 1
@DBG_WB_CTRL_E = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @dbg_find_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbg_find_slot(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %19 [
    i32 129, label %11
    i32 128, label %15
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @dbg_breakpoint_num, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @DBG_REG_BASE_BVR, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @DBG_REG_BASE_BCR, align 4
  store i32 %14, i32* %7, align 4
  br label %21

15:                                               ; preds = %2
  %16 = load i32, i32* @dbg_watchpoint_num, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* @DBG_REG_BASE_WVR, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @DBG_REG_BASE_WCR, align 4
  store i32 %18, i32* %7, align 4
  br label %21

19:                                               ; preds = %2
  %20 = call i32 @db_printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %46

21:                                               ; preds = %15, %11
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %42, %21
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @dbg_wb_read_reg(i32 %27, i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @dbg_wb_read_reg(i32 %33, i32 %34)
  %36 = load i32, i32* @DBG_WB_CTRL_E, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %3, align 4
  br label %46

41:                                               ; preds = %32, %26
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %9, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %22

45:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %39, %19
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @db_printf(i8*) #1

declare dso_local i32 @dbg_wb_read_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
