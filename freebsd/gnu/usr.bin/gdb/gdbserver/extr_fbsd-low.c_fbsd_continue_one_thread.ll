; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/gdbserver/extr_fbsd-low.c_fbsd_continue_one_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/gdbserver/extr_fbsd-low.c_fbsd_continue_one_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inferior_list_entry = type { i32 }
%struct.process_info = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }
%struct.thread_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inferior_list_entry*)* @fbsd_continue_one_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fbsd_continue_one_thread(%struct.inferior_list_entry* %0) #0 {
  %2 = alloca %struct.inferior_list_entry*, align 8
  %3 = alloca %struct.process_info*, align 8
  %4 = alloca %struct.thread_info*, align 8
  %5 = alloca i32, align 4
  store %struct.inferior_list_entry* %0, %struct.inferior_list_entry** %2, align 8
  %6 = load %struct.inferior_list_entry*, %struct.inferior_list_entry** %2, align 8
  %7 = bitcast %struct.inferior_list_entry* %6 to %struct.thread_info*
  store %struct.thread_info* %7, %struct.thread_info** %4, align 8
  %8 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %9 = call %struct.process_info* @get_thread_process(%struct.thread_info* %8)
  store %struct.process_info* %9, %struct.process_info** %3, align 8
  %10 = load %struct.process_info*, %struct.process_info** %3, align 8
  %11 = getelementptr inbounds %struct.process_info, %struct.process_info* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %57

17:                                               ; preds = %1
  %18 = load %struct.process_info*, %struct.process_info** %3, align 8
  %19 = getelementptr inbounds %struct.process_info, %struct.process_info* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %39

24:                                               ; preds = %17
  %25 = load %struct.process_info*, %struct.process_info** %3, align 8
  %26 = getelementptr inbounds %struct.process_info, %struct.process_info* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %24
  %30 = load %struct.process_info*, %struct.process_info** %3, align 8
  %31 = getelementptr inbounds %struct.process_info, %struct.process_info* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %29, %24
  %37 = phi i1 [ true, %24 ], [ %35, %29 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %5, align 4
  br label %45

39:                                               ; preds = %17
  %40 = load %struct.process_info*, %struct.process_info** %3, align 8
  %41 = getelementptr inbounds %struct.process_info, %struct.process_info* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %39, %36
  %46 = load %struct.process_info*, %struct.process_info** %3, align 8
  %47 = getelementptr inbounds %struct.process_info, %struct.process_info* %46, i32 0, i32 1
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.process_info*, %struct.process_info** %3, align 8
  %50 = getelementptr inbounds %struct.process_info, %struct.process_info* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @fbsd_resume_one_process(i32* %47, i32 %48, i32 %53)
  %55 = load %struct.process_info*, %struct.process_info** %3, align 8
  %56 = getelementptr inbounds %struct.process_info, %struct.process_info* %55, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %56, align 8
  br label %57

57:                                               ; preds = %45, %16
  ret void
}

declare dso_local %struct.process_info* @get_thread_process(%struct.thread_info*) #1

declare dso_local i32 @fbsd_resume_one_process(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
