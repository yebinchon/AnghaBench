; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_full.c_fillfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_full.c_fillfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [58 x i8] c"fs does not support explicit block allocation (GOP_ALLOC)\00", align 1
@NFSBONUS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"chdir mountpoint\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"afile\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"create file\00", align 1
@FSTEST_IMGSIZE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"PR kern/47656: Test known to be broken\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"filled file system over size limit\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @fillfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fillfs(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [8192 x i8], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = call i64 @FSTYPE_P2K_FFS(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %2
  %15 = load i32*, i32** %3, align 8
  %16 = call i64 @FSTYPE_PUFFS(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i32*, i32** %3, align 8
  %20 = call i64 @FSTYPE_RUMPFS(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %14, %2
  %23 = call i32 @atf_tc_skip(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %18
  store i64 0, i64* %8, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = call i64 @FSTYPE_NFS(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i64, i64* @NFSBONUS, align 8
  store i64 %29, i64* %8, align 8
  br label %30

30:                                               ; preds = %28, %24
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @rump_sys_chdir(i8* %31)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %30
  %37 = load i32, i32* @O_CREAT, align 4
  %38 = load i32, i32* @O_RDWR, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @rump_sys_open(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %36
  store i64 0, i64* %6, align 8
  br label %46

46:                                               ; preds = %64, %45
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* @FSTEST_IMGSIZE, align 8
  %49 = load i64, i64* %8, align 8
  %50 = add i64 %48, %49
  %51 = icmp ult i64 %47, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %46
  %53 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  %56 = call i32 @memset(i8* %53, i32 %54, i32 8192)
  %57 = load i32, i32* %9, align 4
  %58 = getelementptr inbounds [8192 x i8], [8192 x i8]* %5, i64 0, i64 0
  %59 = call i64 @rump_sys_write(i32 %57, i8* %58, i32 8192)
  store i64 %59, i64* %7, align 8
  %60 = load i64, i64* %7, align 8
  %61 = icmp eq i64 %60, -1
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %68

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* %6, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %6, align 8
  br label %46

68:                                               ; preds = %62, %46
  %69 = load i32*, i32** %3, align 8
  %70 = call i64 @FSTYPE_ZFS(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = call i32 @atf_tc_expect_fail(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %68
  %75 = load i64, i64* %7, align 8
  %76 = icmp eq i64 %75, -1
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load i64, i64* @errno, align 8
  %79 = load i64, i64* @ENOSPC, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %77
  br label %86

84:                                               ; preds = %74
  %85 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %83
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @rump_sys_close(i32 %87)
  %89 = call i32 @rump_sys_chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local i64 @FSTYPE_P2K_FFS(i32*) #1

declare dso_local i64 @FSTYPE_PUFFS(i32*) #1

declare dso_local i64 @FSTYPE_RUMPFS(i32*) #1

declare dso_local i32 @atf_tc_skip(i8*) #1

declare dso_local i64 @FSTYPE_NFS(i32*) #1

declare dso_local i32 @rump_sys_chdir(i8*) #1

declare dso_local i32 @atf_tc_fail_errno(i8*) #1

declare dso_local i32 @rump_sys_open(i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @rump_sys_write(i32, i8*, i32) #1

declare dso_local i64 @FSTYPE_ZFS(i32*) #1

declare dso_local i32 @atf_tc_expect_fail(i8*) #1

declare dso_local i32 @atf_tc_fail(i8*) #1

declare dso_local i32 @rump_sys_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
