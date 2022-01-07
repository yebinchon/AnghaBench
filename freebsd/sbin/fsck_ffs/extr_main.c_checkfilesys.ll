; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_main.c_checkfilesys.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_main.c_checkfilesys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, double, i32, i64, i8*, i32, i8*, %struct.TYPE_10__, i32, i32, i8* }
%struct.TYPE_10__ = type { i32, i32, i64, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.dups = type { i64, %struct.dups* }
%struct.TYPE_13__ = type { i32* }
%struct.statfs = type { i8*, i32, i8* }
%struct.stat = type { i32 }
%struct.group = type { i32 }
%struct.iovec = type { i32 }

@cdevname = common dso_local global i8* null, align 8
@debug = common dso_local global i64 0, align 8
@ckclean = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"starting\0A\00", align 1
@bkgrdcheck = common dso_local global i64 0, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@fsreadfd = common dso_local global i32 0, align 4
@sblock = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@FS_NEEDSFSCK = common dso_local global i32 0, align 4
@FS_SUJ = common dso_local global i32 0, align 4
@FS_DOSOFTDEP = common dso_local global i32 0, align 4
@MIBSIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"vfs.ffs.adjrefcnt\00", align 1
@adjrefcnt = common dso_local global i32 0, align 4
@FS_UNCLEAN = common dso_local global i32 0, align 4
@skipclean = common dso_local global i64 0, align 8
@FS_GJOURNAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"FILE SYSTEM CLEAN; SKIPPING CHECKS\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"UNEXPECTED INCONSISTENCY, CANNOT RUN FAST FSCK\0A\00", align 1
@bkgrdflag = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [39 x i8] c"NOT MOUNTED, CANNOT RUN IN BACKGROUND\0A\00", align 1
@MNT_SOFTDEP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"NOT USING SOFT UPDATES, CANNOT RUN IN BACKGROUND\0A\00", align 1
@MNT_RDONLY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"MOUNTED READ-ONLY, CANNOT RUN IN BACKGROUND\0A\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"UNEXPECTED INCONSISTENCY, CANNOT RUN IN BACKGROUND\0A\00", align 1
@snapname = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"%s/.snap\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [65 x i8] c"CANNOT FIND SNAPSHOT DIRECTORY %s: %s, CANNOT RUN IN BACKGROUND\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"operator\00", align 1
@.str.11 = private unnamed_addr constant [67 x i8] c"CANNOT CREATE SNAPSHOT DIRECTORY %s: %s, CANNOT RUN IN BACKGROUND\0A\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"%s IS NOT A DIRECTORY, CANNOT RUN IN BACKGROUND\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"%s/.snap/fsck_snapshot\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"fstype\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"ffs\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"fspath\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"errmsg\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"update\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"snapshot\00", align 1
@EEXIST = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [34 x i8] c"CANNOT CREATE SNAPSHOT %s: %s %s\0A\00", align 1
@preen = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [25 x i8] c"CAN'T CHECK FILE SYSTEM.\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"clean, %ld free \00", align 1
@.str.24 = private unnamed_addr constant [47 x i8] c"(%jd frags, %jd blocks, %.1f%% fragmentation)\0A\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"USE JOURNAL\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"\0A***** FILE SYSTEM MARKED CLEAN *****\0A\00", align 1
@.str.27 = private unnamed_addr constant [52 x i8] c"** Skipping journal, falling through to full fsck\0A\0A\00", align 1
@fsmodified = common dso_local global i32 0, align 4
@fswritefd = common dso_local global i32 0, align 4
@sblk = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@FS_METACKHASH = common dso_local global i32 0, align 4
@ckhashadd = common dso_local global i32 0, align 4
@yflag = common dso_local global i64 0, align 8
@FS_UFS1_MAGIC = common dso_local global i64 0, align 8
@P_OSREL_CK_CYLGRP = common dso_local global i64 0, align 8
@CK_CYLGRP = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [41 x i8] c"ADD CYLINDER GROUP CHECK-HASH PROTECTION\00", align 1
@CK_SUPERBLOCK = common dso_local global i32 0, align 4
@P_OSREL_CK_SUPERBLOCK = common dso_local global i64 0, align 8
@.str.29 = private unnamed_addr constant [37 x i8] c"ADD SUPERBLOCK CHECK-HASH PROTECTION\00", align 1
@CK_INODE = common dso_local global i32 0, align 4
@P_OSREL_CK_INODE = common dso_local global i64 0, align 8
@.str.30 = private unnamed_addr constant [32 x i8] c"ADD INODE CHECK-HASH PROTECTION\00", align 1
@resolved = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [23 x i8] c"** Last Mounted on %s\0A\00", align 1
@MNT_ROOTFS = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [21 x i8] c"** Root file system\0A\00", align 1
@.str.33 = private unnamed_addr constant [37 x i8] c"** Phase 1 - Check Blocks and Sizes\0A\00", align 1
@CLOCK_REALTIME_PRECISE = common dso_local global i32 0, align 4
@startprog = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [6 x i8] c"Pass1\00", align 1
@duplist = common dso_local global %struct.dups* null, align 8
@usedsoftdep = common dso_local global i64 0, align 8
@.str.35 = private unnamed_addr constant [33 x i8] c"INTERNAL ERROR: dups with %s%s%s\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.37 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.38 = private unnamed_addr constant [6 x i8] c" and \00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"softupdates\00", align 1
@.str.40 = private unnamed_addr constant [36 x i8] c"** Phase 1b - Rescan For More DUPS\0A\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"Pass1b\00", align 1
@.str.42 = private unnamed_addr constant [30 x i8] c"** Phase 2 - Check Pathnames\0A\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"Pass2\00", align 1
@.str.44 = private unnamed_addr constant [33 x i8] c"** Phase 3 - Check Connectivity\0A\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"Pass3\00", align 1
@.str.46 = private unnamed_addr constant [37 x i8] c"** Phase 4 - Check Reference Counts\0A\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"Pass4\00", align 1
@.str.48 = private unnamed_addr constant [31 x i8] c"** Phase 5 - Check Cyl groups\0A\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"Pass5\00", align 1
@maxino = common dso_local global i64 0, align 8
@UFS_ROOTINO = common dso_local global i64 0, align 8
@n_files = common dso_local global i64 0, align 8
@n_blks = common dso_local global i64 0, align 8
@maxfsblock = common dso_local global double 0.000000e+00, align 8
@countdirs = common dso_local global i64 0, align 8
@.str.50 = private unnamed_addr constant [54 x i8] c"Reclaimed: %ld directories, %jd files, %jd fragments\0A\00", align 1
@.str.51 = private unnamed_addr constant [31 x i8] c"%ld files, %jd used, %ju free \00", align 1
@.str.52 = private unnamed_addr constant [47 x i8] c"(%ju frags, %ju blocks, %.1f%% fragmentation)\0A\00", align 1
@.str.53 = private unnamed_addr constant [20 x i8] c"%jd inodes missing\0A\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"%jd blocks missing\0A\00", align 1
@.str.55 = private unnamed_addr constant [39 x i8] c"The following duplicate blocks remain:\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c" %jd,\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@muldup = common dso_local global %struct.dups* null, align 8
@cvtlevel = common dso_local global i64 0, align 8
@SBLOCKSIZE = common dso_local global i32 0, align 4
@rerun = common dso_local global i64 0, align 8
@inostathead = common dso_local global %struct.TYPE_13__* null, align 8
@.str.58 = private unnamed_addr constant [39 x i8] c"\0A***** FILE SYSTEM WAS MODIFIED *****\0A\00", align 1
@wantrestart = common dso_local global i64 0, align 8
@restarts = common dso_local global i32 0, align 4
@.str.59 = private unnamed_addr constant [8 x i8] c"RESTART\00", align 1
@ERESTART = common dso_local global i32 0, align 4
@.str.60 = private unnamed_addr constant [32 x i8] c"\0A***** PLEASE RERUN FSCK *****\0A\00", align 1
@.str.61 = private unnamed_addr constant [25 x i8] c"\0A***** REBOOT NOW *****\0A\00", align 1
@ERERUN = common dso_local global i32 0, align 4
@CK_DIR = common dso_local global i32 0, align 4
@CK_INDIR = common dso_local global i32 0, align 4
@P_OSREL_CK_DIR = common dso_local global i64 0, align 8
@P_OSREL_CK_INDIR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @checkfilesys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkfilesys(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.dups*, align 8
  %7 = alloca %struct.statfs*, align 8
  %8 = alloca %struct.stat, align 4
  %9 = alloca %struct.group*, align 8
  %10 = alloca %struct.iovec*, align 8
  %11 = alloca [255 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.iovec* null, %struct.iovec** %10, align 8
  store i32 0, i32* %13, align 4
  %18 = getelementptr inbounds [255 x i8], [255 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %18, align 16
  %19 = call i32 (...) @fsutilinit()
  %20 = call i32 (...) @fsckinit()
  %21 = load i8*, i8** %3, align 8
  store i8* %21, i8** @cdevname, align 8
  %22 = load i64, i64* @debug, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load i64, i64* @ckclean, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 (i8*, ...) @pwarn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %24, %1
  %30 = load i8*, i8** %3, align 8
  %31 = call %struct.statfs* @getmntpt(i8* %30)
  store %struct.statfs* %31, %struct.statfs** %7, align 8
  %32 = load %struct.statfs*, %struct.statfs** %7, align 8
  %33 = icmp ne %struct.statfs* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.statfs*, %struct.statfs** %7, align 8
  %36 = getelementptr inbounds %struct.statfs, %struct.statfs* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %3, align 8
  br label %41

38:                                               ; preds = %29
  %39 = load i8*, i8** %3, align 8
  %40 = call i8* @blockcheck(i8* %39)
  store i8* %40, i8** %3, align 8
  br label %41

41:                                               ; preds = %38, %34
  %42 = call i32 (...) @sblock_init()
  %43 = load i64, i64* @bkgrdcheck, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %98

45:                                               ; preds = %41
  %46 = load i8*, i8** %3, align 8
  %47 = load i32, i32* @O_RDONLY, align 4
  %48 = call i32 @open(i8* %46, i32 %47)
  store i32 %48, i32* @fsreadfd, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = call i64 @readsb(i32 0)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50, %45
  %54 = call i32 @exit(i32 3) #3
  unreachable

55:                                               ; preds = %50
  %56 = load i32, i32* @fsreadfd, align 4
  %57 = call i32 @close(i32 %56)
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 0), align 8
  %59 = load i32, i32* @FS_NEEDSFSCK, align 4
  %60 = load i32, i32* @FS_SUJ, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = call i32 @exit(i32 4) #3
  unreachable

66:                                               ; preds = %55
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 0), align 8
  %68 = load i32, i32* @FS_DOSOFTDEP, align 4
  %69 = and i32 %67, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = call i32 @exit(i32 5) #3
  unreachable

73:                                               ; preds = %66
  %74 = load i64, i64* @MIBSIZE, align 8
  store i64 %74, i64* %17, align 8
  %75 = load i32, i32* @adjrefcnt, align 4
  %76 = call i64 @sysctlnametomib(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %75, i64* %17)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = call i32 @exit(i32 6) #3
  unreachable

80:                                               ; preds = %73
  %81 = load %struct.statfs*, %struct.statfs** %7, align 8
  %82 = icmp eq %struct.statfs* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 1), align 4
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %94, label %86

86:                                               ; preds = %83, %80
  %87 = load %struct.statfs*, %struct.statfs** %7, align 8
  %88 = icmp ne %struct.statfs* %87, null
  br i1 %88, label %89, label %96

89:                                               ; preds = %86
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 0), align 8
  %91 = load i32, i32* @FS_UNCLEAN, align 4
  %92 = and i32 %90, %91
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89, %83
  %95 = call i32 @exit(i32 7) #3
  unreachable

