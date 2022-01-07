; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_break.c_db_breakpoint_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_break.c_db_breakpoint_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__* }

@db_free_breakpoints = common dso_local global %struct.TYPE_6__* null, align 8
@db_next_free_breakpoint = common dso_local global %struct.TYPE_6__* null, align 8
@db_break_table = common dso_local global %struct.TYPE_6__* null, align 8
@NBREAKPOINTS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"All breakpoints used.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* ()* @db_breakpoint_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @db_breakpoint_alloc() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** @db_free_breakpoints, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %2, align 8
  %4 = icmp ne %struct.TYPE_6__* %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %0
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** @db_free_breakpoints, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %1, align 8
  br label %23

10:                                               ; preds = %0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @db_next_free_breakpoint, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** @db_break_table, align 8
  %13 = load i64, i64* @NBREAKPOINTS, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i64 %13
  %15 = icmp eq %struct.TYPE_6__* %11, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = call i32 @db_printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %1, align 8
  br label %23

18:                                               ; preds = %10
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @db_next_free_breakpoint, align 8
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %2, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @db_next_free_breakpoint, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 1
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** @db_next_free_breakpoint, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %1, align 8
  br label %23

23:                                               ; preds = %18, %16, %5
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  ret %struct.TYPE_6__* %24
}

declare dso_local i32 @db_printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
