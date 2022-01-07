; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_pass2.c_pass2check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_pass2.c_pass2check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.inodesc = type { i32, i64, %struct.direct* }
%struct.direct = type { i64, i8*, i64, i32, i32 }
%struct.inoinfo = type { i64, i64 }
%union.dinode = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i64 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@maxino = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"BAD INODE NUMBER FOR '.'\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"FIX\00", align 1
@ALTERED = common dso_local global i32 0, align 4
@DT_DIR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"BAD TYPE VALUE FOR '.'\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"MISSING '.'\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"CANNOT FIX, FIRST ENTRY IN DIRECTORY CONTAINS %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"CANNOT FIX, INSUFFICIENT SPACE TO ADD '.'\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"BAD TYPE VALUE FOR '..'\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"MISSING '..'\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"CANNOT FIX, SECOND ENTRY IN DIRECTORY CONTAINS %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"CANNOT FIX, INSUFFICIENT SPACE TO ADD '..'\0A\00", align 1
@KEEPON = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [16 x i8] c"EXTRA '.' ENTRY\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"EXTRA '..' ENTRY\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"I OUT OF RANGE\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"REMOVE\00", align 1
@UFS_WINO = common dso_local global i64 0, align 8
@DT_WHT = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [19 x i8] c"BAD WHITEOUT ENTRY\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"UNALLOCATED\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"DUP/BAD\00", align 1
@preen = common dso_local global i32 0, align 4
@usedsoftdep = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [22 x i8] c"ZERO LENGTH DIRECTORY\00", align 1
@cursnapshot = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [31 x i8] c"ZERO LENGTH DIRECTORY %s I=%ju\00", align 1
@cmd = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.21 = private unnamed_addr constant [15 x i8] c"vfs.ffs.setcwd\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c" (IGNORED)\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c" (REMOVAL FAILED: %s)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [12 x i8] c" (REMOVED)\0A\00", align 1
@di_mode = common dso_local global i32 0, align 4
@IFMT = common dso_local global i32 0, align 4
@IFDIR = common dso_local global i32 0, align 4
@di_nlink = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [15 x i8] c"BAD TYPE VALUE\00", align 1
@EEXIT = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [29 x i8] c"BAD STATE %d FOR INODE I=%ju\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inodesc*)* @pass2check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pass2check(%struct.inodesc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inodesc*, align 8
  %4 = alloca %struct.direct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.inoinfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.dinode*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.direct, align 8
  %14 = alloca i32, align 4
  store %struct.inodesc* %0, %struct.inodesc** %3, align 8
  %15 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %16 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %15, i32 0, i32 2
  %17 = load %struct.direct*, %struct.direct** %16, align 8
  store %struct.direct* %17, %struct.direct** %4, align 8
  %18 = load i32, i32* @MAXPATHLEN, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %5, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %6, align 8
  store i32 0, i32* %10, align 4
  %23 = load %struct.direct*, %struct.direct** %4, align 8
  %24 = getelementptr inbounds %struct.direct, %struct.direct* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @maxino, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %410

29:                                               ; preds = %1
  %30 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %31 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %201

35:                                               ; preds = %29
  %36 = load %struct.direct*, %struct.direct** %4, align 8
  %37 = getelementptr inbounds %struct.direct, %struct.direct* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %93

40:                                               ; preds = %35
  %41 = load %struct.direct*, %struct.direct** %4, align 8
  %42 = getelementptr inbounds %struct.direct, %struct.direct* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %93