96:                                               ; preds = %89, %86
  %97 = call i32 @exit(i32 0) #3
  unreachable

98:                                               ; preds = %41
  %99 = load i64, i64* @ckclean, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %148

101:                                              ; preds = %98
  %102 = load i64, i64* @skipclean, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %148

104:                                              ; preds = %101
  %105 = load i8*, i8** %3, align 8
  %106 = load i32, i32* @O_RDONLY, align 4
  %107 = call i32 @open(i8* %105, i32 %106)
  store i32 %107, i32* @fsreadfd, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %104
  %110 = call i64 @readsb(i32 0)
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %109, %104
  %113 = call i32 @exit(i32 3) #3
  unreachable

114:                                              ; preds = %109
  %115 = load i32, i32* @fsreadfd, align 4
  %116 = call i32 @close(i32 %115)
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 0), align 8
  %118 = load i32, i32* @FS_GJOURNAL, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %147

121:                                              ; preds = %114
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 1), align 4
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = call i32 (i8*, ...) @pwarn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %126 = call i32 @exit(i32 0) #3
  unreachable

127:                                              ; preds = %121
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 0), align 8
  %129 = load i32, i32* @FS_UNCLEAN, align 4
  %130 = load i32, i32* @FS_NEEDSFSCK, align 4
  %131 = or i32 %129, %130
  %132 = and i32 %128, %131
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %127
  %135 = load i8*, i8** %3, align 8
  %136 = call i32 @gjournal_check(i8* %135)
  %137 = load %struct.statfs*, %struct.statfs** %7, align 8
  %138 = call i64 @chkdoreload(%struct.statfs* %137)
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %134
  %141 = call i32 @exit(i32 0) #3
  unreachable

