; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_mem-break.c_uninsert_breakpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_mem-break.c_uninsert_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32, i32)* }
%struct.breakpoint = type { i32, i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"Could not find breakpoint in list (uninserting).\00", align 1
@the_target = common dso_local global %struct.TYPE_2__* null, align 8
@breakpoint_len = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uninsert_breakpoint(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.breakpoint*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.breakpoint* @find_breakpoint_at(i32 %4)
  store %struct.breakpoint* %5, %struct.breakpoint** %3, align 8
  %6 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %7 = icmp eq %struct.breakpoint* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_target, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %12, align 8
  %14 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %15 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %18 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @breakpoint_len, align 4
  %21 = call i32 %13(i32 %16, i32 %19, i32 %20)
  %22 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %23 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  ret void
}

declare dso_local %struct.breakpoint* @find_breakpoint_at(i32) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
