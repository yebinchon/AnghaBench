; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/tunefs/extr_tunefs.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/tunefs/extr_tunefs.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8* }
%struct.TYPE_8__ = type { i32, i32, i32, i64, i32, i32, i32, i64, i32, i64, i32 }
%struct.statfs = type { i8*, i32 }
%struct.iovec = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Aa:e:f:j:J:k:L:l:m:N:n:o:ps:S:t:\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"POSIX.1e ACLs\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"bad %s (options are %s)\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"`enable' or `disable'\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"maximum blocks per file in a cylinder group\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"%s must be >= 1 (was %s)\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"average file size\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"softdep journaled file system\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"gjournaled file system\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"space to hold for metadata blocks\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"bad %s (%s)\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"volume label\00", align 1
@.str.14 = private unnamed_addr constant [69 x i8] c"bad %s. Valid characters are alphanumerics, dashes, and underscores.\00", align 1
@MAXVOLLEN = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [34 x i8] c"bad %s. Length is longer than %d.\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"multilabel MAC file system\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"minimum percentage of free space\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"NFSv4 ACLs\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"soft updates\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"optimization preference\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@FS_OPTSPACE = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@FS_OPTTIME = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [39 x i8] c"bad %s (options are `space' or `time')\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"expected number of files per directory\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"Softdep Journal Size\00", align 1
@SUJ_MIN = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [26 x i8] c"%s must be >= %d (was %s)\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"trim\00", align 1
@optind = common dso_local global i64 0, align 8
@disk = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str.28 = private unnamed_addr constant [14 x i8] c"Can't stat %s\00", align 1
@sblock = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@FS_ACLS = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [32 x i8] c"%s remains unchanged as enabled\00", align 1
@FS_NFS4ACLS = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [41 x i8] c"%s and NFSv4 ACLs are mutually exclusive\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"%s set\00", align 1
@.str.32 = private unnamed_addr constant [33 x i8] c"%s remains unchanged as disabled\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"%s cleared\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"%s remains unchanged as %d\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"%s changes from %d to %d\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"soft updates journaling\00", align 1
@FS_DOSOFTDEP = common dso_local global i32 0, align 4
@FS_SUJ = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [39 x i8] c"%s cannot be enabled until fsck is run\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"%s cannot be enabled\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"%s cleared but soft updates still set.\00", align 1
@.str.40 = private unnamed_addr constant [35 x i8] c"remove .sujournal to reclaim space\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"gjournal\00", align 1
@FS_GJOURNAL = common dso_local global i32 0, align 4
@.str.42 = private unnamed_addr constant [44 x i8] c"%s cannot exceed half the file system space\00", align 1
@.str.43 = private unnamed_addr constant [26 x i8] c"%s changes from %jd to %d\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"multilabel\00", align 1
@FS_MULTILABEL = common dso_local global i32 0, align 4
@.str.45 = private unnamed_addr constant [29 x i8] c"%s remains unchanged as %d%%\00", align 1
@.str.46 = private unnamed_addr constant [29 x i8] c"%s changes from %d%% to %d%%\00", align 1
@MINFREE = common dso_local global i32 0, align 4
@OPTWARN = common dso_local global i32 0, align 4
@.str.47 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.49 = private unnamed_addr constant [44 x i8] c"%s and POSIX.1e ACLs are mutually exclusive\00", align 1
@.str.50 = private unnamed_addr constant [27 x i8] c"%s remains unchanged as %s\00", align 1
@.str.51 = private unnamed_addr constant [25 x i8] c"%s changes from %s to %s\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"issue TRIM to the disk\00", align 1
@FS_TRIM = common dso_local global i32 0, align 4
@.str.53 = private unnamed_addr constant [7 x i8] c"fstype\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"ufs\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"fspath\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"errmsg\00", align 1
@MNT_UPDATE = common dso_local global i32 0, align 4
@MNT_RELOAD = common dso_local global i32 0, align 4
@.str.58 = private unnamed_addr constant [15 x i8] c"%s: reload: %s\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"%s: reload\00", align 1
@.str.60 = private unnamed_addr constant [21 x i8] c"file system reloaded\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca [2 x i8*], align 16
  %46 = alloca %struct.statfs, align 8
  %47 = alloca %struct.iovec*, align 8
  %48 = alloca [255 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %44, align 4
  store %struct.iovec* null, %struct.iovec** %47, align 8
  %49 = bitcast [255 x i8]* %48 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %49, i8 0, i64 255, i1 false)
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %50, 3
  br i1 %51, label %52, label %54

52:                                               ; preds = %2
  %53 = call i32 (...) @usage()
  br label %54

54:                                               ; preds = %52, %2
  store i32 0, i32* %28, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %40, align 4
  store i32 0, i32* %37, align 4
  store i32 0, i32* %36, align 4
  store i32 0, i32* %34, align 4
  store i32 0, i32* %33, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %29, align 4
  store i8* null, i8** %12, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %39, align 4
  store i32 0, i32* %38, align 4
  store i32 0, i32* %35, align 4
  store i32 0, i32* %31, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %42, align 4
  br label %55

