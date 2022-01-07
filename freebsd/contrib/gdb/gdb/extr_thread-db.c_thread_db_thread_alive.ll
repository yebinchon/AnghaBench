; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread-db.c_thread_db_thread_alive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread-db.c_thread_db_thread_alive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i32)* }
%struct.thread_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i64 }

@TD_OK = common dso_local global i32 0, align 4
@TD_THR_UNKNOWN = common dso_local global i64 0, align 8
@TD_THR_ZOMBIE = common dso_local global i64 0, align 8
@target_beneath = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @thread_db_thread_alive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread_db_thread_alive(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread_info*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @is_thread(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %78

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.thread_info* @find_thread_pid(i32 %11)
  store %struct.thread_info* %12, %struct.thread_info** %6, align 8
  %13 = load %struct.thread_info*, %struct.thread_info** %6, align 8
  %14 = call i32 @thread_db_map_id2thr(%struct.thread_info* %13, i32 0)
  %15 = load %struct.thread_info*, %struct.thread_info** %6, align 8
  %16 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %90

22:                                               ; preds = %10
  %23 = load %struct.thread_info*, %struct.thread_info** %6, align 8
  %24 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = call i32 @td_thr_validate_p(i32* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @TD_OK, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %90

32:                                               ; preds = %22
  %33 = load %struct.thread_info*, %struct.thread_info** %6, align 8
  %34 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %58, label %39

39:                                               ; preds = %32
  %40 = load %struct.thread_info*, %struct.thread_info** %6, align 8
  %41 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load %struct.thread_info*, %struct.thread_info** %6, align 8
  %45 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = call i32 @td_thr_get_info_p(i32* %43, %struct.TYPE_5__* %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @TD_OK, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %90

53:                                               ; preds = %39
  %54 = load %struct.thread_info*, %struct.thread_info** %6, align 8
  %55 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  br label %58

58:                                               ; preds = %53, %32
  %59 = load %struct.thread_info*, %struct.thread_info** %6, align 8
  %60 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @TD_THR_UNKNOWN, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %76, label %67

67:                                               ; preds = %58
  %68 = load %struct.thread_info*, %struct.thread_info** %6, align 8
  %69 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @TD_THR_ZOMBIE, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %67, %58
  store i32 0, i32* %2, align 4
  br label %90

77:                                               ; preds = %67
  store i32 1, i32* %2, align 4
  br label %90

78:                                               ; preds = %1
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** @target_beneath, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32 (i32)*, i32 (i32)** %80, align 8
  %82 = icmp ne i32 (i32)* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** @target_beneath, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32 (i32)*, i32 (i32)** %85, align 8
  %87 = load i32, i32* %3, align 4
  %88 = call i32 %86(i32 %87)
  store i32 %88, i32* %2, align 4
  br label %90

89:                                               ; preds = %78
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %83, %77, %76, %52, %31, %21
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i64 @is_thread(i32) #1

declare dso_local %struct.thread_info* @find_thread_pid(i32) #1

declare dso_local i32 @thread_db_map_id2thr(%struct.thread_info*, i32) #1

declare dso_local i32 @td_thr_validate_p(i32*) #1

declare dso_local i32 @td_thr_get_info_p(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
