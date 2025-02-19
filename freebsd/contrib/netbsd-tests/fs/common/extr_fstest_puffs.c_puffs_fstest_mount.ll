; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/common/extr_fstest_puffs.c_puffs_fstest_mount.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/common/extr_fstest_puffs.c_puffs_fstest_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.puffstestargs = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"/dev/puffs\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@MOUNT_PUFFS = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @puffs_fstest_mount(i32* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.puffstestargs*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.puffstestargs*
  store %struct.puffstestargs* %13, %struct.puffstestargs** %10, align 8
  %14 = call i32 (...) @rump_init()
  %15 = load i32, i32* @O_RDWR, align 4
  %16 = call i32 @rump_sys_open(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %5, align 4
  br label %50

21:                                               ; preds = %4
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @rump_sys_mkdir(i8* %22, i32 511)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 -1, i32* %5, align 4
  br label %50

26:                                               ; preds = %21
  %27 = load i32, i32* @MOUNT_PUFFS, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.puffstestargs*, %struct.puffstestargs** %10, align 8
  %31 = getelementptr inbounds %struct.puffstestargs, %struct.puffstestargs* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.puffstestargs*, %struct.puffstestargs** %10, align 8
  %34 = getelementptr inbounds %struct.puffstestargs, %struct.puffstestargs* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @rump_sys_mount(i32 %27, i8* %28, i32 %29, i32 %32, i32 %35)
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %44

38:                                               ; preds = %26
  %39 = load %struct.puffstestargs*, %struct.puffstestargs** %10, align 8
  %40 = getelementptr inbounds %struct.puffstestargs, %struct.puffstestargs* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SIGKILL, align 4
  %43 = call i32 @kill(i32 %41, i32 %42)
  store i32 -1, i32* %5, align 4
  br label %50

44:                                               ; preds = %26
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.puffstestargs*, %struct.puffstestargs** %10, align 8
  %47 = getelementptr inbounds %struct.puffstestargs, %struct.puffstestargs* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.puffstestargs*, %struct.puffstestargs** %10, align 8
  %49 = call i32 @rumpshovels(%struct.puffstestargs* %48)
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %44, %38, %25, %19
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @rump_init(...) #1

declare dso_local i32 @rump_sys_open(i8*, i32) #1

declare dso_local i32 @rump_sys_mkdir(i8*, i32) #1

declare dso_local i32 @rump_sys_mount(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @rumpshovels(%struct.puffstestargs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