142:                                              ; preds = %134
  %143 = call i32 @exit(i32 4) #3
  unreachable

144:                                              ; preds = %127
  %145 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  br label %146

146:                                              ; preds = %144
  br label %147

147:                                              ; preds = %146, %114
  br label %148

148:                                              ; preds = %147, %101, %98
  %149 = load i64, i64* @bkgrdflag, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %317

151:                                              ; preds = %148
  %152 = load %struct.statfs*, %struct.statfs** %7, align 8
  %153 = icmp eq %struct.statfs* %152, null
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  store i64 0, i64* @bkgrdflag, align 8
  %155 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %211

156:                                              ; preds = %151
  %157 = load %struct.statfs*, %struct.statfs** %7, align 8
  %158 = getelementptr inbounds %struct.statfs, %struct.statfs* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @MNT_SOFTDEP, align 4
  %161 = and i32 %159, %160
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %156
  store i64 0, i64* @bkgrdflag, align 8
  %164 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  br label %210

165:                                              ; preds = %156
  %166 = load %struct.statfs*, %struct.statfs** %7, align 8
  %167 = getelementptr inbounds %struct.statfs, %struct.statfs* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @MNT_RDONLY, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %165
  store i64 0, i64* @bkgrdflag, align 8
  %173 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  br label %209

174:                                              ; preds = %165
  %175 = load i8*, i8** %3, align 8
  %176 = load i32, i32* @O_RDONLY, align 4
  %177 = call i32 @open(i8* %175, i32 %176)
  store i32 %177, i32* @fsreadfd, align 4
  %178 = icmp sge i32 %177, 0
  br i1 %178, label %179, label %208

179:                                              ; preds = %174
  %180 = call i64 @readsb(i32 0)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %205

182:                                              ; preds = %179
  %183 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 0), align 8
  %184 = load i32, i32* @FS_NEEDSFSCK, align 4
  %185 = load i32, i32* @FS_SUJ, align 4
  %186 = or i32 %184, %185
  %187 = and i32 %183, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %182
  store i64 0, i64* @bkgrdflag, align 8
  %190 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0))
  br label %191

191:                                              ; preds = %189, %182
  %192 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 0), align 8
  %193 = load i32, i32* @FS_UNCLEAN, align 4
  %194 = and i32 %192, %193
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %204

196:                                              ; preds = %191
  %197 = load i64, i64* @skipclean, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %196
  %200 = load i64, i64* @ckclean, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %199
  %203 = call i32 (i8*, ...) @pwarn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %327

204:                                              ; preds = %199, %196, %191
  br label %205

205:                                              ; preds = %204, %179
  %206 = load i32, i32* @fsreadfd, align 4
  %207 = call i32 @close(i32 %206)
  br label %208

208:                                              ; preds = %205, %174
  br label %209

209:                                              ; preds = %208, %172
  br label %210

210:                                              ; preds = %209, %163
  br label %211

211:                                              ; preds = %210, %154
  %212 = load i64, i64* @bkgrdflag, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %267

214:                                              ; preds = %211
  %215 = load i8*, i8** @snapname, align 8
  %216 = load %struct.statfs*, %struct.statfs** %7, align 8
  %217 = getelementptr inbounds %struct.statfs, %struct.statfs* %216, i32 0, i32 2
  %218 = load i8*, i8** %217, align 8
  %219 = call i32 @snprintf(i8* %215, i32 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %218)
  %220 = load i8*, i8** @snapname, align 8
  %221 = call i64 @stat(i8* %220, %struct.stat* %8)
  %222 = icmp slt i64 %221, 0
  br i1 %222, label %223, label %257

223:                                              ; preds = %214
  %224 = load i64, i64* @errno, align 8
  %225 = load i64, i64* @ENOENT, align 8
  %226 = icmp ne i64 %224, %225
  br i1 %226, label %227, label %232

227:                                              ; preds = %223
  store i64 0, i64* @bkgrdflag, align 8
  %228 = load i8*, i8** @snapname, align 8
  %229 = load i64, i64* @errno, align 8
  %230 = call i8* @strerror(i64 %229)
  %231 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.9, i64 0, i64 0), i8* %228, i8* %230)
  br label %256

232:                                              ; preds = %223
  %233 = call %struct.group* @getgrnam(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  store %struct.group* %233, %struct.group** %9, align 8
  %234 = icmp eq %struct.group* %233, null
  br i1 %234, label %250, label %235

235:                                              ; preds = %232
  %236 = load i8*, i8** @snapname, align 8
  %237 = call i64 @mkdir(i8* %236, i32 504)
  %238 = icmp slt i64 %237, 0
  br i1 %238, label %250, label %239

239:                                              ; preds = %235
  %240 = load i8*, i8** @snapname, align 8
  %241 = load %struct.group*, %struct.group** %9, align 8
  %242 = getelementptr inbounds %struct.group, %struct.group* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call i64 @chown(i8* %240, i32 -1, i32 %243)
  %245 = icmp slt i64 %244, 0
  br i1 %245, label %250, label %246

246:                                              ; preds = %239
  %247 = load i8*, i8** @snapname, align 8
  %248 = call i64 @chmod(i8* %247, i32 504)
  %249 = icmp slt i64 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %246, %239, %235, %232
  store i64 0, i64* @bkgrdflag, align 8
  %251 = load i8*, i8** @snapname, align 8
  %252 = load i64, i64* @errno, align 8
  %253 = call i8* @strerror(i64 %252)
  %254 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.11, i64 0, i64 0), i8* %251, i8* %253)
  br label %255

255:                                              ; preds = %250, %246
  br label %256

256:                                              ; preds = %255, %227
  br label %266

257:                                              ; preds = %214
  %258 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @S_ISDIR(i32 %259)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %265, label %262

262:                                              ; preds = %257
  store i64 0, i64* @bkgrdflag, align 8
  %263 = load i8*, i8** @snapname, align 8
  %264 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0), i8* %263)
  br label %265

265:                                              ; preds = %262, %257
  br label %266

266:                                              ; preds = %265, %256
  br label %267

267:                                              ; preds = %266, %211
  %268 = load i64, i64* @bkgrdflag, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %316

