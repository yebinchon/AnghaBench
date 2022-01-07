; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libpthread/extr_t_cond.c_broadcast_threadfunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libpthread/extr_t_cond.c_broadcast_threadfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"2: Second thread.\0A\00", align 1
@static_mutex = common dso_local global i32 0, align 4
@count = common dso_local global i64 0, align 8
@total = common dso_local global i32 0, align 4
@toggle = common dso_local global i32 0, align 4
@static_cond = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"2: After the loop.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @broadcast_threadfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @broadcast_threadfunc(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @pthread_mutex_lock(i32* @static_mutex)
  %5 = call i32 @PTHREAD_REQUIRE(i32 %4)
  br label %6

6:                                                ; preds = %22, %1
  %7 = load i64, i64* @count, align 8
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
  %10 = load i64, i64* @count, align 8
  %11 = add nsw i64 %10, -1
  store i64 %11, i64* @count, align 8
  %12 = load i32, i32* @total, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @total, align 4
  store i32 0, i32* @toggle, align 4
  %14 = call i32 @pthread_cond_signal(i32* @static_cond)
  %15 = call i32 @PTHREAD_REQUIRE(i32 %14)
  br label %16

16:                                               ; preds = %19, %9
  %17 = call i32 @pthread_cond_wait(i32* @static_cond, i32* @static_mutex)
  %18 = call i32 @PTHREAD_REQUIRE(i32 %17)
  br label %19

19:                                               ; preds = %16
  %20 = load i32, i32* @toggle, align 4
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %16, label %22

22:                                               ; preds = %19
  br label %6

23:                                               ; preds = %6
  %24 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 @pthread_mutex_unlock(i32* @static_mutex)
  %26 = call i32 @PTHREAD_REQUIRE(i32 %25)
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
