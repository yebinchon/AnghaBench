; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/libgdb/extr_fbsd-threads.c_thread_from_lwp.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/libgdb/extr_fbsd-threads.c_thread_from_lwp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@fbsd_thread_active = common dso_local global i64 0, align 8
@thread_agent = common dso_local global i32 0, align 4
@TD_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Cannot get thread info: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.TYPE_4__*)* @thread_from_lwp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread_from_lwp(i32 %0, i32* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @IS_LWP(i32 %9)
  %11 = call i32 @gdb_assert(i32 %10)
  %12 = load i64, i64* @fbsd_thread_active, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %42

14:                                               ; preds = %3
  %15 = load i32, i32* @thread_agent, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @GET_LWP(i32 %16)
  %18 = load i32*, i32** %6, align 8
  %19 = call i64 @td_ta_map_lwp2thr_p(i32 %15, i32 %17, i32* %18)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @TD_OK, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %14
  %24 = load i32*, i32** %6, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = call i64 @td_thr_get_info_p(i32* %24, %struct.TYPE_4__* %25)
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @TD_OK, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @thread_db_err_str(i64 %31)
  %33 = call i32 @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %30, %23
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @GET_PID(i32 %38)
  %40 = call i32 @BUILD_THREAD(i32 %37, i32 %39)
  store i32 %40, i32* %4, align 4
  br label %48

41:                                               ; preds = %14
  br label %42

42:                                               ; preds = %41, %3
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @GET_LWP(i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @GET_PID(i32 %45)
  %47 = call i32 @BUILD_LWP(i32 %44, i32 %46)
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %42, %34
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32 @IS_LWP(i32) #1

declare dso_local i64 @td_ta_map_lwp2thr_p(i32, i32, i32*) #1

declare dso_local i32 @GET_LWP(i32) #1

declare dso_local i64 @td_thr_get_info_p(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @thread_db_err_str(i64) #1

declare dso_local i32 @BUILD_THREAD(i32, i32) #1

declare dso_local i32 @GET_PID(i32) #1

declare dso_local i32 @BUILD_LWP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
