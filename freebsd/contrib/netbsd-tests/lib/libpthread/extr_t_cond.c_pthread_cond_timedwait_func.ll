; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libpthread/extr_t_cond.c_pthread_cond_timedwait_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libpthread/extr_t_cond.c_pthread_cond_timedwait_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64 }

@CLOCK_REALTIME = common dso_local global i32 0, align 4
@static_mutex = common dso_local global i32 0, align 4
@static_cond = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @pthread_cond_timedwait_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pthread_cond_timedwait_func(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.timespec, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i64 0, i64* %4, align 8
  br label %6

6:                                                ; preds = %12, %1
  %7 = load i64, i64* %4, align 8
  %8 = add i64 %7, 1
  store i64 %8, i64* %4, align 8
  %9 = icmp uge i64 %7, 10000
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = call i32 @pthread_exit(i32* null)
  br label %12

12:                                               ; preds = %10, %6
  %13 = call i32 @memset(%struct.timespec* %3, i32 0, i32 8)
  %14 = load i32, i32* @CLOCK_REALTIME, align 4
  %15 = call i64 @clock_gettime(i32 %14, %struct.timespec* %3)
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @ATF_REQUIRE(i32 %17)
  %19 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %20, 1
  %22 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  store i64 %21, i64* %22, align 8
  %23 = call i32 @pthread_mutex_lock(i32* @static_mutex)
  %24 = call i32 @PTHREAD_REQUIRE(i32 %23)
  %25 = call i32 @pthread_cond_timedwait(i32* @static_cond, i32* @static_mutex, %struct.timespec* %3)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @ETIMEDOUT, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @ATF_REQUIRE(i32 %29)
  %31 = call i32 @pthread_mutex_unlock(i32* @static_mutex)
  %32 = call i32 @PTHREAD_REQUIRE(i32 %31)
  br label %6
}

declare dso_local i32 @pthread_exit(i32*) #1

declare dso_local i32 @memset(%struct.timespec*, i32, i32) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i64 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @PTHREAD_REQUIRE(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_timedwait(i32*, i32*, %struct.timespec*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
