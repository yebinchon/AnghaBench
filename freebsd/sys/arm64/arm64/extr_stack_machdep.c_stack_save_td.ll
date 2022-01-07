; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_stack_machdep.c_stack_save_td.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_stack_machdep.c_stack_save_td.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack = type { i32 }
%struct.thread = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32 }
%struct.unwind_state = type { i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"stack_save_td: swapped\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"stack_save_td: running\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stack_save_td(%struct.stack* %0, %struct.thread* %1) #0 {
  %3 = alloca %struct.stack*, align 8
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.unwind_state, align 4
  store %struct.stack* %0, %struct.stack** %3, align 8
  store %struct.thread* %1, %struct.thread** %4, align 8
  %6 = load %struct.thread*, %struct.thread** %4, align 8
  %7 = call i64 @TD_IS_SWAPPED(%struct.thread* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %2
  %12 = load %struct.thread*, %struct.thread** %4, align 8
  %13 = call i64 @TD_IS_RUNNING(%struct.thread* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %11
  %18 = load %struct.thread*, %struct.thread** %4, align 8
  %19 = getelementptr inbounds %struct.thread, %struct.thread* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %5, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = load %struct.thread*, %struct.thread** %4, align 8
  %25 = getelementptr inbounds %struct.thread, %struct.thread* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 29
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %5, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load %struct.thread*, %struct.thread** %4, align 8
  %33 = getelementptr inbounds %struct.thread, %struct.thread* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 30
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %5, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = load %struct.stack*, %struct.stack** %3, align 8
  %41 = call i32 @stack_capture(%struct.stack* %40, %struct.unwind_state* %5)
  ret void
}

declare dso_local i64 @TD_IS_SWAPPED(%struct.thread*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @TD_IS_RUNNING(%struct.thread*) #1

declare dso_local i32 @stack_capture(%struct.stack*, %struct.unwind_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
