; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_trail.c_trail_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/bin/auditdistd/extr_trail.c_trail_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trail = type { i64, i8*, i32, i32, i32 }
%struct.stat = type { i64, i32 }

@TRAIL_MAGIC = common dso_local global i64 0, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"Trail file was renamed since last connection to \22%s/%s\22.\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"File \22%s/%s\22 doesn't exist.\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Unable to open file \22%s/%s\22, skipping\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Unable to stat file \22%s/%s\22, skipping\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"File \22%s/%s\22 is not a regular file, skipping.\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [59 x i8] c"Unable to move to offset %jd within file \22%s/%s\22, skipping\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Restarting file \22%s/%s\22 at offset %jd.\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"File \22%s/%s\22 shrinked, removing it.\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"File \22%s/%s\22 is already sent, removing it.\00", align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"Unable to remove file \22%s/%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trail_start(%struct.trail* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.trail*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.stat, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.trail* %0, %struct.trail** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.trail*, %struct.trail** %4, align 8
  %11 = getelementptr inbounds %struct.trail, %struct.trail* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TRAIL_MAGIC, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @PJDLOG_ASSERT(i32 %15)
  %17 = load %struct.trail*, %struct.trail** %4, align 8
  %18 = getelementptr inbounds %struct.trail, %struct.trail* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @strlcpy(i8* %19, i8* %20, i32 8)
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 8
  %24 = zext i1 %23 to i32
  %25 = call i32 @PJDLOG_VERIFY(i32 %24)
  %26 = load %struct.trail*, %struct.trail** %4, align 8
  %27 = getelementptr inbounds %struct.trail, %struct.trail* %26, i32 0, i32 2
  store i32 -1, i32* %27, align 8
  %28 = load %struct.trail*, %struct.trail** %4, align 8
  %29 = getelementptr inbounds %struct.trail, %struct.trail* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %3
  %36 = load i64, i64* %6, align 8
  %37 = icmp eq i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @PJDLOG_ASSERT(i32 %38)
  %40 = load %struct.trail*, %struct.trail** %4, align 8
  %41 = call i32 @trail_next(%struct.trail* %40)
  br label %257

