; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/extr_t_fuzz.c_testbody.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/extr_t_fuzz.c_testbody.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.puffs_kargs = type { i32 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"test seeded RNG with %lu\0A\00", align 1
@damtx = common dso_local global i32 0, align 4
@dacv = common dso_local global i32 0, align 4
@respondthread = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"/mnt\00", align 1
@ITERATIONS = common dso_local global i32 0, align 4
@MOUNT_PUFFS = common dso_local global i32 0, align 4
@dafd = common dso_local global i32 0, align 4
@MNT_FORCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @testbody to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testbody(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.puffs_kargs, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.stat, align 4
  store i32 %0, i32* %2, align 4
  %8 = call i64 @time(i32* null)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @srandom(i64 %9)
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = call i32 (...) @rump_init()
  %14 = call i32 @pthread_mutex_init(i32* @damtx, i32* null)
  %15 = call i32 @pthread_cond_init(i32* @dacv, i32* null)
  %16 = load i32, i32* @respondthread, align 4
  %17 = call i32 @pthread_create(i32* %3, i32* null, i32 %16, i32* null)
  %18 = call i64 @rump_sys_mkdir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 511)
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @ATF_REQUIRE(i32 %20)
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %47, %1
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @ITERATIONS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %22
  %27 = call i32 @tests_makegarbage(%struct.puffs_kargs* %4, i32 4)
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @fixup(i32 %28, %struct.puffs_kargs* %4)
  %30 = load i32, i32* @MOUNT_PUFFS, align 4
  %31 = call i64 @rump_sys_mount(i32 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0, %struct.puffs_kargs* %4, i32 4)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %26
  %34 = call i32 @pthread_mutex_lock(i32* @damtx)
  %35 = getelementptr inbounds %struct.puffs_kargs, %struct.puffs_kargs* %4, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* @dafd, align 4
  %37 = call i32 @pthread_cond_signal(i32* @dacv)
  %38 = call i32 @pthread_mutex_unlock(i32* @damtx)
  %39 = call i32 @rump_sys_stat(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.stat* %7)
  %40 = load i32, i32* @MNT_FORCE, align 4
  %41 = call i32 @rump_sys_unmount(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %33, %26
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @unfixup(i32 %43, %struct.puffs_kargs* %4)
  %45 = call i32 @pthread_mutex_lock(i32* @damtx)
  store i32 -1, i32* @dafd, align 4
  %46 = call i32 @pthread_mutex_unlock(i32* @damtx)
  br label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %22

50:                                               ; preds = %22
  ret void
}

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @srandom(i64) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @rump_init(...) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @pthread_cond_init(i32*, i32*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @ATF_REQUIRE(i32) #1

declare dso_local i64 @rump_sys_mkdir(i8*, i32) #1

declare dso_local i32 @tests_makegarbage(%struct.puffs_kargs*, i32) #1

declare dso_local i32 @fixup(i32, %struct.puffs_kargs*) #1

declare dso_local i64 @rump_sys_mount(i32, i8*, i32, %struct.puffs_kargs*, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @rump_sys_stat(i8*, %struct.stat*) #1

declare dso_local i32 @rump_sys_unmount(i8*, i32) #1

declare dso_local i32 @unfixup(i32, %struct.puffs_kargs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