55:                                               ; preds = %295, %54
  %56 = load i32, i32* %4, align 4
  %57 = load i8**, i8*** %5, align 8
  %58 = call i32 @getopt(i32 %56, i8** %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 %58, i32* %41, align 4
  %59 = icmp ne i32 %58, -1
  br i1 %59, label %60, label %296

60:                                               ; preds = %55
  %61 = load i32, i32* %41, align 4
  switch i32 %61, label %293 [
    i32 65, label %62
    i32 97, label %65
    i32 101, label %78
    i32 102, label %88
    i32 106, label %98
    i32 74, label %111
    i32 107, label %124
    i32 76, label %134
    i32 108, label %186
    i32 109, label %199
    i32 78, label %212
    i32 110, label %225
    i32 111, label %238
    i32 112, label %257
    i32 115, label %258
    i32 83, label %268
    i32 116, label %280
  ]

62:                                               ; preds = %60
  store i32 1, i32* %42, align 4
  %63 = load i32, i32* %18, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %18, align 4
  br label %295

65:                                               ; preds = %60
  store i32 1, i32* %42, align 4
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %16, align 8
  %66 = load i8*, i8** @optarg, align 8
  store i8* %66, i8** %6, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = call i64 @strcmp(i8* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load i8*, i8** %6, align 8
  %72 = call i64 @strcmp(i8* %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i8*, i8** %16, align 8
  %76 = call i32 (i32, i8*, i8*, ...) @errx(i32 10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %70, %65
  store i32 1, i32* %19, align 4
  br label %295

78:                                               ; preds = %60
  store i32 1, i32* %42, align 4
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i8** %16, align 8
  %79 = load i8*, i8** @optarg, align 8
  %80 = call i32 @atoi(i8* %79)
  store i32 %80, i32* %21, align 4
  %81 = load i32, i32* %21, align 4
  %82 = icmp slt i32 %81, 1
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load i8*, i8** %16, align 8
  %85 = load i8*, i8** @optarg, align 8
  %86 = call i32 (i32, i8*, i8*, ...) @errx(i32 10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* %84, i8* %85)
  br label %87

87:                                               ; preds = %83, %78
  store i32 1, i32* %20, align 4
  br label %295

88:                                               ; preds = %60
  store i32 1, i32* %42, align 4
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8** %16, align 8
  %89 = load i8*, i8** @optarg, align 8
  %90 = call i32 @atoi(i8* %89)
  store i32 %90, i32* %23, align 4
  %91 = load i32, i32* %23, align 4
  %92 = icmp slt i32 %91, 1
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i8*, i8** %16, align 8
  %95 = load i8*, i8** @optarg, align 8
  %96 = call i32 (i32, i8*, i8*, ...) @errx(i32 10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* %94, i8* %95)
  br label %97

97:                                               ; preds = %93, %88
  store i32 1, i32* %22, align 4
  br label %295

98:                                               ; preds = %60
  store i32 1, i32* %42, align 4
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i8** %16, align 8
  %99 = load i8*, i8** @optarg, align 8
  store i8* %99, i8** %7, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = call i64 @strcmp(i8* %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load i8*, i8** %7, align 8
  %105 = call i64 @strcmp(i8* %104, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i8*, i8** %16, align 8
  %109 = call i32 (i32, i8*, i8*, ...) @errx(i32 10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %108, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %110

110:                                              ; preds = %107, %103, %98
  store i32 1, i32* %24, align 4
  br label %295

111:                                              ; preds = %60
  store i32 1, i32* %42, align 4
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i8** %16, align 8
  %112 = load i8*, i8** @optarg, align 8
  store i8* %112, i8** %8, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = call i64 @strcmp(i8* %113, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %111
  %117 = load i8*, i8** %8, align 8
  %118 = call i64 @strcmp(i8* %117, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load i8*, i8** %16, align 8
  %122 = call i32 (i32, i8*, i8*, ...) @errx(i32 10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %121, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %123

123:                                              ; preds = %120, %116, %111
  store i32 1, i32* %25, align 4
  br label %295

124:                                              ; preds = %60
  store i32 1, i32* %42, align 4
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i8** %16, align 8
  %125 = load i8*, i8** @optarg, align 8
  %126 = call i32 @atoi(i8* %125)
  store i32 %126, i32* %27, align 4
  %127 = load i32, i32* %27, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load i8*, i8** %16, align 8
  %131 = load i8*, i8** @optarg, align 8
  %132 = call i32 (i32, i8*, i8*, ...) @errx(i32 10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8* %130, i8* %131)
  br label %133

133:                                              ; preds = %129, %124
  store i32 1, i32* %26, align 4
  br label %295

134:                                              ; preds = %60
  store i32 1, i32* %42, align 4
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8** %16, align 8
  %135 = load i8*, i8** @optarg, align 8
  store i8* %135, i8** %9, align 8
  store i32 -1, i32* %43, align 4
  br label %136

136:                                              ; preds = %163, %134
  %137 = load i8*, i8** %9, align 8
  %138 = load i32, i32* %43, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %43, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %137, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = call i32 @isalnum(i8 signext %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %161, label %145

145:                                              ; preds = %136
  %146 = load i8*, i8** %9, align 8
  %147 = load i32, i32* %43, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 95
  br i1 %152, label %161, label %153

153:                                              ; preds = %145
  %154 = load i8*, i8** %9, align 8
  %155 = load i32, i32* %43, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp eq i32 %159, 45
  br label %161

161:                                              ; preds = %153, %145, %136
  %162 = phi i1 [ true, %145 ], [ true, %136 ], [ %160, %153 ]
  br i1 %162, label %163, label %164

163:                                              ; preds = %161
  br label %136

164:                                              ; preds = %161
  %165 = load i8*, i8** %9, align 8
  %166 = load i32, i32* %43, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %165, i64 %167
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %164
  %173 = load i8*, i8** %16, align 8
  %174 = call i32 (i32, i8*, i8*, ...) @errx(i32 10, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.14, i64 0, i64 0), i8* %173)
  br label %175

175:                                              ; preds = %172, %164
  %176 = load i8*, i8** %9, align 8
  %177 = call i32 @strlen(i8* %176)
  %178 = load i32, i32* @MAXVOLLEN, align 4
  %179 = icmp sge i32 %177, %178
  br i1 %179, label %180, label %185

180:                                              ; preds = %175
  %181 = load i8*, i8** %16, align 8
  %182 = load i32, i32* @MAXVOLLEN, align 4
  %183 = sub nsw i32 %182, 1
  %184 = call i32 (i32, i8*, i8*, ...) @errx(i32 10, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0), i8* %181, i32 %183)
  br label %185

185:                                              ; preds = %180, %175
  store i32 1, i32* %28, align 4
  br label %295

186:                                              ; preds = %60
  store i32 1, i32* %42, align 4
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i8** %16, align 8
  %187 = load i8*, i8** @optarg, align 8
  store i8* %187, i8** %10, align 8
  %188 = load i8*, i8** %10, align 8
  %189 = call i64 @strcmp(i8* %188, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %186
  %192 = load i8*, i8** %10, align 8
  %193 = call i64 @strcmp(i8* %192, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %191
  %196 = load i8*, i8** %16, align 8
  %197 = call i32 (i32, i8*, i8*, ...) @errx(i32 10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %196, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %198

198:                                              ; preds = %195, %191, %186
  store i32 1, i32* %29, align 4
  br label %295

199:                                              ; preds = %60
  store i32 1, i32* %42, align 4
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i8** %16, align 8
  %200 = load i8*, i8** @optarg, align 8
  %201 = call i32 @atoi(i8* %200)
  store i32 %201, i32* %31, align 4
  %202 = load i32, i32* %31, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %207, label %204

204:                                              ; preds = %199
  %205 = load i32, i32* %31, align 4
  %206 = icmp sgt i32 %205, 99
  br i1 %206, label %207, label %211

207:                                              ; preds = %204, %199
  %208 = load i8*, i8** %16, align 8
  %209 = load i8*, i8** @optarg, align 8
  %210 = call i32 (i32, i8*, i8*, ...) @errx(i32 10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8* %208, i8* %209)
  br label %211

211:                                              ; preds = %207, %204
  store i32 1, i32* %30, align 4
  br label %295

212:                                              ; preds = %60
  store i32 1, i32* %42, align 4
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i8** %16, align 8
  %213 = load i8*, i8** @optarg, align 8
  store i8* %213, i8** %11, align 8
  %214 = load i8*, i8** %11, align 8
  %215 = call i64 @strcmp(i8* %214, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %224

217:                                              ; preds = %212
  %218 = load i8*, i8** %11, align 8
  %219 = call i64 @strcmp(i8* %218, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %217
  %222 = load i8*, i8** %16, align 8
  %223 = call i32 (i32, i8*, i8*, ...) @errx(i32 10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %222, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %224

224:                                              ; preds = %221, %217, %212
  store i32 1, i32* %32, align 4
  br label %295

225:                                              ; preds = %60
  store i32 1, i32* %42, align 4
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i8** %16, align 8
  %226 = load i8*, i8** @optarg, align 8
  store i8* %226, i8** %12, align 8
  %227 = load i8*, i8** %12, align 8
  %228 = call i64 @strcmp(i8* %227, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %237

230:                                              ; preds = %225
  %231 = load i8*, i8** %12, align 8
  %232 = call i64 @strcmp(i8* %231, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %230
  %235 = load i8*, i8** %16, align 8
  %236 = call i32 (i32, i8*, i8*, ...) @errx(i32 10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %235, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %237

237:                                              ; preds = %234, %230, %225
  store i32 1, i32* %33, align 4
  br label %295

238:                                              ; preds = %60
  store i32 1, i32* %42, align 4
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i8** %16, align 8
  %239 = load i8*, i8** @optarg, align 8
  %240 = call i64 @strcmp(i8* %239, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0))
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %238
  %243 = load i64, i64* @FS_OPTSPACE, align 8
  %244 = trunc i64 %243 to i32
  store i32 %244, i32* %35, align 4
  br label %256

245:                                              ; preds = %238
  %246 = load i8*, i8** @optarg, align 8
  %247 = call i64 @strcmp(i8* %246, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0))
  %248 = icmp eq i64 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %245
  %250 = load i64, i64* @FS_OPTTIME, align 8
  %251 = trunc i64 %250 to i32
  store i32 %251, i32* %35, align 4
  br label %255

252:                                              ; preds = %245
  %253 = load i8*, i8** %16, align 8
  %254 = call i32 (i32, i8*, i8*, ...) @errx(i32 10, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0), i8* %253)
  br label %255

255:                                              ; preds = %252, %249
  br label %256

256:                                              ; preds = %255, %242
  store i32 1, i32* %34, align 4
  br label %295

257:                                              ; preds = %60
  store i32 1, i32* %42, align 4
  store i32 1, i32* %36, align 4
  br label %295

258:                                              ; preds = %60
  store i32 1, i32* %42, align 4
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0), i8** %16, align 8
  %259 = load i8*, i8** @optarg, align 8
  %260 = call i32 @atoi(i8* %259)
  store i32 %260, i32* %38, align 4
  %261 = load i32, i32* %38, align 4
  %262 = icmp slt i32 %261, 1
  br i1 %262, label %263, label %267

263:                                              ; preds = %258
  %264 = load i8*, i8** %16, align 8
  %265 = load i8*, i8** @optarg, align 8
  %266 = call i32 (i32, i8*, i8*, ...) @errx(i32 10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* %264, i8* %265)
  br label %267

267:                                              ; preds = %263, %258
  store i32 1, i32* %37, align 4
  br label %295

268:                                              ; preds = %60
  store i32 1, i32* %42, align 4
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0), i8** %16, align 8
  %269 = load i8*, i8** @optarg, align 8
  %270 = call i32 @atoi(i8* %269)
  store i32 %270, i32* %39, align 4
  %271 = load i32, i32* %39, align 4
  %272 = load i32, i32* @SUJ_MIN, align 4
  %273 = icmp slt i32 %271, %272
  br i1 %273, label %274, label %279

274:                                              ; preds = %268
  %275 = load i8*, i8** %16, align 8
  %276 = load i32, i32* @SUJ_MIN, align 4
  %277 = load i8*, i8** @optarg, align 8
  %278 = call i32 (i32, i8*, i8*, ...) @errx(i32 10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i64 0, i64 0), i8* %275, i32 %276, i8* %277)
  br label %279

279:                                              ; preds = %274, %268
  br label %295

280:                                              ; preds = %60
  store i32 1, i32* %42, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i8** %16, align 8
  %281 = load i8*, i8** @optarg, align 8
  store i8* %281, i8** %13, align 8
  %282 = load i8*, i8** %13, align 8
  %283 = call i64 @strcmp(i8* %282, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %292

285:                                              ; preds = %280
  %286 = load i8*, i8** %13, align 8
  %287 = call i64 @strcmp(i8* %286, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %292

289:                                              ; preds = %285
  %290 = load i8*, i8** %16, align 8
  %291 = call i32 (i32, i8*, i8*, ...) @errx(i32 10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %290, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %292

292:                                              ; preds = %289, %285, %280
  store i32 1, i32* %40, align 4
  br label %295

293:                                              ; preds = %60
  %294 = call i32 (...) @usage()
  br label %295

295:                                              ; preds = %293, %292, %279, %267, %257, %256, %237, %224, %211, %198, %185, %133, %123, %110, %97, %87, %77, %62
  br label %55

296:                                              ; preds = %55
  %297 = load i64, i64* @optind, align 8
  %298 = load i32, i32* %4, align 4
  %299 = sext i32 %298 to i64
  %300 = sub nsw i64 %299, %297
  %301 = trunc i64 %300 to i32
  store i32 %301, i32* %4, align 4
  %302 = load i64, i64* @optind, align 8
  %303 = load i8**, i8*** %5, align 8
  %304 = getelementptr inbounds i8*, i8** %303, i64 %302
  store i8** %304, i8*** %5, align 8
  %305 = load i32, i32* %42, align 4
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %310, label %307

307:                                              ; preds = %296
  %308 = load i32, i32* %4, align 4
  %309 = icmp ne i32 %308, 1
  br i1 %309, label %310, label %312

310:                                              ; preds = %307, %296
  %311 = call i32 (...) @usage()
  br label %312

312:                                              ; preds = %310, %307
  %313 = load i8**, i8*** %5, align 8
  %314 = getelementptr inbounds i8*, i8** %313, i64 0
  %315 = load i8*, i8** %314, align 8
  store i8* %315, i8** %14, align 8
  store i8* %315, i8** %15, align 8
  %316 = load i8*, i8** %14, align 8
  %317 = call i32 @ufs_disk_fillout(%struct.TYPE_7__* @disk, i8* %316)
  %318 = icmp eq i32 %317, -1
  br i1 %318, label %319, label %320

319:                                              ; preds = %312
  br label %958

320:                                              ; preds = %312
  %321 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @disk, i32 0, i32 0), align 8
  %322 = load i8*, i8** %14, align 8
  %323 = icmp ne i8* %321, %322
  br i1 %323, label %324, label %339

324:                                              ; preds = %320
  %325 = load i8*, i8** %14, align 8
  %326 = call i64 @statfs(i8* %325, %struct.statfs* %46)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %331

328:                                              ; preds = %324
  %329 = load i8*, i8** %14, align 8
  %330 = call i32 @warn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i8* %329)
  br label %331

331:                                              ; preds = %328, %324
  %332 = load i8*, i8** %14, align 8
  %333 = getelementptr inbounds %struct.statfs, %struct.statfs* %46, i32 0, i32 0
  %334 = load i8*, i8** %333, align 8
  %335 = call i64 @strcmp(i8* %332, i8* %334)
  %336 = icmp eq i64 %335, 0
  br i1 %336, label %337, label %338

337:                                              ; preds = %331
  store i32 1, i32* %17, align 4
  br label %338

338:                                              ; preds = %337, %331
  br label %339

339:                                              ; preds = %338, %320
  %340 = load i32, i32* %36, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %345

342:                                              ; preds = %339
  %343 = call i32 (...) @printfs()
  %344 = call i32 @exit(i32 0) #4
  unreachable

345:                                              ; preds = %339
  %346 = load i32, i32* %28, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %353

348:                                              ; preds = %345
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8** %16, align 8
  %349 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 10), align 8
  %350 = load i8*, i8** %9, align 8
  %351 = load i32, i32* @MAXVOLLEN, align 4
  %352 = call i32 @strncpy(i32 %349, i8* %350, i32 %351)
  br label %353

353:                                              ; preds = %348, %345
  %354 = load i32, i32* %19, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %408

356:                                              ; preds = %353
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %16, align 8
  %357 = load i8*, i8** %6, align 8
  %358 = call i64 @strcmp(i8* %357, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %359 = icmp eq i64 %358, 0
  br i1 %359, label %360, label %384

360:                                              ; preds = %356
  %361 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %362 = load i32, i32* @FS_ACLS, align 4
  %363 = and i32 %361, %362
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %368

365:                                              ; preds = %360
  %366 = load i8*, i8** %16, align 8
  %367 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i64 0, i64 0), i8* %366)
  br label %383

368:                                              ; preds = %360
  %369 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %370 = load i32, i32* @FS_NFS4ACLS, align 4
  %371 = and i32 %369, %370
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %376

373:                                              ; preds = %368
  %374 = load i8*, i8** %16, align 8
  %375 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.30, i64 0, i64 0), i8* %374)
  br label %382

376:                                              ; preds = %368
  %377 = load i32, i32* @FS_ACLS, align 4
  %378 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %379 = or i32 %378, %377
  store i32 %379, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %380 = load i8*, i8** %16, align 8
  %381 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8* %380)
  br label %382

382:                                              ; preds = %376, %373
  br label %383

383:                                              ; preds = %382, %365
  br label %407

384:                                              ; preds = %356
  %385 = load i8*, i8** %6, align 8
  %386 = call i64 @strcmp(i8* %385, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %387 = icmp eq i64 %386, 0
  br i1 %387, label %388, label %406

388:                                              ; preds = %384
  %389 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %390 = xor i32 %389, -1
  %391 = load i32, i32* @FS_ACLS, align 4
  %392 = and i32 %390, %391
  %393 = load i32, i32* @FS_ACLS, align 4
  %394 = icmp eq i32 %392, %393
  br i1 %394, label %395, label %398

395:                                              ; preds = %388
  %396 = load i8*, i8** %16, align 8
  %397 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.32, i64 0, i64 0), i8* %396)
  br label %405

398:                                              ; preds = %388
  %399 = load i32, i32* @FS_ACLS, align 4
  %400 = xor i32 %399, -1
  %401 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %402 = and i32 %401, %400
  store i32 %402, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %403 = load i8*, i8** %16, align 8
  %404 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0), i8* %403)
  br label %405

405:                                              ; preds = %398, %395
  br label %406

406:                                              ; preds = %405, %384
  br label %407

407:                                              ; preds = %406, %383
  br label %408

408:                                              ; preds = %407, %353
  %409 = load i32, i32* %20, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %426

411:                                              ; preds = %408
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i8** %16, align 8
  %412 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 1), align 4
  %413 = load i32, i32* %21, align 4
  %414 = icmp eq i32 %412, %413
  br i1 %414, label %415, label %419

415:                                              ; preds = %411
  %416 = load i8*, i8** %16, align 8
  %417 = load i32, i32* %21, align 4
  %418 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i64 0, i64 0), i8* %416, i32 %417)
  br label %425

419:                                              ; preds = %411
  %420 = load i8*, i8** %16, align 8
  %421 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 1), align 4
  %422 = load i32, i32* %21, align 4
  %423 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0), i8* %420, i32 %421, i32 %422)
  %424 = load i32, i32* %21, align 4
  store i32 %424, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 1), align 4
  br label %425

