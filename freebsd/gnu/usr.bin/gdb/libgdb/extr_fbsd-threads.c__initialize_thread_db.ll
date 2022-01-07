; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/libgdb/extr_fbsd-threads.c__initialize_thread_db.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/libgdb/extr_fbsd-threads.c__initialize_thread_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fbsdcoreops_suppress_target = common dso_local global i64 0, align 8
@fbsd_thread_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"tsd\00", align 1
@class_run = common dso_local global i32 0, align 4
@fbsd_thread_tsd_cmd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"Show the thread-specific data keys and destructors for the process.\0A\00", align 1
@thread_cmd_list = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"signal\00", align 1
@fbsd_thread_signal_cmd = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Show the thread signal info.\0A\00", align 1
@orig_core_ops = common dso_local global i32 0, align 4
@core_ops = common dso_local global i32 0, align 4
@fbsd_core_ops = common dso_local global i32 0, align 4
@target_new_objfile_hook = common dso_local global i32 0, align 4
@target_new_objfile_chain = common dso_local global i32 0, align 4
@fbsd_thread_new_objfile = common dso_local global i32 0, align 4
@child_suppress_run = common dso_local global i32 0, align 4
@gdb_stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [55 x i8] c"[GDB will not be able to debug user-mode threads: %s]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_thread_db() #0 {
  %1 = load i64, i64* @fbsdcoreops_suppress_target, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %27

4:                                                ; preds = %0
  %5 = call i32 (...) @init_fbsd_thread_ops()
  %6 = call i32 (...) @init_fbsd_core_ops()
  %7 = call i64 (...) @thread_db_load()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %4
  %10 = call i32 @add_target(i32* @fbsd_thread_ops)
  %11 = load i32, i32* @class_run, align 4
  %12 = load i32, i32* @fbsd_thread_tsd_cmd, align 4
  %13 = call i32 @add_cmd(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32* @thread_cmd_list)
  %14 = load i32, i32* @class_run, align 4
  %15 = load i32, i32* @fbsd_thread_signal_cmd, align 4
  %16 = call i32 @add_cmd(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %14, i32 %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32* @thread_cmd_list)
  %17 = call i32 @memcpy(i32* @orig_core_ops, i32* @core_ops, i32 4)
  %18 = call i32 @memcpy(i32* @core_ops, i32* @fbsd_core_ops, i32 4)
  %19 = call i32 @add_target(i32* @core_ops)
  %20 = load i32, i32* @target_new_objfile_hook, align 4
  store i32 %20, i32* @target_new_objfile_chain, align 4
  %21 = load i32, i32* @fbsd_thread_new_objfile, align 4
  store i32 %21, i32* @target_new_objfile_hook, align 4
  store i32 1, i32* @child_suppress_run, align 4
  br label %27

22:                                               ; preds = %4
  %23 = load i32, i32* @gdb_stderr, align 4
  %24 = call i32 (...) @dlerror()
  %25 = call i32 @fprintf_unfiltered(i32 %23, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %24)
  %26 = call i32 @add_target(i32* @core_ops)
  br label %27

27:                                               ; preds = %3, %22, %9
  ret void
}

declare dso_local i32 @init_fbsd_thread_ops(...) #1

declare dso_local i32 @init_fbsd_core_ops(...) #1

declare dso_local i64 @thread_db_load(...) #1

declare dso_local i32 @add_target(i32*) #1

declare dso_local i32 @add_cmd(i8*, i32, i32, i8*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i32) #1

declare dso_local i32 @dlerror(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
