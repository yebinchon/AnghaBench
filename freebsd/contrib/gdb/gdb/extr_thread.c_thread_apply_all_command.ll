; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread.c_thread_apply_all_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread.c_thread_apply_all_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_info = type { i32, i32, %struct.thread_info* }
%struct.cleanup = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"Please specify a command following the thread ID list\00", align 1
@inferior_ptid = common dso_local global i32 0, align 4
@xfree = common dso_local global i32 0, align 4
@thread_list = common dso_local global %struct.thread_info* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"\0AThread %d (%s):\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @thread_apply_all_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread_apply_all_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread_info*, align 8
  %6 = alloca %struct.cleanup*, align 8
  %7 = alloca %struct.cleanup*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load i8*, i8** %3, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11, %2
  %17 = call i32 @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %11
  %19 = load i32, i32* @inferior_ptid, align 4
  %20 = call %struct.cleanup* @make_cleanup_restore_current_thread(i32 %19)
  store %struct.cleanup* %20, %struct.cleanup** %6, align 8
  %21 = call i32 (...) @target_find_new_threads()
  %22 = load i8*, i8** %3, align 8
  %23 = call i8* @xstrdup(i8* %22)
  store i8* %23, i8** %8, align 8
  %24 = load i32, i32* @xfree, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = call %struct.cleanup* @make_cleanup(i32 %24, i8* %25)
  store %struct.cleanup* %26, %struct.cleanup** %7, align 8
  %27 = load %struct.thread_info*, %struct.thread_info** @thread_list, align 8
  store %struct.thread_info* %27, %struct.thread_info** %5, align 8
  br label %28

28:                                               ; preds = %53, %18
  %29 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %30 = icmp ne %struct.thread_info* %29, null
  br i1 %30, label %31, label %57

31:                                               ; preds = %28
  %32 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %33 = call i64 @thread_alive(%struct.thread_info* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %31
  %36 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %37 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @switch_to_thread(i32 %38)
  %40 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %41 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @inferior_ptid, align 4
  %44 = call i32 @target_pid_to_str(i32 %43)
  %45 = call i32 @printf_filtered(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %44)
  %46 = load i8*, i8** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @execute_command(i8* %46, i32 %47)
  %49 = load i8*, i8** %3, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @strcpy(i8* %49, i8* %50)
  br label %52

52:                                               ; preds = %35, %31
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %55 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %54, i32 0, i32 2
  %56 = load %struct.thread_info*, %struct.thread_info** %55, align 8
  store %struct.thread_info* %56, %struct.thread_info** %5, align 8
  br label %28

57:                                               ; preds = %28
  %58 = load %struct.cleanup*, %struct.cleanup** %7, align 8
  %59 = call i32 @do_cleanups(%struct.cleanup* %58)
  %60 = load %struct.cleanup*, %struct.cleanup** %6, align 8
  %61 = call i32 @do_cleanups(%struct.cleanup* %60)
  ret void
}

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.cleanup* @make_cleanup_restore_current_thread(i32) #1

declare dso_local i32 @target_find_new_threads(...) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i8*) #1

declare dso_local i64 @thread_alive(%struct.thread_info*) #1

declare dso_local i32 @switch_to_thread(i32) #1

declare dso_local i32 @printf_filtered(i8*, i32, i32) #1

declare dso_local i32 @target_pid_to_str(i32) #1

declare dso_local i32 @execute_command(i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
