; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread-db.c_thread_db_get_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread-db.c_thread_db_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@TD_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"thread_db_get_info: cannot get thread info: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.thread_info*)* @thread_db_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @thread_db_get_info(%struct.thread_info* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.thread_info*, align 8
  %4 = alloca i64, align 8
  store %struct.thread_info* %0, %struct.thread_info** %3, align 8
  %5 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  %6 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  %13 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i32* %15, i32** %2, align 8
  br label %52

16:                                               ; preds = %1
  %17 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  %18 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  %25 = call i32 @thread_db_map_id2thr(%struct.thread_info* %24, i32 1)
  br label %26

26:                                               ; preds = %23, %16
  %27 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  %28 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  %32 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = call i64 @td_thr_get_info_p(i32* %30, i32* %34)
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @TD_OK, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %26
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @thread_db_err_str(i64 %40)
  %42 = call i32 @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %39, %26
  %44 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  %45 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  %48 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  %49 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i32* %51, i32** %2, align 8
  br label %52

52:                                               ; preds = %43, %11
  %53 = load i32*, i32** %2, align 8
  ret i32* %53
}

declare dso_local i32 @thread_db_map_id2thr(%struct.thread_info*, i32) #1

declare dso_local i64 @td_thr_get_info_p(i32*, i32*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @thread_db_err_str(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
