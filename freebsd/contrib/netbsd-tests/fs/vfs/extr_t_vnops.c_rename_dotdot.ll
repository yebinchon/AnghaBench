; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_vnops.c_rename_dotdot.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_vnops.c_rename_dotdot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"rename not supported by file system\00", align 1
@USES_DIRS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"chdir mountpoint\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"dir1\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"mkdir 1\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"dir2\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"mkdir 2\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"dir1/..\00", align 1
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"self-dotdot to\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"sometarget\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"self-dotdot from\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"dir2/..\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"other-dotdot\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @rename_dotdot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rename_dotdot(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i64 @FSTYPE_RUMPFS(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = call i32 @atf_tc_skip(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %2
  %11 = load i32, i32* @USES_DIRS, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @rump_sys_chdir(i8* %12)
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %10
  %18 = call i32 @rump_sys_mkdir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 511)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %17
  %23 = call i32 @rump_sys_mkdir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 511)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %22
  %28 = call i32 @rump_sys_rename(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %29 = icmp ne i32 %28, -1
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* @errno, align 8
  %32 = load i64, i64* @EINVAL, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30, %27
  %35 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %30
  %37 = call i32 @rump_sys_rename(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* @errno, align 8
  %41 = load i64, i64* @EINVAL, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39, %36
  %44 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %39
  %46 = call i32 @rump_sys_rename(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %47 = icmp ne i32 %46, -1
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load i64, i64* @errno, align 8
  %50 = load i64, i64* @EINVAL, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48, %45
  %53 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %48
  %55 = call i32 @rump_sys_chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  ret void
}

declare dso_local i64 @FSTYPE_RUMPFS(i32*) #1

declare dso_local i32 @atf_tc_skip(i8*) #1

declare dso_local i32 @rump_sys_chdir(i8*) #1

declare dso_local i32 @atf_tc_fail_errno(i8*) #1

declare dso_local i32 @rump_sys_mkdir(i8*, i32) #1

declare dso_local i32 @rump_sys_rename(i8*, i8*) #1

declare dso_local i32 @atf_tc_fail(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
