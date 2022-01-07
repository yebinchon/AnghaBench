; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp-client.c_download_dir_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp-client.c_download_dir_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sftp_conn = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i8*, %struct.TYPE_9__ }
%struct.timeval = type { i64, i32 }

@MAX_DIR_DEPTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Maximum directory depth exceeded: %d levels\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Unable to stat remote directory \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"\22%s\22 is not a directory\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Retrieving %s\0A\00", align 1
@SSH2_FILEXFER_ATTR_PERMISSIONS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"Server did not send permissions for directory \22%s\22\00", align 1
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"mkdir %s: %s\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"%s: Failed to get directory contents\00", align 1
@interrupted = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Download of file %s to %s failed\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"%s: not a regular file\0A\00", align 1
@SSH2_FILEXFER_ATTR_ACMODTIME = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [28 x i8] c"Can't set times on \22%s\22: %s\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"Server did not send times for directory \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sftp_conn*, i8*, i8*, i32, %struct.TYPE_9__*, i32, i32, i32, i32)* @download_dir_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @download_dir_internal(%struct.sftp_conn* %0, i8* %1, i8* %2, i32 %3, %struct.TYPE_9__* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.sftp_conn*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_8__**, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca [2 x %struct.timeval], align 16
  store %struct.sftp_conn* %0, %struct.sftp_conn** %11, align 8
  store i8* %1, i8** %12, align 8
  store i8* %2, i8** %13, align 8
  store i32 %3, i32* %14, align 4
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 0, i32* %21, align 4
  store i8* null, i8** %24, align 8
  store i8* null, i8** %25, align 8
  store i32 511, i32* %26, align 4
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* @MAX_DIR_DEPTH, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %9
  %32 = load i32, i32* %14, align 4
  %33 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i32 -1, i32* %10, align 4
  br label %254

34:                                               ; preds = %9
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %36 = icmp eq %struct.TYPE_9__* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load %struct.sftp_conn*, %struct.sftp_conn** %11, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = call %struct.TYPE_9__* @do_stat(%struct.sftp_conn* %38, i8* %39, i32 1)
  store %struct.TYPE_9__* %40, %struct.TYPE_9__** %15, align 8
  %41 = icmp eq %struct.TYPE_9__* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i8*, i8** %12, align 8
  %44 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  store i32 -1, i32* %10, align 4
  br label %254

45:                                               ; preds = %37, %34
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @S_ISDIR(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  %52 = load i8*, i8** %12, align 8
  %53 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  store i32 -1, i32* %10, align 4
  br label %254

54:                                               ; preds = %45
  %55 = load i32, i32* %17, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i8*, i8** %12, align 8
  %59 = call i32 @mprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @SSH2_FILEXFER_ATTR_PERMISSIONS, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 1023
  store i32 %71, i32* %26, align 4
  br label %75

72:                                               ; preds = %60
  %73 = load i8*, i8** %13, align 8
  %74 = call i32 @debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %72, %67
  %76 = load i8*, i8** %13, align 8
  %77 = load i32, i32* %26, align 4
  %78 = call i32 @mkdir(i8* %76, i32 %77)
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %89

80:                                               ; preds = %75
  %81 = load i64, i64* @errno, align 8
  %82 = load i64, i64* @EEXIST, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load i8*, i8** %13, align 8
  %86 = load i64, i64* @errno, align 8
  %87 = call i8* @strerror(i64 %86)
  %88 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %85, i8* %87)
  store i32 -1, i32* %10, align 4
  br label %254

89:                                               ; preds = %80, %75
  %90 = load %struct.sftp_conn*, %struct.sftp_conn** %11, align 8
  %91 = load i8*, i8** %12, align 8
  %92 = call i32 @do_readdir(%struct.sftp_conn* %90, i8* %91, %struct.TYPE_8__*** %22)
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i8*, i8** %12, align 8
  %96 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i8* %95)
  store i32 -1, i32* %10, align 4
  br label %254

97:                                               ; preds = %89
  store i32 0, i32* %20, align 4
  br label %98

98:                                               ; preds = %204, %97
  %99 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %22, align 8
  %100 = load i32, i32* %20, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %99, i64 %101
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = icmp ne %struct.TYPE_8__* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %98
  %106 = load i32, i32* @interrupted, align 4
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  br label %109

109:                                              ; preds = %105, %98
  %110 = phi i1 [ false, %98 ], [ %108, %105 ]
  br i1 %110, label %111, label %207

