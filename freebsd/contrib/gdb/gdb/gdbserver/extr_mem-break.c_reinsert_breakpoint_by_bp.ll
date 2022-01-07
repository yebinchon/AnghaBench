; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_mem-break.c_reinsert_breakpoint_by_bp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_mem-break.c_reinsert_breakpoint_by_bp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32, i32)* }
%struct.breakpoint = type { i32, i32, i32, %struct.breakpoint* }

@reinsert_breakpoint_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Could not find original breakpoint in list.\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"Could not find breakpoint in list (reinserting by breakpoint).\00", align 1
@the_target = common dso_local global %struct.TYPE_2__* null, align 8
@breakpoint_len = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reinsert_breakpoint_by_bp(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.breakpoint*, align 8
  %6 = alloca %struct.breakpoint*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @reinsert_breakpoint_handler, align 4
  %9 = call i32 @set_breakpoint_at(i32 %7, i32 %8)
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.breakpoint* @find_breakpoint_at(i32 %10)
  store %struct.breakpoint* %11, %struct.breakpoint** %6, align 8
  %12 = load %struct.breakpoint*, %struct.breakpoint** %6, align 8
  %13 = icmp eq %struct.breakpoint* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %2
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.breakpoint* @find_breakpoint_at(i32 %17)
  store %struct.breakpoint* %18, %struct.breakpoint** %5, align 8
  %19 = load %struct.breakpoint*, %struct.breakpoint** %5, align 8
  %20 = icmp eq %struct.breakpoint* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 @error(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %16
  %24 = load %struct.breakpoint*, %struct.breakpoint** %6, align 8
  %25 = load %struct.breakpoint*, %struct.breakpoint** %5, align 8
  %26 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %25, i32 0, i32 3
  store %struct.breakpoint* %24, %struct.breakpoint** %26, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_target, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %28, align 8
  %30 = load %struct.breakpoint*, %struct.breakpoint** %6, align 8
  %31 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.breakpoint*, %struct.breakpoint** %6, align 8
  %34 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @breakpoint_len, align 4
  %37 = call i32 %29(i32 %32, i32 %35, i32 %36)
  %38 = load %struct.breakpoint*, %struct.breakpoint** %6, align 8
  %39 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  ret void
}

declare dso_local i32 @set_breakpoint_at(i32, i32) #1

declare dso_local %struct.breakpoint* @find_breakpoint_at(i32) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