425:                                              ; preds = %419, %415
  br label %426

426:                                              ; preds = %425, %408
  %427 = load i32, i32* %22, align 4
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %444

429:                                              ; preds = %426
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8** %16, align 8
  %430 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 2), align 8
  %431 = load i32, i32* %23, align 4
  %432 = icmp eq i32 %430, %431
  br i1 %432, label %433, label %437

433:                                              ; preds = %429
  %434 = load i8*, i8** %16, align 8
  %435 = load i32, i32* %23, align 4
  %436 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i64 0, i64 0), i8* %434, i32 %435)
  br label %443

437:                                              ; preds = %429
  %438 = load i8*, i8** %16, align 8
  %439 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 2), align 8
  %440 = load i32, i32* %23, align 4
  %441 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0), i8* %438, i32 %439, i32 %440)
  %442 = load i32, i32* %23, align 4
  store i32 %442, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 2), align 8
  br label %443

443:                                              ; preds = %437, %433
  br label %444

444:                                              ; preds = %443, %426
  %445 = load i32, i32* %24, align 4
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %514

447:                                              ; preds = %444
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.36, i64 0, i64 0), i8** %16, align 8
  %448 = load i8*, i8** %7, align 8
  %449 = call i64 @strcmp(i8* %448, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %450 = icmp eq i64 %449, 0
  br i1 %450, label %451, label %488

451:                                              ; preds = %447
  %452 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %453 = load i32, i32* @FS_DOSOFTDEP, align 4
  %454 = load i32, i32* @FS_SUJ, align 4
  %455 = or i32 %453, %454
  %456 = and i32 %452, %455
  %457 = load i32, i32* @FS_DOSOFTDEP, align 4
  %458 = load i32, i32* @FS_SUJ, align 4
  %459 = or i32 %457, %458
  %460 = icmp eq i32 %456, %459
  br i1 %460, label %461, label %464

461:                                              ; preds = %451
  %462 = load i8*, i8** %16, align 8
  %463 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i64 0, i64 0), i8* %462)
  br label %487