111:                                              ; preds = %109
  %112 = load i8*, i8** %25, align 8
  %113 = call i32 @free(i8* %112)
  %114 = load i8*, i8** %24, align 8
  %115 = call i32 @free(i8* %114)
  %116 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %22, align 8
  %117 = load i32, i32* %20, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %116, i64 %118
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  store i8* %122, i8** %23, align 8
  %123 = load i8*, i8** %13, align 8
  %124 = load i8*, i8** %23, align 8
  %125 = call i8* @path_append(i8* %123, i8* %124)
  store i8* %125, i8** %25, align 8
  %126 = load i8*, i8** %12, align 8
  %127 = load i8*, i8** %23, align 8
  %128 = call i8* @path_append(i8* %126, i8* %127)
  store i8* %128, i8** %24, align 8
  %129 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %22, align 8
  %130 = load i32, i32* %20, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %129, i64 %131
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i64 @S_ISDIR(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %168

139:                                              ; preds = %111
  %140 = load i8*, i8** %23, align 8
  %141 = call i64 @strcmp(i8* %140, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %139
  %144 = load i8*, i8** %23, align 8
  %145 = call i64 @strcmp(i8* %144, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %143, %139
  br label %204

148:                                              ; preds = %143
  %149 = load %struct.sftp_conn*, %struct.sftp_conn** %11, align 8
  %150 = load i8*, i8** %24, align 8
  %151 = load i8*, i8** %25, align 8
  %152 = load i32, i32* %14, align 4
  %153 = add nsw i32 %152, 1
  %154 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %22, align 8
  %155 = load i32, i32* %20, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %154, i64 %156
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 1
  %160 = load i32, i32* %16, align 4
  %161 = load i32, i32* %17, align 4
  %162 = load i32, i32* %18, align 4
  %163 = load i32, i32* %19, align 4
  %164 = call i32 @download_dir_internal(%struct.sftp_conn* %149, i8* %150, i8* %151, i32 %153, %struct.TYPE_9__* %159, i32 %160, i32 %161, i32 %162, i32 %163)
  %165 = icmp eq i32 %164, -1
  br i1 %165, label %166, label %167

166:                                              ; preds = %148
  store i32 -1, i32* %21, align 4
  br label %167

167:                                              ; preds = %166, %148
  br label %203

168:                                              ; preds = %111
  %169 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %22, align 8
  %170 = load i32, i32* %20, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %169, i64 %171
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i64 @S_ISREG(i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %199

179:                                              ; preds = %168
  %180 = load %struct.sftp_conn*, %struct.sftp_conn** %11, align 8
  %181 = load i8*, i8** %24, align 8
  %182 = load i8*, i8** %25, align 8
  %183 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %22, align 8
  %184 = load i32, i32* %20, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %183, i64 %185
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 1
  %189 = load i32, i32* %16, align 4
  %190 = load i32, i32* %18, align 4
  %191 = load i32, i32* %19, align 4
  %192 = call i32 @do_download(%struct.sftp_conn* %180, i8* %181, i8* %182, %struct.TYPE_9__* %188, i32 %189, i32 %190, i32 %191)
  %193 = icmp eq i32 %192, -1
  br i1 %193, label %194, label %198

194:                                              ; preds = %179
  %195 = load i8*, i8** %24, align 8
  %196 = load i8*, i8** %25, align 8
  %197 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i8* %195, i8* %196)
  store i32 -1, i32* %21, align 4
  br label %198

198:                                              ; preds = %194, %179
  br label %202

199:                                              ; preds = %168
  %200 = load i8*, i8** %24, align 8
  %201 = call i32 @logit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* %200)
  br label %202

202:                                              ; preds = %199, %198
  br label %203

203:                                              ; preds = %202, %167
  br label %204

204:                                              ; preds = %203, %147
  %205 = load i32, i32* %20, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %20, align 4
  br label %98

207:                                              ; preds = %109
  %208 = load i8*, i8** %25, align 8
  %209 = call i32 @free(i8* %208)
  %210 = load i8*, i8** %24, align 8
  %211 = call i32 @free(i8* %210)
  %212 = load i32, i32* %16, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %250

214:                                              ; preds = %207
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @SSH2_FILEXFER_ATTR_ACMODTIME, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %246

221:                                              ; preds = %214
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %27, i64 0, i64 0
  %226 = getelementptr inbounds %struct.timeval, %struct.timeval* %225, i32 0, i32 1
  store i32 %224, i32* %226, align 8
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %27, i64 0, i64 1
  %231 = getelementptr inbounds %struct.timeval, %struct.timeval* %230, i32 0, i32 1
  store i32 %229, i32* %231, align 8
  %232 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %27, i64 0, i64 1
  %233 = getelementptr inbounds %struct.timeval, %struct.timeval* %232, i32 0, i32 0
  store i64 0, i64* %233, align 16
  %234 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %27, i64 0, i64 0
  %235 = getelementptr inbounds %struct.timeval, %struct.timeval* %234, i32 0, i32 0
  store i64 0, i64* %235, align 16
  %236 = load i8*, i8** %13, align 8
  %237 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %27, i64 0, i64 0
  %238 = call i32 @utimes(i8* %236, %struct.timeval* %237)
  %239 = icmp eq i32 %238, -1
  br i1 %239, label %240, label %245

240:                                              ; preds = %221
  %241 = load i8*, i8** %13, align 8
  %242 = load i64, i64* @errno, align 8
  %243 = call i8* @strerror(i64 %242)
  %244 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i8* %241, i8* %243)
  br label %245

245:                                              ; preds = %240, %221
  br label %249

246:                                              ; preds = %214
  %247 = load i8*, i8** %13, align 8
  %248 = call i32 @debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0), i8* %247)
  br label %249

249:                                              ; preds = %246, %245
  br label %250

250:                                              ; preds = %249, %207
  %251 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %22, align 8
  %252 = call i32 @free_sftp_dirents(%struct.TYPE_8__** %251)
  %253 = load i32, i32* %21, align 4
  store i32 %253, i32* %10, align 4
  br label %254

254:                                              ; preds = %250, %94, %84, %51, %42, %31
  %255 = load i32, i32* %10, align 4
  ret i32 %255
}

declare dso_local i32 @error(i8*, ...) #1

declare dso_local %struct.TYPE_9__* @do_stat(%struct.sftp_conn*, i8*, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @mprintf(i8*, i8*) #1

declare dso_local i32 @debug(i8*, i8*) #1

declare dso_local i32 @mkdir(i8*, i32) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local i32 @do_readdir(%struct.sftp_conn*, i8*, %struct.TYPE_8__***) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @path_append(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @do_download(%struct.sftp_conn*, i8*, i8*, %struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @logit(i8*, i8*) #1

declare dso_local i32 @utimes(i8*, %struct.timeval*) #1

declare dso_local i32 @free_sftp_dirents(%struct.TYPE_8__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
