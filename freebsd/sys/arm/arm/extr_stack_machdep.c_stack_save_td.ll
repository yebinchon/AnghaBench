; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_stack_machdep.c_stack_save_td.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_stack_machdep.c_stack_save_td.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack = type { i32 }
%struct.thread = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.unwind_state = type { i32* }

@.str = private unnamed_addr constant [23 x i8] c"stack_save_td: swapped\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"stack_save_td: running\00", align 1
@FP = common dso_local global i64 0, align 8
@SP = common dso_local global i64 0, align 8
@LR = common dso_local global i64 0, align 8
@PC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stack_save_td(%struct.stack* %0, %struct.thread* %1) #0 {
  %3 = alloca %struct.stack*, align 8
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.unwind_state, align 8
  store %struct.stack* %0, %struct.stack** %3, align 8
  store %struct.thread* %1, %struct.thread** %4, align 8
  %6 = load %struct.thread*, %struct.thread** %4, align 8
  %7 = call i32 @TD_IS_SWAPPED(%struct.thread* %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @KASSERT(i32 %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.thread*, %struct.thread** %4, align 8
  %13 = call i32 @TD_IS_RUNNING(%struct.thread* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @KASSERT(i32 %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.thread*, %struct.thread** %4, align 8
  %19 = getelementptr inbounds %struct.thread, %struct.thread* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %5, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @FP, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32 %23, i32* %27, align 4
  %28 = load %struct.thread*, %struct.thread** %4, align 8
  %29 = getelementptr inbounds %struct.thread, %struct.thread* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %5, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @SP, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32 %33, i32* %37, align 4
  %38 = load %struct.thread*, %struct.thread** %4, align 8
  %39 = getelementptr inbounds %struct.thread, %struct.thread* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %5, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @LR, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32 %43, i32* %47, align 4
  %48 = load %struct.thread*, %struct.thread** %4, align 8
  %49 = getelementptr inbounds %struct.thread, %struct.thread* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %5, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* @PC, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32 %53, i32* %57, align 4
  %58 = load %struct.stack*, %struct.stack** %3, align 8
  %59 = call i32 @stack_capture(%struct.stack* %58, %struct.unwind_state* %5)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @TD_IS_SWAPPED(%struct.thread*) #1

declare dso_local i32 @TD_IS_RUNNING(%struct.thread*) #1

declare dso_local i32 @stack_capture(%struct.stack*, %struct.unwind_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