464:                                              ; preds = %451
  %465 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 3), align 8
  %466 = icmp eq i64 %465, 0
  br i1 %466, label %467, label %470

467:                                              ; preds = %464
  %468 = load i8*, i8** %16, align 8
  %469 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.37, i64 0, i64 0), i8* %468)
  br label %486

470:                                              ; preds = %464
  %471 = load i32, i32* %39, align 4
  %472 = call i64 @journal_alloc(i32 %471)
  %473 = icmp ne i64 %472, 0
  br i1 %473, label %474, label %477

474:                                              ; preds = %470
  %475 = load i8*, i8** %16, align 8
  %476 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i64 0, i64 0), i8* %475)
  br label %485

477:                                              ; preds = %470
  %478 = load i32, i32* @FS_DOSOFTDEP, align 4
  %479 = load i32, i32* @FS_SUJ, align 4
  %480 = or i32 %478, %479
  %481 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %482 = or i32 %481, %480
  store i32 %482, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %483 = load i8*, i8** %16, align 8
  %484 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8* %483)
  br label %485

485:                                              ; preds = %477, %474
  br label %486

486:                                              ; preds = %485, %467
  br label %487

487:                                              ; preds = %486, %461
  br label %513

488:                                              ; preds = %447
  %489 = load i8*, i8** %7, align 8
  %490 = call i64 @strcmp(i8* %489, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %491 = icmp eq i64 %490, 0
  br i1 %491, label %492, label %512

492:                                              ; preds = %488
  %493 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %494 = xor i32 %493, -1
  %495 = load i32, i32* @FS_SUJ, align 4
  %496 = and i32 %494, %495
  %497 = load i32, i32* @FS_SUJ, align 4
  %498 = icmp eq i32 %496, %497
  br i1 %498, label %499, label %502

499:                                              ; preds = %492
  %500 = load i8*, i8** %16, align 8
  %501 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.32, i64 0, i64 0), i8* %500)
  br label %511

