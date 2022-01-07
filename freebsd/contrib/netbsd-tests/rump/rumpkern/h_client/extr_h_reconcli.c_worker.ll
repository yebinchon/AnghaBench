; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/rump/rumpkern/h_client/extr_h_reconcli.c_worker.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/rump/rumpkern/h_client/extr_h_reconcli.c_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@closermtx = common dso_local global i32 0, align 4
@quit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"getpid\00", align 1
@hostnamemib = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"sysctl\00", align 1
@goodhostname = common dso_local global i32 0, align 4
@riseandwhine = common dso_local global i32 0, align 4
@closercv = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @worker(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [128 x i8], align 16
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = call i32 @pthread_mutex_lock(i32* @closermtx)
  br label %6

6:                                                ; preds = %34, %1
  %7 = load i32, i32* @quit, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  br i1 %9, label %10, label %37

10:                                               ; preds = %6
  %11 = call i32 @pthread_mutex_unlock(i32* @closermtx)
  %12 = call i32 (...) @rump_sys_getpid()
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %10
  store i64 128, i64* %4, align 8
  %17 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %18 = call i32 @memset(i8* %17, i32 0, i32 128)
  %19 = load i32, i32* @hostnamemib, align 4
  %20 = load i32, i32* @hostnamemib, align 4
  %21 = call i32 @__arraycount(i32 %20)
  %22 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %23 = call i32 @rump_sys___sysctl(i32 %19, i32 %21, i8* %22, i64* %4, i32* null, i32 0)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %16
  %28 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %29 = load i32, i32* @goodhostname, align 4
  %30 = call i64 @strcmp(i8* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = call i32 @exit(i32 1) #3
  unreachable

34:                                               ; preds = %27
  %35 = call i32 @pthread_mutex_lock(i32* @closermtx)
  store i32 1, i32* @riseandwhine, align 4
  %36 = call i32 @pthread_cond_signal(i32* @closercv)
  br label %6

37:                                               ; preds = %6
  store i32 1, i32* @riseandwhine, align 4
  %38 = call i32 @pthread_cond_signal(i32* @closercv)
  %39 = call i32 @pthread_mutex_unlock(i32* @closermtx)
  ret i8* null
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @rump_sys_getpid(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @rump_sys___sysctl(i32, i32, i8*, i64*, i32*, i32) #1

declare dso_local i32 @__arraycount(i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @pthread_cond_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
