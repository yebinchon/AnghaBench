; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread-db.c_thread_db_map_id2thr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread-db.c_thread_db_map_id2thr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_info = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@thread_agent = common dso_local global i32 0, align 4
@TD_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Cannot find thread %ld: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread_info*, i32)* @thread_db_map_id2thr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread_db_map_id2thr(%struct.thread_info* %0, i32 %1) #0 {
  %3 = alloca %struct.thread_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.thread_info* %0, %struct.thread_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  %7 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %44

13:                                               ; preds = %2
  %14 = load i32, i32* @thread_agent, align 4
  %15 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  %16 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @GET_THREAD(i32 %17)
  %19 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  %20 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = call i64 @td_ta_map_id2thr_p(i32 %14, i64 %18, i32* %22)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @TD_OK, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %13
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  %32 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @GET_THREAD(i32 %33)
  %35 = load i64, i64* %5, align 8
  %36 = call i8* @thread_db_err_str(i64 %35)
  %37 = call i32 @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %34, i8* %36)
  br label %38

38:                                               ; preds = %30, %27
  br label %44

39:                                               ; preds = %13
  %40 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  %41 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  br label %44

44:                                               ; preds = %12, %39, %38
  ret void
}

declare dso_local i64 @td_ta_map_id2thr_p(i32, i64, i32*) #1

declare dso_local i64 @GET_THREAD(i32) #1

declare dso_local i32 @error(i8*, i64, i8*) #1

declare dso_local i8* @thread_db_err_str(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
