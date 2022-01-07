; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread.c_do_captured_thread_select.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread.c_do_captured_thread_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_out = type { i32 }
%struct.thread_info = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Thread ID %d not known.\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Thread ID %d has terminated.\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"[Switching to thread \00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"new-thread-id\00", align 1
@inferior_ptid = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c")]\00", align 1
@deprecated_selected_frame = common dso_local global i32 0, align 4
@GDB_RC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ui_out*, i8*)* @do_captured_thread_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_captured_thread_select(%struct.ui_out* %0, i8* %1) #0 {
  %3 = alloca %struct.ui_out*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread_info*, align 8
  store %struct.ui_out* %0, %struct.ui_out** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @parse_and_eval(i8* %7)
  %9 = call i32 @value_as_long(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.thread_info* @find_thread_id(i32 %10)
  store %struct.thread_info* %11, %struct.thread_info** %6, align 8
  %12 = load %struct.thread_info*, %struct.thread_info** %6, align 8
  %13 = icmp ne %struct.thread_info* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %14, %2
  %18 = load %struct.thread_info*, %struct.thread_info** %6, align 8
  %19 = call i32 @thread_alive(%struct.thread_info* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %21, %17
  %25 = load %struct.thread_info*, %struct.thread_info** %6, align 8
  %26 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @switch_to_thread(i32 %27)
  %29 = load %struct.ui_out*, %struct.ui_out** %3, align 8
  %30 = call i32 @ui_out_text(%struct.ui_out* %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct.ui_out*, %struct.ui_out** %3, align 8
  %32 = load i32, i32* @inferior_ptid, align 4
  %33 = call i32 @pid_to_thread_id(i32 %32)
  %34 = call i32 @ui_out_field_int(%struct.ui_out* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  %35 = load %struct.ui_out*, %struct.ui_out** %3, align 8
  %36 = call i32 @ui_out_text(%struct.ui_out* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %37 = load %struct.ui_out*, %struct.ui_out** %3, align 8
  %38 = load i32, i32* @inferior_ptid, align 4
  %39 = call i8* @target_pid_to_str(i32 %38)
  %40 = call i32 @ui_out_text(%struct.ui_out* %37, i8* %39)
  %41 = load %struct.ui_out*, %struct.ui_out** %3, align 8
  %42 = call i32 @ui_out_text(%struct.ui_out* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %43 = load i32, i32* @deprecated_selected_frame, align 4
  %44 = load i32, i32* @deprecated_selected_frame, align 4
  %45 = call i32 @frame_relative_level(i32 %44)
  %46 = call i32 @print_stack_frame(i32 %43, i32 %45, i32 1)
  %47 = load i32, i32* @GDB_RC_OK, align 4
  ret i32 %47
}

declare dso_local i32 @value_as_long(i32) #1

declare dso_local i32 @parse_and_eval(i8*) #1

declare dso_local %struct.thread_info* @find_thread_id(i32) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @thread_alive(%struct.thread_info*) #1

declare dso_local i32 @switch_to_thread(i32) #1

declare dso_local i32 @ui_out_text(%struct.ui_out*, i8*) #1

declare dso_local i32 @ui_out_field_int(%struct.ui_out*, i8*, i32) #1

declare dso_local i32 @pid_to_thread_id(i32) #1

declare dso_local i8* @target_pid_to_str(i32) #1

declare dso_local i32 @print_stack_frame(i32, i32, i32) #1

declare dso_local i32 @frame_relative_level(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
