; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_mem-break.c_delete_breakpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_mem-break.c_delete_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.breakpoint = type { i32, i32, %struct.breakpoint* }
%struct.TYPE_2__ = type { i32 (i32, i32, i32)* }

@breakpoints = common dso_local global %struct.breakpoint* null, align 8
@the_target = common dso_local global %struct.TYPE_2__* null, align 8
@breakpoint_len = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Could not find breakpoint in list.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.breakpoint*)* @delete_breakpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_breakpoint(%struct.breakpoint* %0) #0 {
  %2 = alloca %struct.breakpoint*, align 8
  %3 = alloca %struct.breakpoint*, align 8
  store %struct.breakpoint* %0, %struct.breakpoint** %2, align 8
  %4 = load %struct.breakpoint*, %struct.breakpoint** @breakpoints, align 8
  %5 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %6 = icmp eq %struct.breakpoint* %4, %5
  br i1 %6, label %7, label %24

7:                                                ; preds = %1
  %8 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %9 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %8, i32 0, i32 2
  %10 = load %struct.breakpoint*, %struct.breakpoint** %9, align 8
  store %struct.breakpoint* %10, %struct.breakpoint** @breakpoints, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_target, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %12, align 8
  %14 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %15 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %18 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @breakpoint_len, align 4
  %21 = call i32 %13(i32 %16, i32 %19, i32 %20)
  %22 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %23 = call i32 @free(%struct.breakpoint* %22)
  br label %59

24:                                               ; preds = %1
  %25 = load %struct.breakpoint*, %struct.breakpoint** @breakpoints, align 8
  store %struct.breakpoint* %25, %struct.breakpoint** %3, align 8
  br label %26

26:                                               ; preds = %56, %24
  %27 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %28 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %27, i32 0, i32 2
  %29 = load %struct.breakpoint*, %struct.breakpoint** %28, align 8
  %30 = icmp ne %struct.breakpoint* %29, null
  br i1 %30, label %31, label %57

31:                                               ; preds = %26
  %32 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %33 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %32, i32 0, i32 2
  %34 = load %struct.breakpoint*, %struct.breakpoint** %33, align 8
  %35 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %36 = icmp eq %struct.breakpoint* %34, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %31
  %38 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %39 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %38, i32 0, i32 2
  %40 = load %struct.breakpoint*, %struct.breakpoint** %39, align 8
  %41 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %42 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %41, i32 0, i32 2
  store %struct.breakpoint* %40, %struct.breakpoint** %42, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_target, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %44, align 8
  %46 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %47 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %50 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @breakpoint_len, align 4
  %53 = call i32 %45(i32 %48, i32 %51, i32 %52)
  %54 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %55 = call i32 @free(%struct.breakpoint* %54)
  br label %59

56:                                               ; preds = %31
  br label %26

57:                                               ; preds = %26
  %58 = call i32 @warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %37, %7
  ret void
}

declare dso_local i32 @free(%struct.breakpoint*) #1

declare dso_local i32 @warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
