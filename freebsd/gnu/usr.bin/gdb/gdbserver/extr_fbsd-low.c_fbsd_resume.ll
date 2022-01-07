; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/gdbserver/extr_fbsd-low.c_fbsd_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/gdbserver/extr_fbsd-low.c_fbsd_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_resume = type { i32 }

@resume_ptr = common dso_local global %struct.thread_resume* null, align 8
@all_threads = common dso_local global i32 0, align 4
@fbsd_set_resume_request = common dso_local global i32 0, align 4
@all_processes = common dso_local global i32 0, align 4
@resume_status_pending_p = common dso_local global i32 0, align 4
@debug_threads = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Not resuming, pending status\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Resuming, no pending status\0A\00", align 1
@fbsd_queue_one_thread = common dso_local global i32 0, align 4
@fbsd_continue_one_thread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread_resume*)* @fbsd_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fbsd_resume(%struct.thread_resume* %0) #0 {
  %2 = alloca %struct.thread_resume*, align 8
  %3 = alloca i32, align 4
  store %struct.thread_resume* %0, %struct.thread_resume** %2, align 8
  %4 = load %struct.thread_resume*, %struct.thread_resume** %2, align 8
  store %struct.thread_resume* %4, %struct.thread_resume** @resume_ptr, align 8
  %5 = load i32, i32* @fbsd_set_resume_request, align 4
  %6 = call i32 @for_each_inferior(i32* @all_threads, i32 %5)
  store i32 0, i32* %3, align 4
  %7 = load i32, i32* @resume_status_pending_p, align 4
  %8 = call i32 @find_inferior(i32* @all_processes, i32 %7, i32* %3)
  %9 = load i64, i64* @debug_threads, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %20

17:                                               ; preds = %11
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %14
  br label %21

21:                                               ; preds = %20, %1
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* @fbsd_queue_one_thread, align 4
  %26 = call i32 @for_each_inferior(i32* @all_threads, i32 %25)
  br label %32

27:                                               ; preds = %21
  %28 = call i32 (...) @block_async_io()
  %29 = call i32 (...) @enable_async_io()
  %30 = load i32, i32* @fbsd_continue_one_thread, align 4
  %31 = call i32 @for_each_inferior(i32* @all_threads, i32 %30)
  br label %32

32:                                               ; preds = %27, %24
  ret void
}

declare dso_local i32 @for_each_inferior(i32*, i32) #1

declare dso_local i32 @find_inferior(i32*, i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @block_async_io(...) #1

declare dso_local i32 @enable_async_io(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
