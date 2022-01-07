; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libpthread/extr_t_cond.c_signal_wait_race_threadfunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libpthread/extr_t_cond.c_signal_wait_race_threadfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"2: Second thread.\0A\00", align 1
@static_mutex = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"2: Before the loop.\0A\00", align 1
@count = common dso_local global i64 0, align 8
@total = common dso_local global i32 0, align 4
@toggle = common dso_local global i32 0, align 4
@static_cond = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"2: After the loop.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @signal_wait_race_threadfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @signal_wait_race_threadfunc(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @pthread_mutex_lock(i32* @static_mutex)
  %5 = call i32 @PTHREAD_REQUIRE(i32 %4)
  %6 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %7

7:                                                ; preds = %23, %1
  %8 = load i64, i64* @count, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %7
  %11 = load i64, i64* @count, align 8
  %12 = add nsw i64 %11, -1
  store i64 %12, i64* @count, align 8
  %13 = load i32, i32* @total, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @total, align 4
  store i32 0, i32* @toggle, align 4
  %15 = call i32 @pthread_cond_signal(i32* @static_cond)
  %16 = call i32 @PTHREAD_REQUIRE(i32 %15)
  br label %17

17:                                               ; preds = %20, %10
  %18 = call i32 @pthread_cond_wait(i32* @static_cond, i32* @static_mutex)
  %19 = call i32 @PTHREAD_REQUIRE(i32 %18)
  br label %20

20:                                               ; preds = %17
  %21 = load i32, i32* @toggle, align 4
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %17, label %23

23:                                               ; preds = %20
  br label %7

24:                                               ; preds = %7
  %25 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %26 = call i32 @pthread_mutex_unlock(i32* @static_mutex)
  %27 = call i32 @PTHREAD_REQUIRE(i32 %26)
  ret i8* null
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @PTHREAD_REQUIRE(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
