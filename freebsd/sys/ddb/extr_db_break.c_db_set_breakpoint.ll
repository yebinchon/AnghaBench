; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_break.c_db_set_breakpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ddb/extr_db_break.c_db_set_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_4__*, i64, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"Already set.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Too many breakpoints.\0A\00", align 1
@db_breakpoint_list = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @db_set_breakpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @db_set_breakpoint(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @db_find_breakpoint(i32 %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = call i32 @db_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %39

14:                                               ; preds = %3
  %15 = call %struct.TYPE_4__* (...) @db_breakpoint_alloc()
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %7, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %17 = icmp eq %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i32 @db_printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %39

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @db_breakpoint_list, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %37, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** @db_breakpoint_list, align 8
  br label %39

39:                                               ; preds = %20, %18, %12
  ret void
}

declare dso_local i64 @db_find_breakpoint(i32, i32) #1

declare dso_local i32 @db_printf(i8*) #1

declare dso_local %struct.TYPE_4__* @db_breakpoint_alloc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
