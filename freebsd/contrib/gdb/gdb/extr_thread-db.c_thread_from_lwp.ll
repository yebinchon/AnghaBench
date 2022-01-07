; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread-db.c_thread_from_lwp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread-db.c_thread_from_lwp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }

@thread_agent = common dso_local global i32 0, align 4
@TD_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Cannot find user-level thread for LWP %ld: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @thread_from_lwp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread_from_lwp(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.thread_info*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i64 @GET_LWP(i32 %7)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @GET_PID(i32 %11)
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @GET_PID(i32 %13)
  %15 = call i32 @BUILD_LWP(i32 %12, i32 %14)
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %10, %1
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @is_lwp(i32 %17)
  %19 = call i32 @gdb_assert(i32 %18)
  %20 = load i32, i32* @thread_agent, align 4
  %21 = load i32, i32* %2, align 4
  %22 = call i64 @GET_LWP(i32 %21)
  %23 = call i64 @td_ta_map_lwp2thr_p(i32 %20, i64 %22, i32* %3)
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @TD_OK, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %16
  %28 = load i32, i32* %2, align 4
  %29 = call i64 @GET_LWP(i32 %28)
  %30 = load i64, i64* %4, align 8
  %31 = call i8* @thread_db_err_str(i64 %30)
  %32 = call i32 @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %29, i8* %31)
  br label %33

33:                                               ; preds = %27, %16
  store %struct.thread_info* null, %struct.thread_info** %5, align 8
  %34 = call i32 @thread_get_info_callback(i32* %3, %struct.thread_info** %5)
  %35 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %36 = icmp ne %struct.thread_info* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %39 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %37, %33
  %45 = phi i1 [ false, %33 ], [ %43, %37 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @gdb_assert(i32 %46)
  %48 = load %struct.thread_info*, %struct.thread_info** %5, align 8
  %49 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %2, align 4
  %55 = call i32 @GET_PID(i32 %54)
  %56 = call i32 @BUILD_THREAD(i32 %53, i32 %55)
  ret i32 %56
}

declare dso_local i64 @GET_LWP(i32) #1

declare dso_local i32 @BUILD_LWP(i32, i32) #1

declare dso_local i32 @GET_PID(i32) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @is_lwp(i32) #1

declare dso_local i64 @td_ta_map_lwp2thr_p(i32, i64, i32*) #1

declare dso_local i32 @error(i8*, i64, i8*) #1

declare dso_local i8* @thread_db_err_str(i64) #1

declare dso_local i32 @thread_get_info_callback(i32*, %struct.thread_info**) #1

declare dso_local i32 @BUILD_THREAD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