270:                                              ; preds = %267
  %271 = load i8*, i8** @snapname, align 8
  %272 = load %struct.statfs*, %struct.statfs** %7, align 8
  %273 = getelementptr inbounds %struct.statfs, %struct.statfs* %272, i32 0, i32 2
  %274 = load i8*, i8** %273, align 8
  %275 = call i32 @snprintf(i8* %271, i32 8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i8* %274)
  %276 = call i32 @build_iovec(%struct.iovec** %10, i32* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32 4)
  %277 = load i8*, i8** @snapname, align 8
  %278 = call i32 @build_iovec(%struct.iovec** %10, i32* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* %277, i32 -1)
  %279 = load %struct.statfs*, %struct.statfs** %7, align 8
  %280 = getelementptr inbounds %struct.statfs, %struct.statfs* %279, i32 0, i32 2
  %281 = load i8*, i8** %280, align 8
  %282 = call i32 @build_iovec(%struct.iovec** %10, i32* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i8* %281, i32 -1)
  %283 = getelementptr inbounds [255 x i8], [255 x i8]* %11, i64 0, i64 0
  %284 = call i32 @build_iovec(%struct.iovec** %10, i32* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8* %283, i32 255)
  %285 = call i32 @build_iovec(%struct.iovec** %10, i32* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i8* null, i32 0)
  %286 = call i32 @build_iovec(%struct.iovec** %10, i32* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i8* null, i32 0)
  br label %287

287:                                              ; preds = %303, %270
  %288 = load %struct.iovec*, %struct.iovec** %10, align 8
  %289 = load i32, i32* %13, align 4
  %290 = load %struct.statfs*, %struct.statfs** %7, align 8
  %291 = getelementptr inbounds %struct.statfs, %struct.statfs* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 8
  %293 = call i64 @nmount(%struct.iovec* %288, i32 %289, i32 %292)
  %294 = icmp slt i64 %293, 0
  br i1 %294, label %295, label %310

295:                                              ; preds = %287
  %296 = load i64, i64* @errno, align 8
  %297 = load i64, i64* @EEXIST, align 8
  %298 = icmp eq i64 %296, %297
  br i1 %298, label %299, label %304

299:                                              ; preds = %295
  %300 = load i8*, i8** @snapname, align 8
  %301 = call i64 @unlink(i8* %300)
  %302 = icmp eq i64 %301, 0
  br i1 %302, label %303, label %304

303:                                              ; preds = %299
  br label %287

304:                                              ; preds = %299, %295
  store i64 0, i64* @bkgrdflag, align 8
  %305 = load i8*, i8** @snapname, align 8
  %306 = load i64, i64* @errno, align 8
  %307 = call i8* @strerror(i64 %306)
  %308 = getelementptr inbounds [255 x i8], [255 x i8]* %11, i64 0, i64 0
  %309 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i64 0, i64 0), i8* %305, i8* %307, i8* %308)
  br label %310

310:                                              ; preds = %304, %287
  %311 = load i64, i64* @bkgrdflag, align 8
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %315

313:                                              ; preds = %310
  %314 = load i8*, i8** @snapname, align 8
  store i8* %314, i8** %3, align 8
  br label %315

315:                                              ; preds = %313, %310
  br label %316

316:                                              ; preds = %315, %267
  br label %317

317:                                              ; preds = %316, %148
  %318 = load i8*, i8** %3, align 8
  %319 = call i32 @setup(i8* %318)
  switch i32 %319, label %345 [
    i32 0, label %320
    i32 -1, label %326
  ]

320:                                              ; preds = %317
  %321 = load i64, i64* @preen, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %325

323:                                              ; preds = %320
  %324 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i64 0, i64 0))
  br label %325

325:                                              ; preds = %323, %320
  store i32 0, i32* %2, align 4
  br label %806

326:                                              ; preds = %317
  br label %327

327:                                              ; preds = %326, %202
  %328 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 9, i32 0), align 8
  %329 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 2), align 8
  %330 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 9, i32 1), align 4
  %331 = mul nsw i32 %329, %330
  %332 = add nsw i32 %328, %331
  %333 = sext i32 %332 to i64
  %334 = call i32 (i8*, ...) @pwarn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i64 %333)
  %335 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 9, i32 0), align 8
  %336 = sext i32 %335 to i64
  %337 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 9, i32 1), align 4
  %338 = sext i32 %337 to i64
  %339 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 9, i32 0), align 8
  %340 = sitofp i32 %339 to double
  %341 = fmul double %340, 1.000000e+02
  %342 = load double, double* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 3), align 8
  %343 = fdiv double %341, %342
  %344 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.24, i64 0, i64 0), i64 %336, i64 %338, double %343)
  store i32 0, i32* %2, align 4
  br label %806

345:                                              ; preds = %317
  %346 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 0), align 8
  %347 = load i32, i32* @FS_SUJ, align 4
  %348 = and i32 %346, %347
  %349 = load i32, i32* @FS_SUJ, align 4
  %350 = icmp eq i32 %348, %349
  br i1 %350, label %351, label %389

351:                                              ; preds = %345
  %352 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 0), align 8
  %353 = load i32, i32* @FS_NEEDSFSCK, align 4
  %354 = and i32 %352, %353
  %355 = load i32, i32* @FS_NEEDSFSCK, align 4
  %356 = icmp ne i32 %354, %355
  br i1 %356, label %357, label %382

357:                                              ; preds = %351
  %358 = load i64, i64* @skipclean, align 8
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %382

360:                                              ; preds = %357
  %361 = load i64, i64* @preen, align 8
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %366, label %363

363:                                              ; preds = %360
  %364 = call i64 @reply(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0))
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %380

366:                                              ; preds = %363, %360
  %367 = load i8*, i8** %3, align 8
  %368 = call i64 @suj_check(i8* %367)
  %369 = icmp eq i64 %368, 0
  br i1 %369, label %370, label %379

370:                                              ; preds = %366
  %371 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i64 0, i64 0))
  %372 = load %struct.statfs*, %struct.statfs** %7, align 8
  %373 = call i64 @chkdoreload(%struct.statfs* %372)
  %374 = icmp eq i64 %373, 0
  br i1 %374, label %375, label %377

375:                                              ; preds = %370
  %376 = call i32 @exit(i32 0) #3
  unreachable

377:                                              ; preds = %370
  %378 = call i32 @exit(i32 4) #3
  unreachable

379:                                              ; preds = %366
  br label %380

380:                                              ; preds = %379, %363
  %381 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.27, i64 0, i64 0))
  br label %382

382:                                              ; preds = %380, %357, %351
  %383 = call i8* @time(i32* null)
  store i8* %383, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 12), align 8
  %384 = call i32 (...) @sbdirty()
  %385 = load i32, i32* @fsmodified, align 4
  store i32 %385, i32* %12, align 4
  %386 = load i32, i32* @fswritefd, align 4
  %387 = call i32 @flush(i32 %386, %struct.TYPE_12__* @sblk)
  %388 = load i32, i32* %12, align 4
  store i32 %388, i32* @fsmodified, align 4
  br label %389

