; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/libgdb/extr_fbsd-threads.c_fbsd_thread_new_objfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/libgdb/extr_fbsd-threads.c_fbsd_thread_new_objfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.objfile = type { i32 }

@fbsd_thread_active = common dso_local global i64 0, align 8
@proc_handle = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@child_suppress_run = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@thread_agent = common dso_local global i32* null, align 8
@fbsd_thread_present = common dso_local global i32 0, align 4
@fbsd_thread_core = common dso_local global i32 0, align 4
@fbsd_thread_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Cannot initialize thread debugging library: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.objfile*)* @fbsd_thread_new_objfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fbsd_thread_new_objfile(%struct.objfile* %0) #0 {
  %2 = alloca %struct.objfile*, align 8
  %3 = alloca i32, align 4
  store %struct.objfile* %0, %struct.objfile** %2, align 8
  %4 = load %struct.objfile*, %struct.objfile** %2, align 8
  %5 = icmp eq %struct.objfile* %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load i64, i64* @fbsd_thread_active, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @proc_handle, i32 0, i32 0), align 8
  %11 = icmp eq i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @gdb_assert(i32 %12)
  store i64 0, i64* @fbsd_thread_active, align 8
  br label %14

14:                                               ; preds = %9, %6
  br label %47

15:                                               ; preds = %1
  %16 = load i32, i32* @child_suppress_run, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  br label %47

19:                                               ; preds = %15
  %20 = load i64, i64* @fbsd_thread_active, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %47

23:                                               ; preds = %19
  %24 = load i32, i32* @inferior_ptid, align 4
  %25 = call i64 @GET_PID(i32 %24)
  store i64 %25, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @proc_handle, i32 0, i32 0), align 8
  %26 = call i32 @td_ta_new_p(%struct.TYPE_3__* @proc_handle, i32** @thread_agent)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  switch i32 %27, label %42 [
    i32 129, label %28
    i32 128, label %29
  ]

28:                                               ; preds = %23
  br label %46

29:                                               ; preds = %23
  store i32 1, i32* @fbsd_thread_present, align 4
  %30 = load i32, i32* @fbsd_thread_core, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @proc_handle, i32 0, i32 0), align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = call i32 @push_target(i32* @fbsd_thread_ops)
  %37 = call i32 (...) @fbsd_thread_activate()
  br label %41

38:                                               ; preds = %32, %29
  %39 = load i32*, i32** @thread_agent, align 8
  %40 = call i32 @td_ta_delete_p(i32* %39)
  store i32* null, i32** @thread_agent, align 8
  br label %41

41:                                               ; preds = %38, %35
  br label %46

42:                                               ; preds = %23
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @thread_db_err_str(i32 %43)
  %45 = call i32 @warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %42, %41, %28
  br label %47

47:                                               ; preds = %46, %22, %18, %14
  br i1 true, label %48, label %51

48:                                               ; preds = %47
  %49 = load %struct.objfile*, %struct.objfile** %2, align 8
  %50 = call i32 @target_new_objfile_chain(%struct.objfile* %49)
  br label %51

51:                                               ; preds = %48, %47
  ret void
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i64 @GET_PID(i32) #1

declare dso_local i32 @td_ta_new_p(%struct.TYPE_3__*, i32**) #1

declare dso_local i32 @push_target(i32*) #1

declare dso_local i32 @fbsd_thread_activate(...) #1

declare dso_local i32 @td_ta_delete_p(i32*) #1

declare dso_local i32 @warning(i8*, i32) #1

declare dso_local i32 @thread_db_err_str(i32) #1

declare dso_local i32 @target_new_objfile_chain(%struct.objfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