42:                                               ; preds = %3
  %43 = load %struct.trail*, %struct.trail** %4, align 8
  %44 = getelementptr inbounds %struct.trail, %struct.trail* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dirfd(i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp sge i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @PJDLOG_ASSERT(i32 %49)
  br label %51

51:                                               ; preds = %74, %42
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.trail*, %struct.trail** %4, align 8
  %54 = getelementptr inbounds %struct.trail, %struct.trail* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* @O_RDONLY, align 4
  %57 = call i32 @openat(i32 %52, i8* %55, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %107

60:                                               ; preds = %51
  %61 = load i64, i64* @errno, align 8
  %62 = load i64, i64* @ENOENT, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %82

64:                                               ; preds = %60
  %65 = load %struct.trail*, %struct.trail** %4, align 8
  %66 = getelementptr inbounds %struct.trail, %struct.trail* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @trail_is_not_terminated(i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %64
  %71 = load %struct.trail*, %struct.trail** %4, align 8
  %72 = call i64 @trail_find(%struct.trail* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %70
  %75 = load %struct.trail*, %struct.trail** %4, align 8
  %76 = getelementptr inbounds %struct.trail, %struct.trail* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.trail*, %struct.trail** %4, align 8
  %79 = getelementptr inbounds %struct.trail, %struct.trail* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 (i32, i8*, i32, i8*, ...) @pjdlog_debug(i32 1, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %77, i8* %80)
  br label %51

82:                                               ; preds = %70, %64, %60
  %83 = load i64, i64* @errno, align 8
  %84 = load i64, i64* @ENOENT, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %82
  %87 = load %struct.trail*, %struct.trail** %4, align 8
  %88 = getelementptr inbounds %struct.trail, %struct.trail* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.trail*, %struct.trail** %4, align 8
  %91 = getelementptr inbounds %struct.trail, %struct.trail* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 (i32, i8*, i32, i8*, ...) @pjdlog_debug(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %89, i8* %92)
  br label %103

94:                                               ; preds = %82
  %95 = load i32, i32* @LOG_ERR, align 4
  %96 = load %struct.trail*, %struct.trail** %4, align 8
  %97 = getelementptr inbounds %struct.trail, %struct.trail* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.trail*, %struct.trail** %4, align 8
  %100 = getelementptr inbounds %struct.trail, %struct.trail* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 (i32, i8*, i32, i8*, ...) @pjdlog_errno(i32 %95, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %98, i8* %101)
  br label %103

103:                                              ; preds = %94, %86
  br label %104

104:                                              ; preds = %103
  %105 = load %struct.trail*, %struct.trail** %4, align 8
  %106 = call i32 @trail_next(%struct.trail* %105)
  br label %257

107:                                              ; preds = %51
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @fstat(i32 %108, %struct.stat* %7)
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %124

111:                                              ; preds = %107
  %112 = load i32, i32* @LOG_ERR, align 4
  %113 = load %struct.trail*, %struct.trail** %4, align 8
  %114 = getelementptr inbounds %struct.trail, %struct.trail* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.trail*, %struct.trail** %4, align 8
  %117 = getelementptr inbounds %struct.trail, %struct.trail* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 (i32, i8*, i32, i8*, ...) @pjdlog_errno(i32 %112, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %115, i8* %118)
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @close(i32 %120)
  %122 = load %struct.trail*, %struct.trail** %4, align 8
  %123 = call i32 @trail_next(%struct.trail* %122)
  br label %257

124:                                              ; preds = %107
  %125 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @S_ISREG(i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %141, label %129

129:                                              ; preds = %124
  %130 = load %struct.trail*, %struct.trail** %4, align 8
  %131 = getelementptr inbounds %struct.trail, %struct.trail* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.trail*, %struct.trail** %4, align 8
  %134 = getelementptr inbounds %struct.trail, %struct.trail* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @pjdlog_warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %132, i8* %135)
  %137 = load i32, i32* %9, align 4
  %138 = call i32 @close(i32 %137)
  %139 = load %struct.trail*, %struct.trail** %4, align 8
  %140 = call i32 @trail_next(%struct.trail* %139)
  br label %257

141:                                              ; preds = %124
  %142 = load i64, i64* %6, align 8
  %143 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp slt i64 %142, %144
  br i1 %145, label %172, label %146

146:                                              ; preds = %141
  %147 = load i64, i64* %6, align 8
  %148 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = icmp sge i64 %147, %149
  br i1 %150, label %151, label %157

151:                                              ; preds = %146
  %152 = load %struct.trail*, %struct.trail** %4, align 8
  %153 = getelementptr inbounds %struct.trail, %struct.trail* %152, i32 0, i32 1
  %154 = load i8*, i8** %153, align 8
  %155 = call i64 @trail_is_not_terminated(i8* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %172, label %157

157:                                              ; preds = %151, %146
  %158 = load i64, i64* %6, align 8
  %159 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp sge i64 %158, %160
  br i1 %161, label %162, label %215

162:                                              ; preds = %157
  %163 = load i8*, i8** %5, align 8
  %164 = call i64 @trail_is_not_terminated(i8* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %215

166:                                              ; preds = %162
  %167 = load %struct.trail*, %struct.trail** %4, align 8
  %168 = getelementptr inbounds %struct.trail, %struct.trail* %167, i32 0, i32 1
  %169 = load i8*, i8** %168, align 8
  %170 = call i64 @trail_is_not_terminated(i8* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %215, label %172

172:                                              ; preds = %166, %151, %141
  %173 = load i32, i32* %9, align 4
  %174 = load i64, i64* %6, align 8
  %175 = load i32, i32* @SEEK_SET, align 4
  %176 = call i32 @lseek(i32 %173, i64 %174, i32 %175)
  %177 = icmp eq i32 %176, -1
  br i1 %177, label %178, label %195

178:                                              ; preds = %172
  %179 = load i32, i32* @LOG_ERR, align 4
  %180 = load i64, i64* %6, align 8
  %181 = trunc i64 %180 to i32
  %182 = load %struct.trail*, %struct.trail** %4, align 8
  %183 = getelementptr inbounds %struct.trail, %struct.trail* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  %186 = inttoptr i64 %185 to i8*
  %187 = load %struct.trail*, %struct.trail** %4, align 8
  %188 = getelementptr inbounds %struct.trail, %struct.trail* %187, i32 0, i32 1
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 (i32, i8*, i32, i8*, ...) @pjdlog_errno(i32 %179, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i32 %181, i8* %186, i8* %189)
  %191 = load i32, i32* %9, align 4
  %192 = call i32 @close(i32 %191)
  %193 = load %struct.trail*, %struct.trail** %4, align 8
  %194 = call i32 @trail_next(%struct.trail* %193)
  br label %257

195:                                              ; preds = %172
  %196 = load %struct.trail*, %struct.trail** %4, align 8
  %197 = getelementptr inbounds %struct.trail, %struct.trail* %196, i32 0, i32 1
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 @trail_is_crash_recovery(i8* %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %211, label %201

201:                                              ; preds = %195
  %202 = load %struct.trail*, %struct.trail** %4, align 8
  %203 = getelementptr inbounds %struct.trail, %struct.trail* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.trail*, %struct.trail** %4, align 8
  %206 = getelementptr inbounds %struct.trail, %struct.trail* %205, i32 0, i32 1
  %207 = load i8*, i8** %206, align 8
  %208 = load i64, i64* %6, align 8
  %209 = trunc i64 %208 to i32
  %210 = call i32 (i32, i8*, i32, i8*, ...) @pjdlog_debug(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %204, i8* %207, i32 %209)
  br label %211

211:                                              ; preds = %201, %195
  %212 = load i32, i32* %9, align 4
  %213 = load %struct.trail*, %struct.trail** %4, align 8
  %214 = getelementptr inbounds %struct.trail, %struct.trail* %213, i32 0, i32 2
  store i32 %212, i32* %214, align 8
  br label %257

215:                                              ; preds = %166, %162, %157
  %216 = load i32, i32* %9, align 4
  %217 = call i32 @close(i32 %216)
  %218 = load i64, i64* %6, align 8
  %219 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = icmp sgt i64 %218, %220
  br i1 %221, label %222, label %230

222:                                              ; preds = %215
  %223 = load %struct.trail*, %struct.trail** %4, align 8
  %224 = getelementptr inbounds %struct.trail, %struct.trail* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.trail*, %struct.trail** %4, align 8
  %227 = getelementptr inbounds %struct.trail, %struct.trail* %226, i32 0, i32 1
  %228 = load i8*, i8** %227, align 8
  %229 = call i32 @pjdlog_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %225, i8* %228)
  br label %238

230:                                              ; preds = %215
  %231 = load %struct.trail*, %struct.trail** %4, align 8
  %232 = getelementptr inbounds %struct.trail, %struct.trail* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.trail*, %struct.trail** %4, align 8
  %235 = getelementptr inbounds %struct.trail, %struct.trail* %234, i32 0, i32 1
  %236 = load i8*, i8** %235, align 8
  %237 = call i32 (i32, i8*, i32, i8*, ...) @pjdlog_debug(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 %233, i8* %236)
  br label %238

238:                                              ; preds = %230, %222
  %239 = load i32, i32* %8, align 4
  %240 = load %struct.trail*, %struct.trail** %4, align 8
  %241 = getelementptr inbounds %struct.trail, %struct.trail* %240, i32 0, i32 1
  %242 = load i8*, i8** %241, align 8
  %243 = call i32 @unlinkat(i32 %239, i8* %242, i32 0)
  %244 = icmp eq i32 %243, -1
  br i1 %244, label %245, label %254

245:                                              ; preds = %238
  %246 = load i32, i32* @LOG_WARNING, align 4
  %247 = load %struct.trail*, %struct.trail** %4, align 8
  %248 = getelementptr inbounds %struct.trail, %struct.trail* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.trail*, %struct.trail** %4, align 8
  %251 = getelementptr inbounds %struct.trail, %struct.trail* %250, i32 0, i32 1
  %252 = load i8*, i8** %251, align 8
  %253 = call i32 (i32, i8*, i32, i8*, ...) @pjdlog_errno(i32 %246, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %249, i8* %252)
  br label %254

254:                                              ; preds = %245, %238
  %255 = load %struct.trail*, %struct.trail** %4, align 8
  %256 = call i32 @trail_next(%struct.trail* %255)
  br label %257

257:                                              ; preds = %254, %211, %178, %129, %111, %104, %35
  ret void
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @PJDLOG_VERIFY(i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @trail_next(%struct.trail*) #1

declare dso_local i32 @dirfd(i32) #1

declare dso_local i32 @openat(i32, i8*, i32) #1

declare dso_local i64 @trail_is_not_terminated(i8*) #1

declare dso_local i64 @trail_find(%struct.trail*) #1

declare dso_local i32 @pjdlog_debug(i32, i8*, i32, i8*, ...) #1

declare dso_local i32 @pjdlog_errno(i32, i8*, i32, i8*, ...) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @pjdlog_warning(i8*, i32, i8*) #1

declare dso_local i32 @lseek(i32, i64, i32) #1

declare dso_local i32 @trail_is_crash_recovery(i8*) #1

declare dso_local i32 @unlinkat(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
