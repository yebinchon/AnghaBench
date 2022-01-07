; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_pass2.c_fix_extraneous.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_pass2.c_fix_extraneous.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.inoinfo = type { i64, i64, i64 }
%struct.inodesc = type { i64, i64, i32, i8*, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64, i8* }
%struct.TYPE_7__ = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@DATA = common dso_local global i8* null, align 8
@findino = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1
@FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"%s IS AN EXTRANEOUS HARD LINK TO DIRECTORY %s\00", align 1
@cursnapshot = common dso_local global i64 0, align 8
@cmd = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"vfs.ffs.setcwd\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c" (IGNORED)\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"vfs.ffs.unlink\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c" (UNLINK FAILED: %s)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c" (REMOVED)\0A\00", align 1
@preen = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"REMOVE\00", align 1
@deleteentry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inoinfo*, %struct.inodesc*)* @fix_extraneous to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fix_extraneous(%struct.inoinfo* %0, %struct.inodesc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inoinfo*, align 8
  %5 = alloca %struct.inodesc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.inodesc, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.inoinfo* %0, %struct.inoinfo** %4, align 8
  store %struct.inodesc* %1, %struct.inodesc** %5, align 8
  %12 = load i32, i32* @MAXPATHLEN, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i32, i32* @MAXPATHLEN, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %21 = load %struct.inoinfo*, %struct.inoinfo** %4, align 8
  %22 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %2
  %26 = call i32 @memset(%struct.inodesc* %7, i32 0, i32 48)
  %27 = load i8*, i8** @DATA, align 8
  %28 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %7, i32 0, i32 3
  store i8* %27, i8** %28, align 8
  %29 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %30 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %29, i32 0, i32 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %7, i32 0, i32 0
  store i64 %33, i64* %34, align 8
  %35 = load i32, i32* @findino, align 4
  %36 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %7, i32 0, i32 2
  store i32 %35, i32* %36, align 8
  %37 = call i32 @strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %38 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %7, i32 0, i32 5
  store i32 %37, i32* %38, align 8
  %39 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %7, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @ginode(i64 %40)
  %42 = call i32 @ckinode(i32 %41, %struct.inodesc* %7)
  %43 = load i32, i32* @FOUND, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %25
  %47 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %7, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.inoinfo*, %struct.inoinfo** %4, align 8
  %50 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %46, %25
  br label %52

52:                                               ; preds = %51, %2
  %53 = load %struct.inoinfo*, %struct.inoinfo** %4, align 8
  %54 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %81, label %57

57:                                               ; preds = %52
  %58 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %59 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.inoinfo*, %struct.inoinfo** %4, align 8
  %62 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %81, label %65

65:                                               ; preds = %57
  %66 = load %struct.inoinfo*, %struct.inoinfo** %4, align 8
  %67 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %70 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %68, %71
  br i1 %72, label %81, label %73

73:                                               ; preds = %65
  %74 = load %struct.inoinfo*, %struct.inoinfo** %4, align 8
  %75 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.inoinfo*, %struct.inoinfo** %4, align 8
  %78 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %76, %79
  br i1 %80, label %81, label %143

81:                                               ; preds = %73, %65, %57, %52
  %82 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %83 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %86 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @getpathname(i8* %20, i64 %84, i64 %87)
  %89 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %81
  %92 = call i32 @strcat(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %81
  %94 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %95 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %94, i32 0, i32 4
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @strcat(i8* %20, i8* %98)
  %100 = load %struct.inoinfo*, %struct.inoinfo** %4, align 8
  %101 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.inoinfo*, %struct.inoinfo** %4, align 8
  %104 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @getpathname(i8* %16, i64 %102, i64 %105)
  %107 = call i32 @pwarn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %20, i8* %16)
  %108 = load i64, i64* @cursnapshot, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %136

110:                                              ; preds = %93
  %111 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %112 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cmd, i32 0, i32 0), align 8
  %114 = call i32 @sysctlbyname(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 0, %struct.TYPE_6__* @cmd, i32 16)
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %240

118:                                              ; preds = %110
  %119 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %120 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %119, i32 0, i32 4
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = ptrtoint i8* %123 to i64
  store i64 %124, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cmd, i32 0, i32 0), align 8
  %125 = load %struct.inoinfo*, %struct.inoinfo** %4, align 8
  %126 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cmd, i32 0, i32 1), align 8
  %128 = call i32 @sysctlbyname(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 0, %struct.TYPE_6__* @cmd, i32 16)
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %130, label %134

130:                                              ; preds = %118
  %131 = load i32, i32* @errno, align 4
  %132 = call i8* @strerror(i32 %131)
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %132)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %240

134:                                              ; preds = %118
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %240

136:                                              ; preds = %93
  %137 = load i64, i64* @preen, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %240

