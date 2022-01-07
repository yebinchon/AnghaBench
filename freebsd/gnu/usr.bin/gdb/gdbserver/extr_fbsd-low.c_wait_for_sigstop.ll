; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/gdbserver/extr_fbsd-low.c_wait_for_sigstop.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/gdbserver/extr_fbsd-low.c_wait_for_sigstop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_info = type { i32 }
%struct.inferior_list_entry = type { i32 }
%struct.process_info = type { i32, i32, i32, i32, i64 }

@current_inferior = common dso_local global %struct.thread_info* null, align 8
@all_threads = common dso_local global i32 0, align 4
@SIGSTOP = common dso_local global i64 0, align 8
@debug_threads = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Stopped with non-sigstop signal\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Previously current thread died.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inferior_list_entry*)* @wait_for_sigstop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_for_sigstop(%struct.inferior_list_entry* %0) #0 {
  %2 = alloca %struct.inferior_list_entry*, align 8
  %3 = alloca %struct.process_info*, align 8
  %4 = alloca %struct.thread_info*, align 8
  %5 = alloca %struct.thread_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.inferior_list_entry* %0, %struct.inferior_list_entry** %2, align 8
  %8 = load %struct.inferior_list_entry*, %struct.inferior_list_entry** %2, align 8
  %9 = bitcast %struct.inferior_list_entry* %8 to %struct.process_info*
  store %struct.process_info* %9, %struct.process_info** %3, align 8
  %10 = load %struct.process_info*, %struct.process_info** %3, align 8
  %11 = getelementptr inbounds %struct.process_info, %struct.process_info* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %64

15:                                               ; preds = %1
  %16 = load %struct.thread_info*, %struct.thread_info** @current_inferior, align 8
  store %struct.thread_info* %16, %struct.thread_info** %4, align 8
  %17 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %18 = bitcast %struct.thread_info* %17 to %struct.inferior_list_entry*
  %19 = getelementptr inbounds %struct.inferior_list_entry, %struct.inferior_list_entry* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.process_info*, %struct.process_info** %3, align 8
  %22 = getelementptr inbounds %struct.process_info, %struct.process_info* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @find_inferior_id(i32* @all_threads, i32 %23)
  %25 = inttoptr i64 %24 to %struct.thread_info*
  store %struct.thread_info* %25, %struct.thread_info** %5, align 8
  %26 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %27 = call i32 @fbsd_wait_for_event(%struct.thread_info* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @WIFSTOPPED(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %15
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @WSTOPSIG(i32 %32)
  %34 = load i64, i64* @SIGSTOP, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %31
  %37 = load i64, i64* @debug_threads, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 @fprintf(i32 %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %36
  %43 = load %struct.process_info*, %struct.process_info** %3, align 8
  %44 = getelementptr inbounds %struct.process_info, %struct.process_info* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.process_info*, %struct.process_info** %3, align 8
  %47 = getelementptr inbounds %struct.process_info, %struct.process_info* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.process_info*, %struct.process_info** %3, align 8
  %49 = getelementptr inbounds %struct.process_info, %struct.process_info* %48, i32 0, i32 2
  store i32 1, i32* %49, align 8
  br label %50

50:                                               ; preds = %42, %31, %15
  %51 = load i32, i32* %7, align 4
  %52 = call i64 @fbsd_thread_alive(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  store %struct.thread_info* %55, %struct.thread_info** @current_inferior, align 8
  br label %64

56:                                               ; preds = %50
  %57 = load i64, i64* @debug_threads, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* @stderr, align 4
  %61 = call i32 @fprintf(i32 %60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %56
  %63 = call i32 @set_desired_inferior(i32 0)
  br label %64

64:                                               ; preds = %14, %62, %54
  ret void
}

declare dso_local i64 @find_inferior_id(i32*, i32) #1

declare dso_local i32 @fbsd_wait_for_event(%struct.thread_info*) #1

declare dso_local i64 @WIFSTOPPED(i32) #1

declare dso_local i64 @WSTOPSIG(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @fbsd_thread_alive(i32) #1

declare dso_local i32 @set_desired_inferior(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
