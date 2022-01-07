; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread.c_do_captured_list_thread_ids.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread.c_do_captured_list_thread_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_info = type { i32, %struct.thread_info* }
%struct.ui_out = type { i32 }
%struct.cleanup = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"thread-ids\00", align 1
@thread_list = common dso_local global %struct.thread_info* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"thread-id\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"number-of-threads\00", align 1
@GDB_RC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ui_out*, i8*)* @do_captured_list_thread_ids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_captured_list_thread_ids(%struct.ui_out* %0, i8* %1) #0 {
  %3 = alloca %struct.ui_out*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.thread_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cleanup*, align 8
  store %struct.ui_out* %0, %struct.ui_out** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = call i32 (...) @prune_threads()
  %9 = call i32 (...) @target_find_new_threads()
  %10 = load %struct.ui_out*, %struct.ui_out** %3, align 8
  %11 = call %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(%struct.ui_out* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store %struct.cleanup* %11, %struct.cleanup** %7, align 8
  %12 = load %struct.thread_info*, %struct.thread_info** @thread_list, align 8
  store %struct.thread_info* %12, %struct.thread_info** %5, align 8
  br label %13

13:                                               ; preds = %24, %2
  %14 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %15 = icmp ne %struct.thread_info* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %13
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %6, align 4
  %19 = load %struct.ui_out*, %struct.ui_out** %3, align 8
  %20 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %21 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @ui_out_field_int(%struct.ui_out* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %16
  %25 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %26 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %25, i32 0, i32 1
  %27 = load %struct.thread_info*, %struct.thread_info** %26, align 8
  store %struct.thread_info* %27, %struct.thread_info** %5, align 8
  br label %13

28:                                               ; preds = %13
  %29 = load %struct.cleanup*, %struct.cleanup** %7, align 8
  %30 = call i32 @do_cleanups(%struct.cleanup* %29)
  %31 = load %struct.ui_out*, %struct.ui_out** %3, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @ui_out_field_int(%struct.ui_out* %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @GDB_RC_OK, align 4
  ret i32 %34
}

declare dso_local i32 @prune_threads(...) #1

declare dso_local i32 @target_find_new_threads(...) #1

declare dso_local %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(%struct.ui_out*, i8*) #1

declare dso_local i32 @ui_out_field_int(%struct.ui_out*, i8*, i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