502:                                              ; preds = %492
  %503 = call i32 (...) @journal_clear()
  %504 = load i32, i32* @FS_SUJ, align 4
  %505 = xor i32 %504, -1
  %506 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %507 = and i32 %506, %505
  store i32 %507, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 9), align 8
  %508 = load i8*, i8** %16, align 8
  %509 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i64 0, i64 0), i8* %508)
  %510 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.40, i64 0, i64 0))
  br label %511

511:                                              ; preds = %502, %499
  br label %512

512:                                              ; preds = %511, %488
  br label %513

513:                                              ; preds = %512, %487
  br label %514

514:                                              ; preds = %513, %444
  %515 = load i32, i32* %25, align 4
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %517, label %560

517:                                              ; preds = %514
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i64 0, i64 0), i8** %16, align 8
  %518 = load i8*, i8** %8, align 8
  %519 = call i64 @strcmp(i8* %518, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %520 = icmp eq i64 %519, 0
  br i1 %520, label %521, label %536

521:                                              ; preds = %517
  %522 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %523 = load i32, i32* @FS_GJOURNAL, align 4
  %524 = and i32 %522, %523
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %526, label %529

526:                                              ; preds = %521
  %527 = load i8*, i8** %16, align 8
  %528 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i64 0, i64 0), i8* %527)
  br label %535

529:                                              ; preds = %521
  %530 = load i32, i32* @FS_GJOURNAL, align 4
  %531 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %532 = or i32 %531, %530
  store i32 %532, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %533 = load i8*, i8** %16, align 8
  %534 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8* %533)
  br label %535

535:                                              ; preds = %529, %526
  br label %559

536:                                              ; preds = %517
  %537 = load i8*, i8** %8, align 8
  %538 = call i64 @strcmp(i8* %537, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %539 = icmp eq i64 %538, 0
  br i1 %539, label %540, label %558

540:                                              ; preds = %536
  %541 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %542 = xor i32 %541, -1
  %543 = load i32, i32* @FS_GJOURNAL, align 4
  %544 = and i32 %542, %543
  %545 = load i32, i32* @FS_GJOURNAL, align 4
  %546 = icmp eq i32 %544, %545
  br i1 %546, label %547, label %550

547:                                              ; preds = %540
  %548 = load i8*, i8** %16, align 8
  %549 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.32, i64 0, i64 0), i8* %548)
  br label %557

550:                                              ; preds = %540
  %551 = load i32, i32* @FS_GJOURNAL, align 4
  %552 = xor i32 %551, -1
  %553 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %554 = and i32 %553, %552
  store i32 %554, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %555 = load i8*, i8** %16, align 8
  %556 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0), i8* %555)
  br label %557

557:                                              ; preds = %550, %547
  br label %558

558:                                              ; preds = %557, %536
  br label %559

559:                                              ; preds = %558, %535
  br label %560

560:                                              ; preds = %559, %514
  %561 = load i32, i32* %26, align 4
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %563, label %591

563:                                              ; preds = %560
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i8** %16, align 8
  %564 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 4), align 8
  %565 = load i32, i32* %27, align 4
  %566 = icmp eq i32 %564, %565
  br i1 %566, label %567, label %571

567:                                              ; preds = %563
  %568 = load i8*, i8** %16, align 8
  %569 = load i32, i32* %27, align 4
  %570 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i64 0, i64 0), i8* %568, i32 %569)
  br label %590

571:                                              ; preds = %563
  %572 = load i32, i32* %27, align 4
  %573 = call i32 @blknum(%struct.TYPE_8__* @sblock, i32 %572)
  store i32 %573, i32* %27, align 4
  %574 = load i32, i32* %27, align 4
  %575 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 5), align 4
  %576 = sdiv i32 %575, 2
  %577 = icmp sgt i32 %574, %576
  br i1 %577, label %578, label %584

578:                                              ; preds = %571
  %579 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 5), align 4
  %580 = sdiv i32 %579, 2
  %581 = call i32 @blknum(%struct.TYPE_8__* @sblock, i32 %580)
  store i32 %581, i32* %27, align 4
  %582 = load i8*, i8** %16, align 8
  %583 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.42, i64 0, i64 0), i8* %582)
  br label %584

584:                                              ; preds = %578, %571
  %585 = load i8*, i8** %16, align 8
  %586 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 4), align 8
  %587 = load i32, i32* %27, align 4
  %588 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.43, i64 0, i64 0), i8* %585, i32 %586, i32 %587)
  %589 = load i32, i32* %27, align 4
  store i32 %589, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 4), align 8
  br label %590

590:                                              ; preds = %584, %567
  br label %591

591:                                              ; preds = %590, %560
  %592 = load i32, i32* %29, align 4
  %593 = icmp ne i32 %592, 0
  br i1 %593, label %594, label %637

594:                                              ; preds = %591
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i64 0, i64 0), i8** %16, align 8
  %595 = load i8*, i8** %10, align 8
  %596 = call i64 @strcmp(i8* %595, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %597 = icmp eq i64 %596, 0
  br i1 %597, label %598, label %613

598:                                              ; preds = %594
  %599 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %600 = load i32, i32* @FS_MULTILABEL, align 4
  %601 = and i32 %599, %600
  %602 = icmp ne i32 %601, 0
  br i1 %602, label %603, label %606

603:                                              ; preds = %598
  %604 = load i8*, i8** %16, align 8
  %605 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i64 0, i64 0), i8* %604)
  br label %612

606:                                              ; preds = %598
  %607 = load i32, i32* @FS_MULTILABEL, align 4
  %608 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %609 = or i32 %608, %607
  store i32 %609, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %610 = load i8*, i8** %16, align 8
  %611 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8* %610)
  br label %612

612:                                              ; preds = %606, %603
  br label %636

