; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/extr_t_fuzz.c_respondthread.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/extr_t_fuzz.c_respondthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.puffs_req = type { i64 }
%struct.pollfd = type { i32, i64, i32 }

@PUFFS_MSG_MAXSIZE = common dso_local global i32 0, align 4
@damtx = common dso_local global i32 0, align 4
@dafd = common dso_local global i32 0, align 4
@dacv = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @respondthread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @respondthread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.puffs_req*, align 8
  %6 = alloca %struct.pollfd, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i32, i32* @PUFFS_MSG_MAXSIZE, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = bitcast i8* %11 to %struct.puffs_req*
  store %struct.puffs_req* %12, %struct.puffs_req** %5, align 8
  %13 = call i32 @pthread_mutex_lock(i32* @damtx)
  br label %14

14:                                               ; preds = %50, %1
  br label %15

15:                                               ; preds = %18, %14
  %16 = load i32, i32* @dafd, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 @pthread_cond_wait(i32* @dacv, i32* @damtx)
  br label %15

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %43, %33, %20
  %22 = load i32, i32* @dafd, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %50

24:                                               ; preds = %21
  %25 = call i32 @pthread_mutex_unlock(i32* @damtx)
  %26 = load i32, i32* @dafd, align 4
  %27 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %6, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* @POLLIN, align 4
  %29 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %6, i32 0, i32 2
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %6, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = call i64 @rump_sys_poll(%struct.pollfd* %6, i32 1, i32 10)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = call i32 @pthread_mutex_lock(i32* @damtx)
  br label %21

35:                                               ; preds = %24
  %36 = load i32, i32* @dafd, align 4
  %37 = trunc i64 %9 to i32
  %38 = call i64 @rump_sys_read(i32 %36, i8* %11, i32 %37)
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp sle i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = call i32 @pthread_mutex_lock(i32* @damtx)
  br label %50

43:                                               ; preds = %35
  %44 = load %struct.puffs_req*, %struct.puffs_req** %5, align 8
  %45 = getelementptr inbounds %struct.puffs_req, %struct.puffs_req* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* @dafd, align 4
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @rump_sys_write(i32 %46, i8* %11, i64 %47)
  %49 = call i32 @pthread_mutex_lock(i32* @damtx)
  br label %21

50:                                               ; preds = %41, %21
  br label %14
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pthread_mutex_lock(i32*) #2

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #2

declare dso_local i64 @rump_sys_poll(%struct.pollfd*, i32, i32) #2

declare dso_local i64 @rump_sys_read(i32, i8*, i32) #2

declare dso_local i32 @rump_sys_write(i32, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
