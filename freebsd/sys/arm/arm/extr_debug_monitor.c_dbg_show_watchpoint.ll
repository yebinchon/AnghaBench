; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_debug_monitor.c_dbg_show_watchpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_debug_monitor.c_dbg_show_watchpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [58 x i8] c"Architecture does not support HW breakpoints/watchpoints\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"\0Ahardware watchpoints:\0A\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"  watch    status        type  len     address              symbol\0A\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"  -----  --------  ----------  ---  ----------  ------------------\0A\00", align 1
@dbg_watchpoint_num = common dso_local global i32 0, align 4
@DBG_REG_BASE_WCR = common dso_local global i32 0, align 4
@DBG_WB_CTRL_E = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@DBG_REG_BASE_WVR = common dso_local global i32 0, align 4
@DBGWVR_ADDR_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"  %-5d  %-8s  %10s  %3d  0x%08x  \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DB_STGY_ANY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dbg_show_watchpoint() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = call i32 (...) @dbg_capable()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %0
  %10 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %71

11:                                               ; preds = %0
  %12 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %68, %11
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @dbg_watchpoint_num, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %71

19:                                               ; preds = %15
  %20 = load i32, i32* @DBG_REG_BASE_WCR, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @dbg_wb_read_reg(i32 %20, i32 %21)
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* @DBG_WB_CTRL_E, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i64, i64* @TRUE, align 8
  store i64 %28, i64* %5, align 8
  br label %31

29:                                               ; preds = %19
  %30 = load i64, i64* @FALSE, align 8
  store i64 %30, i64* %5, align 8
  br label %31

31:                                               ; preds = %29, %27
  %32 = load i32, i32* %1, align 4
  %33 = call i32 @DBG_WB_CTRL_ACCESS_MASK(i32 %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %1, align 4
  %35 = call i32 @DBG_WB_CTRL_LEN_MASK(i32 %34)
  store i32 %35, i32* %2, align 4
  %36 = load i32, i32* @DBG_REG_BASE_WVR, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @dbg_wb_read_reg(i32 %36, i32 %37)
  %39 = load i32, i32* @DBGWVR_ADDR_MASK, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i64, i64* %5, align 8
  %43 = icmp ne i64 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  %46 = load i64, i64* %5, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %31
  %49 = load i32, i32* %3, align 4
  %50 = call i8* @dbg_watchtype_str(i32 %49)
  br label %52

51:                                               ; preds = %31
  br label %52

52:                                               ; preds = %51, %48
  %53 = phi i8* [ %50, %48 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), %51 ]
  %54 = load i64, i64* %5, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @dbg_watchtype_len(i32 %57)
  br label %60

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %56
  %61 = phi i32 [ %58, %56 ], [ 0, %59 ]
  %62 = load i32, i32* %4, align 4
  %63 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %41, i8* %45, i8* %53, i32 %61, i32 %62)
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @DB_STGY_ANY, align 4
  %66 = call i32 @db_printsym(i32 %64, i32 %65)
  %67 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %68

68:                                               ; preds = %60
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %15

71:                                               ; preds = %9, %15
  ret void
}

declare dso_local i32 @dbg_capable(...) #1

declare dso_local i32 @db_printf(i8*, ...) #1

declare dso_local i32 @dbg_wb_read_reg(i32, i32) #1

declare dso_local i32 @DBG_WB_CTRL_ACCESS_MASK(i32) #1

declare dso_local i32 @DBG_WB_CTRL_LEN_MASK(i32) #1

declare dso_local i8* @dbg_watchtype_str(i32) #1

declare dso_local i32 @dbg_watchtype_len(i32) #1

declare dso_local i32 @db_printsym(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
