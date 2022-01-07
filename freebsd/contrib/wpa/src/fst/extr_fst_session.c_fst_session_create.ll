; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_session.c_fst_session_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_session.c_fst_session_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fst_session = type { i32, i64, %struct.TYPE_2__, i32, %struct.fst_group* }
%struct.TYPE_2__ = type { i32 }
%struct.fst_group = type { i32 }

@FST_INVALID_SESSION_ID = common dso_local global i64 0, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Cannot assign new session ID\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Cannot allocate new session object\00", align 1
@FST_SESSION_STATE_INITIAL = common dso_local global i32 0, align 4
@FST_LLT_MS_DEFAULT = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Session %u created\00", align 1
@global_sessions_list = common dso_local global i32 0, align 4
@on_session_added = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fst_session* @fst_session_create(%struct.fst_group* %0) #0 {
  %2 = alloca %struct.fst_session*, align 8
  %3 = alloca %struct.fst_group*, align 8
  %4 = alloca %struct.fst_session*, align 8
  %5 = alloca i64, align 8
  store %struct.fst_group* %0, %struct.fst_group** %3, align 8
  %6 = call i64 (...) @fst_find_free_session_id()
  store i64 %6, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @FST_INVALID_SESSION_ID, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @MSG_ERROR, align 4
  %12 = call i32 (i32, i8*, ...) @fst_printf(i32 %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store %struct.fst_session* null, %struct.fst_session** %2, align 8
  br label %46

13:                                               ; preds = %1
  %14 = call %struct.fst_session* @os_zalloc(i32 32)
  store %struct.fst_session* %14, %struct.fst_session** %4, align 8
  %15 = load %struct.fst_session*, %struct.fst_session** %4, align 8
  %16 = icmp ne %struct.fst_session* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @MSG_ERROR, align 4
  %19 = call i32 (i32, i8*, ...) @fst_printf(i32 %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store %struct.fst_session* null, %struct.fst_session** %2, align 8
  br label %46

20:                                               ; preds = %13
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.fst_session*, %struct.fst_session** %4, align 8
  %23 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load %struct.fst_group*, %struct.fst_group** %3, align 8
  %25 = load %struct.fst_session*, %struct.fst_session** %4, align 8
  %26 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %25, i32 0, i32 4
  store %struct.fst_group* %24, %struct.fst_group** %26, align 8
  %27 = load i32, i32* @FST_SESSION_STATE_INITIAL, align 4
  %28 = load %struct.fst_session*, %struct.fst_session** %4, align 8
  %29 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @FST_LLT_MS_DEFAULT, align 4
  %31 = load %struct.fst_session*, %struct.fst_session** %4, align 8
  %32 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load i32, i32* @MSG_INFO, align 4
  %35 = load %struct.fst_session*, %struct.fst_session** %4, align 8
  %36 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 (i32, i8*, ...) @fst_printf(i32 %34, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64 %37)
  %39 = load %struct.fst_session*, %struct.fst_session** %4, align 8
  %40 = getelementptr inbounds %struct.fst_session, %struct.fst_session* %39, i32 0, i32 0
  %41 = call i32 @dl_list_add_tail(i32* @global_sessions_list, i32* %40)
  %42 = load i32, i32* @on_session_added, align 4
  %43 = load %struct.fst_session*, %struct.fst_session** %4, align 8
  %44 = call i32 @foreach_fst_ctrl_call(i32 %42, %struct.fst_session* %43)
  %45 = load %struct.fst_session*, %struct.fst_session** %4, align 8
  store %struct.fst_session* %45, %struct.fst_session** %2, align 8
  br label %46

46:                                               ; preds = %20, %17, %10
  %47 = load %struct.fst_session*, %struct.fst_session** %2, align 8
  ret %struct.fst_session* %47
}

declare dso_local i64 @fst_find_free_session_id(...) #1

declare dso_local i32 @fst_printf(i32, i8*, ...) #1

declare dso_local %struct.fst_session* @os_zalloc(i32) #1

declare dso_local i32 @dl_list_add_tail(i32*, i32*) #1

declare dso_local i32 @foreach_fst_ctrl_call(i32, %struct.fst_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
