; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread-db.c_attach_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread-db.c_attach_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.thread_info = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"[New %s]\0A\00", align 1
@TD_THR_UNKNOWN = common dso_local global i64 0, align 8
@TD_THR_ZOMBIE = common dso_local global i64 0, align 8
@TD_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"Cannot enable thread event reporting for %s: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, %struct.TYPE_3__*, i32)* @attach_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @attach_thread(i32 %0, i32* %1, %struct.TYPE_3__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread_info*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = call i32 (...) @check_thread_signals()
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.thread_info* @add_thread(i32 %12)
  store %struct.thread_info* %13, %struct.thread_info** %9, align 8
  %14 = call i32 @xmalloc(i32 4)
  %15 = load %struct.thread_info*, %struct.thread_info** %9, align 8
  %16 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.thread_info*, %struct.thread_info** %9, align 8
  %18 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @memset(i32 %19, i32 0, i32 4)
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @target_pid_to_str(i32 %24)
  %26 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %23, %4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TD_THR_UNKNOWN, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @TD_THR_ZOMBIE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33, %27
  br label %52

40:                                               ; preds = %33
  %41 = load i32*, i32** %6, align 8
  %42 = call i64 @td_thr_event_enable_p(i32* %41, i32 1)
  store i64 %42, i64* %10, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* @TD_OK, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @target_pid_to_str(i32 %47)
  %49 = load i64, i64* %10, align 8
  %50 = call i8* @thread_db_err_str(i64 %49)
  %51 = call i32 @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %48, i8* %50)
  br label %52

52:                                               ; preds = %39, %46, %40
  ret void
}

declare dso_local i32 @check_thread_signals(...) #1

declare dso_local %struct.thread_info* @add_thread(i32) #1

declare dso_local i32 @xmalloc(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @printf_unfiltered(i8*, i32) #1

declare dso_local i32 @target_pid_to_str(i32) #1

declare dso_local i64 @td_thr_event_enable_p(i32*, i32) #1

declare dso_local i32 @error(i8*, i32, i8*) #1

declare dso_local i8* @thread_db_err_str(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