389:                                              ; preds = %382, %345
  %390 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 0), align 8
  %391 = load i32, i32* @FS_METACKHASH, align 4
  %392 = and i32 %390, %391
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %394, label %395

394:                                              ; preds = %389
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 4), align 8
  br label %395

395:                                              ; preds = %394, %389
  store i32 0, i32* @ckhashadd, align 4
  %396 = load i64, i64* @preen, align 8
  %397 = icmp eq i64 %396, 0
  br i1 %397, label %398, label %474

398:                                              ; preds = %395
  %399 = load i64, i64* @yflag, align 8
  %400 = icmp eq i64 %399, 0
  br i1 %400, label %401, label %474

401:                                              ; preds = %398
  %402 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 5), align 8
  %403 = load i64, i64* @FS_UFS1_MAGIC, align 8
  %404 = icmp ne i64 %402, %403
  br i1 %404, label %405, label %474

405:                                              ; preds = %401
  %406 = load i32, i32* @fswritefd, align 4
  %407 = icmp ne i32 %406, -1
  br i1 %407, label %408, label %474

408:                                              ; preds = %405
  %409 = call i64 (...) @getosreldate()
  %410 = load i64, i64* @P_OSREL_CK_CYLGRP, align 8
  %411 = icmp sge i64 %409, %410
  br i1 %411, label %412, label %474

412:                                              ; preds = %408
  %413 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 4), align 8
  %414 = load i32, i32* @CK_CYLGRP, align 4
  %415 = and i32 %413, %414
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %417, label %427

417:                                              ; preds = %412
  %418 = call i64 @reply(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.28, i64 0, i64 0))
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %420, label %427

420:                                              ; preds = %417
  %421 = load i32, i32* @CK_CYLGRP, align 4
  %422 = load i32, i32* @ckhashadd, align 4
  %423 = or i32 %422, %421
  store i32 %423, i32* @ckhashadd, align 4
  %424 = load i32, i32* @CK_CYLGRP, align 4
  %425 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 4), align 8
  %426 = or i32 %425, %424
  store i32 %426, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 4), align 8
  br label %427

427:                                              ; preds = %420, %417, %412
  %428 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 4), align 8
  %429 = load i32, i32* @CK_SUPERBLOCK, align 4
  %430 = and i32 %428, %429
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %432, label %446

432:                                              ; preds = %427
  %433 = call i64 (...) @getosreldate()
  %434 = load i64, i64* @P_OSREL_CK_SUPERBLOCK, align 8
  %435 = icmp sge i64 %433, %434
  br i1 %435, label %436, label %446

436:                                              ; preds = %432
  %437 = call i64 @reply(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.29, i64 0, i64 0))
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %439, label %446

439:                                              ; preds = %436
  %440 = load i32, i32* @CK_SUPERBLOCK, align 4
  %441 = load i32, i32* @ckhashadd, align 4
  %442 = or i32 %441, %440
  store i32 %442, i32* @ckhashadd, align 4
  %443 = load i32, i32* @CK_SUPERBLOCK, align 4
  %444 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 4), align 8
  %445 = or i32 %444, %443
  store i32 %445, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 4), align 8
  br label %446

446:                                              ; preds = %439, %436, %432, %427
  %447 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 4), align 8
  %448 = load i32, i32* @CK_INODE, align 4
  %449 = and i32 %447, %448
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %451, label %465

451:                                              ; preds = %446
  %452 = call i64 (...) @getosreldate()
  %453 = load i64, i64* @P_OSREL_CK_INODE, align 8
  %454 = icmp sge i64 %452, %453
  br i1 %454, label %455, label %465

455:                                              ; preds = %451
  %456 = call i64 @reply(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.30, i64 0, i64 0))
  %457 = icmp ne i64 %456, 0
  br i1 %457, label %458, label %465

458:                                              ; preds = %455
  %459 = load i32, i32* @CK_INODE, align 4
  %460 = load i32, i32* @ckhashadd, align 4
  %461 = or i32 %460, %459
  store i32 %461, i32* @ckhashadd, align 4
  %462 = load i32, i32* @CK_INODE, align 4
  %463 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 4), align 8
  %464 = or i32 %463, %462
  store i32 %464, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 4), align 8
  br label %465

465:                                              ; preds = %458, %455, %451, %446
  %466 = load i32, i32* @ckhashadd, align 4
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %468, label %473

468:                                              ; preds = %465
  %469 = load i32, i32* @FS_METACKHASH, align 4
  %470 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 0), align 8
  %471 = or i32 %470, %469
  store i32 %471, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 0), align 8
  %472 = call i32 (...) @sbdirty()
  br label %473

473:                                              ; preds = %468, %465
  br label %474

474:                                              ; preds = %473, %408, %405, %401, %398, %395
  store i32 1, i32* @resolved, align 4
  %475 = load i64, i64* @preen, align 8
  %476 = icmp eq i64 %475, 0
  br i1 %476, label %477, label %493

477:                                              ; preds = %474
  %478 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 6), align 8
  %479 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i64 0, i64 0), i8* %478)
  %480 = load %struct.statfs*, %struct.statfs** %7, align 8
  %481 = icmp ne %struct.statfs* %480, null
  br i1 %481, label %482, label %491

482:                                              ; preds = %477
  %483 = load %struct.statfs*, %struct.statfs** %7, align 8
  %484 = getelementptr inbounds %struct.statfs, %struct.statfs* %483, i32 0, i32 1
  %485 = load i32, i32* %484, align 8
  %486 = load i32, i32* @MNT_ROOTFS, align 4
  %487 = and i32 %485, %486
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %489, label %491

489:                                              ; preds = %482
  %490 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.32, i64 0, i64 0))
  br label %491

491:                                              ; preds = %489, %482, %477
  %492 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.33, i64 0, i64 0))
  br label %493

493:                                              ; preds = %491, %474
  %494 = load i32, i32* @CLOCK_REALTIME_PRECISE, align 4
  %495 = call i32 @clock_gettime(i32 %494, i32* @startprog)
  %496 = call i32 (...) @pass1()
  %497 = call i32 @IOstats(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0))
  %498 = load %struct.dups*, %struct.dups** @duplist, align 8
  %499 = icmp ne %struct.dups* %498, null
  br i1 %499, label %500, label %529

500:                                              ; preds = %493
  %501 = load i64, i64* @preen, align 8
  %502 = icmp ne i64 %501, 0
  br i1 %502, label %506, label %503

503:                                              ; preds = %500
  %504 = load i64, i64* @usedsoftdep, align 8
  %505 = icmp ne i64 %504, 0
  br i1 %505, label %506, label %525

