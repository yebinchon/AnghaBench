; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_win32-nat.c_child_delete_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_win32-nat.c_child_delete_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_4__* }

@info_verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"[Deleting %s]\0A\00", align 1
@thread_head = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @child_delete_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @child_delete_thread(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* @info_verbose, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8
  %9 = call i32 @pid_to_ptid(i64 %8)
  %10 = call i32 @target_pid_to_str(i32 %9)
  %11 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load i64, i64* %2, align 8
  %14 = call i32 @pid_to_ptid(i64 %13)
  %15 = call i32 @delete_thread(i32 %14)
  store %struct.TYPE_4__* @thread_head, %struct.TYPE_4__** %3, align 8
  br label %16

16:                                               ; preds = %32, %12
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %2, align 8
  %28 = icmp ne i64 %26, %27
  br label %29

29:                                               ; preds = %21, %16
  %30 = phi i1 [ false, %16 ], [ %28, %21 ]
  br i1 %30, label %31, label %36

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %3, align 8
  br label %16

36:                                               ; preds = %29
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = icmp ne %struct.TYPE_4__* %39, null
  br i1 %40, label %41, label %56

41:                                               ; preds = %36
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  store %struct.TYPE_4__* %44, %struct.TYPE_4__** %4, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  store %struct.TYPE_4__* %47, %struct.TYPE_4__** %49, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @CloseHandle(i32 %52)
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %55 = call i32 @xfree(%struct.TYPE_4__* %54)
  br label %56

56:                                               ; preds = %41, %36
  ret void
}

declare dso_local i32 @printf_unfiltered(i8*, i32) #1

declare dso_local i32 @target_pid_to_str(i32) #1

declare dso_local i32 @pid_to_ptid(i64) #1

declare dso_local i32 @delete_thread(i32) #1

declare dso_local i32 @CloseHandle(i32) #1

declare dso_local i32 @xfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
