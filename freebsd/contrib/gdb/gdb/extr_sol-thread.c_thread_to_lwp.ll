; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sol-thread.c_thread_to_lwp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sol-thread.c_thread_to_lwp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@main_ta = common dso_local global i32 0, align 4
@TD_NOTHR = common dso_local global i64 0, align 8
@TD_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"thread_to_lwp: td_ta_map_id2thr %s\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"thread_to_lwp: td_thr_get_info: %s\00", align 1
@TD_THR_ACTIVE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"thread_to_lwp: thread state not active: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @thread_to_lwp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread_to_lwp(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @is_lwp(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %3, align 4
  br label %71

14:                                               ; preds = %2
  %15 = load i32, i32* @main_ta, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @GET_THREAD(i32 %16)
  %18 = call i64 @p_td_ta_map_id2thr(i32 %15, i32 %17, i32* %7)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @TD_NOTHR, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = call i32 @pid_to_ptid(i32 -1)
  store i32 %23, i32* %3, align 4
  br label %71

24:                                               ; preds = %14
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @TD_OK, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @td_err_string(i64 %29)
  %31 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %28, %24
  br label %33

33:                                               ; preds = %32
  %34 = call i64 @p_td_thr_get_info(i32* %7, %struct.TYPE_3__* %6)
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* @TD_NOTHR, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 @pid_to_ptid(i32 -1)
  store i32 %39, i32* %3, align 4
  br label %71

40:                                               ; preds = %33
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @TD_OK, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @td_err_string(i64 %45)
  %47 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %44, %40
  br label %49

49:                                               ; preds = %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @TD_THR_ACTIVE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, -1
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @pid_to_ptid(i32 %58)
  store i32 %59, i32* %3, align 4
  br label %71

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @td_state_string(i64 %62)
  %64 = call i32 @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %60, %49
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @PIDGET(i32 %68)
  %70 = call i32 @BUILD_LWP(i32 %67, i32 %69)
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %65, %57, %38, %22, %12
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i64 @is_lwp(i32) #1

declare dso_local i64 @p_td_ta_map_id2thr(i32, i32, i32*) #1

declare dso_local i32 @GET_THREAD(i32) #1

declare dso_local i32 @pid_to_ptid(i32) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @td_err_string(i64) #1

declare dso_local i64 @p_td_thr_get_info(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @td_state_string(i64) #1

declare dso_local i32 @BUILD_LWP(i32, i32) #1

declare dso_local i32 @PIDGET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
