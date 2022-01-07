; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_thread-db.c_maybe_attach_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_thread-db.c_maybe_attach_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.thread_info = type { i32 }
%struct.process_info = type { i32, i32, i32 }

@all_threads = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@debug_threads = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Attaching to thread %ld (LWP %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Could not attach to thread %ld (LWP %d)\0A\00", align 1
@TD_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"Cannot enable thread event reporting for %d: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*)* @maybe_attach_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maybe_attach_thread(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.thread_info*, align 8
  %7 = alloca %struct.process_info*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @all_threads, i32 0, i32 0), align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @all_threads, i32 0, i32 1), align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @all_threads, i32 0, i32 0), align 8
  %13 = inttoptr i64 %12 to %struct.thread_info*
  store %struct.thread_info* %13, %struct.thread_info** %6, align 8
  %14 = load %struct.thread_info*, %struct.thread_info** %6, align 8
  %15 = call %struct.process_info* @get_thread_process(%struct.thread_info* %14)
  store %struct.process_info* %15, %struct.process_info** %7, align 8
  %16 = load %struct.process_info*, %struct.process_info** %7, align 8
  %17 = getelementptr inbounds %struct.process_info, %struct.process_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %11
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @change_inferior_id(%struct.TYPE_7__* @all_threads, i32 %23)
  br label %73

25:                                               ; preds = %11
  br label %26

26:                                               ; preds = %25, %2
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @find_inferior_id(%struct.TYPE_7__* @all_threads, i32 %29)
  %31 = inttoptr i64 %30 to %struct.thread_info*
  store %struct.thread_info* %31, %struct.thread_info** %6, align 8
  %32 = load %struct.thread_info*, %struct.thread_info** %6, align 8
  %33 = icmp ne %struct.thread_info* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %102

35:                                               ; preds = %26
  %36 = load i64, i64* @debug_threads, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load i32, i32* @stderr, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @fprintf(i32 %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %38, %35
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @linux_attach_lwp(i32 %50, i32 %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @find_inferior_id(%struct.TYPE_7__* @all_threads, i32 %57)
  %59 = inttoptr i64 %58 to %struct.thread_info*
  store %struct.thread_info* %59, %struct.thread_info** %6, align 8
  %60 = load %struct.thread_info*, %struct.thread_info** %6, align 8
  %61 = icmp eq %struct.thread_info* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %47
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %68)
  br label %102

70:                                               ; preds = %47
  %71 = load %struct.thread_info*, %struct.thread_info** %6, align 8
  %72 = call %struct.process_info* @inferior_target_data(%struct.thread_info* %71)
  store %struct.process_info* %72, %struct.process_info** %7, align 8
  br label %73

73:                                               ; preds = %70, %20
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @new_thread_notify(i32 %76)
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.process_info*, %struct.process_info** %7, align 8
  %82 = getelementptr inbounds %struct.process_info, %struct.process_info* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.process_info*, %struct.process_info** %7, align 8
  %87 = getelementptr inbounds %struct.process_info, %struct.process_info* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.process_info*, %struct.process_info** %7, align 8
  %89 = getelementptr inbounds %struct.process_info, %struct.process_info* %88, i32 0, i32 0
  store i32 1, i32* %89, align 4
  %90 = load i32*, i32** %3, align 8
  %91 = call i64 @td_thr_event_enable(i32* %90, i32 1)
  store i64 %91, i64* %5, align 8
  %92 = load i64, i64* %5, align 8
  %93 = load i64, i64* @TD_OK, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %73
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i64, i64* %5, align 8
  %100 = call i8* @thread_db_err_str(i64 %99)
  %101 = call i32 @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %98, i8* %100)
  br label %102

102:                                              ; preds = %34, %62, %95, %73
  ret void
}

declare dso_local %struct.process_info* @get_thread_process(%struct.thread_info*) #1

declare dso_local i32 @change_inferior_id(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @find_inferior_id(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @linux_attach_lwp(i32, i32) #1

declare dso_local i32 @warning(i8*, i32, i32) #1

declare dso_local %struct.process_info* @inferior_target_data(%struct.thread_info*) #1

declare dso_local i32 @new_thread_notify(i32) #1

declare dso_local i64 @td_thr_event_enable(i32*, i32) #1

declare dso_local i32 @error(i8*, i32, i8*) #1

declare dso_local i8* @thread_db_err_str(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