613:                                              ; preds = %594
  %614 = load i8*, i8** %10, align 8
  %615 = call i64 @strcmp(i8* %614, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %616 = icmp eq i64 %615, 0
  br i1 %616, label %617, label %635

617:                                              ; preds = %613
  %618 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %619 = xor i32 %618, -1
  %620 = load i32, i32* @FS_MULTILABEL, align 4
  %621 = and i32 %619, %620
  %622 = load i32, i32* @FS_MULTILABEL, align 4
  %623 = icmp eq i32 %621, %622
  br i1 %623, label %624, label %627

624:                                              ; preds = %617
  %625 = load i8*, i8** %16, align 8
  %626 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.32, i64 0, i64 0), i8* %625)
  br label %634

627:                                              ; preds = %617
  %628 = load i32, i32* @FS_MULTILABEL, align 4
  %629 = xor i32 %628, -1
  %630 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %631 = and i32 %630, %629
  store i32 %631, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %632 = load i8*, i8** %16, align 8
  %633 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0), i8* %632)
  br label %634

634:                                              ; preds = %627, %624
  br label %635

635:                                              ; preds = %634, %613
  br label %636

636:                                              ; preds = %635, %612
  br label %637

637:                                              ; preds = %636, %591
  %638 = load i32, i32* %30, align 4
  %639 = icmp ne i32 %638, 0
  br i1 %639, label %640, label %683

640:                                              ; preds = %637
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i8** %16, align 8
  %641 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 6), align 8
  %642 = load i32, i32* %31, align 4
  %643 = icmp eq i32 %641, %642
  br i1 %643, label %644, label %648

644:                                              ; preds = %640
  %645 = load i8*, i8** %16, align 8
  %646 = load i32, i32* %31, align 4
  %647 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.45, i64 0, i64 0), i8* %645, i32 %646)
  br label %682

648:                                              ; preds = %640
  %649 = load i8*, i8** %16, align 8
  %650 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 6), align 8
  %651 = load i32, i32* %31, align 4
  %652 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.46, i64 0, i64 0), i8* %649, i32 %650, i32 %651)
  %653 = load i32, i32* %31, align 4
  store i32 %653, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 6), align 8
  %654 = load i32, i32* %31, align 4
  %655 = load i32, i32* @MINFREE, align 4
  %656 = icmp sge i32 %654, %655
  br i1 %656, label %657, label %667

657:                                              ; preds = %648
  %658 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 7), align 8
  %659 = load i64, i64* @FS_OPTSPACE, align 8
  %660 = icmp eq i64 %658, %659
  br i1 %660, label %661, label %667

661:                                              ; preds = %657
  %662 = load i32, i32* @OPTWARN, align 4
  %663 = sext i32 %662 to i64
  %664 = inttoptr i64 %663 to i8*
  %665 = load i32, i32* @MINFREE, align 4
  %666 = call i32 (i8*, ...) @warnx(i8* %664, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0), i32 %665)
  br label %667

667:                                              ; preds = %661, %657, %648
  %668 = load i32, i32* %31, align 4
  %669 = load i32, i32* @MINFREE, align 4
  %670 = icmp slt i32 %668, %669
  br i1 %670, label %671, label %681

671:                                              ; preds = %667
  %672 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 7), align 8
  %673 = load i64, i64* @FS_OPTTIME, align 8
  %674 = icmp eq i64 %672, %673
  br i1 %674, label %675, label %681

675:                                              ; preds = %671
  %676 = load i32, i32* @OPTWARN, align 4
  %677 = sext i32 %676 to i64
  %678 = inttoptr i64 %677 to i8*
  %679 = load i32, i32* @MINFREE, align 4
  %680 = call i32 (i8*, ...) @warnx(i8* %678, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0), i32 %679)
  br label %681

681:                                              ; preds = %675, %671, %667
  br label %682

682:                                              ; preds = %681, %644
  br label %683

683:                                              ; preds = %682, %637
  %684 = load i32, i32* %32, align 4
  %685 = icmp ne i32 %684, 0
  br i1 %685, label %686, label %738

686:                                              ; preds = %683
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i8** %16, align 8
  %687 = load i8*, i8** %11, align 8
  %688 = call i64 @strcmp(i8* %687, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %689 = icmp eq i64 %688, 0
  br i1 %689, label %690, label %714

690:                                              ; preds = %686
  %691 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %692 = load i32, i32* @FS_NFS4ACLS, align 4
  %693 = and i32 %691, %692
  %694 = icmp ne i32 %693, 0
  br i1 %694, label %695, label %698

695:                                              ; preds = %690
  %696 = load i8*, i8** %16, align 8
  %697 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i64 0, i64 0), i8* %696)
  br label %713

698:                                              ; preds = %690
  %699 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %700 = load i32, i32* @FS_ACLS, align 4
  %701 = and i32 %699, %700
  %702 = icmp ne i32 %701, 0
  br i1 %702, label %703, label %706

703:                                              ; preds = %698
  %704 = load i8*, i8** %16, align 8
  %705 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.49, i64 0, i64 0), i8* %704)
  br label %712

706:                                              ; preds = %698
  %707 = load i32, i32* @FS_NFS4ACLS, align 4
  %708 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %709 = or i32 %708, %707
  store i32 %709, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %710 = load i8*, i8** %16, align 8
  %711 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8* %710)
  br label %712

712:                                              ; preds = %706, %703
  br label %713

713:                                              ; preds = %712, %695
  br label %737

714:                                              ; preds = %686
  %715 = load i8*, i8** %11, align 8
  %716 = call i64 @strcmp(i8* %715, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %717 = icmp eq i64 %716, 0
  br i1 %717, label %718, label %736

718:                                              ; preds = %714
  %719 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %720 = xor i32 %719, -1
  %721 = load i32, i32* @FS_NFS4ACLS, align 4
  %722 = and i32 %720, %721
  %723 = load i32, i32* @FS_NFS4ACLS, align 4
  %724 = icmp eq i32 %722, %723
  br i1 %724, label %725, label %728

725:                                              ; preds = %718
  %726 = load i8*, i8** %16, align 8
  %727 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.32, i64 0, i64 0), i8* %726)
  br label %735

728:                                              ; preds = %718
  %729 = load i32, i32* @FS_NFS4ACLS, align 4
  %730 = xor i32 %729, -1
  %731 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %732 = and i32 %731, %730
  store i32 %732, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %733 = load i8*, i8** %16, align 8
  %734 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0), i8* %733)
  br label %735

735:                                              ; preds = %728, %725
  br label %736

736:                                              ; preds = %735, %714
  br label %737

737:                                              ; preds = %736, %713
  br label %738

738:                                              ; preds = %737, %683
  %739 = load i32, i32* %33, align 4
  %740 = icmp ne i32 %739, 0
  br i1 %740, label %741, label %791

741:                                              ; preds = %738
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i8** %16, align 8
  %742 = load i8*, i8** %12, align 8
  %743 = call i64 @strcmp(i8* %742, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %744 = icmp eq i64 %743, 0
  br i1 %744, label %745, label %767

745:                                              ; preds = %741
  %746 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %747 = load i32, i32* @FS_DOSOFTDEP, align 4
  %748 = and i32 %746, %747
  %749 = icmp ne i32 %748, 0
  br i1 %749, label %750, label %753

750:                                              ; preds = %745
  %751 = load i8*, i8** %16, align 8
  %752 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i64 0, i64 0), i8* %751)
  br label %766

