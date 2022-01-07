; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sol-thread.c_sol_thread_fetch_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sol-thread.c_sol_thread_fetch_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32)* }
%struct.TYPE_4__ = type { i32 (i32)* }

@inferior_ptid = common dso_local global i32 0, align 4
@target_has_execution = common dso_local global i64 0, align 8
@procfs_ops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@orig_core_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [41 x i8] c"sol_thread_fetch_registers:  thread == 0\00", align 1
@main_ta = common dso_local global i32 0, align 4
@TD_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"sol_thread_fetch_registers: td_ta_map_id2thr: %s\00", align 1
@TD_PARTIALREG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"sol_thread_fetch_registers: td_thr_getgregs %s\00", align 1
@TD_NOFPREGS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [48 x i8] c"sol_thread_fetch_registers: td_thr_getfpregs %s\00", align 1
@TD_NOXREGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sol_thread_fetch_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sol_thread_fetch_registers(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* @inferior_ptid, align 4
  %9 = call i32 @is_thread(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %1
  %12 = load i64, i64* @target_has_execution, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @procfs_ops, i32 0, i32 0), align 8
  %16 = load i32, i32* %2, align 4
  %17 = call i32 %15(i32 %16)
  br label %22

18:                                               ; preds = %11
  %19 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @orig_core_ops, i32 0, i32 0), align 8
  %20 = load i32, i32* %2, align 4
  %21 = call i32 %19(i32 %20)
  br label %22

22:                                               ; preds = %18, %14
  br label %71

23:                                               ; preds = %1
  %24 = load i32, i32* @inferior_ptid, align 4
  %25 = call i64 @GET_THREAD(i32 %24)
  store i64 %25, i64* %3, align 8
  %26 = load i64, i64* %3, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %23
  %31 = load i32, i32* @main_ta, align 4
  %32 = load i64, i64* %3, align 8
  %33 = call i64 @p_td_ta_map_id2thr(i32 %31, i64 %32, i32* %4)
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @TD_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @td_err_string(i64 %38)
  %40 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %37, %30
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @p_td_thr_getgregs(i32* %4, i32 %42)
  store i64 %43, i64* %5, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @TD_OK, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* @TD_PARTIALREG, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @td_err_string(i64 %52)
  %54 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %51, %47, %41
  %56 = call i64 @p_td_thr_getfpregs(i32* %4, i32* %7)
  store i64 %56, i64* %5, align 8
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* @TD_OK, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* @TD_NOFPREGS, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i64, i64* %5, align 8
  %66 = call i32 @td_err_string(i64 %65)
  %67 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %64, %60, %55
  %69 = call i32 @supply_gregset(i32* %6)
  %70 = call i32 @supply_fpregset(i32* %7)
  br label %71

71:                                               ; preds = %68, %22
  ret void
}

declare dso_local i32 @is_thread(i32) #1

declare dso_local i64 @GET_THREAD(i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i64 @p_td_ta_map_id2thr(i32, i64, i32*) #1

declare dso_local i32 @td_err_string(i64) #1

declare dso_local i64 @p_td_thr_getgregs(i32*, i32) #1

declare dso_local i64 @p_td_thr_getfpregs(i32*, i32*) #1

declare dso_local i32 @supply_gregset(i32*) #1

declare dso_local i32 @supply_fpregset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
