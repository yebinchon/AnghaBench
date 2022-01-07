; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/ffs/extr_t_quota2_remount.c_do_quota.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/ffs/extr_t_quota2_remount.c_do_quota.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_args = type { i32 }
%struct.statvfs = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"newfs -q user -q group -F -s 4000 -n %d %s %s\00", align 1
@FSTEST_IMGNAME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"cannot create file system\00", align 1
@FSTEST_MNTNAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"mount point create\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"/diskdev\00", align 1
@RUMP_ETFS_BLK = common dso_local global i32 0, align 4
@MOUNT_FFS = common dso_local global i32 0, align 4
@MNT_RDONLY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"mount ffs ro %s\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"statbfs %s (1)\00", align 1
@ST_QUOTA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"R/O filesystem has quota\00", align 1
@MNT_UPDATE = common dso_local global i32 0, align 4
@MNT_LOG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"mount ffs rw %s\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"statbfs %s (2)\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"R/W filesystem has no quota\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"mount ffs rw(2) %s\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"statbfs %s (3)\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"file%d\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"test file no %d\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"unmount failed\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"fsck_ffs -fn -F %s\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"fsck returned %d\00", align 1
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
  %14 = alloca %struct.statvfs, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 3
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** @FSTEST_IMGNAME, align 8
  %20 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %15, i32 1024, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %17, i8* %18, i8* %19)
  %21 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %22 = call i32 @system(i8* %21)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = call i32 (i8*, ...) @atf_tc_fail_errno(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %4
  %27 = call i32 (...) @rump_init()
  %28 = load i32, i32* @FSTEST_MNTNAME, align 4
  %29 = call i32 @rump_sys_mkdir(i32 %28, i32 511)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call i32 (i8*, ...) @atf_tc_fail_errno(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %26
  %34 = load i8*, i8** @FSTEST_IMGNAME, align 8
  %35 = load i32, i32* @RUMP_ETFS_BLK, align 4
  %36 = call i32 @rump_pub_etfs_register(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %34, i32 %35)
  %37 = call i32 @__UNCONST(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %38 = getelementptr inbounds %struct.ufs_args, %struct.ufs_args* %13, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @MOUNT_FFS, align 4
  %40 = load i32, i32* @FSTEST_MNTNAME, align 4
  %41 = load i32, i32* @MNT_RDONLY, align 4
  %42 = call i32 @rump_sys_mount(i32 %39, i32 %40, i32 %41, %struct.ufs_args* %13, i32 4)
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %47

44:                                               ; preds = %33
  %45 = load i32, i32* @FSTEST_MNTNAME, align 4
  %46 = call i32 (i8*, ...) @atf_tc_fail_errno(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %44, %33
  %48 = load i32, i32* @FSTEST_MNTNAME, align 4
  %49 = call i64 @rump_sys_statvfs1(i32 %48, %struct.statvfs* %14, i32 0)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* @FSTEST_MNTNAME, align 4
  %53 = call i32 (i8*, ...) @atf_tc_fail_errno(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %51, %47
  %55 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %14, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ST_QUOTA, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = call i32 (i8*, ...) @atf_tc_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %54
  %63 = load i32, i32* @MOUNT_FFS, align 4
  %64 = load i32, i32* @FSTEST_MNTNAME, align 4
  %65 = load i32, i32* @MNT_UPDATE, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* @MNT_LOG, align 4
  br label %71

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70, %68
  %72 = phi i32 [ %69, %68 ], [ 0, %70 ]
  %73 = or i32 %65, %72
  %74 = call i32 @rump_sys_mount(i32 %63, i32 %64, i32 %73, %struct.ufs_args* %13, i32 4)
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* @FSTEST_MNTNAME, align 4
  %78 = call i32 (i8*, ...) @atf_tc_fail_errno(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %76, %71
  %80 = load i32, i32* @FSTEST_MNTNAME, align 4
  %81 = call i64 @rump_sys_statvfs1(i32 %80, %struct.statvfs* %14, i32 0)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i32, i32* @FSTEST_MNTNAME, align 4
  %85 = call i32 (i8*, ...) @atf_tc_fail_errno(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %83, %79
  %87 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %14, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @ST_QUOTA, align 4
  %90 = and i32 %88, %89
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = call i32 (i8*, ...) @atf_tc_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %86
  %95 = load i32, i32* @MOUNT_FFS, align 4
  %96 = load i32, i32* @FSTEST_MNTNAME, align 4
  %97 = load i32, i32* @MNT_UPDATE, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = load i32, i32* @MNT_LOG, align 4
  br label %103

102:                                              ; preds = %94
  br label %103

103:                                              ; preds = %102, %100
  %104 = phi i32 [ %101, %100 ], [ 0, %102 ]
  %105 = or i32 %97, %104
  %106 = call i32 @rump_sys_mount(i32 %95, i32 %96, i32 %105, %struct.ufs_args* %13, i32 4)
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i32, i32* @FSTEST_MNTNAME, align 4
  %110 = call i32 (i8*, ...) @atf_tc_fail_errno(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %108, %103
  %112 = load i32, i32* @FSTEST_MNTNAME, align 4
  %113 = call i64 @rump_sys_statvfs1(i32 %112, %struct.statvfs* %14, i32 0)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load i32, i32* @FSTEST_MNTNAME, align 4
  %117 = call i32 (i8*, ...) @atf_tc_fail_errno(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %115, %111
  %119 = getelementptr inbounds %struct.statvfs, %struct.statvfs* %14, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @ST_QUOTA, align 4
  %122 = and i32 %120, %121
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = call i32 (i8*, ...) @atf_tc_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124, %118
  %127 = call i32 (...) @FSTEST_ENTER()
  %128 = call i32 @rump_sys_chown(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i32 0, i32 0)
  %129 = call i32 @RL(i32 %128)
  store i32 0, i32* %9, align 4
  br label %130

130:                                              ; preds = %161, %126
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %164

134:                                              ; preds = %130
  %135 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @sprintf(i8* %135, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %136)
  %138 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %139 = load i32, i32* @O_CREAT, align 4
  %140 = load i32, i32* @O_RDWR, align 4
  %141 = or i32 %139, %140
  %142 = call i32 @rump_sys_open(i8* %138, i32 %141, i32 493)
  store i32 %142, i32* %12, align 4
  %143 = call i32 @RL(i32 %142)
  %144 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %145 = load i32, i32* %9, align 4
  %146 = call i32 @sprintf(i8* %144, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* %12, align 4
  %148 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %149 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %150 = call i32 @strlen(i8* %149)
  %151 = call i32 @rump_sys_write(i32 %147, i8* %148, i32 %150)
  %152 = call i32 @RL(i32 %151)
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* %9, align 4
  %155 = load i32, i32* %9, align 4
  %156 = add nsw i32 %155, 80000
  %157 = call i32 @rump_sys_fchown(i32 %153, i32 %154, i32 %156)
  %158 = call i32 @RL(i32 %157)
  %159 = load i32, i32* %12, align 4
  %160 = call i32 @rump_sys_close(i32 %159)
  br label %161

161:                                              ; preds = %134
  %162 = load i32, i32* %9, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %9, align 4
  br label %130

164:                                              ; preds = %130
  %165 = call i32 (...) @FSTEST_EXIT()
  %166 = load i32, i32* @FSTEST_MNTNAME, align 4
  %167 = call i64 @rump_sys_unmount(i32 %166, i32 0)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %164
  %170 = load i32, i32* @FSTEST_MNTNAME, align 4
  %171 = call i32 @rump_pub_vfs_mount_print(i32 %170, i32 1)
  %172 = call i32 (i8*, ...) @atf_tc_fail_errno(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  br label %173

173:                                              ; preds = %169, %164
  %174 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %175 = load i8*, i8** @FSTEST_IMGNAME, align 8
  %176 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %174, i32 1024, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i8* %175)
  %177 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %178 = call i32 @system(i8* %177)
  store i32 %178, i32* %11, align 4
  %179 = load i32, i32* %11, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %173
  %182 = load i32, i32* %11, align 4
  %183 = call i32 (i8*, ...) @atf_tc_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i32 %182)
  br label %184

184:                                              ; preds = %181, %173
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

declare dso_local i64 @rump_sys_statvfs1(i32, %struct.statvfs*, i32) #1

declare dso_local i32 @atf_tc_fail(i8*, ...) #1

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

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