753:                                              ; preds = %745
  %754 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 3), align 8
  %755 = icmp eq i64 %754, 0
  br i1 %755, label %756, label %759

756:                                              ; preds = %753
  %757 = load i8*, i8** %16, align 8
  %758 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.37, i64 0, i64 0), i8* %757)
  br label %765

759:                                              ; preds = %753
  %760 = load i32, i32* @FS_DOSOFTDEP, align 4
  %761 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %762 = or i32 %761, %760
  store i32 %762, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %763 = load i8*, i8** %16, align 8
  %764 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8* %763)
  br label %765

765:                                              ; preds = %759, %756
  br label %766

766:                                              ; preds = %765, %750
  br label %790

767:                                              ; preds = %741
  %768 = load i8*, i8** %12, align 8
  %769 = call i64 @strcmp(i8* %768, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %770 = icmp eq i64 %769, 0
  br i1 %770, label %771, label %789

771:                                              ; preds = %767
  %772 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %773 = xor i32 %772, -1
  %774 = load i32, i32* @FS_DOSOFTDEP, align 4
  %775 = and i32 %773, %774
  %776 = load i32, i32* @FS_DOSOFTDEP, align 4
  %777 = icmp eq i32 %775, %776
  br i1 %777, label %778, label %781

778:                                              ; preds = %771
  %779 = load i8*, i8** %16, align 8
  %780 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.32, i64 0, i64 0), i8* %779)
  br label %788

781:                                              ; preds = %771
  %782 = load i32, i32* @FS_DOSOFTDEP, align 4
  %783 = xor i32 %782, -1
  %784 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %785 = and i32 %784, %783
  store i32 %785, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %786 = load i8*, i8** %16, align 8
  %787 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0), i8* %786)
  br label %788

788:                                              ; preds = %781, %778
  br label %789

789:                                              ; preds = %788, %767
  br label %790

790:                                              ; preds = %789, %766
  br label %791

791:                                              ; preds = %790, %738
  %792 = load i32, i32* %34, align 4
  %793 = icmp ne i32 %792, 0
  br i1 %793, label %794, label %853

794:                                              ; preds = %791
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i8** %16, align 8
  %795 = load i64, i64* @FS_OPTSPACE, align 8
  %796 = getelementptr inbounds [2 x i8*], [2 x i8*]* %45, i64 0, i64 %795
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8** %796, align 8
  %797 = load i64, i64* @FS_OPTTIME, align 8
  %798 = getelementptr inbounds [2 x i8*], [2 x i8*]* %45, i64 0, i64 %797
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8** %798, align 8
  %799 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 7), align 8
  %800 = load i32, i32* %35, align 4
  %801 = sext i32 %800 to i64
  %802 = icmp eq i64 %799, %801
  br i1 %802, label %803, label %810

803:                                              ; preds = %794
  %804 = load i8*, i8** %16, align 8
  %805 = load i32, i32* %35, align 4
  %806 = sext i32 %805 to i64
  %807 = getelementptr inbounds [2 x i8*], [2 x i8*]* %45, i64 0, i64 %806
  %808 = load i8*, i8** %807, align 8
  %809 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i64 0, i64 0), i8* %804, i8* %808)
  br label %852

810:                                              ; preds = %794
  %811 = load i8*, i8** %16, align 8
  %812 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 7), align 8
  %813 = getelementptr inbounds [2 x i8*], [2 x i8*]* %45, i64 0, i64 %812
  %814 = load i8*, i8** %813, align 8
  %815 = load i32, i32* %35, align 4
  %816 = sext i32 %815 to i64
  %817 = getelementptr inbounds [2 x i8*], [2 x i8*]* %45, i64 0, i64 %816
  %818 = load i8*, i8** %817, align 8
  %819 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.51, i64 0, i64 0), i8* %811, i8* %814, i8* %818)
  %820 = load i32, i32* %35, align 4
  %821 = sext i32 %820 to i64
  store i64 %821, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 7), align 8
  %822 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 6), align 8
  %823 = load i32, i32* @MINFREE, align 4
  %824 = icmp sge i32 %822, %823
  br i1 %824, label %825, label %836

825:                                              ; preds = %810
  %826 = load i32, i32* %35, align 4
  %827 = sext i32 %826 to i64
  %828 = load i64, i64* @FS_OPTSPACE, align 8
  %829 = icmp eq i64 %827, %828
  br i1 %829, label %830, label %836

830:                                              ; preds = %825
  %831 = load i32, i32* @OPTWARN, align 4
  %832 = sext i32 %831 to i64
  %833 = inttoptr i64 %832 to i8*
  %834 = load i32, i32* @MINFREE, align 4
  %835 = call i32 (i8*, ...) @warnx(i8* %833, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0), i32 %834)
  br label %836

836:                                              ; preds = %830, %825, %810
  %837 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 6), align 8
  %838 = load i32, i32* @MINFREE, align 4
  %839 = icmp slt i32 %837, %838
  br i1 %839, label %840, label %851

840:                                              ; preds = %836
  %841 = load i32, i32* %35, align 4
  %842 = sext i32 %841 to i64
  %843 = load i64, i64* @FS_OPTTIME, align 8
  %844 = icmp eq i64 %842, %843
  br i1 %844, label %845, label %851

845:                                              ; preds = %840
  %846 = load i32, i32* @OPTWARN, align 4
  %847 = sext i32 %846 to i64
  %848 = inttoptr i64 %847 to i8*
  %849 = load i32, i32* @MINFREE, align 4
  %850 = call i32 (i8*, ...) @warnx(i8* %848, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0), i32 %849)
  br label %851

851:                                              ; preds = %845, %840, %836
  br label %852

852:                                              ; preds = %851, %803
  br label %853

853:                                              ; preds = %852, %791
  %854 = load i32, i32* %37, align 4
  %855 = icmp ne i32 %854, 0
  br i1 %855, label %856, label %871

856:                                              ; preds = %853
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0), i8** %16, align 8
  %857 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 8), align 8
  %858 = load i32, i32* %38, align 4
  %859 = icmp eq i32 %857, %858
  br i1 %859, label %860, label %864

860:                                              ; preds = %856
  %861 = load i8*, i8** %16, align 8
  %862 = load i32, i32* %38, align 4
  %863 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i64 0, i64 0), i8* %861, i32 %862)
  br label %870

864:                                              ; preds = %856
  %865 = load i8*, i8** %16, align 8
  %866 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 8), align 8
  %867 = load i32, i32* %38, align 4
  %868 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0), i8* %865, i32 %866, i32 %867)
  %869 = load i32, i32* %38, align 4
  store i32 %869, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 8), align 8
  br label %870

870:                                              ; preds = %864, %860
  br label %871

871:                                              ; preds = %870, %853
  %872 = load i32, i32* %40, align 4
  %873 = icmp ne i32 %872, 0
  br i1 %873, label %874, label %917

