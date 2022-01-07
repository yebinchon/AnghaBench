; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_mem-break.c_set_breakpoint_at.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_mem-break.c_set_breakpoint_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32*, i32)*, i32 (i32, i32, i32)* }
%struct.breakpoint = type { void (i32)*, %struct.breakpoint*, i32, i32 }

@breakpoint_data = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"Target does not support breakpoints.\00", align 1
@the_target = common dso_local global %struct.TYPE_2__* null, align 8
@breakpoint_len = common dso_local global i32 0, align 4
@breakpoints = common dso_local global %struct.breakpoint* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_breakpoint_at(i32 %0, void (i32)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca void (i32)*, align 8
  %5 = alloca %struct.breakpoint*, align 8
  store i32 %0, i32* %3, align 4
  store void (i32)* %1, void (i32)** %4, align 8
  %6 = load i32*, i32** @breakpoint_data, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = call i32 @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %2
  %11 = call %struct.breakpoint* @malloc(i32 24)
  store %struct.breakpoint* %11, %struct.breakpoint** %5, align 8
  %12 = load %struct.breakpoint*, %struct.breakpoint** %5, align 8
  %13 = call i32 @memset(%struct.breakpoint* %12, i32 0, i32 24)
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_target, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.breakpoint*, %struct.breakpoint** %5, align 8
  %19 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @breakpoint_len, align 4
  %22 = call i32 %16(i32 %17, i32 %20, i32 %21)
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_target, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = load i32*, i32** @breakpoint_data, align 8
  %28 = load i32, i32* @breakpoint_len, align 4
  %29 = call i32 %25(i32 %26, i32* %27, i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.breakpoint*, %struct.breakpoint** %5, align 8
  %32 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load void (i32)*, void (i32)** %4, align 8
  %34 = load %struct.breakpoint*, %struct.breakpoint** %5, align 8
  %35 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %34, i32 0, i32 0
  store void (i32)* %33, void (i32)** %35, align 8
  %36 = load %struct.breakpoint*, %struct.breakpoint** @breakpoints, align 8
  %37 = load %struct.breakpoint*, %struct.breakpoint** %5, align 8
  %38 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %37, i32 0, i32 1
  store %struct.breakpoint* %36, %struct.breakpoint** %38, align 8
  %39 = load %struct.breakpoint*, %struct.breakpoint** %5, align 8
  store %struct.breakpoint* %39, %struct.breakpoint** @breakpoints, align 8
  ret void
}

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.breakpoint* @malloc(i32) #1

declare dso_local i32 @memset(%struct.breakpoint*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
