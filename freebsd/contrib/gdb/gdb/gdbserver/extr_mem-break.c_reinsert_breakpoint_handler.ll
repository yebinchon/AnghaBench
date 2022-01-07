; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_mem-break.c_reinsert_breakpoint_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_mem-break.c_reinsert_breakpoint_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32, i32)* }
%struct.breakpoint = type { i64, i32, %struct.breakpoint* }

@.str = private unnamed_addr constant [30 x i8] c"lost the stopping breakpoint.\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"no breakpoint to reinsert\00", align 1
@the_target = common dso_local global %struct.TYPE_2__* null, align 8
@breakpoint_data = common dso_local global i32 0, align 4
@breakpoint_len = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @reinsert_breakpoint_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reinsert_breakpoint_handler(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.breakpoint*, align 8
  %4 = alloca %struct.breakpoint*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.breakpoint* @find_breakpoint_at(i32 %5)
  store %struct.breakpoint* %6, %struct.breakpoint** %3, align 8
  %7 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %8 = icmp eq %struct.breakpoint* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %1
  %12 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %13 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %12, i32 0, i32 2
  %14 = load %struct.breakpoint*, %struct.breakpoint** %13, align 8
  store %struct.breakpoint* %14, %struct.breakpoint** %4, align 8
  %15 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %16 = icmp eq %struct.breakpoint* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = call i32 @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %11
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_target, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %21, align 8
  %23 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %24 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @breakpoint_data, align 4
  %27 = load i32, i32* @breakpoint_len, align 4
  %28 = call i32 %22(i32 %25, i32 %26, i32 %27)
  %29 = load %struct.breakpoint*, %struct.breakpoint** %4, align 8
  %30 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %32 = call i32 @delete_breakpoint(%struct.breakpoint* %31)
  ret void
}

declare dso_local %struct.breakpoint* @find_breakpoint_at(i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @delete_breakpoint(%struct.breakpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