874:                                              ; preds = %871
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.52, i64 0, i64 0), i8** %16, align 8
  %875 = load i8*, i8** %13, align 8
  %876 = call i64 @strcmp(i8* %875, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %877 = icmp eq i64 %876, 0
  br i1 %877, label %878, label %893

878:                                              ; preds = %874
  %879 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %880 = load i32, i32* @FS_TRIM, align 4
  %881 = and i32 %879, %880
  %882 = icmp ne i32 %881, 0
  br i1 %882, label %883, label %886

883:                                              ; preds = %878
  %884 = load i8*, i8** %16, align 8
  %885 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i64 0, i64 0), i8* %884)
  br label %892

886:                                              ; preds = %878
  %887 = load i32, i32* @FS_TRIM, align 4
  %888 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %889 = or i32 %888, %887
  store i32 %889, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %890 = load i8*, i8** %16, align 8
  %891 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8* %890)
  br label %892

892:                                              ; preds = %886, %883
  br label %916

893:                                              ; preds = %874
  %894 = load i8*, i8** %13, align 8
  %895 = call i64 @strcmp(i8* %894, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %896 = icmp eq i64 %895, 0
  br i1 %896, label %897, label %915

897:                                              ; preds = %893
  %898 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %899 = xor i32 %898, -1
  %900 = load i32, i32* @FS_TRIM, align 4
  %901 = and i32 %899, %900
  %902 = load i32, i32* @FS_TRIM, align 4
  %903 = icmp eq i32 %901, %902
  br i1 %903, label %904, label %907

904:                                              ; preds = %897
  %905 = load i8*, i8** %16, align 8
  %906 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.32, i64 0, i64 0), i8* %905)
  br label %914

907:                                              ; preds = %897
  %908 = load i32, i32* @FS_TRIM, align 4
  %909 = xor i32 %908, -1
  %910 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %911 = and i32 %910, %909
  store i32 %911, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @sblock, i32 0, i32 0), align 8
  %912 = load i8*, i8** %16, align 8
  %913 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0), i8* %912)
  br label %914

914:                                              ; preds = %907, %904
  br label %915

915:                                              ; preds = %914, %893
  br label %916

916:                                              ; preds = %915, %892
  br label %917

917:                                              ; preds = %916, %871
  %918 = load i32, i32* %18, align 4
  %919 = call i32 @sbwrite(%struct.TYPE_7__* @disk, i32 %918)
  %920 = icmp eq i32 %919, -1
  br i1 %920, label %921, label %922

921:                                              ; preds = %917
  br label %958

922:                                              ; preds = %917
  %923 = call i32 @ufs_disk_close(%struct.TYPE_7__* @disk)
  %924 = load i32, i32* %17, align 4
  %925 = icmp ne i32 %924, 0
  br i1 %925, label %926, label %956

926:                                              ; preds = %922
  %927 = call i32 (%struct.iovec**, i32*, i8*, i8*, ...) @build_iovec_argf(%struct.iovec** %47, i32* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0))
  %928 = load i8*, i8** %15, align 8
  %929 = call i32 (%struct.iovec**, i32*, i8*, i8*, ...) @build_iovec_argf(%struct.iovec** %47, i32* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0), i8* %928)
  %930 = getelementptr inbounds [255 x i8], [255 x i8]* %48, i64 0, i64 0
  %931 = call i32 @build_iovec(%struct.iovec** %47, i32* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0), i8* %930, i32 255)
  %932 = load %struct.iovec*, %struct.iovec** %47, align 8
  %933 = load i32, i32* %44, align 4
  %934 = getelementptr inbounds %struct.statfs, %struct.statfs* %46, i32 0, i32 1
  %935 = load i32, i32* %934, align 8
  %936 = load i32, i32* @MNT_UPDATE, align 4
  %937 = or i32 %935, %936
  %938 = load i32, i32* @MNT_RELOAD, align 4
  %939 = or i32 %937, %938
  %940 = call i64 @nmount(%struct.iovec* %932, i32 %933, i32 %939)
  %941 = icmp slt i64 %940, 0
  br i1 %941, label %942, label %954

942:                                              ; preds = %926
  %943 = getelementptr inbounds [255 x i8], [255 x i8]* %48, i64 0, i64 0
  %944 = load i8, i8* %943, align 16
  %945 = icmp ne i8 %944, 0
  br i1 %945, label %946, label %950

946:                                              ; preds = %942
  %947 = load i8*, i8** %14, align 8
  %948 = getelementptr inbounds [255 x i8], [255 x i8]* %48, i64 0, i64 0
  %949 = call i32 (i32, i8*, i8*, ...) @err(i32 9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i64 0, i64 0), i8* %947, i8* %948)
  br label %953

950:                                              ; preds = %942
  %951 = load i8*, i8** %14, align 8
  %952 = call i32 (i32, i8*, i8*, ...) @err(i32 9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.59, i64 0, i64 0), i8* %951)
  br label %953

953:                                              ; preds = %950, %946
  br label %954

954:                                              ; preds = %953, %926
  %955 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.60, i64 0, i64 0))
  br label %956

956:                                              ; preds = %954, %922
  %957 = call i32 @exit(i32 0) #4
  unreachable

958:                                              ; preds = %921, %319
  %959 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @disk, i32 0, i32 1), align 8
  %960 = icmp ne i8* %959, null
  br i1 %960, label %961, label %965

961:                                              ; preds = %958
  %962 = load i8*, i8** %14, align 8
  %963 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @disk, i32 0, i32 1), align 8
  %964 = call i32 (i32, i8*, i8*, ...) @errx(i32 11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i64 0, i64 0), i8* %962, i8* %963)
  br label %968

965:                                              ; preds = %958
  %966 = load i8*, i8** %14, align 8
  %967 = call i32 (i32, i8*, i8*, ...) @err(i32 12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0), i8* %966)
  br label %968

968:                                              ; preds = %965, %961
  %969 = load i32, i32* %3, align 4
  ret i32 %969
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @usage(...) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @errx(i32, i8*, i8*, ...) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @isalnum(i8 signext) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @ufs_disk_fillout(%struct.TYPE_7__*, i8*) #2

declare dso_local i64 @statfs(i8*, %struct.statfs*) #2

declare dso_local i32 @warn(i8*, i8*) #2

declare dso_local i32 @printfs(...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @strncpy(i32, i8*, i32) #2

declare dso_local i32 @warnx(i8*, ...) #2

declare dso_local i64 @journal_alloc(i32) #2

declare dso_local i32 @journal_clear(...) #2

declare dso_local i32 @blknum(%struct.TYPE_8__*, i32) #2

declare dso_local i32 @sbwrite(%struct.TYPE_7__*, i32) #2

declare dso_local i32 @ufs_disk_close(%struct.TYPE_7__*) #2

declare dso_local i32 @build_iovec_argf(%struct.iovec**, i32*, i8*, i8*, ...) #2

declare dso_local i32 @build_iovec(%struct.iovec**, i32*, i8*, i8*, i32) #2

declare dso_local i64 @nmount(%struct.iovec*, i32, i32) #2

declare dso_local i32 @err(i32, i8*, i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
