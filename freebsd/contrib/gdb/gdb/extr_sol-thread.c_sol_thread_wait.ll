; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sol-thread.c_sol_thread_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sol-thread.c_sol_thread_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (i32, %struct.target_waitstatus*)* }
%struct.target_waitstatus = type { i64 }
%struct.cleanup = type { i32 }

@inferior_ptid = common dso_local global i32 0, align 4
@main_ph = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [54 x i8] c"This version of Solaris can't start inactive threads.\00", align 1
@info_verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"Specified thread %ld seems to have terminated\00", align 1
@procfs_ops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@TARGET_WAITKIND_EXITED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"[New %s]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.target_waitstatus*)* @sol_thread_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sol_thread_wait(i32 %0, %struct.target_waitstatus* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.target_waitstatus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cleanup*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.target_waitstatus* %1, %struct.target_waitstatus** %4, align 8
  %9 = load i32, i32* @inferior_ptid, align 4
  store i32 %9, i32* %6, align 4
  %10 = call %struct.cleanup* (...) @save_inferior_ptid()
  store %struct.cleanup* %10, %struct.cleanup** %7, align 8
  %11 = load i32, i32* @inferior_ptid, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @main_ph, i32 0, i32 0), align 4
  %13 = call i32 @PIDGET(i32 %12)
  %14 = call i32 @thread_to_lwp(i32 %11, i32 %13)
  store i32 %14, i32* @inferior_ptid, align 4
  %15 = load i32, i32* @inferior_ptid, align 4
  %16 = call i32 @PIDGET(i32 %15)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = call i32 (...) @procfs_first_available()
  store i32 %19, i32* @inferior_ptid, align 4
  br label %20

20:                                               ; preds = %18, %2
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @PIDGET(i32 %21)
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %45

24:                                               ; preds = %20
  %25 = load i32, i32* %3, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @thread_to_lwp(i32 %26, i32 -2)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @PIDGET(i32 %28)
  %30 = icmp eq i32 %29, -2
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = call i32 @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %24
  %34 = load i64, i64* @info_verbose, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @PIDGET(i32 %37)
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @GET_THREAD(i32 %41)
  %43 = call i32 @warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %40, %36, %33
  br label %45

45:                                               ; preds = %44, %20
  %46 = load i32 (i32, %struct.target_waitstatus*)*, i32 (i32, %struct.target_waitstatus*)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @procfs_ops, i32 0, i32 0), align 8
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.target_waitstatus*, %struct.target_waitstatus** %4, align 8
  %49 = call i32 %46(i32 %47, %struct.target_waitstatus* %48)
  store i32 %49, i32* %5, align 4
  %50 = load %struct.target_waitstatus*, %struct.target_waitstatus** %4, align 8
  %51 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @TARGET_WAITKIND_EXITED, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %83

55:                                               ; preds = %45
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @lwp_to_thread(i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @PIDGET(i32 %58)
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %61, %55
  %64 = load i32, i32* %5, align 4
  %65 = call i64 @is_thread(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %63
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @ptid_equal(i32 %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @in_thread_list(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @target_pid_to_str(i32 %77)
  %79 = call i32 @printf_filtered(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @add_thread(i32 %80)
  br label %82

82:                                               ; preds = %76, %72, %67, %63
  br label %83

83:                                               ; preds = %82, %45
  %84 = load %struct.cleanup*, %struct.cleanup** %7, align 8
  %85 = call i32 @do_cleanups(%struct.cleanup* %84)
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local %struct.cleanup* @save_inferior_ptid(...) #1

declare dso_local i32 @thread_to_lwp(i32, i32) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @procfs_first_available(...) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @warning(i8*, i32) #1

declare dso_local i32 @GET_THREAD(i32) #1

declare dso_local i32 @lwp_to_thread(i32) #1

declare dso_local i64 @is_thread(i32) #1

declare dso_local i32 @ptid_equal(i32, i32) #1

declare dso_local i32 @in_thread_list(i32) #1

declare dso_local i32 @printf_filtered(i8*, i32) #1

declare dso_local i32 @target_pid_to_str(i32) #1

declare dso_local i32 @add_thread(i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