141:                                              ; preds = %136
  %142 = call i32 @reply(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  store i32 %142, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %240

143:                                              ; preds = %73
  %144 = load %struct.inoinfo*, %struct.inoinfo** %4, align 8
  %145 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.inoinfo*, %struct.inoinfo** %4, align 8
  %148 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @getpathname(i8* %16, i64 %146, i64 %149)
  %151 = load %struct.inoinfo*, %struct.inoinfo** %4, align 8
  %152 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.inoinfo*, %struct.inoinfo** %4, align 8
  %155 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @getpathname(i8* %20, i64 %153, i64 %156)
  %158 = call i32 @pwarn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %16, i8* %20)
  %159 = load i64, i64* @cursnapshot, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %194

161:                                              ; preds = %143
  %162 = load %struct.inoinfo*, %struct.inoinfo** %4, align 8
  %163 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  store i64 %164, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cmd, i32 0, i32 0), align 8
  %165 = call i32 @sysctlbyname(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 0, %struct.TYPE_6__* @cmd, i32 16)
  %166 = icmp eq i32 %165, -1
  br i1 %166, label %167, label %169

167:                                              ; preds = %161
  %168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %240

169:                                              ; preds = %161
  %170 = call i8* @strchr(i8* %16, i8 signext 47)
  store i8* %170, i8** %6, align 8
  %171 = icmp eq i8* %170, null
  br i1 %171, label %172, label %174

172:                                              ; preds = %169
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %240

174:                                              ; preds = %169
  %175 = load i8*, i8** %6, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 1
  %177 = ptrtoint i8* %176 to i64
  store i64 %177, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cmd, i32 0, i32 0), align 8
  %178 = load %struct.inoinfo*, %struct.inoinfo** %4, align 8
  %179 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  store i64 %180, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cmd, i32 0, i32 1), align 8
  %181 = call i32 @sysctlbyname(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 0, %struct.TYPE_6__* @cmd, i32 16)
  %182 = icmp eq i32 %181, -1
  br i1 %182, label %183, label %187

183:                                              ; preds = %174
  %184 = load i32, i32* @errno, align 4
  %185 = call i8* @strerror(i32 %184)
  %186 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %185)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %240

187:                                              ; preds = %174
  %188 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %189 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %190 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.inoinfo*, %struct.inoinfo** %4, align 8
  %193 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %192, i32 0, i32 1
  store i64 %191, i64* %193, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %240

194:                                              ; preds = %143
  %195 = load i64, i64* @preen, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %194
  %198 = call i32 @reply(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %201, label %200

200:                                              ; preds = %197
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %240

201:                                              ; preds = %197, %194
  %202 = call i32 @memset(%struct.inodesc* %7, i32 0, i32 48)
  %203 = load i8*, i8** @DATA, align 8
  %204 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %7, i32 0, i32 3
  store i8* %203, i8** %204, align 8
  %205 = load %struct.inoinfo*, %struct.inoinfo** %4, align 8
  %206 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %7, i32 0, i32 0
  store i64 %207, i64* %208, align 8
  %209 = load %struct.inoinfo*, %struct.inoinfo** %4, align 8
  %210 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %7, i32 0, i32 1
  store i64 %211, i64* %212, align 8
  %213 = load i32, i32* @deleteentry, align 4
  %214 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %7, i32 0, i32 2
  store i32 %213, i32* %214, align 8
  %215 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %7, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = call i32 @ginode(i64 %216)
  %218 = call i32 @ckinode(i32 %217, %struct.inodesc* %7)
  %219 = load i32, i32* @FOUND, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %201
  %223 = load i64, i64* @preen, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %222
  %226 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  br label %227

227:                                              ; preds = %225, %222, %201
  %228 = load %struct.inodesc*, %struct.inodesc** %5, align 8
  %229 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.inoinfo*, %struct.inoinfo** %4, align 8
  %232 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %231, i32 0, i32 1
  store i64 %230, i64* %232, align 8
  %233 = load %struct.inoinfo*, %struct.inoinfo** %4, align 8
  %234 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %233, i32 0, i32 2
  %235 = load i64, i64* %234, align 8
  %236 = call %struct.TYPE_7__* @inoinfo(i64 %235)
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %237, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %240

240:                                              ; preds = %227, %200, %187, %183, %172, %167, %141, %139, %134, %130, %116
  %241 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %241)
  %242 = load i32, i32* %3, align 4
  ret i32 %242
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.inodesc*, i32, i32) #2

declare dso_local i32 @strdup(i8*) #2

declare dso_local i32 @ckinode(i32, %struct.inodesc*) #2

declare dso_local i32 @ginode(i64) #2

declare dso_local i32 @getpathname(i8*, i64, i64) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @pwarn(i8*, i8*, i8*) #2

declare dso_local i32 @sysctlbyname(i8*, i32, i32, %struct.TYPE_6__*, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i32 @reply(i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local %struct.TYPE_7__* @inoinfo(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
