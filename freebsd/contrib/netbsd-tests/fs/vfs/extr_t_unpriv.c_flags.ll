; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_unpriv.c_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_unpriv.c_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"file.test\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"PR kern/47656: Test known to be broken\00", align 1
@errno = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [40 x i8] c"file flags not supported by file system\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"chflags\00", align 1
@UF_IMMUTABLE = common dso_local global i32 0, align 4
@RUMP_RFCFDG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"setuid\00", align 1
@EPERM = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"unlink\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flags(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %9 = call i32 (...) @FSTEST_ENTER()
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* @O_RDWR, align 4
  %12 = load i32, i32* @O_CREAT, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @rump_sys_open(i8* %10, i32 %13, i32 438)
  store i32 %14, i32* %6, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %2
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @rump_sys_close(i32 %19)
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %18
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @rump_sys_stat(i8* %25, %struct.stat* %8)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %24
  %31 = load i32*, i32** %3, align 8
  %32 = call i64 @FSTYPE_ZFS(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 @atf_tc_expect_fail(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %30
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @rump_sys_chflags(i8* %37, i32 %39)
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load i64, i64* @errno, align 8
  %44 = load i64, i64* @EOPNOTSUPP, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = call i32 @atf_tc_skip(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %42
  %49 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %36
  %51 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @UF_IMMUTABLE, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* @RUMP_RFCFDG, align 4
  %56 = call i32 @rump_pub_lwproc_rfork(i32 %55)
  %57 = call i32 @rump_sys_setuid(i32 1)
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %50
  %62 = load i32, i32* @UF_IMMUTABLE, align 4
  %63 = load i32, i32* %7, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %7, align 4
  %65 = load i8*, i8** %5, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @rump_sys_chflags(i8* %65, i32 %66)
  %68 = icmp ne i32 %67, -1
  br i1 %68, label %73, label %69

69:                                               ; preds = %61
  %70 = load i64, i64* @errno, align 8
  %71 = load i64, i64* @EPERM, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69, %61
  %74 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %69
  %76 = call i32 (...) @rump_pub_lwproc_releaselwp()
  %77 = load i8*, i8** %5, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @rump_sys_chflags(i8* %77, i32 %78)
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %75
  %84 = load i32, i32* @UF_IMMUTABLE, align 4
  %85 = xor i32 %84, -1
  %86 = load i32, i32* %7, align 4
  %87 = and i32 %86, %85
  store i32 %87, i32* %7, align 4
  %88 = load i8*, i8** %5, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @rump_sys_chflags(i8* %88, i32 %89)
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %94

92:                                               ; preds = %83
  %93 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %83
  %95 = load i8*, i8** %5, align 8
  %96 = call i32 @rump_sys_unlink(i8* %95)
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %94
  %101 = call i32 (...) @FSTEST_EXIT()
  ret void
}

declare dso_local i32 @FSTEST_ENTER(...) #1

declare dso_local i32 @rump_sys_open(i8*, i32, i32) #1

declare dso_local i32 @atf_tc_fail_errno(i8*) #1

declare dso_local i32 @rump_sys_close(i32) #1

declare dso_local i32 @rump_sys_stat(i8*, %struct.stat*) #1

declare dso_local i64 @FSTYPE_ZFS(i32*) #1

declare dso_local i32 @atf_tc_expect_fail(i8*) #1

declare dso_local i32 @rump_sys_chflags(i8*, i32) #1

declare dso_local i32 @atf_tc_skip(i8*) #1

declare dso_local i32 @rump_pub_lwproc_rfork(i32) #1

declare dso_local i32 @rump_sys_setuid(i32) #1

declare dso_local i32 @rump_pub_lwproc_releaselwp(...) #1

declare dso_local i32 @rump_sys_unlink(i8*) #1

declare dso_local i32 @FSTEST_EXIT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
