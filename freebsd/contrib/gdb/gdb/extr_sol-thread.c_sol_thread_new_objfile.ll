; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sol-thread.c_sol_thread_new_objfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sol-thread.c_sol_thread_new_objfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i32 }

@sol_thread_active = common dso_local global i32 0, align 4
@procfs_suppress_run = common dso_local global i32 0, align 4
@TD_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"sol_thread_new_objfile: td_init: %s\00", align 1
@main_ph = common dso_local global i32 0, align 4
@main_ta = common dso_local global i32 0, align 4
@TD_NOLIBTHREAD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"sol_thread_new_objfile: td_ta_new: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sol_thread_new_objfile(%struct.objfile* %0) #0 {
  %2 = alloca %struct.objfile*, align 8
  %3 = alloca i64, align 8
  store %struct.objfile* %0, %struct.objfile** %2, align 8
  %4 = load %struct.objfile*, %struct.objfile** %2, align 8
  %5 = icmp ne %struct.objfile* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, i32* @sol_thread_active, align 4
  br label %36

7:                                                ; preds = %1
  %8 = load i32, i32* @procfs_suppress_run, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  br label %36

11:                                               ; preds = %7
  %12 = call i64 (...) @p_td_init()
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @TD_OK, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @td_err_string(i64 %17)
  %19 = call i32 @warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %36

20:                                               ; preds = %11
  %21 = call i64 @p_td_ta_new(i32* @main_ph, i32* @main_ta)
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* @TD_NOLIBTHREAD, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %36

26:                                               ; preds = %20
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @TD_OK, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @td_err_string(i64 %31)
  %33 = call i32 @warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %36

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34
  store i32 1, i32* @sol_thread_active, align 4
  br label %36

36:                                               ; preds = %35, %30, %25, %16, %10, %6
  br i1 true, label %37, label %40

37:                                               ; preds = %36
  %38 = load %struct.objfile*, %struct.objfile** %2, align 8
  %39 = call i32 @target_new_objfile_chain(%struct.objfile* %38)
  br label %40

40:                                               ; preds = %37, %36
  ret void
}

declare dso_local i64 @p_td_init(...) #1

declare dso_local i32 @warning(i8*, i32) #1

declare dso_local i32 @td_err_string(i64) #1

declare dso_local i64 @p_td_ta_new(i32*, i32*) #1

declare dso_local i32 @target_new_objfile_chain(%struct.objfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
