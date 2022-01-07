; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/common/extr_fstest_lfs.c_lfs_fstest_mount.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/common/extr_fstest_lfs.c_lfs_fstest_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lfstestargs = type { i32, i32, i32, i32 }

@MOUNT_LFS = common dso_local global i32 0, align 4
@cleaner = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lfs_fstest_mount(i32* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.lfstestargs*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.lfstestargs*
  store %struct.lfstestargs* %13, %struct.lfstestargs** %10, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @rump_sys_mkdir(i8* %14, i32 511)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %5, align 4
  br label %50

20:                                               ; preds = %4
  %21 = load i32, i32* @MOUNT_LFS, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.lfstestargs*, %struct.lfstestargs** %10, align 8
  %25 = getelementptr inbounds %struct.lfstestargs, %struct.lfstestargs* %24, i32 0, i32 3
  %26 = call i32 @rump_sys_mount(i32 %21, i8* %22, i32 %23, i32* %25, i32 4)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %5, align 4
  br label %50

31:                                               ; preds = %20
  %32 = load %struct.lfstestargs*, %struct.lfstestargs** %10, align 8
  %33 = getelementptr inbounds %struct.lfstestargs, %struct.lfstestargs* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @strcpy(i32 %34, i8* %35)
  %37 = load %struct.lfstestargs*, %struct.lfstestargs** %10, align 8
  %38 = getelementptr inbounds %struct.lfstestargs, %struct.lfstestargs* %37, i32 0, i32 1
  %39 = load i32, i32* @cleaner, align 4
  %40 = load %struct.lfstestargs*, %struct.lfstestargs** %10, align 8
  %41 = call i32 @pthread_create(i32* %38, i32* null, i32 %39, %struct.lfstestargs* %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %31
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %5, align 4
  br label %50

46:                                               ; preds = %31
  %47 = load %struct.lfstestargs*, %struct.lfstestargs** %10, align 8
  %48 = getelementptr inbounds %struct.lfstestargs, %struct.lfstestargs* %47, i32 0, i32 0
  %49 = call i32 @sem_wait(i32* %48)
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %46, %44, %29, %18
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @rump_sys_mkdir(i8*, i32) #1

declare dso_local i32 @rump_sys_mount(i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.lfstestargs*) #1

declare dso_local i32 @sem_wait(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
