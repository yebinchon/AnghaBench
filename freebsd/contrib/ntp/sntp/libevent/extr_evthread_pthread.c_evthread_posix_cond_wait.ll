; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evthread_pthread.c_evthread_posix_cond_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evthread_pthread.c_evthread_posix_cond_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }
%struct.timespec = type { i32, i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.timeval*)* @evthread_posix_cond_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evthread_posix_cond_wait(i8* %0, i8* %1, %struct.timeval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.timeval*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.timeval, align 4
  %12 = alloca %struct.timeval, align 4
  %13 = alloca %struct.timespec, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.timeval* %2, %struct.timeval** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %10, align 8
  %18 = load %struct.timeval*, %struct.timeval** %7, align 8
  %19 = icmp ne %struct.timeval* %18, null
  br i1 %19, label %20, label %43

20:                                               ; preds = %3
  %21 = call i32 @evutil_gettimeofday(%struct.timeval* %11, i32* null)
  %22 = load %struct.timeval*, %struct.timeval** %7, align 8
  %23 = call i32 @evutil_timeradd(%struct.timeval* %11, %struct.timeval* %22, %struct.timeval* %12)
  %24 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.timespec, %struct.timespec* %13, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %28, 1000
  %30 = getelementptr inbounds %struct.timespec, %struct.timespec* %13, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @pthread_cond_timedwait(i32* %31, i32* %32, %struct.timespec* %13)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @ETIMEDOUT, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %20
  store i32 1, i32* %4, align 4
  br label %51

38:                                               ; preds = %20
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 -1, i32* %4, align 4
  br label %51

42:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %51

43:                                               ; preds = %3
  %44 = load i32*, i32** %9, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @pthread_cond_wait(i32* %44, i32* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 -1, i32 0
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %43, %42, %41, %37
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @evutil_gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @evutil_timeradd(%struct.timeval*, %struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @pthread_cond_timedwait(i32*, i32*, %struct.timespec*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
