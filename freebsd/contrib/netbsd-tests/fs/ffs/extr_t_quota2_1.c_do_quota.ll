; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/ffs/extr_t_quota2_1.c_do_quota.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/ffs/extr_t_quota2_1.c_do_quota.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_args = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"newfs -q user -q group -F -s 4000 -n %d %s %s\00", align 1
@FSTEST_IMGNAME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"cannot create file system\00", align 1
@FSTEST_MNTNAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"mount point create\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"/diskdev\00", align 1
@RUMP_ETFS_BLK = common dso_local global i32 0, align 4
@MOUNT_FFS = common dso_local global i32 0, align 4
@MNT_LOG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"mount ffs %s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"file%d\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"test file no %d\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"unmount failed\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"fsck_ffs -fn -F %s\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"fsck returned %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*, i32)* @do_quota to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_quota(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [1024 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ufs_args, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, 3
  %17 = load i8*, i8** %7, align 8
  %18 = load i8*, i8** @FSTEST_IMGNAME, align 8
  %19 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %14, i32 1024, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %16, i8* %17, i8* %18)
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %21 = call i32 @system(i8* %20)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = call i32 (i8*, ...) @atf_tc_fail_errno(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %4
  %26 = call i32 (...) @rump_init()
  %27 = load i32, i32* @FSTEST_MNTNAME, align 4
  %28 = call i32 @rump_sys_mkdir(i32 %27, i32 511)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = call i32 (i8*, ...) @atf_tc_fail_errno(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %25
  %33 = load i8*, i8** @FSTEST_IMGNAME, align 8
  %34 = load i32, i32* @RUMP_ETFS_BLK, align 4
  %35 = call i32 @rump_pub_etfs_register(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %33, i32 %34)
  %36 = call i32 @__UNCONST(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %37 = getelementptr inbounds %struct.ufs_args, %struct.ufs_args* %13, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @MOUNT_FFS, align 4
  %39 = load i32, i32* @FSTEST_MNTNAME, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32, i32* @MNT_LOG, align 4
  br label %45

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i32 [ %43, %42 ], [ 0, %44 ]
  %47 = call i32 @rump_sys_mount(i32 %38, i32 %39, i32 %46, %struct.ufs_args* %13, i32 4)
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @FSTEST_MNTNAME, align 4
  %51 = call i32 (i8*, ...) @atf_tc_fail_errno(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %49, %45
  %53 = call i32 (...) @atf_tc_expect_pass()
  %54 = call i32 (...) @FSTEST_ENTER()
  %55 = call i32 @rump_sys_chown(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 0)
  %56 = call i32 @RL(i32 %55)
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %88, %52
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %91

61:                                               ; preds = %57
  %62 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @sprintf(i8* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %63)
  %65 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %66 = load i32, i32* @O_CREAT, align 4
  %67 = load i32, i32* @O_RDWR, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @rump_sys_open(i8* %65, i32 %68, i32 493)
  store i32 %69, i32* %12, align 4
  %70 = call i32 @RL(i32 %69)
  %71 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @sprintf(i8* %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %12, align 4
  %75 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %76 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %77 = call i32 @strlen(i8* %76)
  %78 = call i32 @rump_sys_write(i32 %74, i8* %75, i32 %77)
  %79 = call i32 @RL(i32 %78)
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 80000
  %84 = call i32 @rump_sys_fchown(i32 %80, i32 %81, i32 %83)
  %85 = call i32 @RL(i32 %84)
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @rump_sys_close(i32 %86)
  br label %88

88:                                               ; preds = %61
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %57

91:                                               ; preds = %57
  %92 = call i32 (...) @FSTEST_EXIT()
  %93 = load i32, i32* @FSTEST_MNTNAME, align 4
  %94 = call i64 @rump_sys_unmount(i32 %93, i32 0)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load i32, i32* @FSTEST_MNTNAME, align 4
  %98 = call i32 @rump_pub_vfs_mount_print(i32 %97, i32 1)
  %99 = call i32 (i8*, ...) @atf_tc_fail_errno(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  br label %100

100:                                              ; preds = %96, %91
  %101 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %102 = load i8*, i8** @FSTEST_IMGNAME, align 8
  %103 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %101, i32 1024, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* %102)
  %104 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %105 = call i32 @system(i8* %104)
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @atf_tc_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %108, %100
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @system(i8*) #1

declare dso_local i32 @atf_tc_fail_errno(i8*, ...) #1

declare dso_local i32 @rump_init(...) #1

declare dso_local i32 @rump_sys_mkdir(i32, i32) #1

declare dso_local i32 @rump_pub_etfs_register(i8*, i8*, i32) #1

declare dso_local i32 @__UNCONST(i8*) #1

declare dso_local i32 @rump_sys_mount(i32, i32, i32, %struct.ufs_args*, i32) #1

declare dso_local i32 @atf_tc_expect_pass(...) #1

declare dso_local i32 @FSTEST_ENTER(...) #1

declare dso_local i32 @RL(i32) #1

declare dso_local i32 @rump_sys_chown(i8*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @rump_sys_open(i8*, i32, i32) #1

declare dso_local i32 @rump_sys_write(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @rump_sys_fchown(i32, i32, i32) #1

declare dso_local i32 @rump_sys_close(i32) #1

declare dso_local i32 @FSTEST_EXIT(...) #1

declare dso_local i64 @rump_sys_unmount(i32, i32) #1

declare dso_local i32 @rump_pub_vfs_mount_print(i32, i32) #1

declare dso_local i32 @atf_tc_fail(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
