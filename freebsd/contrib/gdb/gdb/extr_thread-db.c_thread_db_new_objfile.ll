; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread-db.c_thread_db_new_objfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread-db.c_thread_db_new_objfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.objfile = type { i32 }
%struct.TYPE_6__ = type { i8* }

@thread_db_new_objfile.dejavu = internal global i32 0, align 4
@LIBTHREAD_DB_SO = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"Using host libthread_db library \22%s\22.\0A\00", align 1
@target_has_execution = common dso_local global i32 0, align 4
@using_thread_db = common dso_local global i32 0, align 4
@proc_handle = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@thread_db_ops = common dso_local global i32 0, align 4
@keep_thread_db = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@thread_agent = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"[Thread debugging using libthread_db enabled]\0A\00", align 1
@symfile_objfile = common dso_local global %struct.objfile* null, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"Cannot initialize thread debugging library: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.objfile*)* @thread_db_new_objfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread_db_new_objfile(%struct.objfile* %0) #0 {
  %2 = alloca %struct.objfile*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca i8*, align 8
  store %struct.objfile* %0, %struct.objfile** %2, align 8
  %6 = load i32, i32* @thread_db_new_objfile.dejavu, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %1
  store i8* null, i8** %5, align 8
  %9 = call i64 @dladdr(i32 (%struct.TYPE_7__*, i32*)* @td_ta_new_p, %struct.TYPE_6__* %4)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %5, align 8
  br label %14

14:                                               ; preds = %11, %8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i8*, i8** @LIBTHREAD_DB_SO, align 8
  store i8* %18, i8** %5, align 8
  br label %19

19:                                               ; preds = %17, %14
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %20)
  store i32 1, i32* @thread_db_new_objfile.dejavu, align 4
  br label %22

22:                                               ; preds = %19, %1
  %23 = load %struct.objfile*, %struct.objfile** %2, align 8
  %24 = icmp eq %struct.objfile* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @target_has_execution, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* @using_thread_db, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @proc_handle, i32 0, i32 0), align 8
  %33 = icmp eq i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @gdb_assert(i32 %34)
  %36 = call i32 @unpush_target(i32* @thread_db_ops)
  store i32 0, i32* @using_thread_db, align 4
  br label %37

37:                                               ; preds = %31, %28
  store i32 0, i32* @keep_thread_db, align 4
  br label %71

38:                                               ; preds = %25
  %39 = load i32, i32* @using_thread_db, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %71

42:                                               ; preds = %38
  %43 = load i32, i32* @inferior_ptid, align 4
  %44 = call i64 @GET_PID(i32 %43)
  store i64 %44, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @proc_handle, i32 0, i32 0), align 8
  %45 = call i32 @td_ta_new_p(%struct.TYPE_7__* @proc_handle, i32* @thread_agent)
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  switch i32 %46, label %66 [
    i32 129, label %47
    i32 128, label %48
  ]

47:                                               ; preds = %42
  br label %70

48:                                               ; preds = %42
  %49 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %50 = call i32 @push_target(i32* @thread_db_ops)
  store i32 1, i32* @using_thread_db, align 4
  %51 = load %struct.objfile*, %struct.objfile** %2, align 8
  %52 = load %struct.objfile*, %struct.objfile** @symfile_objfile, align 8
  %53 = icmp eq %struct.objfile* %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @proc_handle, i32 0, i32 0), align 8
  %56 = icmp eq i64 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 @gdb_assert(i32 %57)
  store i32 1, i32* @keep_thread_db, align 4
  br label %59

59:                                               ; preds = %54, %48
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @proc_handle, i32 0, i32 0), align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = call i32 (...) @enable_thread_event_reporting()
  %64 = call i32 (...) @thread_db_find_new_threads()
  br label %65

65:                                               ; preds = %62, %59
  br label %70

66:                                               ; preds = %42
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @thread_db_err_str(i32 %67)
  %69 = call i32 @warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %66, %65, %47
  br label %71

71:                                               ; preds = %70, %41, %37
  br i1 true, label %72, label %75

72:                                               ; preds = %71
  %73 = load %struct.objfile*, %struct.objfile** %2, align 8
  %74 = call i32 @target_new_objfile_chain(%struct.objfile* %73)
  br label %75

75:                                               ; preds = %72, %71
  ret void
}

declare dso_local i64 @dladdr(i32 (%struct.TYPE_7__*, i32*)*, %struct.TYPE_6__*) #1

declare dso_local i32 @td_ta_new_p(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @printf_unfiltered(i8*, ...) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @unpush_target(i32*) #1

declare dso_local i64 @GET_PID(i32) #1

declare dso_local i32 @push_target(i32*) #1

declare dso_local i32 @enable_thread_event_reporting(...) #1

declare dso_local i32 @thread_db_find_new_threads(...) #1

declare dso_local i32 @warning(i8*, i32) #1

declare dso_local i32 @thread_db_err_str(i32) #1

declare dso_local i32 @target_new_objfile_chain(%struct.objfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
