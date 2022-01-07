; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread.c_delete_step_resume_breakpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread.c_delete_step_resume_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_info = type { %struct.breakpoint*, %struct.thread_info* }
%struct.breakpoint = type { i32 }

@thread_list = common dso_local global %struct.thread_info* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delete_step_resume_breakpoint(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.breakpoint**, align 8
  %4 = alloca %struct.thread_info*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.breakpoint**
  store %struct.breakpoint** %6, %struct.breakpoint*** %3, align 8
  %7 = load %struct.breakpoint**, %struct.breakpoint*** %3, align 8
  %8 = load %struct.breakpoint*, %struct.breakpoint** %7, align 8
  %9 = icmp ne %struct.breakpoint* %8, null
  br i1 %9, label %10, label %35

10:                                               ; preds = %1
  %11 = load %struct.breakpoint**, %struct.breakpoint*** %3, align 8
  %12 = load %struct.breakpoint*, %struct.breakpoint** %11, align 8
  %13 = call i32 @delete_breakpoint(%struct.breakpoint* %12)
  %14 = load %struct.thread_info*, %struct.thread_info** @thread_list, align 8
  store %struct.thread_info* %14, %struct.thread_info** %4, align 8
  br label %15

15:                                               ; preds = %29, %10
  %16 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %17 = icmp ne %struct.thread_info* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %15
  %19 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %20 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %19, i32 0, i32 0
  %21 = load %struct.breakpoint*, %struct.breakpoint** %20, align 8
  %22 = load %struct.breakpoint**, %struct.breakpoint*** %3, align 8
  %23 = load %struct.breakpoint*, %struct.breakpoint** %22, align 8
  %24 = icmp eq %struct.breakpoint* %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %27 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %26, i32 0, i32 0
  store %struct.breakpoint* null, %struct.breakpoint** %27, align 8
  br label %28

28:                                               ; preds = %25, %18
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %31 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %30, i32 0, i32 1
  %32 = load %struct.thread_info*, %struct.thread_info** %31, align 8
  store %struct.thread_info* %32, %struct.thread_info** %4, align 8
  br label %15

33:                                               ; preds = %15
  %34 = load %struct.breakpoint**, %struct.breakpoint*** %3, align 8
  store %struct.breakpoint* null, %struct.breakpoint** %34, align 8
  br label %35

35:                                               ; preds = %33, %1
  ret void
}

declare dso_local i32 @delete_breakpoint(%struct.breakpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