46:                                               ; preds = %40
  %47 = load %struct.direct*, %struct.direct** %4, align 8
  %48 = getelementptr inbounds %struct.direct, %struct.direct* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %51 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %46
  %55 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %56 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @direrror(i64 %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %60 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.direct*, %struct.direct** %4, align 8
  %63 = getelementptr inbounds %struct.direct, %struct.direct* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = call i32 @reply(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %70

66:                                               ; preds = %54
  %67 = load i32, i32* @ALTERED, align 4
  %68 = load i32, i32* %10, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %66, %54
  br label %71

71:                                               ; preds = %70, %46
  %72 = load %struct.direct*, %struct.direct** %4, align 8
  %73 = getelementptr inbounds %struct.direct, %struct.direct* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @DT_DIR, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %92

77:                                               ; preds = %71
  %78 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %79 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @direrror(i64 %80, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i64, i64* @DT_DIR, align 8
  %83 = load %struct.direct*, %struct.direct** %4, align 8
  %84 = getelementptr inbounds %struct.direct, %struct.direct* %83, i32 0, i32 2
  store i64 %82, i64* %84, align 8
  %85 = call i32 @reply(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %91

87:                                               ; preds = %77
  %88 = load i32, i32* @ALTERED, align 4
  %89 = load i32, i32* %10, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %87, %77
  br label %92

92:                                               ; preds = %91, %71
  br label %201

93:                                               ; preds = %40, %35
  %94 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %95 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @direrror(i64 %96, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %98 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %99 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.direct, %struct.direct* %13, i32 0, i32 0
  store i64 %100, i64* %101, align 8
  %102 = load i64, i64* @DT_DIR, align 8
  %103 = getelementptr inbounds %struct.direct, %struct.direct* %13, i32 0, i32 2
  store i64 %102, i64* %103, align 8
  %104 = getelementptr inbounds %struct.direct, %struct.direct* %13, i32 0, i32 3
  store i32 1, i32* %104, align 8
  %105 = getelementptr inbounds %struct.direct, %struct.direct* %13, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @strcpy(i8* %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %108 = call i32 @DIRSIZ(i32 0, %struct.direct* %13)
  store i32 %108, i32* %9, align 4
  %109 = load %struct.direct*, %struct.direct** %4, align 8
  %110 = getelementptr inbounds %struct.direct, %struct.direct* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %93
  %114 = load %struct.direct*, %struct.direct** %4, align 8
  %115 = getelementptr inbounds %struct.direct, %struct.direct* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = call i64 @strcmp(i8* %116, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %113
  %120 = load %struct.direct*, %struct.direct** %4, align 8
  %121 = getelementptr inbounds %struct.direct, %struct.direct* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i8* %122)
  br label %200

124:                                              ; preds = %113, %93
  %125 = load %struct.direct*, %struct.direct** %4, align 8
  %126 = getelementptr inbounds %struct.direct, %struct.direct* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %9, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  %131 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  br label %199

132:                                              ; preds = %124
  %133 = load %struct.direct*, %struct.direct** %4, align 8
  %134 = getelementptr inbounds %struct.direct, %struct.direct* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %9, align 4
  %137 = mul nsw i32 2, %136
  %138 = icmp slt i32 %135, %137
  br i1 %138, label %139, label %155

139:                                              ; preds = %132
  %140 = load %struct.direct*, %struct.direct** %4, align 8
  %141 = getelementptr inbounds %struct.direct, %struct.direct* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds %struct.direct, %struct.direct* %13, i32 0, i32 4
  store i32 %142, i32* %143, align 4
  %144 = load %struct.direct*, %struct.direct** %4, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = call i32 @memmove(%struct.direct* %144, %struct.direct* %13, i64 %146)
  %148 = call i32 @reply(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %149 = icmp eq i32 %148, 1
  br i1 %149, label %150, label %154

150:                                              ; preds = %139
  %151 = load i32, i32* @ALTERED, align 4
  %152 = load i32, i32* %10, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %10, align 4
  br label %154

154:                                              ; preds = %150, %139
  br label %198

155:                                              ; preds = %132
  %156 = load %struct.direct*, %struct.direct** %4, align 8
  %157 = getelementptr inbounds %struct.direct, %struct.direct* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %9, align 4
  %160 = sub nsw i32 %158, %159
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %9, align 4
  %162 = getelementptr inbounds %struct.direct, %struct.direct* %13, i32 0, i32 4
  store i32 %161, i32* %162, align 4
  %163 = load %struct.direct*, %struct.direct** %4, align 8
  %164 = load i32, i32* %9, align 4
  %165 = sext i32 %164 to i64
  %166 = call i32 @memmove(%struct.direct* %163, %struct.direct* %13, i64 %165)
  %167 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %168 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %168, align 8
  %171 = load %struct.direct*, %struct.direct** %4, align 8
  %172 = getelementptr inbounds %struct.direct, %struct.direct* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = call %struct.TYPE_5__* @inoinfo(i64 %173)
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = add nsw i32 %176, -1
  store i32 %177, i32* %175, align 8
  %178 = load %struct.direct*, %struct.direct** %4, align 8
  %179 = bitcast %struct.direct* %178 to i8*
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %179, i64 %181
  %183 = bitcast i8* %182 to %struct.direct*
  store %struct.direct* %183, %struct.direct** %4, align 8
  %184 = load %struct.direct*, %struct.direct** %4, align 8
  %185 = load i32, i32* %8, align 4
  %186 = sext i32 %185 to i64
  %187 = call i32 @memset(%struct.direct* %184, i32 0, i64 %186)
  %188 = load i32, i32* %8, align 4
  %189 = load %struct.direct*, %struct.direct** %4, align 8
  %190 = getelementptr inbounds %struct.direct, %struct.direct* %189, i32 0, i32 4
  store i32 %188, i32* %190, align 4
  %191 = call i32 @reply(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %192 = icmp eq i32 %191, 1
  br i1 %192, label %193, label %197

193:                                              ; preds = %155
  %194 = load i32, i32* @ALTERED, align 4
  %195 = load i32, i32* %10, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %10, align 4
  br label %197

197:                                              ; preds = %193, %155
  br label %198

198:                                              ; preds = %197, %154
  br label %199

199:                                              ; preds = %198, %130
  br label %200

200:                                              ; preds = %199, %119
  br label %201

201:                                              ; preds = %200, %92, %34
  %202 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %203 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp sgt i32 %204, 1
  br i1 %205, label %206, label %207

206:                                              ; preds = %201
  br label %410

207:                                              ; preds = %201
  %208 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %209 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = call %struct.inoinfo* @getinoinfo(i64 %210)
  store %struct.inoinfo* %211, %struct.inoinfo** %7, align 8
  %212 = load %struct.inoinfo*, %struct.inoinfo** %7, align 8
  %213 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = getelementptr inbounds %struct.direct, %struct.direct* %13, i32 0, i32 0
  store i64 %214, i64* %215, align 8
  %216 = load i64, i64* @DT_DIR, align 8
  %217 = getelementptr inbounds %struct.direct, %struct.direct* %13, i32 0, i32 2
  store i64 %216, i64* %217, align 8
  %218 = getelementptr inbounds %struct.direct, %struct.direct* %13, i32 0, i32 3
  store i32 2, i32* %218, align 8
  %219 = getelementptr inbounds %struct.direct, %struct.direct* %13, i32 0, i32 1
  %220 = load i8*, i8** %219, align 8
  %221 = call i32 @strcpy(i8* %220, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %222 = call i32 @DIRSIZ(i32 0, %struct.direct* %13)
  store i32 %222, i32* %9, align 4
  %223 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %224 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %274

227:                                              ; preds = %207
  %228 = load %struct.direct*, %struct.direct** %4, align 8
  %229 = call i32 @DIRSIZ(i32 0, %struct.direct* %228)
  store i32 %229, i32* %8, align 4
  %230 = load %struct.direct*, %struct.direct** %4, align 8
  %231 = getelementptr inbounds %struct.direct, %struct.direct* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %8, align 4
  %234 = load i32, i32* %9, align 4
  %235 = add nsw i32 %233, %234
  %236 = icmp slt i32 %232, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %227
  br label %410

238:                                              ; preds = %227
  %239 = load %struct.direct*, %struct.direct** %4, align 8
  %240 = getelementptr inbounds %struct.direct, %struct.direct* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* %8, align 4
  %243 = sub nsw i32 %241, %242
  %244 = getelementptr inbounds %struct.direct, %struct.direct* %13, i32 0, i32 4
  store i32 %243, i32* %244, align 4
  %245 = load i32, i32* %8, align 4
  %246 = load %struct.direct*, %struct.direct** %4, align 8
  %247 = getelementptr inbounds %struct.direct, %struct.direct* %246, i32 0, i32 4
  store i32 %245, i32* %247, align 4
  %248 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %249 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %249, align 8
  %252 = load %struct.direct*, %struct.direct** %4, align 8
  %253 = getelementptr inbounds %struct.direct, %struct.direct* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = call %struct.TYPE_5__* @inoinfo(i64 %254)
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = add nsw i32 %257, -1
  store i32 %258, i32* %256, align 8
  %259 = load %struct.direct*, %struct.direct** %4, align 8
  %260 = bitcast %struct.direct* %259 to i8*
  %261 = load i32, i32* %8, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i8, i8* %260, i64 %262
  %264 = bitcast i8* %263 to %struct.direct*
  store %struct.direct* %264, %struct.direct** %4, align 8
  %265 = load %struct.direct*, %struct.direct** %4, align 8
  %266 = getelementptr inbounds %struct.direct, %struct.direct* %13, i32 0, i32 4
  %267 = load i32, i32* %266, align 4
  %268 = sext i32 %267 to i64
  %269 = call i32 @memset(%struct.direct* %265, i32 0, i64 %268)
  %270 = getelementptr inbounds %struct.direct, %struct.direct* %13, i32 0, i32 4
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.direct*, %struct.direct** %4, align 8
  %273 = getelementptr inbounds %struct.direct, %struct.direct* %272, i32 0, i32 4
  store i32 %271, i32* %273, align 4
  br label %274

274:                                              ; preds = %238, %207
  %275 = load %struct.direct*, %struct.direct** %4, align 8
  %276 = getelementptr inbounds %struct.direct, %struct.direct* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %312

279:                                              ; preds = %274
  %280 = load %struct.direct*, %struct.direct** %4, align 8
  %281 = getelementptr inbounds %struct.direct, %struct.direct* %280, i32 0, i32 1
  %282 = load i8*, i8** %281, align 8
  %283 = call i64 @strcmp(i8* %282, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %284 = icmp eq i64 %283, 0
  br i1 %284, label %285, label %312

285:                                              ; preds = %279
  %286 = load %struct.direct*, %struct.direct** %4, align 8
  %287 = getelementptr inbounds %struct.direct, %struct.direct* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = load %struct.inoinfo*, %struct.inoinfo** %7, align 8
  %290 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %289, i32 0, i32 1
  store i64 %288, i64* %290, align 8
  %291 = load %struct.direct*, %struct.direct** %4, align 8
  %292 = getelementptr inbounds %struct.direct, %struct.direct* %291, i32 0, i32 2
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @DT_DIR, align 8
  %295 = icmp ne i64 %293, %294
  br i1 %295, label %296, label %311

296:                                              ; preds = %285
  %297 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %298 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %297, i32 0, i32 1
  %299 = load i64, i64* %298, align 8
  %300 = call i32 @direrror(i64 %299, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %301 = load i64, i64* @DT_DIR, align 8
  %302 = load %struct.direct*, %struct.direct** %4, align 8
  %303 = getelementptr inbounds %struct.direct, %struct.direct* %302, i32 0, i32 2
  store i64 %301, i64* %303, align 8
  %304 = call i32 @reply(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %305 = icmp eq i32 %304, 1
  br i1 %305, label %306, label %310

306:                                              ; preds = %296
  %307 = load i32, i32* @ALTERED, align 4
  %308 = load i32, i32* %10, align 4
  %309 = or i32 %308, %307
  store i32 %309, i32* %10, align 4
  br label %310

310:                                              ; preds = %306, %296
  br label %311

311:                                              ; preds = %310, %285
  br label %410

312:                                              ; preds = %279, %274
  %313 = load %struct.direct*, %struct.direct** %4, align 8
  %314 = getelementptr inbounds %struct.direct, %struct.direct* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %337

317:                                              ; preds = %312
  %318 = load %struct.direct*, %struct.direct** %4, align 8
  %319 = getelementptr inbounds %struct.direct, %struct.direct* %318, i32 0, i32 1
  %320 = load i8*, i8** %319, align 8
  %321 = call i64 @strcmp(i8* %320, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %337

323:                                              ; preds = %317
  %324 = load %struct.inoinfo*, %struct.inoinfo** %7, align 8
  %325 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %328 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %327, i32 0, i32 1
  %329 = load i64, i64* %328, align 8
  %330 = call i32 @fileerror(i64 %326, i64 %329, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %331 = load %struct.direct*, %struct.direct** %4, align 8
  %332 = getelementptr inbounds %struct.direct, %struct.direct* %331, i32 0, i32 1
  %333 = load i8*, i8** %332, align 8
  %334 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0), i8* %333)
  %335 = load %struct.inoinfo*, %struct.inoinfo** %7, align 8
  %336 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %335, i32 0, i32 1
  store i64 -1, i64* %336, align 8
  br label %389

337:                                              ; preds = %317, %312
  %338 = load %struct.direct*, %struct.direct** %4, align 8
  %339 = getelementptr inbounds %struct.direct, %struct.direct* %338, i32 0, i32 4
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* %9, align 4
  %342 = icmp slt i32 %340, %341
  br i1 %342, label %343, label %354

343:                                              ; preds = %337
  %344 = load %struct.inoinfo*, %struct.inoinfo** %7, align 8
  %345 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %348 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %347, i32 0, i32 1
  %349 = load i64, i64* %348, align 8
  %350 = call i32 @fileerror(i64 %346, i64 %349, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %351 = call i32 (i8*, ...) @pfatal(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0))
  %352 = load %struct.inoinfo*, %struct.inoinfo** %7, align 8
  %353 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %352, i32 0, i32 1
  store i64 -1, i64* %353, align 8
  br label %388

354:                                              ; preds = %337
  %355 = load %struct.inoinfo*, %struct.inoinfo** %7, align 8
  %356 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %355, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %387

359:                                              ; preds = %354
  %360 = load %struct.inoinfo*, %struct.inoinfo** %7, align 8
  %361 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %360, i32 0, i32 0
  %362 = load i64, i64* %361, align 8
  %363 = load %struct.inoinfo*, %struct.inoinfo** %7, align 8
  %364 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %363, i32 0, i32 1
  store i64 %362, i64* %364, align 8
  %365 = load %struct.inoinfo*, %struct.inoinfo** %7, align 8
  %366 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %365, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %369 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %368, i32 0, i32 1
  %370 = load i64, i64* %369, align 8
  %371 = call i32 @fileerror(i64 %367, i64 %370, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %372 = load %struct.direct*, %struct.direct** %4, align 8
  %373 = getelementptr inbounds %struct.direct, %struct.direct* %372, i32 0, i32 4
  %374 = load i32, i32* %373, align 4
  %375 = getelementptr inbounds %struct.direct, %struct.direct* %13, i32 0, i32 4
  store i32 %374, i32* %375, align 4
  %376 = load %struct.direct*, %struct.direct** %4, align 8
  %377 = load i32, i32* %9, align 4
  %378 = sext i32 %377 to i64
  %379 = call i32 @memmove(%struct.direct* %376, %struct.direct* %13, i64 %378)
  %380 = call i32 @reply(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %381 = icmp eq i32 %380, 1
  br i1 %381, label %382, label %386

382:                                              ; preds = %359
  %383 = load i32, i32* @ALTERED, align 4
  %384 = load i32, i32* %10, align 4
  %385 = or i32 %384, %383
  store i32 %385, i32* %10, align 4
  br label %386

386:                                              ; preds = %382, %359
  br label %387

387:                                              ; preds = %386, %354
  br label %388

388:                                              ; preds = %387, %343
  br label %389

389:                                              ; preds = %388, %323
  %390 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %391 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = add nsw i32 %392, 1
  store i32 %393, i32* %391, align 8
  %394 = load %struct.direct*, %struct.direct** %4, align 8
  %395 = getelementptr inbounds %struct.direct, %struct.direct* %394, i32 0, i32 0
  %396 = load i64, i64* %395, align 8
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %406

398:                                              ; preds = %389
  %399 = load %struct.direct*, %struct.direct** %4, align 8
  %400 = getelementptr inbounds %struct.direct, %struct.direct* %399, i32 0, i32 0
  %401 = load i64, i64* %400, align 8
  %402 = call %struct.TYPE_5__* @inoinfo(i64 %401)
  %403 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = add nsw i32 %404, -1
  store i32 %405, i32* %403, align 8
  br label %406

406:                                              ; preds = %398, %389
  %407 = load i32, i32* %10, align 4
  %408 = load i32, i32* @KEEPON, align 4
  %409 = or i32 %407, %408
  store i32 %409, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %793

410:                                              ; preds = %311, %237, %206, %28
  %411 = load %struct.direct*, %struct.direct** %4, align 8
  %412 = getelementptr inbounds %struct.direct, %struct.direct* %411, i32 0, i32 0
  %413 = load i64, i64* %412, align 8
  %414 = icmp eq i64 %413, 0
  br i1 %414, label %415, label %419

415:                                              ; preds = %410
  %416 = load i32, i32* %10, align 4
  %417 = load i32, i32* @KEEPON, align 4
  %418 = or i32 %416, %417
  store i32 %418, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %793

419:                                              ; preds = %410
  %420 = load %struct.direct*, %struct.direct** %4, align 8
  %421 = getelementptr inbounds %struct.direct, %struct.direct* %420, i32 0, i32 3
  %422 = load i32, i32* %421, align 8
  %423 = icmp sle i32 %422, 2
  br i1 %423, label %424, label %485

424:                                              ; preds = %419
  %425 = load %struct.direct*, %struct.direct** %4, align 8
  %426 = getelementptr inbounds %struct.direct, %struct.direct* %425, i32 0, i32 1
  %427 = load i8*, i8** %426, align 8
  %428 = getelementptr inbounds i8, i8* %427, i64 0
  %429 = load i8, i8* %428, align 1
  %430 = sext i8 %429 to i32
  %431 = icmp eq i32 %430, 46
  br i1 %431, label %432, label %485

432:                                              ; preds = %424
  %433 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %434 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 8
  %436 = icmp sge i32 %435, 2
  br i1 %436, label %437, label %485

437:                                              ; preds = %432
  %438 = load %struct.direct*, %struct.direct** %4, align 8
  %439 = getelementptr inbounds %struct.direct, %struct.direct* %438, i32 0, i32 3
  %440 = load i32, i32* %439, align 8
  %441 = icmp eq i32 %440, 1
  br i1 %441, label %442, label %459

442:                                              ; preds = %437
  %443 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %444 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %443, i32 0, i32 1
  %445 = load i64, i64* %444, align 8
  %446 = call i32 @direrror(i64 %445, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %447 = load %struct.direct*, %struct.direct** %4, align 8
  %448 = getelementptr inbounds %struct.direct, %struct.direct* %447, i32 0, i32 0
  store i64 0, i64* %448, align 8
  %449 = call i32 @reply(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %450 = icmp eq i32 %449, 1
  br i1 %450, label %451, label %455

451:                                              ; preds = %442
  %452 = load i32, i32* @ALTERED, align 4
  %453 = load i32, i32* %10, align 4
  %454 = or i32 %453, %452
  store i32 %454, i32* %10, align 4
  br label %455

455:                                              ; preds = %451, %442
  %456 = load i32, i32* @KEEPON, align 4
  %457 = load i32, i32* %10, align 4
  %458 = or i32 %456, %457
  store i32 %458, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %793

459:                                              ; preds = %437
  %460 = load %struct.direct*, %struct.direct** %4, align 8
  %461 = getelementptr inbounds %struct.direct, %struct.direct* %460, i32 0, i32 1
  %462 = load i8*, i8** %461, align 8
  %463 = getelementptr inbounds i8, i8* %462, i64 1
  %464 = load i8, i8* %463, align 1
  %465 = sext i8 %464 to i32
  %466 = icmp eq i32 %465, 46
  br i1 %466, label %467, label %484

467:                                              ; preds = %459
  %468 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %469 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %468, i32 0, i32 1
  %470 = load i64, i64* %469, align 8
  %471 = call i32 @direrror(i64 %470, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  %472 = load %struct.direct*, %struct.direct** %4, align 8
  %473 = getelementptr inbounds %struct.direct, %struct.direct* %472, i32 0, i32 0
  store i64 0, i64* %473, align 8
  %474 = call i32 @reply(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %475 = icmp eq i32 %474, 1
  br i1 %475, label %476, label %480

476:                                              ; preds = %467
  %477 = load i32, i32* @ALTERED, align 4
  %478 = load i32, i32* %10, align 4
  %479 = or i32 %478, %477
  store i32 %479, i32* %10, align 4
  br label %480

480:                                              ; preds = %476, %467
  %481 = load i32, i32* @KEEPON, align 4
  %482 = load i32, i32* %10, align 4
  %483 = or i32 %481, %482
  store i32 %483, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %793

484:                                              ; preds = %459
  br label %485

485:                                              ; preds = %484, %432, %424, %419
  %486 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %487 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 8
  %489 = add nsw i32 %488, 1
  store i32 %489, i32* %487, align 8
  store i32 0, i32* %8, align 4
  %490 = load %struct.direct*, %struct.direct** %4, align 8
  %491 = getelementptr inbounds %struct.direct, %struct.direct* %490, i32 0, i32 0
  %492 = load i64, i64* %491, align 8
  %493 = load i64, i64* @maxino, align 8
  %494 = icmp sgt i64 %492, %493
  br i1 %494, label %495, label %504

495:                                              ; preds = %485
  %496 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %497 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %496, i32 0, i32 1
  %498 = load i64, i64* %497, align 8
  %499 = load %struct.direct*, %struct.direct** %4, align 8
  %500 = getelementptr inbounds %struct.direct, %struct.direct* %499, i32 0, i32 0
  %501 = load i64, i64* %500, align 8
  %502 = call i32 @fileerror(i64 %498, i64 %501, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  %503 = call i32 @reply(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  store i32 %503, i32* %8, align 4
  br label %778

504:                                              ; preds = %485
  %505 = load %struct.direct*, %struct.direct** %4, align 8
  %506 = getelementptr inbounds %struct.direct, %struct.direct* %505, i32 0, i32 0
  %507 = load i64, i64* %506, align 8
  %508 = load i64, i64* @UFS_WINO, align 8
  %509 = icmp eq i64 %507, %508
  br i1 %509, label %510, label %516

510:                                              ; preds = %504
  %511 = load %struct.direct*, %struct.direct** %4, align 8
  %512 = getelementptr inbounds %struct.direct, %struct.direct* %511, i32 0, i32 2
  %513 = load i64, i64* %512, align 8
  %514 = load i64, i64* @DT_WHT, align 8
  %515 = icmp ne i64 %513, %514
  br i1 %515, label %528, label %516

516:                                              ; preds = %510, %504
  %517 = load %struct.direct*, %struct.direct** %4, align 8
  %518 = getelementptr inbounds %struct.direct, %struct.direct* %517, i32 0, i32 0
  %519 = load i64, i64* %518, align 8
  %520 = load i64, i64* @UFS_WINO, align 8
  %521 = icmp ne i64 %519, %520
  br i1 %521, label %522, label %549

522:                                              ; preds = %516
  %523 = load %struct.direct*, %struct.direct** %4, align 8
  %524 = getelementptr inbounds %struct.direct, %struct.direct* %523, i32 0, i32 2
  %525 = load i64, i64* %524, align 8
  %526 = load i64, i64* @DT_WHT, align 8
  %527 = icmp eq i64 %525, %526
  br i1 %527, label %528, label %549

528:                                              ; preds = %522, %510
  %529 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %530 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %529, i32 0, i32 1
  %531 = load i64, i64* %530, align 8
  %532 = load %struct.direct*, %struct.direct** %4, align 8
  %533 = getelementptr inbounds %struct.direct, %struct.direct* %532, i32 0, i32 0
  %534 = load i64, i64* %533, align 8
  %535 = call i32 @fileerror(i64 %531, i64 %534, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0))
  %536 = load i64, i64* @UFS_WINO, align 8
  %537 = load %struct.direct*, %struct.direct** %4, align 8
  %538 = getelementptr inbounds %struct.direct, %struct.direct* %537, i32 0, i32 0
  store i64 %536, i64* %538, align 8
  %539 = load i64, i64* @DT_WHT, align 8
  %540 = load %struct.direct*, %struct.direct** %4, align 8
  %541 = getelementptr inbounds %struct.direct, %struct.direct* %540, i32 0, i32 2
  store i64 %539, i64* %541, align 8
  %542 = call i32 @reply(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %543 = icmp eq i32 %542, 1
  br i1 %543, label %544, label %548

544:                                              ; preds = %528
  %545 = load i32, i32* @ALTERED, align 4
  %546 = load i32, i32* %10, align 4
  %547 = or i32 %546, %545
  store i32 %547, i32* %10, align 4
  br label %548

548:                                              ; preds = %544, %528
  br label %777

549:                                              ; preds = %522, %516
  br label %550

550:                                              ; preds = %650, %549
  %551 = load %struct.direct*, %struct.direct** %4, align 8
  %552 = getelementptr inbounds %struct.direct, %struct.direct* %551, i32 0, i32 0
  %553 = load i64, i64* %552, align 8
  %554 = call %struct.TYPE_5__* @inoinfo(i64 %553)
  %555 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %554, i32 0, i32 1
  %556 = load i32, i32* %555, align 4
  switch i32 %556, label %763 [
    i32 128, label %557
    i32 135, label %572
    i32 131, label %572
    i32 133, label %677
    i32 132, label %677
    i32 134, label %692
    i32 130, label %721
    i32 129, label %721
  ]

557:                                              ; preds = %550
  %558 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %559 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %558, i32 0, i32 0
  %560 = load i32, i32* %559, align 8
  %561 = icmp sle i32 %560, 2
  br i1 %561, label %562, label %563

562:                                              ; preds = %557
  br label %776

563:                                              ; preds = %557
  %564 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %565 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %564, i32 0, i32 1
  %566 = load i64, i64* %565, align 8
  %567 = load %struct.direct*, %struct.direct** %4, align 8
  %568 = getelementptr inbounds %struct.direct, %struct.direct* %567, i32 0, i32 0
  %569 = load i64, i64* %568, align 8
  %570 = call i32 @fileerror(i64 %566, i64 %569, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  %571 = call i32 @reply(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  store i32 %571, i32* %8, align 4
  br label %776

572:                                              ; preds = %550, %550
  %573 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %574 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %573, i32 0, i32 0
  %575 = load i32, i32* %574, align 8
  %576 = icmp sle i32 %575, 2
  br i1 %576, label %577, label %578

577:                                              ; preds = %572
  br label %776

578:                                              ; preds = %572
  %579 = load %struct.direct*, %struct.direct** %4, align 8
  %580 = getelementptr inbounds %struct.direct, %struct.direct* %579, i32 0, i32 0
  %581 = load i64, i64* %580, align 8
  %582 = call %struct.TYPE_5__* @inoinfo(i64 %581)
  %583 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %582, i32 0, i32 1
  %584 = load i32, i32* %583, align 4
  %585 = icmp eq i32 %584, 131
  br i1 %585, label %586, label %587

586:                                              ; preds = %578
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i8** %12, align 8
  br label %638

587:                                              ; preds = %578
  %588 = load i32, i32* @preen, align 4
  %589 = icmp ne i32 %588, 0
  br i1 %589, label %594, label %590

590:                                              ; preds = %587
  %591 = load i32, i32* @usedsoftdep, align 4
  %592 = icmp ne i32 %591, 0
  br i1 %592, label %594, label %593

593:                                              ; preds = %590
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0), i8** %12, align 8
  br label %637

594:                                              ; preds = %590, %587
  %595 = load i32, i32* @cursnapshot, align 4
  %596 = icmp eq i32 %595, 0
  br i1 %596, label %597, label %598

597:                                              ; preds = %594
  store i32 1, i32* %8, align 4
  br label %776

598:                                              ; preds = %594
  %599 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %600 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %599, i32 0, i32 1
  %601 = load i64, i64* %600, align 8
  %602 = load %struct.direct*, %struct.direct** %4, align 8
  %603 = getelementptr inbounds %struct.direct, %struct.direct* %602, i32 0, i32 0
  %604 = load i64, i64* %603, align 8
  %605 = call i32 @getpathname(i8* %22, i64 %601, i64 %604)
  %606 = load %struct.direct*, %struct.direct** %4, align 8
  %607 = getelementptr inbounds %struct.direct, %struct.direct* %606, i32 0, i32 0
  %608 = load i64, i64* %607, align 8
  %609 = trunc i64 %608 to i32
  %610 = call i32 @pwarn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i8* %22, i32 %609)
  %611 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %612 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %611, i32 0, i32 1
  %613 = load i64, i64* %612, align 8
  store i64 %613, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cmd, i32 0, i32 0), align 8
  %614 = call i32 @sysctlbyname(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 0, i32 0, %struct.TYPE_4__* @cmd, i32 8)
  %615 = icmp eq i32 %614, -1
  br i1 %615, label %616, label %618

616:                                              ; preds = %598
  %617 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %776

618:                                              ; preds = %598
  %619 = load %struct.direct*, %struct.direct** %4, align 8
  %620 = getelementptr inbounds %struct.direct, %struct.direct* %619, i32 0, i32 1
  %621 = load i8*, i8** %620, align 8
  %622 = call i32 @rmdir(i8* %621)
  %623 = icmp eq i32 %622, -1
  br i1 %623, label %624, label %628

624:                                              ; preds = %618
  %625 = load i32, i32* @errno, align 4
  %626 = call i8* @strerror(i32 %625)
  %627 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i8* %626)
  store i32 1, i32* %8, align 4
  br label %776

628:                                              ; preds = %618
  %629 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %630 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %629, i32 0, i32 1
  %631 = load i64, i64* %630, align 8
  %632 = call %struct.TYPE_5__* @inoinfo(i64 %631)
  %633 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %632, i32 0, i32 0
  %634 = load i32, i32* %633, align 8
  %635 = add nsw i32 %634, -1
  store i32 %635, i32* %633, align 8
  %636 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0))
  br label %776

637:                                              ; preds = %593
  br label %638

638:                                              ; preds = %637, %586
  %639 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %640 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %639, i32 0, i32 1
  %641 = load i64, i64* %640, align 8
  %642 = load %struct.direct*, %struct.direct** %4, align 8
  %643 = getelementptr inbounds %struct.direct, %struct.direct* %642, i32 0, i32 0
  %644 = load i64, i64* %643, align 8
  %645 = load i8*, i8** %12, align 8
  %646 = call i32 @fileerror(i64 %641, i64 %644, i8* %645)
  %647 = call i32 @reply(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  store i32 %647, i32* %8, align 4
  %648 = icmp eq i32 %647, 1
  br i1 %648, label %649, label %650

649:                                              ; preds = %638
  br label %776

650:                                              ; preds = %638
  %651 = load %struct.direct*, %struct.direct** %4, align 8
  %652 = getelementptr inbounds %struct.direct, %struct.direct* %651, i32 0, i32 0
  %653 = load i64, i64* %652, align 8
  %654 = call %union.dinode* @ginode(i64 %653)
  store %union.dinode* %654, %union.dinode** %11, align 8
  %655 = load %union.dinode*, %union.dinode** %11, align 8
  %656 = load i32, i32* @di_mode, align 4
  %657 = call i32 @DIP(%union.dinode* %655, i32 %656)
  %658 = load i32, i32* @IFMT, align 4
  %659 = and i32 %657, %658
  %660 = load i32, i32* @IFDIR, align 4
  %661 = icmp eq i32 %659, %660
  %662 = zext i1 %661 to i64
  %663 = select i1 %661, i32 133, i32 130
  %664 = load %struct.direct*, %struct.direct** %4, align 8
  %665 = getelementptr inbounds %struct.direct, %struct.direct* %664, i32 0, i32 0
  %666 = load i64, i64* %665, align 8
  %667 = call %struct.TYPE_5__* @inoinfo(i64 %666)
  %668 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %667, i32 0, i32 1
  store i32 %663, i32* %668, align 4
  %669 = load %union.dinode*, %union.dinode** %11, align 8
  %670 = load i32, i32* @di_nlink, align 4
  %671 = call i32 @DIP(%union.dinode* %669, i32 %670)
  %672 = load %struct.direct*, %struct.direct** %4, align 8
  %673 = getelementptr inbounds %struct.direct, %struct.direct* %672, i32 0, i32 0
  %674 = load i64, i64* %673, align 8
  %675 = call %struct.TYPE_5__* @inoinfo(i64 %674)
  %676 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %675, i32 0, i32 0
  store i32 %671, i32* %676, align 8
  br label %550

677:                                              ; preds = %550, %550
  %678 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %679 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %678, i32 0, i32 1
  %680 = load i64, i64* %679, align 8
  %681 = call %struct.TYPE_5__* @inoinfo(i64 %680)
  %682 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %681, i32 0, i32 1
  %683 = load i32, i32* %682, align 4
  %684 = icmp eq i32 %683, 134
  br i1 %684, label %685, label %691

685:                                              ; preds = %677
  %686 = load %struct.direct*, %struct.direct** %4, align 8
  %687 = getelementptr inbounds %struct.direct, %struct.direct* %686, i32 0, i32 0
  %688 = load i64, i64* %687, align 8
  %689 = call %struct.TYPE_5__* @inoinfo(i64 %688)
  %690 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %689, i32 0, i32 1
  store i32 134, i32* %690, align 4
  br label %691

691:                                              ; preds = %685, %677
  br label %692

692:                                              ; preds = %550, %691
  %693 = load %struct.direct*, %struct.direct** %4, align 8
  %694 = getelementptr inbounds %struct.direct, %struct.direct* %693, i32 0, i32 0
  %695 = load i64, i64* %694, align 8
  %696 = call %struct.inoinfo* @getinoinfo(i64 %695)
  store %struct.inoinfo* %696, %struct.inoinfo** %7, align 8
  %697 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %698 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %697, i32 0, i32 0
  %699 = load i32, i32* %698, align 8
  %700 = icmp sgt i32 %699, 2
  br i1 %700, label %701, label %720

701:                                              ; preds = %692
  %702 = load %struct.inoinfo*, %struct.inoinfo** %7, align 8
  %703 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %702, i32 0, i32 0
  %704 = load i64, i64* %703, align 8
  %705 = icmp eq i64 %704, 0
  br i1 %705, label %706, label %712

706:                                              ; preds = %701
  %707 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %708 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %707, i32 0, i32 1
  %709 = load i64, i64* %708, align 8
  %710 = load %struct.inoinfo*, %struct.inoinfo** %7, align 8
  %711 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %710, i32 0, i32 0
  store i64 %709, i64* %711, align 8
  br label %719

712:                                              ; preds = %701
  %713 = load %struct.inoinfo*, %struct.inoinfo** %7, align 8
  %714 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %715 = call i32 @fix_extraneous(%struct.inoinfo* %713, %struct.inodesc* %714)
  store i32 %715, i32* %8, align 4
  %716 = icmp eq i32 %715, 1
  br i1 %716, label %717, label %718

717:                                              ; preds = %712
  br label %776

718:                                              ; preds = %712
  br label %719

719:                                              ; preds = %718, %706
  br label %720

720:                                              ; preds = %719, %692
  br label %721

721:                                              ; preds = %550, %550, %720
  %722 = load %struct.direct*, %struct.direct** %4, align 8
  %723 = getelementptr inbounds %struct.direct, %struct.direct* %722, i32 0, i32 2
  %724 = load i64, i64* %723, align 8
  %725 = load %struct.direct*, %struct.direct** %4, align 8
  %726 = getelementptr inbounds %struct.direct, %struct.direct* %725, i32 0, i32 0
  %727 = load i64, i64* %726, align 8
  %728 = call %struct.TYPE_5__* @inoinfo(i64 %727)
  %729 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %728, i32 0, i32 2
  %730 = load i64, i64* %729, align 8
  %731 = icmp ne i64 %724, %730
  br i1 %731, label %732, label %755

732:                                              ; preds = %721
  %733 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %734 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %733, i32 0, i32 1
  %735 = load i64, i64* %734, align 8
  %736 = load %struct.direct*, %struct.direct** %4, align 8
  %737 = getelementptr inbounds %struct.direct, %struct.direct* %736, i32 0, i32 0
  %738 = load i64, i64* %737, align 8
  %739 = call i32 @fileerror(i64 %735, i64 %738, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0))
  %740 = load %struct.direct*, %struct.direct** %4, align 8
  %741 = getelementptr inbounds %struct.direct, %struct.direct* %740, i32 0, i32 0
  %742 = load i64, i64* %741, align 8
  %743 = call %struct.TYPE_5__* @inoinfo(i64 %742)
  %744 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %743, i32 0, i32 2
  %745 = load i64, i64* %744, align 8
  %746 = load %struct.direct*, %struct.direct** %4, align 8
  %747 = getelementptr inbounds %struct.direct, %struct.direct* %746, i32 0, i32 2
  store i64 %745, i64* %747, align 8
  %748 = call i32 @reply(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %749 = icmp eq i32 %748, 1
  br i1 %749, label %750, label %754

750:                                              ; preds = %732
  %751 = load i32, i32* @ALTERED, align 4
  %752 = load i32, i32* %10, align 4
  %753 = or i32 %752, %751
  store i32 %753, i32* %10, align 4
  br label %754

754:                                              ; preds = %750, %732
  br label %755

755:                                              ; preds = %754, %721
  %756 = load %struct.direct*, %struct.direct** %4, align 8
  %757 = getelementptr inbounds %struct.direct, %struct.direct* %756, i32 0, i32 0
  %758 = load i64, i64* %757, align 8
  %759 = call %struct.TYPE_5__* @inoinfo(i64 %758)
  %760 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %759, i32 0, i32 0
  %761 = load i32, i32* %760, align 8
  %762 = add nsw i32 %761, -1
  store i32 %762, i32* %760, align 8
  br label %776

763:                                              ; preds = %550
  %764 = load i32, i32* @EEXIT, align 4
  %765 = load %struct.direct*, %struct.direct** %4, align 8
  %766 = getelementptr inbounds %struct.direct, %struct.direct* %765, i32 0, i32 0
  %767 = load i64, i64* %766, align 8
  %768 = call %struct.TYPE_5__* @inoinfo(i64 %767)
  %769 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %768, i32 0, i32 1
  %770 = load i32, i32* %769, align 4
  %771 = load %struct.direct*, %struct.direct** %4, align 8
  %772 = getelementptr inbounds %struct.direct, %struct.direct* %771, i32 0, i32 0
  %773 = load i64, i64* %772, align 8
  %774 = trunc i64 %773 to i32
  %775 = call i32 @errx(i32 %764, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i64 0, i64 0), i32 %770, i32 %774)
  br label %776

776:                                              ; preds = %763, %755, %717, %649, %628, %624, %616, %597, %577, %563, %562
  br label %777

777:                                              ; preds = %776, %548
  br label %778

778:                                              ; preds = %777, %495
  %779 = load i32, i32* %8, align 4
  %780 = icmp eq i32 %779, 0
  br i1 %780, label %781, label %785

781:                                              ; preds = %778
  %782 = load i32, i32* %10, align 4
  %783 = load i32, i32* @KEEPON, align 4
  %784 = or i32 %782, %783
  store i32 %784, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %793

785:                                              ; preds = %778
  %786 = load %struct.direct*, %struct.direct** %4, align 8
  %787 = getelementptr inbounds %struct.direct, %struct.direct* %786, i32 0, i32 0
  store i64 0, i64* %787, align 8
  %788 = load i32, i32* %10, align 4
  %789 = load i32, i32* @KEEPON, align 4
  %790 = or i32 %788, %789
  %791 = load i32, i32* @ALTERED, align 4
  %792 = or i32 %790, %791
  store i32 %792, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %793

793:                                              ; preds = %785, %781, %480, %455, %415, %406
  %794 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %794)
  %795 = load i32, i32* %2, align 4
  ret i32 %795
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @direrror(i64, i8*) #2

declare dso_local i32 @reply(i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @DIRSIZ(i32, %struct.direct*) #2

declare dso_local i32 @pfatal(i8*, ...) #2

declare dso_local i32 @memmove(%struct.direct*, %struct.direct*, i64) #2

declare dso_local %struct.TYPE_5__* @inoinfo(i64) #2

declare dso_local i32 @memset(%struct.direct*, i32, i64) #2

declare dso_local %struct.inoinfo* @getinoinfo(i64) #2

declare dso_local i32 @fileerror(i64, i64, i8*) #2

declare dso_local i32 @getpathname(i8*, i64, i64) #2

declare dso_local i32 @pwarn(i8*, i8*, i32) #2

declare dso_local i32 @sysctlbyname(i8*, i32, i32, %struct.TYPE_4__*, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @rmdir(i8*) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local %union.dinode* @ginode(i64) #2

declare dso_local i32 @DIP(%union.dinode*, i32) #2

declare dso_local i32 @fix_extraneous(%struct.inoinfo*, %struct.inodesc*) #2

declare dso_local i32 @errx(i32, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
