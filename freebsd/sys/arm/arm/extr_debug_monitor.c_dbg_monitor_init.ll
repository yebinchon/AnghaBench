; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_debug_monitor.c_dbg_monitor_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_debug_monitor.c_dbg_monitor_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dbg_model = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"ARM Debug Architecture not supported\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"ARM Debug Architecture %s\0A\00", align 1
@ID_DFR0_CP_DEBUG_M_V6 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"v6\00", align 1
@ID_DFR0_CP_DEBUG_M_V6_1 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"v6.1\00", align 1
@ID_DFR0_CP_DEBUG_M_V7 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"v7\00", align 1
@ID_DFR0_CP_DEBUG_M_V7_1 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"v7.1\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@dbg_ossr = common dso_local global i32 0, align 4
@dbg_watchpoint_num = common dso_local global i32 0, align 4
@dbg_breakpoint_num = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [45 x i8] c"%d watchpoints and %d breakpoints supported\0A\00", align 1
@dbg_capable_var = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [49 x i8] c"HW Breakpoints/Watchpoints not enabled on CPU%d\0A\00", align 1
@cpuid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dbg_monitor_init() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 (...) @dbg_get_debug_model()
  store i64 %2, i64* @dbg_model, align 8
  %3 = call i32 (...) @dbg_arch_supported()
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %63

7:                                                ; preds = %0
  %8 = load i64, i64* @bootverbose, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %38

10:                                               ; preds = %7
  %11 = load i64, i64* @dbg_model, align 8
  %12 = load i64, i64* @ID_DFR0_CP_DEBUG_M_V6, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %35

15:                                               ; preds = %10
  %16 = load i64, i64* @dbg_model, align 8
  %17 = load i64, i64* @ID_DFR0_CP_DEBUG_M_V6_1, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %33

20:                                               ; preds = %15
  %21 = load i64, i64* @dbg_model, align 8
  %22 = load i64, i64* @ID_DFR0_CP_DEBUG_M_V7, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %31

25:                                               ; preds = %20
  %26 = load i64, i64* @dbg_model, align 8
  %27 = load i64, i64* @ID_DFR0_CP_DEBUG_M_V7_1, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)
  br label %31

31:                                               ; preds = %25, %24
  %32 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %24 ], [ %30, %25 ]
  br label %33

33:                                               ; preds = %31, %19
  %34 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %19 ], [ %32, %31 ]
  br label %35

35:                                               ; preds = %33, %14
  %36 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %14 ], [ %34, %33 ]
  %37 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %35, %7
  %39 = call i32 (...) @dbg_get_ossr()
  store i32 %39, i32* @dbg_ossr, align 4
  %40 = call i32 (...) @dbg_get_wrp_num()
  store i32 %40, i32* @dbg_watchpoint_num, align 4
  %41 = call i32 (...) @dgb_get_brp_num()
  store i32 %41, i32* @dbg_breakpoint_num, align 4
  %42 = load i64, i64* @bootverbose, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, i32* @dbg_watchpoint_num, align 4
  %46 = load i32, i32* @dbg_breakpoint_num, align 4
  %47 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %38
  %49 = call i32 (...) @dbg_reset_state()
  store i32 %49, i32* %1, align 4
  %50 = load i32, i32* %1, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = call i32 (...) @dbg_enable_monitor()
  store i32 %53, i32* %1, align 4
  %54 = load i32, i32* %1, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = call i32 @atomic_set_int(i32* @dbg_capable_var, i32 1)
  br label %63

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %48
  %60 = load i32, i32* @cpuid, align 4
  %61 = call i8* @PCPU_GET(i32 %60)
  %62 = call i32 (i8*, ...) @db_printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i8* %61)
  br label %63

63:                                               ; preds = %59, %56, %5
  ret void
}

declare dso_local i64 @dbg_get_debug_model(...) #1

declare dso_local i32 @dbg_arch_supported(...) #1

declare dso_local i32 @db_printf(i8*, ...) #1

declare dso_local i32 @dbg_get_ossr(...) #1

declare dso_local i32 @dbg_get_wrp_num(...) #1

declare dso_local i32 @dgb_get_brp_num(...) #1

declare dso_local i32 @dbg_reset_state(...) #1

declare dso_local i32 @dbg_enable_monitor(...) #1

declare dso_local i32 @atomic_set_int(i32*, i32) #1

declare dso_local i8* @PCPU_GET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