506:                                              ; preds = %503, %500
  %507 = load i64, i64* @preen, align 8
  %508 = icmp ne i64 %507, 0
  %509 = zext i1 %508 to i64
  %510 = select i1 %508, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.37, i64 0, i64 0)
  %511 = load i64, i64* @preen, align 8
  %512 = icmp ne i64 %511, 0
  br i1 %512, label %513, label %516

513:                                              ; preds = %506
  %514 = load i64, i64* @usedsoftdep, align 8
  %515 = icmp ne i64 %514, 0
  br label %516

516:                                              ; preds = %513, %506
  %517 = phi i1 [ false, %506 ], [ %515, %513 ]
  %518 = zext i1 %517 to i64
  %519 = select i1 %517, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.37, i64 0, i64 0)
  %520 = load i64, i64* @usedsoftdep, align 8
  %521 = icmp ne i64 %520, 0
  %522 = zext i1 %521 to i64
  %523 = select i1 %521, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.37, i64 0, i64 0)
  %524 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.35, i64 0, i64 0), i8* %510, i8* %519, i8* %523)
  br label %525

525:                                              ; preds = %516, %503
  %526 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.40, i64 0, i64 0))
  %527 = call i32 (...) @pass1b()
  %528 = call i32 @IOstats(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0))
  br label %529

529:                                              ; preds = %525, %493
  %530 = load i64, i64* @preen, align 8
  %531 = icmp eq i64 %530, 0
  br i1 %531, label %532, label %534

532:                                              ; preds = %529
  %533 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.42, i64 0, i64 0))
  br label %534

534:                                              ; preds = %532, %529
  %535 = call i32 (...) @pass2()
  %536 = call i32 @IOstats(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i64 0, i64 0))
  %537 = load i64, i64* @preen, align 8
  %538 = icmp eq i64 %537, 0
  br i1 %538, label %539, label %541

539:                                              ; preds = %534
  %540 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.44, i64 0, i64 0))
  br label %541

541:                                              ; preds = %539, %534
  %542 = call i32 (...) @pass3()
  %543 = call i32 @IOstats(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0))
  %544 = load i64, i64* @preen, align 8
  %545 = icmp eq i64 %544, 0
  br i1 %545, label %546, label %548

546:                                              ; preds = %541
  %547 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.46, i64 0, i64 0))
  br label %548

548:                                              ; preds = %546, %541
  %549 = call i32 (...) @pass4()
  %550 = call i32 @IOstats(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i64 0, i64 0))
  %551 = load i64, i64* @preen, align 8
  %552 = icmp eq i64 %551, 0
  br i1 %552, label %553, label %555

553:                                              ; preds = %548
  %554 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.48, i64 0, i64 0))
  br label %555

555:                                              ; preds = %553, %548
  %556 = call i32 (...) @pass5()
  %557 = call i32 @IOstats(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i64 0, i64 0))
  %558 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 9, i32 0), align 8
  %559 = sitofp i32 %558 to double
  store double %559, double* %4, align 8
  %560 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 9, i32 1), align 4
  %561 = sitofp i32 %560 to double
  store double %561, double* %5, align 8
  %562 = load i64, i64* @maxino, align 8
  %563 = load i64, i64* @UFS_ROOTINO, align 8
  %564 = sub nsw i64 %562, %563
  %565 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 9, i32 2), align 8
  %566 = sub nsw i64 %564, %565
  %567 = load i64, i64* @n_files, align 8
  %568 = sub nsw i64 %566, %567
  store i64 %568, i64* %16, align 8
  %569 = load i64, i64* @n_blks, align 8
  %570 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 7), align 8
  %571 = call i32 @cgdmin(%struct.TYPE_11__* @sblock, i32 0)
  %572 = call i32 @cgsblock(%struct.TYPE_11__* @sblock, i32 0)
  %573 = sub nsw i32 %571, %572
  %574 = mul nsw i32 %570, %573
  %575 = sext i32 %574 to i64
  %576 = add nsw i64 %569, %575
  store i64 %576, i64* %15, align 8
  %577 = call i32 @cgsblock(%struct.TYPE_11__* @sblock, i32 0)
  %578 = call i32 @cgbase(%struct.TYPE_11__* @sblock, i32 0)
  %579 = sub nsw i32 %577, %578
  %580 = sext i32 %579 to i64
  %581 = load i64, i64* %15, align 8
  %582 = add nsw i64 %581, %580
  store i64 %582, i64* %15, align 8
  %583 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 11), align 4
  %584 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 10), align 8
  %585 = call i64 @howmany(i32 %583, i32 %584)
  %586 = load i64, i64* %15, align 8
  %587 = add nsw i64 %586, %585
  store i64 %587, i64* %15, align 8
  %588 = load double, double* @maxfsblock, align 8
  %589 = load double, double* %4, align 8
  %590 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 2), align 8
  %591 = sitofp i32 %590 to double
  %592 = load double, double* %5, align 8
  %593 = fmul double %591, %592
  %594 = fadd double %589, %593
  %595 = fsub double %588, %594
  %596 = load i64, i64* %15, align 8
  %597 = sitofp i64 %596 to double
  %598 = fsub double %595, %597
  %599 = fptosi double %598 to i64
  store i64 %599, i64* %15, align 8
  %600 = load i64, i64* @bkgrdflag, align 8
  %601 = icmp ne i64 %600, 0
  br i1 %601, label %602, label %618

602:                                              ; preds = %555
  %603 = load i64, i64* %16, align 8
  %604 = icmp sgt i64 %603, 0
  br i1 %604, label %608, label %605

605:                                              ; preds = %602
  %606 = load i64, i64* %15, align 8
  %607 = icmp sgt i64 %606, 0
  br i1 %607, label %608, label %618

608:                                              ; preds = %605, %602
  %609 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 9, i32 3), align 8
  %610 = load i64, i64* @countdirs, align 8
  %611 = sub nsw i64 %609, %610
  store i64 %611, i64* @countdirs, align 8
  %612 = load i64, i64* @countdirs, align 8
  %613 = load i64, i64* %16, align 8
  %614 = load i64, i64* @countdirs, align 8
  %615 = sub nsw i64 %613, %614
  %616 = load i64, i64* %15, align 8
  %617 = call i32 (i8*, ...) @pwarn(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.50, i64 0, i64 0), i64 %612, i64 %615, i64 %616)
  br label %618

