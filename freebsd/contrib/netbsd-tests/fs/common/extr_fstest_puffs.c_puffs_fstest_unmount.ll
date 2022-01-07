; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/common/extr_fstest_puffs.c_puffs_fstest_unmount.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/common/extr_fstest_puffs.c_puffs_fstest_unmount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.puffstestargs = type { i32 }

@theargs = common dso_local global %struct.puffstestargs* null, align 8
@SIGCHLD = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@WNOHANG = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"p2kffsfake\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @puffs_fstest_unmount(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.puffstestargs*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.puffstestargs*, %struct.puffstestargs** @theargs, align 8
  store %struct.puffstestargs* %11, %struct.puffstestargs** %8, align 8
  %12 = load i32, i32* @SIGCHLD, align 4
  %13 = load i32, i32* @SIG_IGN, align 4
  %14 = call i32 @signal(i32 %12, i32 %13)
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @rump_sys_unmount(i8* %15, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %4, align 4
  br label %59

22:                                               ; preds = %3
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @rump_sys_rmdir(i8* %23)
  store i32 %24, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %4, align 4
  br label %59

28:                                               ; preds = %22
  %29 = load %struct.puffstestargs*, %struct.puffstestargs** %8, align 8
  %30 = getelementptr inbounds %struct.puffstestargs, %struct.puffstestargs* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @WNOHANG, align 4
  %33 = call i64 @waitpid(i32 %31, i32* %9, i32 %32)
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %59

36:                                               ; preds = %28
  %37 = load %struct.puffstestargs*, %struct.puffstestargs** %8, align 8
  %38 = getelementptr inbounds %struct.puffstestargs, %struct.puffstestargs* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @SIGTERM, align 4
  %41 = call i32 @kill(i32 %39, i32 %40)
  %42 = call i32 @usleep(i32 10)
  %43 = load %struct.puffstestargs*, %struct.puffstestargs** %8, align 8
  %44 = getelementptr inbounds %struct.puffstestargs, %struct.puffstestargs* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @WNOHANG, align 4
  %47 = call i64 @waitpid(i32 %45, i32* %9, i32 %46)
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %59

50:                                               ; preds = %36
  %51 = load %struct.puffstestargs*, %struct.puffstestargs** %8, align 8
  %52 = getelementptr inbounds %struct.puffstestargs, %struct.puffstestargs* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SIGKILL, align 4
  %55 = call i32 @kill(i32 %53, i32 %54)
  %56 = call i32 @usleep(i32 500)
  %57 = call i32 @wait(i32* %9)
  %58 = call i32 @rmdir(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %50, %49, %35, %26, %20
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @rump_sys_unmount(i8*, i32) #1

declare dso_local i32 @rump_sys_rmdir(i8*) #1

declare dso_local i64 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @wait(i32*) #1

declare dso_local i32 @rmdir(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
