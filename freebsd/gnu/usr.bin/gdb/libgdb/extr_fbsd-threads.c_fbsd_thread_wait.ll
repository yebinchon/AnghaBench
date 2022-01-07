; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/libgdb/extr_fbsd-threads.c_fbsd_thread_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/libgdb/extr_fbsd-threads.c_fbsd_thread_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i32, %struct.target_waitstatus*)* }
%struct.target_waitstatus = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@child_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@TARGET_WAITKIND_STOPPED = common dso_local global i64 0, align 8
@TARGET_SIGNAL_TRAP = common dso_local global i64 0, align 8
@inferior_ptid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.target_waitstatus*)* @fbsd_thread_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fbsd_thread_wait(i32 %0, %struct.target_waitstatus* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.target_waitstatus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.target_waitstatus* %1, %struct.target_waitstatus** %4, align 8
  %10 = load i32 (i32, %struct.target_waitstatus*)*, i32 (i32, %struct.target_waitstatus*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @child_ops, i32 0, i32 0), align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.target_waitstatus*, %struct.target_waitstatus** %4, align 8
  %13 = call i32 %10(i32 %11, %struct.target_waitstatus* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @GET_PID(i32 %14)
  %16 = icmp sge i64 %15, 0
  br i1 %16, label %17, label %57

17:                                               ; preds = %2
  %18 = load %struct.target_waitstatus*, %struct.target_waitstatus** %4, align 8
  %19 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TARGET_WAITKIND_STOPPED, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %57

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @GET_PID(i32 %24)
  %26 = call i64 @get_current_lwp(i64 %25)
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @GET_PID(i32 %28)
  %30 = call i32 @BUILD_LWP(i64 %27, i64 %29)
  %31 = call i32 @thread_from_lwp(i32 %30, i32* %8, i32* %9)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @in_thread_list(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %23
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @attach_thread(i32 %36, i32* %8, i32* %9, i32 1)
  br label %38

38:                                               ; preds = %35, %23
  %39 = load %struct.target_waitstatus*, %struct.target_waitstatus** %4, align 8
  %40 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TARGET_SIGNAL_TRAP, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @check_event(i32 %46)
  br label %48

48:                                               ; preds = %45, %38
  %49 = load i32, i32* @inferior_ptid, align 4
  %50 = call i32 @fbsd_thread_alive(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* @inferior_ptid, align 4
  %54 = call i32 @delete_thread(i32 %53)
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* @inferior_ptid, align 4
  br label %56

56:                                               ; preds = %52, %48
  br label %57

57:                                               ; preds = %56, %17, %2
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i64 @GET_PID(i32) #1

declare dso_local i64 @get_current_lwp(i64) #1

declare dso_local i32 @thread_from_lwp(i32, i32*, i32*) #1

declare dso_local i32 @BUILD_LWP(i64, i64) #1

declare dso_local i32 @in_thread_list(i32) #1

declare dso_local i32 @attach_thread(i32, i32*, i32*, i32) #1

declare dso_local i32 @check_event(i32) #1

declare dso_local i32 @fbsd_thread_alive(i32) #1

declare dso_local i32 @delete_thread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
