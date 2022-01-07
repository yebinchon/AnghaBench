; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread.c__initialize_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread.c__initialize_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_list_element = type { i32 }

@_initialize_thread.thread_apply_list = internal global %struct.cmd_list_element* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"threads\00", align 1
@info_threads_command = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"IDs of currently known threads.\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"thread\00", align 1
@class_run = common dso_local global i32 0, align 4
@thread_command = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [87 x i8] c"Use this command to switch between threads.\0AThe new thread ID must be currently known.\00", align 1
@thread_cmd_list = common dso_local global %struct.cmd_list_element* null, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"thread \00", align 1
@cmdlist = common dso_local global %struct.cmd_list_element* null, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"apply\00", align 1
@thread_apply_command = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"Apply a command to a list of threads.\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"apply \00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@thread_apply_all_command = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"Apply a command to all threads.\00", align 1
@xdb_commands = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [2 x i8] c"t\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_thread() #0 {
  %1 = load i32, i32* @info_threads_command, align 4
  %2 = call i32 @add_info(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %3 = load i32, i32* @class_run, align 4
  %4 = load i32, i32* @thread_command, align 4
  %5 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %3, i32 %4, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.3, i64 0, i64 0), %struct.cmd_list_element** @thread_cmd_list, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 1, %struct.cmd_list_element** @cmdlist)
  %6 = load i32, i32* @class_run, align 4
  %7 = load i32, i32* @thread_apply_command, align 4
  %8 = call i32 @add_prefix_cmd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %6, i32 %7, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), %struct.cmd_list_element** @_initialize_thread.thread_apply_list, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 1, %struct.cmd_list_element** @thread_cmd_list)
  %9 = load i32, i32* @class_run, align 4
  %10 = load i32, i32* @thread_apply_all_command, align 4
  %11 = call i32 @add_cmd(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %9, i32 %10, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), %struct.cmd_list_element** @_initialize_thread.thread_apply_list)
  %12 = load i32, i32* @xdb_commands, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %0
  %15 = load i32, i32* @class_run, align 4
  %16 = call i32 @add_com_alias(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %15, i32 1)
  br label %17

17:                                               ; preds = %14, %0
  ret void
}

declare dso_local i32 @add_info(i8*, i32, i8*) #1

declare dso_local i32 @add_prefix_cmd(i8*, i32, i32, i8*, %struct.cmd_list_element**, i8*, i32, %struct.cmd_list_element**) #1

declare dso_local i32 @add_cmd(i8*, i32, i32, i8*, %struct.cmd_list_element**) #1

declare dso_local i32 @add_com_alias(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
