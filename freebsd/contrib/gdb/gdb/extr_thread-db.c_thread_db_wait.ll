; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread-db.c_thread_db_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread-db.c_thread_db_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i32, %struct.target_waitstatus*)* }
%struct.target_waitstatus = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@target_beneath = common dso_local global %struct.TYPE_5__* null, align 8
@proc_handle = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@TARGET_WAITKIND_EXITED = common dso_local global i64 0, align 8
@TARGET_WAITKIND_STOPPED = common dso_local global i64 0, align 8
@TARGET_SIGNAL_TRAP = common dso_local global i64 0, align 8
@trap_ptid = external dso_local global i32, align 4
@null_ptid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.target_waitstatus*)* @thread_db_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread_db_wait(i32 %0, %struct.target_waitstatus* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.target_waitstatus*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.target_waitstatus* %1, %struct.target_waitstatus** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @GET_PID(i32 %6)
  %8 = icmp ne i32 %7, -1
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @is_thread(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @lwp_from_thread(i32 %14)
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %13, %9, %2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @target_beneath, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32 (i32, %struct.target_waitstatus*)*, i32 (i32, %struct.target_waitstatus*)** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.target_waitstatus*, %struct.target_waitstatus** %5, align 8
  %22 = call i32 %19(i32 %20, %struct.target_waitstatus* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @proc_handle, i32 0, i32 0), align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %3, align 4
  br label %62

27:                                               ; preds = %16
  %28 = load %struct.target_waitstatus*, %struct.target_waitstatus** %5, align 8
  %29 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TARGET_WAITKIND_EXITED, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = call i32 @pid_to_ptid(i32 -1)
  store i32 %34, i32* %3, align 4
  br label %62

35:                                               ; preds = %27
  %36 = load %struct.target_waitstatus*, %struct.target_waitstatus** %5, align 8
  %37 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TARGET_WAITKIND_STOPPED, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %35
  %42 = load %struct.target_waitstatus*, %struct.target_waitstatus** %5, align 8
  %43 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @TARGET_SIGNAL_TRAP, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @check_event(i32 %49)
  br label %51

51:                                               ; preds = %48, %41, %35
  %52 = load i32, i32* @trap_ptid, align 4
  %53 = load i32, i32* @null_ptid, align 4
  %54 = call i32 @ptid_equal(i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @trap_ptid, align 4
  %58 = call i32 @thread_from_lwp(i32 %57)
  store i32 %58, i32* @trap_ptid, align 4
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @thread_from_lwp(i32 %60)
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %59, %33, %25
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @GET_PID(i32) #1

declare dso_local i64 @is_thread(i32) #1

declare dso_local i32 @lwp_from_thread(i32) #1

declare dso_local i32 @pid_to_ptid(i32) #1

declare dso_local i32 @check_event(i32) #1

declare dso_local i32 @ptid_equal(i32, i32) #1

declare dso_local i32 @thread_from_lwp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
