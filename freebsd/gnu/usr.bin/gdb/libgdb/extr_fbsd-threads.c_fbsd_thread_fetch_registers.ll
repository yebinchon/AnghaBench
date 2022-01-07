; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/libgdb/extr_fbsd-threads.c_fbsd_thread_fetch_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/libgdb/extr_fbsd-threads.c_fbsd_thread_fetch_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inferior_ptid = common dso_local global i32 0, align 4
@thread_agent = common dso_local global i32 0, align 4
@TD_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Cannot find thread %d: Thread ID=%ld, %s\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"Cannot fetch general-purpose registers for thread %d: Thread ID=%ld, %s\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"Cannot get floating-point registers for thread %d: Thread ID=%ld, %s\00", align 1
@current_regcache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @fbsd_thread_fetch_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fbsd_thread_fetch_registers(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @inferior_ptid, align 4
  %8 = call i32 @IS_THREAD(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @fbsd_lwp_fetch_registers(i32 %11)
  br label %60

13:                                               ; preds = %1
  %14 = load i32, i32* @thread_agent, align 4
  %15 = load i32, i32* @inferior_ptid, align 4
  %16 = call i8* @GET_THREAD(i32 %15)
  %17 = call i64 @td_ta_map_id2thr_p(i32 %14, i8* %16, i32* %5)
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @TD_OK, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %13
  %22 = load i32, i32* @inferior_ptid, align 4
  %23 = call i32 @pid_to_thread_id(i32 %22)
  %24 = load i32, i32* @inferior_ptid, align 4
  %25 = call i8* @GET_THREAD(i32 %24)
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @thread_db_err_str(i64 %26)
  %28 = call i32 @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %23, i8* %25, i32 %27)
  br label %29

29:                                               ; preds = %21, %13
  %30 = load i32, i32* %3, align 4
  %31 = call i64 @td_thr_getgregs_p(i32* %5, i32 %30)
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @TD_OK, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load i32, i32* @inferior_ptid, align 4
  %37 = call i32 @pid_to_thread_id(i32 %36)
  %38 = load i32, i32* @inferior_ptid, align 4
  %39 = call i8* @GET_THREAD(i32 %38)
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @thread_db_err_str(i64 %40)
  %42 = call i32 @error(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %37, i8* %39, i32 %41)
  br label %43

43:                                               ; preds = %35, %29
  %44 = call i64 @td_thr_getfpregs_p(i32* %5, i32* %4)
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @TD_OK, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load i32, i32* @inferior_ptid, align 4
  %50 = call i32 @pid_to_thread_id(i32 %49)
  %51 = load i32, i32* @inferior_ptid, align 4
  %52 = call i8* @GET_THREAD(i32 %51)
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @thread_db_err_str(i64 %53)
  %55 = call i32 @error(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i32 %50, i8* %52, i32 %54)
  br label %56

56:                                               ; preds = %48, %43
  %57 = call i32 @supply_fpregset(i32* %4)
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @supply_gregset(i32 %58)
  br label %60

60:                                               ; preds = %56, %10
  ret void
}

declare dso_local i32 @IS_THREAD(i32) #1

declare dso_local i32 @fbsd_lwp_fetch_registers(i32) #1

declare dso_local i64 @td_ta_map_id2thr_p(i32, i8*, i32*) #1

declare dso_local i8* @GET_THREAD(i32) #1

declare dso_local i32 @error(i8*, i32, i8*, i32) #1

declare dso_local i32 @pid_to_thread_id(i32) #1

declare dso_local i32 @thread_db_err_str(i64) #1

declare dso_local i64 @td_thr_getgregs_p(i32*, i32) #1

declare dso_local i64 @td_thr_getfpregs_p(i32*, i32*) #1

declare dso_local i32 @supply_fpregset(i32*) #1

declare dso_local i32 @supply_gregset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