618:                                              ; preds = %608, %605, %555
  %619 = load i64, i64* @n_files, align 8
  %620 = load i64, i64* @n_blks, align 8
  %621 = load double, double* %4, align 8
  %622 = fptosi double %621 to i64
  %623 = sitofp i64 %622 to double
  %624 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 2), align 8
  %625 = sitofp i32 %624 to double
  %626 = load double, double* %5, align 8
  %627 = fmul double %625, %626
  %628 = fadd double %623, %627
  %629 = call i32 (i8*, ...) @pwarn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.51, i64 0, i64 0), i64 %619, i64 %620, double %628)
  %630 = load double, double* %4, align 8
  %631 = fptosi double %630 to i64
  %632 = load double, double* %5, align 8
  %633 = fptosi double %632 to i64
  %634 = load double, double* %4, align 8
  %635 = fmul double %634, 1.000000e+02
  %636 = load double, double* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 3), align 8
  %637 = fdiv double %635, %636
  %638 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.52, i64 0, i64 0), i64 %631, i64 %633, double %637)
  %639 = load i64, i64* @debug, align 8
  %640 = icmp ne i64 %639, 0
  br i1 %640, label %641, label %676

641:                                              ; preds = %618
  %642 = load i64, i64* %16, align 8
  %643 = icmp slt i64 %642, 0
  br i1 %643, label %644, label %648

644:                                              ; preds = %641
  %645 = load i64, i64* %16, align 8
  %646 = sub nsw i64 0, %645
  %647 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.53, i64 0, i64 0), i64 %646)
  br label %648

648:                                              ; preds = %644, %641
  %649 = load i64, i64* %15, align 8
  %650 = icmp slt i64 %649, 0
  br i1 %650, label %651, label %655

651:                                              ; preds = %648
  %652 = load i64, i64* %15, align 8
  %653 = sub nsw i64 0, %652
  %654 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i64 0, i64 0), i64 %653)
  br label %655

655:                                              ; preds = %651, %648
  %656 = load %struct.dups*, %struct.dups** @duplist, align 8
  %657 = icmp ne %struct.dups* %656, null
  br i1 %657, label %658, label %675

658:                                              ; preds = %655
  %659 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.55, i64 0, i64 0))
  %660 = load %struct.dups*, %struct.dups** @duplist, align 8
  store %struct.dups* %660, %struct.dups** %6, align 8
  br label %661

661:                                              ; preds = %669, %658
  %662 = load %struct.dups*, %struct.dups** %6, align 8
  %663 = icmp ne %struct.dups* %662, null
  br i1 %663, label %664, label %673

664:                                              ; preds = %661
  %665 = load %struct.dups*, %struct.dups** %6, align 8
  %666 = getelementptr inbounds %struct.dups, %struct.dups* %665, i32 0, i32 0
  %667 = load i64, i64* %666, align 8
  %668 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i64 0, i64 0), i64 %667)
  br label %669

669:                                              ; preds = %664
  %670 = load %struct.dups*, %struct.dups** %6, align 8
  %671 = getelementptr inbounds %struct.dups, %struct.dups* %670, i32 0, i32 1
  %672 = load %struct.dups*, %struct.dups** %671, align 8
  store %struct.dups* %672, %struct.dups** %6, align 8
  br label %661

673:                                              ; preds = %661
  %674 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i64 0, i64 0))
  br label %675

675:                                              ; preds = %673, %655
  br label %676

676:                                              ; preds = %675, %618
  store %struct.dups* null, %struct.dups** @duplist, align 8
  store %struct.dups* null, %struct.dups** @muldup, align 8
  %677 = call i32 (...) @inocleanup()
  %678 = load i32, i32* @fsmodified, align 4
  %679 = icmp ne i32 %678, 0
  br i1 %679, label %680, label %683

680:                                              ; preds = %676
  %681 = call i8* @time(i32* null)
  store i8* %681, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 8), align 8
  %682 = call i32 (...) @sbdirty()
  br label %683

683:                                              ; preds = %680, %676
  %684 = load i64, i64* @cvtlevel, align 8
  %685 = icmp ne i64 %684, 0
  br i1 %685, label %686, label %705

686:                                              ; preds = %683
  %687 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sblk, i32 0, i32 0), align 8
  %688 = icmp ne i64 %687, 0
  br i1 %688, label %689, label %705

689:                                              ; preds = %686
  store i32 0, i32* %14, align 4
  br label %690

690:                                              ; preds = %701, %689
  %691 = load i32, i32* %14, align 4
  %692 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 7), align 8
  %693 = icmp slt i32 %691, %692
  br i1 %693, label %694, label %704

694:                                              ; preds = %690
  %695 = load i32, i32* @fswritefd, align 4
  %696 = load i32, i32* %14, align 4
  %697 = call i32 @cgsblock(%struct.TYPE_11__* @sblock, i32 %696)
  %698 = call i32 @fsbtodb(%struct.TYPE_11__* @sblock, i32 %697)
  %699 = load i32, i32* @SBLOCKSIZE, align 4
  %700 = call i32 @blwrite(i32 %695, i8* bitcast (%struct.TYPE_11__* @sblock to i8*), i32 %698, i32 %699)
  br label %701

701:                                              ; preds = %694
  %702 = load i32, i32* %14, align 4
  %703 = add nsw i32 %702, 1
  store i32 %703, i32* %14, align 4
  br label %690

704:                                              ; preds = %690
  br label %705

705:                                              ; preds = %704, %686, %683
  %706 = load i64, i64* @rerun, align 8
  %707 = icmp ne i64 %706, 0
  br i1 %707, label %708, label %709

708:                                              ; preds = %705
  store i32 0, i32* @resolved, align 4
  br label %709

709:                                              ; preds = %708, %705
  %710 = call i32 (...) @finalIOstats()
  %711 = load i64, i64* @bkgrdflag, align 8
  %712 = icmp eq i64 %711, 0
  br i1 %712, label %713, label %724

713:                                              ; preds = %709
  %714 = load %struct.statfs*, %struct.statfs** %7, align 8
  %715 = icmp ne %struct.statfs* %714, null
  br i1 %715, label %716, label %724

716:                                              ; preds = %713
  %717 = load %struct.statfs*, %struct.statfs** %7, align 8
  %718 = getelementptr inbounds %struct.statfs, %struct.statfs* %717, i32 0, i32 1
  %719 = load i32, i32* %718, align 8
  %720 = load i32, i32* @MNT_RDONLY, align 4
  %721 = and i32 %719, %720
  %722 = icmp eq i32 %721, 0
  br i1 %722, label %723, label %724

723:                                              ; preds = %716
  store i32 0, i32* @resolved, align 4
  br label %724

724:                                              ; preds = %723, %716, %713, %709
  %725 = load i32, i32* @resolved, align 4
  %726 = call i32 @ckfini(i32 %725)
  store i32 0, i32* %14, align 4
  br label %727

727:                                              ; preds = %749, %724
  %728 = load i32, i32* %14, align 4
  %729 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sblock, i32 0, i32 7), align 8
  %730 = icmp slt i32 %728, %729
  br i1 %730, label %731, label %752

