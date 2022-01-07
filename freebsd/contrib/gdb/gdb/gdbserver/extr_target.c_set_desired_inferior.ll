; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_target.c_set_desired_inferior.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_target.c_set_desired_inferior.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.thread_info = type { i32 }

@all_threads = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@general_thread = common dso_local global i32 0, align 4
@step_thread = common dso_local global i64 0, align 8
@cont_thread = common dso_local global i32 0, align 4
@current_inferior = common dso_local global %struct.thread_info* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_desired_inferior(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.thread_info*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i32, i32* @general_thread, align 4
  %8 = call i64 @find_inferior_id(%struct.TYPE_3__* @all_threads, i32 %7)
  %9 = inttoptr i64 %8 to %struct.thread_info*
  store %struct.thread_info* %9, %struct.thread_info** %3, align 8
  br label %32

10:                                               ; preds = %1
  store %struct.thread_info* null, %struct.thread_info** %3, align 8
  %11 = load i64, i64* @step_thread, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = load i32, i32* @cont_thread, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* @cont_thread, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %24

19:                                               ; preds = %16, %13
  %20 = load i64, i64* @step_thread, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i64 @find_inferior_id(%struct.TYPE_3__* @all_threads, i32 %21)
  %23 = inttoptr i64 %22 to %struct.thread_info*
  store %struct.thread_info* %23, %struct.thread_info** %3, align 8
  br label %24

24:                                               ; preds = %19, %16, %10
  %25 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  %26 = icmp eq %struct.thread_info* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* @cont_thread, align 4
  %29 = call i64 @find_inferior_id(%struct.TYPE_3__* @all_threads, i32 %28)
  %30 = inttoptr i64 %29 to %struct.thread_info*
  store %struct.thread_info* %30, %struct.thread_info** %3, align 8
  br label %31

31:                                               ; preds = %27, %24
  br label %32

32:                                               ; preds = %31, %6
  %33 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  %34 = icmp eq %struct.thread_info* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @all_threads, i32 0, i32 0), align 8
  %37 = inttoptr i64 %36 to %struct.thread_info*
  store %struct.thread_info* %37, %struct.thread_info** @current_inferior, align 8
  br label %40

38:                                               ; preds = %32
  %39 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  store %struct.thread_info* %39, %struct.thread_info** @current_inferior, align 8
  br label %40

40:                                               ; preds = %38, %35
  ret void
}

declare dso_local i64 @find_inferior_id(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
