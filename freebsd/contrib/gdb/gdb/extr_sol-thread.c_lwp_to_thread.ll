; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sol-thread.c_lwp_to_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sol-thread.c_lwp_to_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@main_ta = common dso_local global i32 0, align 4
@TD_NOTHR = common dso_local global i64 0, align 8
@TD_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"lwp_to_thread: td_ta_map_lwp2thr: %s.\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"lwp_to_thread: td_thr_validate: %s.\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"lwp_to_thread: td_thr_get_info: %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @lwp_to_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lwp_to_thread(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @is_thread(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  store i32 %11, i32* %2, align 4
  br label %75

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @sol_thread_alive(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = call i32 @pid_to_ptid(i32 -1)
  store i32 %17, i32* %2, align 4
  br label %75

18:                                               ; preds = %12
  %19 = load i32, i32* @main_ta, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @GET_LWP(i32 %20)
  %22 = call i64 @p_td_ta_map_lwp2thr(i32 %19, i32 %21, i32* %5)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @TD_NOTHR, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = call i32 @pid_to_ptid(i32 -1)
  store i32 %27, i32* %2, align 4
  br label %75

28:                                               ; preds = %18
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @TD_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @td_err_string(i64 %33)
  %35 = call i32 @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %32, %28
  br label %37

37:                                               ; preds = %36
  %38 = call i64 @p_td_thr_validate(i32* %5)
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @TD_NOTHR, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %3, align 4
  store i32 %43, i32* %2, align 4
  br label %75

44:                                               ; preds = %37
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @TD_OK, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @td_err_string(i64 %49)
  %51 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %48, %44
  br label %53

53:                                               ; preds = %52
  %54 = call i64 @p_td_thr_get_info(i32* %5, %struct.TYPE_3__* %4)
  store i64 %54, i64* %6, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* @TD_NOTHR, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = call i32 @pid_to_ptid(i32 -1)
  store i32 %59, i32* %2, align 4
  br label %75

60:                                               ; preds = %53
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* @TD_OK, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @td_err_string(i64 %65)
  %67 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %64, %60
  br label %69

69:                                               ; preds = %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @PIDGET(i32 %72)
  %74 = call i32 @BUILD_THREAD(i32 %71, i32 %73)
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %69, %58, %42, %26, %16, %10
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i64 @is_thread(i32) #1

declare dso_local i32 @sol_thread_alive(i32) #1

declare dso_local i32 @pid_to_ptid(i32) #1

declare dso_local i64 @p_td_ta_map_lwp2thr(i32, i32, i32*) #1

declare dso_local i32 @GET_LWP(i32) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @td_err_string(i64) #1

declare dso_local i64 @p_td_thr_validate(i32*) #1

declare dso_local i64 @p_td_thr_get_info(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @BUILD_THREAD(i32, i32) #1

declare dso_local i32 @PIDGET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
