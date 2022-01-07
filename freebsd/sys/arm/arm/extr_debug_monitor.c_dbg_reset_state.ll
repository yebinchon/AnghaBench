; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_debug_monitor.c_dbg_reset_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_debug_monitor.c_dbg_reset_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dbg_model = common dso_local global i32 0, align 4
@DBGPRSR_PU = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@dbg_ossr = common dso_local global i64 0, align 8
@DBGPRSR_DLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Debug facility locked (CPU%d)\0A\00", align 1
@dbg_watchpoint_num = common dso_local global i64 0, align 8
@DBG_REG_BASE_WCR = common dso_local global i32 0, align 4
@DBG_REG_BASE_WVR = common dso_local global i32 0, align 4
@dbg_breakpoint_num = common dso_local global i64 0, align 8
@DBG_REG_BASE_BCR = common dso_local global i32 0, align 4
@DBG_REG_BASE_BVR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @dbg_reset_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbg_reset_state() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @PCPU_GET(i32 %5)
  store i32 %6, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* @dbg_model, align 4
  switch i32 %7, label %39 [
    i32 131, label %8
    i32 130, label %8
    i32 129, label %15
    i32 128, label %31
  ]

8:                                                ; preds = %0, %0
  %9 = call i32 (...) @dbg_enable_monitor()
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %1, align 4
  br label %91

14:                                               ; preds = %8
  br label %58

15:                                               ; preds = %0
  %16 = call i32 (...) @cp14_dbgprsr_get()
  %17 = load i32, i32* @DBGPRSR_PU, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %20, %15
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %40

26:                                               ; preds = %22
  %27 = load i64, i64* @dbg_ossr, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %58

30:                                               ; preds = %26
  br label %40

31:                                               ; preds = %0
  %32 = call i32 (...) @cp14_dbgosdlr_get()
  %33 = load i32, i32* @DBGPRSR_DLK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @ENXIO, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %36, %31
  br label %40

39:                                               ; preds = %0
  br label %40

40:                                               ; preds = %39, %38, %30, %25
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32, i32* %2, align 4
  %45 = call i32 @db_printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %1, align 4
  br label %91

47:                                               ; preds = %40
  %48 = load i32, i32* @dbg_model, align 4
  %49 = and i32 %48, 128
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load i64, i64* @dbg_ossr, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51, %47
  %55 = call i32 @cp14_dbgoslar_set(i32 0)
  %56 = call i32 (...) @isb()
  br label %57

57:                                               ; preds = %54, %51
  br label %58

58:                                               ; preds = %57, %29, %14
  %59 = call i32 @cp14_dbgvcr_set(i32 0)
  %60 = call i32 (...) @isb()
  store i64 0, i64* %3, align 8
  br label %61

61:                                               ; preds = %72, %58
  %62 = load i64, i64* %3, align 8
  %63 = load i64, i64* @dbg_watchpoint_num, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %61
  %66 = load i32, i32* @DBG_REG_BASE_WCR, align 4
  %67 = load i64, i64* %3, align 8
  %68 = call i32 @dbg_wb_write_reg(i32 %66, i64 %67, i32 0)
  %69 = load i32, i32* @DBG_REG_BASE_WVR, align 4
  %70 = load i64, i64* %3, align 8
  %71 = call i32 @dbg_wb_write_reg(i32 %69, i64 %70, i32 0)
  br label %72

72:                                               ; preds = %65
  %73 = load i64, i64* %3, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %3, align 8
  br label %61

75:                                               ; preds = %61
  store i64 0, i64* %3, align 8
  br label %76

76:                                               ; preds = %87, %75
  %77 = load i64, i64* %3, align 8
  %78 = load i64, i64* @dbg_breakpoint_num, align 8
  %79 = icmp ult i64 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %76
  %81 = load i32, i32* @DBG_REG_BASE_BCR, align 4
  %82 = load i64, i64* %3, align 8
  %83 = call i32 @dbg_wb_write_reg(i32 %81, i64 %82, i32 0)
  %84 = load i32, i32* @DBG_REG_BASE_BVR, align 4
  %85 = load i64, i64* %3, align 8
  %86 = call i32 @dbg_wb_write_reg(i32 %84, i64 %85, i32 0)
  br label %87

87:                                               ; preds = %80
  %88 = load i64, i64* %3, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %3, align 8
  br label %76

90:                                               ; preds = %76
  store i32 0, i32* %1, align 4
  br label %91

91:                                               ; preds = %90, %43, %12
  %92 = load i32, i32* %1, align 4
  ret i32 %92
}

declare dso_local i32 @PCPU_GET(i32) #1

declare dso_local i32 @dbg_enable_monitor(...) #1

declare dso_local i32 @cp14_dbgprsr_get(...) #1

declare dso_local i32 @cp14_dbgosdlr_get(...) #1

declare dso_local i32 @db_printf(i8*, i32) #1

declare dso_local i32 @cp14_dbgoslar_set(i32) #1

declare dso_local i32 @isb(...) #1

declare dso_local i32 @cp14_dbgvcr_set(i32) #1

declare dso_local i32 @dbg_wb_write_reg(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
