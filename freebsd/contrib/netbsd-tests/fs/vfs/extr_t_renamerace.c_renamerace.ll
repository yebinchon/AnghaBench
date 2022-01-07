; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_renamerace.c_renamerace.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/vfs/extr_t_renamerace.c_renamerace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NWRK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"filesystem has not enough inodes\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"rename not supported by file system\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"PR kern/49046\00", align 1
@RUMP_RFCFDG = common dso_local global i32 0, align 4
@wrkpid = common dso_local global i32 0, align 4
@w1 = common dso_local global i32 0, align 4
@w2 = common dso_local global i32 0, align 4
@quittingtime = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"race did not trigger this time\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"PR kern/43626\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"unmount failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @renamerace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @renamerace(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* @NWRK, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i32, i32* @NWRK, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i64 @FSTYPE_SYSVBFS(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = call i32 @atf_tc_skip(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %2
  %22 = load i32*, i32** %3, align 8
  %23 = call i64 @FSTYPE_RUMPFS(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 @atf_tc_skip(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %21
  %28 = load i32*, i32** %3, align 8
  %29 = call i64 @FSTYPE_UDF(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 @atf_tc_expect_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %27
  %34 = load i32, i32* @RUMP_RFCFDG, align 4
  %35 = call i32 @rump_pub_lwproc_rfork(i32 %34)
  %36 = call i32 @RZ(i32 %35)
  %37 = call i32 (...) @rump_sys_getpid()
  store i32 %37, i32* @wrkpid, align 4
  %38 = call i32 @RL(i32 %37)
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @rump_sys_chdir(i8* %39)
  %41 = call i32 @RL(i32 %40)
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %52, %33
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @NWRK, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %12, i64 %48
  %50 = load i32, i32* @w1, align 4
  %51 = call i32 @pthread_create(i32* %49, i32* null, i32 %50, i32* null)
  br label %52

52:                                               ; preds = %46
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %42

55:                                               ; preds = %42
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %66, %55
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @NWRK, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %15, i64 %62
  %64 = load i32, i32* @w2, align 4
  %65 = call i32 @pthread_create(i32* %63, i32* null, i32 %64, i32* null)
  br label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %56

69:                                               ; preds = %56
  %70 = call i32 @sleep(i32 5)
  store i32 1, i32* @quittingtime, align 4
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %81, %69
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @NWRK, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %71
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %12, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @pthread_join(i32 %79, i32* null)
  br label %81

81:                                               ; preds = %75
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %71

84:                                               ; preds = %71
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %95, %84
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @NWRK, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %85
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %15, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @pthread_join(i32 %93, i32* null)
  br label %95

95:                                               ; preds = %89
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %85

98:                                               ; preds = %85
  %99 = call i32 @rump_sys_chdir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %100 = call i32 @RL(i32 %99)
  %101 = load i32*, i32** %3, align 8
  %102 = call i64 @FSTYPE_UDF(i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %98
  %107 = load i32*, i32** %3, align 8
  %108 = call i64 @FSTYPE_MSDOS(i32* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %106
  %111 = call i32 @atf_tc_expect_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %112 = load i32*, i32** %3, align 8
  %113 = load i8*, i8** %4, align 8
  %114 = call i64 @msdosfs_fstest_unmount(i32* %112, i8* %113, i32 0)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = load i8*, i8** %4, align 8
  %118 = call i32 @rump_pub_vfs_mount_print(i8* %117, i32 1)
  %119 = call i32 @atf_tc_fail_errno(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  br label %120

120:                                              ; preds = %116, %110
  %121 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %122

122:                                              ; preds = %120, %106
  %123 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %123)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @FSTYPE_SYSVBFS(i32*) #2

declare dso_local i32 @atf_tc_skip(i8*) #2

declare dso_local i64 @FSTYPE_RUMPFS(i32*) #2

declare dso_local i64 @FSTYPE_UDF(i32*) #2

declare dso_local i32 @atf_tc_expect_fail(i8*) #2

declare dso_local i32 @RZ(i32) #2

declare dso_local i32 @rump_pub_lwproc_rfork(i32) #2

declare dso_local i32 @RL(i32) #2

declare dso_local i32 @rump_sys_getpid(...) #2

declare dso_local i32 @rump_sys_chdir(i8*) #2

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i32*) #2

declare dso_local i32 @sleep(i32) #2

declare dso_local i32 @pthread_join(i32, i32*) #2

declare dso_local i32 @atf_tc_fail(i8*) #2

declare dso_local i64 @FSTYPE_MSDOS(i32*) #2

declare dso_local i64 @msdosfs_fstest_unmount(i32*, i8*, i32) #2

declare dso_local i32 @rump_pub_vfs_mount_print(i8*, i32) #2

declare dso_local i32 @atf_tc_fail_errno(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