731:                                              ; preds = %727
  %732 = load %struct.TYPE_13__*, %struct.TYPE_13__** @inostathead, align 8
  %733 = load i32, i32* %14, align 4
  %734 = sext i32 %733 to i64
  %735 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %732, i64 %734
  %736 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %735, i32 0, i32 0
  %737 = load i32*, i32** %736, align 8
  %738 = icmp ne i32* %737, null
  br i1 %738, label %739, label %748

739:                                              ; preds = %731
  %740 = load %struct.TYPE_13__*, %struct.TYPE_13__** @inostathead, align 8
  %741 = load i32, i32* %14, align 4
  %742 = sext i32 %741 to i64
  %743 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %740, i64 %742
  %744 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %743, i32 0, i32 0
  %745 = load i32*, i32** %744, align 8
  %746 = bitcast i32* %745 to i8*
  %747 = call i32 @free(i8* %746)
  br label %748

748:                                              ; preds = %739, %731
  br label %749

749:                                              ; preds = %748
  %750 = load i32, i32* %14, align 4
  %751 = add nsw i32 %750, 1
  store i32 %751, i32* %14, align 4
  br label %727

752:                                              ; preds = %727
  %753 = load %struct.TYPE_13__*, %struct.TYPE_13__** @inostathead, align 8
  %754 = bitcast %struct.TYPE_13__* %753 to i8*
  %755 = call i32 @free(i8* %754)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** @inostathead, align 8
  %756 = load i32, i32* @fsmodified, align 4
  %757 = icmp ne i32 %756, 0
  br i1 %757, label %758, label %763

758:                                              ; preds = %752
  %759 = load i64, i64* @preen, align 8
  %760 = icmp ne i64 %759, 0
  br i1 %760, label %763, label %761

761:                                              ; preds = %758
  %762 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.58, i64 0, i64 0))
  br label %763

763:                                              ; preds = %761, %758, %752
  %764 = load i64, i64* @rerun, align 8
  %765 = icmp ne i64 %764, 0
  br i1 %765, label %766, label %783

766:                                              ; preds = %763
  %767 = load i64, i64* @wantrestart, align 8
  %768 = icmp ne i64 %767, 0
  br i1 %768, label %769, label %781

769:                                              ; preds = %766
  %770 = load i32, i32* @restarts, align 4
  %771 = add nsw i32 %770, 1
  store i32 %771, i32* @restarts, align 4
  %772 = icmp slt i32 %770, 10
  br i1 %772, label %773, label %781

773:                                              ; preds = %769
  %774 = load i64, i64* @preen, align 8
  %775 = icmp ne i64 %774, 0
  br i1 %775, label %779, label %776

776:                                              ; preds = %773
  %777 = call i64 @reply(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i64 0, i64 0))
  %778 = icmp ne i64 %777, 0
  br i1 %778, label %779, label %781

779:                                              ; preds = %776, %773
  %780 = load i32, i32* @ERESTART, align 4
  store i32 %780, i32* %2, align 4
  br label %806

781:                                              ; preds = %776, %769, %766
  %782 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.60, i64 0, i64 0))
  br label %783

783:                                              ; preds = %781, %763
  %784 = load %struct.statfs*, %struct.statfs** %7, align 8
  %785 = call i64 @chkdoreload(%struct.statfs* %784)
  %786 = icmp ne i64 %785, 0
  br i1 %786, label %787, label %798

787:                                              ; preds = %783
  %788 = load i32, i32* @fsmodified, align 4
  %789 = icmp ne i32 %788, 0
  br i1 %789, label %791, label %790

790:                                              ; preds = %787
  store i32 0, i32* %2, align 4
  br label %806

791:                                              ; preds = %787
  %792 = load i64, i64* @preen, align 8
  %793 = icmp ne i64 %792, 0
  br i1 %793, label %796, label %794

794:                                              ; preds = %791
  %795 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.61, i64 0, i64 0))
  br label %796

796:                                              ; preds = %794, %791
  %797 = call i32 (...) @sync()
  store i32 4, i32* %2, align 4
  br label %806

798:                                              ; preds = %783
  %799 = load i64, i64* @rerun, align 8
  %800 = icmp ne i64 %799, 0
  br i1 %800, label %801, label %803

801:                                              ; preds = %798
  %802 = load i32, i32* @ERERUN, align 4
  br label %804

803:                                              ; preds = %798
  br label %804

804:                                              ; preds = %803, %801
  %805 = phi i32 [ %802, %801 ], [ 0, %803 ]
  store i32 %805, i32* %2, align 4
  br label %806

806:                                              ; preds = %804, %796, %790, %779, %327, %325
  %807 = load i32, i32* %2, align 4
  ret i32 %807
}

declare dso_local i32 @fsutilinit(...) #1

declare dso_local i32 @fsckinit(...) #1

declare dso_local i32 @pwarn(i8*, ...) #1

declare dso_local %struct.statfs* @getmntpt(i8*) #1

declare dso_local i8* @blockcheck(i8*) #1

declare dso_local i32 @sblock_init(...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @readsb(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @close(i32) #1

declare dso_local i64 @sysctlnametomib(i8*, i32, i64*) #1

declare dso_local i32 @gjournal_check(i8*) #1

declare dso_local i64 @chkdoreload(%struct.statfs*) #1

declare dso_local i32 @pfatal(i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local %struct.group* @getgrnam(i8*) #1

declare dso_local i64 @mkdir(i8*, i32) #1

declare dso_local i64 @chown(i8*, i32, i32) #1

declare dso_local i64 @chmod(i8*, i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @build_iovec(%struct.iovec**, i32*, i8*, i8*, i32) #1

declare dso_local i64 @nmount(%struct.iovec*, i32, i32) #1

declare dso_local i64 @unlink(i8*) #1

declare dso_local i32 @setup(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @reply(i8*) #1

declare dso_local i64 @suj_check(i8*) #1

declare dso_local i8* @time(i32*) #1

declare dso_local i32 @sbdirty(...) #1

declare dso_local i32 @flush(i32, %struct.TYPE_12__*) #1

declare dso_local i64 @getosreldate(...) #1

declare dso_local i32 @clock_gettime(i32, i32*) #1

declare dso_local i32 @pass1(...) #1

declare dso_local i32 @IOstats(i8*) #1

declare dso_local i32 @pass1b(...) #1

declare dso_local i32 @pass2(...) #1

declare dso_local i32 @pass3(...) #1

declare dso_local i32 @pass4(...) #1

declare dso_local i32 @pass5(...) #1

declare dso_local i32 @cgdmin(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @cgsblock(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @cgbase(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @howmany(i32, i32) #1

declare dso_local i32 @inocleanup(...) #1

declare dso_local i32 @blwrite(i32, i8*, i32, i32) #1

declare dso_local i32 @fsbtodb(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @finalIOstats(...) #1

declare dso_local i32 @ckfini(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @sync(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
