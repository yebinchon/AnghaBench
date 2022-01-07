; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread.c_info_threads_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread.c_info_threads_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_info = type { i32, i32, %struct.thread_info* }
%struct.frame_info = type { i32 }

@current_gdbarch = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"No frame.\00", align 1
@inferior_ptid = common dso_local global i32 0, align 4
@thread_list = common dso_local global %struct.thread_info* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"* \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%d %s\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"Couldn't restore frame in current thread, at frame 0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @info_threads_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @info_threads_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.frame_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = call i32 (...) @get_selected_frame()
  %12 = call i32 @frame_relative_level(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @current_gdbarch, align 4
  %14 = call i64 @legacy_frame_p(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 @error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %16, %2
  %22 = call i32 (...) @prune_threads()
  %23 = call i32 (...) @target_find_new_threads()
  %24 = load i32, i32* @inferior_ptid, align 4
  store i32 %24, i32* %6, align 4
  %25 = load %struct.thread_info*, %struct.thread_info** @thread_list, align 8
  store %struct.thread_info* %25, %struct.thread_info** %5, align 8
  br label %26

26:                                               ; preds = %64, %21
  %27 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %28 = icmp ne %struct.thread_info* %27, null
  br i1 %28, label %29, label %68

29:                                               ; preds = %26
  %30 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %31 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @ptid_equal(i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %40

38:                                               ; preds = %29
  %39 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %36
  %41 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %42 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %45 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @target_pid_to_str(i32 %46)
  %48 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %43, i32 %47)
  %49 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %50 = call i8* @target_extra_thread_info(%struct.thread_info* %49)
  store i8* %50, i8** %10, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %40
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %54)
  br label %56

56:                                               ; preds = %53, %40
  %57 = call i32 @puts_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %59 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @switch_to_thread(i32 %60)
  %62 = call i32 (...) @get_selected_frame()
  %63 = call i32 @print_stack_frame(i32 %62, i32 -1, i32 0)
  br label %64

64:                                               ; preds = %56
  %65 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %66 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %65, i32 0, i32 2
  %67 = load %struct.thread_info*, %struct.thread_info** %66, align 8
  store %struct.thread_info* %67, %struct.thread_info** %5, align 8
  br label %26

68:                                               ; preds = %26
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @switch_to_thread(i32 %69)
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %9, align 4
  %72 = call i32 (...) @get_selected_frame()
  %73 = call %struct.frame_info* @find_relative_frame(i32 %72, i32* %9)
  store %struct.frame_info* %73, %struct.frame_info** %7, align 8
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %68
  %77 = call i32 @warning(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  %78 = call i32 (...) @get_selected_frame()
  %79 = call i32 @print_stack_frame(i32 %78, i32 -1, i32 0)
  br label %83

80:                                               ; preds = %68
  %81 = load %struct.frame_info*, %struct.frame_info** %7, align 8
  %82 = call i32 @select_frame(%struct.frame_info* %81)
  br label %83

83:                                               ; preds = %80, %76
  %84 = load %struct.frame_info*, %struct.frame_info** %7, align 8
  %85 = call i32 @show_stack_frame(%struct.frame_info* %84)
  ret void
}

declare dso_local i32 @frame_relative_level(i32) #1

declare dso_local i32 @get_selected_frame(...) #1

declare dso_local i64 @legacy_frame_p(i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @prune_threads(...) #1

declare dso_local i32 @target_find_new_threads(...) #1

declare dso_local i64 @ptid_equal(i32, i32) #1

declare dso_local i32 @printf_filtered(i8*, ...) #1

declare dso_local i32 @target_pid_to_str(i32) #1

declare dso_local i8* @target_extra_thread_info(%struct.thread_info*) #1

declare dso_local i32 @puts_filtered(i8*) #1

declare dso_local i32 @switch_to_thread(i32) #1

declare dso_local i32 @print_stack_frame(i32, i32, i32) #1

declare dso_local %struct.frame_info* @find_relative_frame(i32, i32*) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i32 @select_frame(%struct.frame_info*) #1

declare dso_local i32 @show_stack_frame(%struct.frame_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
