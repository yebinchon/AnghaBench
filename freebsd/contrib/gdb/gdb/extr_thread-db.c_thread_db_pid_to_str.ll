; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread-db.c_thread_db_pid_to_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread-db.c_thread_db_pid_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8* (i32)* }
%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.thread_info = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@thread_db_pid_to_str.buf = internal global [64 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [21 x i8] c"Thread %ld (Missing)\00", align 1
@TD_THR_ACTIVE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"Thread %ld (LWP %d)\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Thread %ld (%s)\00", align 1
@target_beneath = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @thread_db_pid_to_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @thread_db_pid_to_str(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread_info*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @is_thread(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %57

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.thread_info* @find_thread_pid(i32 %11)
  store %struct.thread_info* %12, %struct.thread_info** %6, align 8
  %13 = load %struct.thread_info*, %struct.thread_info** %6, align 8
  %14 = call i32 @thread_db_map_id2thr(%struct.thread_info* %13, i32 0)
  %15 = load %struct.thread_info*, %struct.thread_info** %6, align 8
  %16 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %10
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @GET_THREAD(i32 %22)
  %24 = sext i32 %23 to i64
  %25 = call i32 (i8*, i32, i8*, i64, ...) @snprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @thread_db_pid_to_str.buf, i64 0, i64 0), i32 64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %24)
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @thread_db_pid_to_str.buf, i64 0, i64 0), i8** %2, align 8
  br label %73

26:                                               ; preds = %10
  %27 = load %struct.thread_info*, %struct.thread_info** %6, align 8
  %28 = call %struct.TYPE_6__* @thread_db_get_info(%struct.thread_info* %27)
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %4, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TD_THR_ACTIVE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %26
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 (i8*, i32, i8*, i64, ...) @snprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @thread_db_pid_to_str.buf, i64 0, i64 0), i32 64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %42, i64 %45)
  br label %56

47:                                               ; preds = %34, %26
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @thread_db_state_str(i64 %53)
  %55 = call i32 (i8*, i32, i8*, i64, ...) @snprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @thread_db_pid_to_str.buf, i64 0, i64 0), i32 64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %50, i64 %54)
  br label %56

56:                                               ; preds = %47, %39
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @thread_db_pid_to_str.buf, i64 0, i64 0), i8** %2, align 8
  br label %73

57:                                               ; preds = %1
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** @target_beneath, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i8* (i32)*, i8* (i32)** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = call i8* %60(i32 %61)
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** @target_beneath, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i8* (i32)*, i8* (i32)** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = call i8* %67(i32 %68)
  store i8* %69, i8** %2, align 8
  br label %73

70:                                               ; preds = %57
  %71 = load i32, i32* %3, align 4
  %72 = call i8* @normal_pid_to_str(i32 %71)
  store i8* %72, i8** %2, align 8
  br label %73

73:                                               ; preds = %70, %64, %56, %21
  %74 = load i8*, i8** %2, align 8
  ret i8* %74
}

declare dso_local i64 @is_thread(i32) #1

declare dso_local %struct.thread_info* @find_thread_pid(i32) #1

declare dso_local i32 @thread_db_map_id2thr(%struct.thread_info*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64, ...) #1

declare dso_local i32 @GET_THREAD(i32) #1

declare dso_local %struct.TYPE_6__* @thread_db_get_info(%struct.thread_info*) #1

declare dso_local i64 @thread_db_state_str(i64) #1

declare dso_local i8* @normal_pid_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
