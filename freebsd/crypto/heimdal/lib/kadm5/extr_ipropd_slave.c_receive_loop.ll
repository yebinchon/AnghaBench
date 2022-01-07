; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_ipropd_slave.c_receive_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_ipropd_slave.c_receive_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64, i32 }

@SEEK_CUR = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"malloc: no memory\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to write log to disk\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to sync log to disk\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"entry %ld: too short\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"log is corrupted, negative length of entry version %ld: %ld\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"replaying entry %d\00", align 1
@.str.6 = private unnamed_addr constant [73 x i8] c"kadm5_log_replay: %ld. Lost entry entry, Database out of sync ?: %s (%d)\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"unknown error\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"kadm5_log_reply version: %ld didn't read the whole entry\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"entry %ld: postamble too short\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"entry %ld: len != len2\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"entry %ld: vers != vers2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, %struct.TYPE_6__*)* @receive_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_loop(i32 %0, i32* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  br label %26

26:                                               ; preds = %53, %3
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @krb5_ret_int32(i32* %27, i64* %11)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %259

31:                                               ; preds = %26
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @krb5_ret_int32(i32* %32, i64* %15)
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @krb5_ret_int32(i32* %34, i64* %16)
  %36 = load i64, i64* %16, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %17, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @krb5_ret_int32(i32* %38, i64* %14)
  %40 = load i64, i64* %11, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sle i64 %40, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %31
  %47 = load i32*, i32** %5, align 8
  %48 = load i64, i64* %14, align 8
  %49 = add nsw i64 %48, 8
  %50 = load i32, i32* @SEEK_CUR, align 4
  %51 = call i64 @krb5_storage_seek(i32* %47, i64 %49, i32 %50)
  br label %52

52:                                               ; preds = %46, %31
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %11, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sle i64 %54, %58
  br i1 %59, label %26, label %60

60:                                               ; preds = %53
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* @SEEK_CUR, align 4
  %63 = call i64 @krb5_storage_seek(i32* %61, i64 -16, i32 %62)
  store i64 %63, i64* %8, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* @SEEK_END, align 4
  %66 = call i64 @krb5_storage_seek(i32* %64, i64 0, i32 %65)
  store i64 %66, i64* %9, align 8
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* %8, align 8
  %69 = sub nsw i64 %67, %68
  %70 = call i8* @malloc(i64 %69)
  store i8* %70, i8** %10, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %73, label %81

73:                                               ; preds = %60
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %8, align 8
  %76 = sub nsw i64 %74, %75
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* %4, align 4
  %80 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %79, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %73, %60
  %82 = load i32*, i32** %5, align 8
  %83 = load i64, i64* %8, align 8
  %84 = load i32, i32* @SEEK_SET, align 4
  %85 = call i64 @krb5_storage_seek(i32* %82, i64 %83, i32 %84)
  %86 = load i32*, i32** %5, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* %8, align 8
  %90 = sub nsw i64 %88, %89
  %91 = call i32 @krb5_storage_read(i32* %86, i8* %87, i64 %90)
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i8*, i8** %10, align 8
  %97 = load i64, i64* %9, align 8
  %98 = load i64, i64* %8, align 8
  %99 = sub nsw i64 %97, %98
  %100 = call i64 @write(i32 %95, i8* %96, i64 %99)
  store i64 %100, i64* %13, align 8
  %101 = load i64, i64* %13, align 8
  %102 = load i64, i64* %9, align 8
  %103 = load i64, i64* %8, align 8
  %104 = sub nsw i64 %102, %103
  %105 = icmp ne i64 %101, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %81
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @errno, align 4
  %109 = call i32 @krb5_err(i32 %107, i32 1, i32 %108, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %110

110:                                              ; preds = %106, %81
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @fsync(i32 %114)
  store i32 %115, i32* %7, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %110
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* @errno, align 4
  %121 = call i32 @krb5_err(i32 %119, i32 1, i32 %120, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %122

122:                                              ; preds = %118, %110
  %123 = load i8*, i8** %10, align 8
  %124 = call i32 @free(i8* %123)
  %125 = load i32*, i32** %5, align 8
  %126 = load i64, i64* %8, align 8
  %127 = load i32, i32* @SEEK_SET, align 4
  %128 = call i64 @krb5_storage_seek(i32* %125, i64 %126, i32 %127)
  br label %129

129:                                              ; preds = %253, %122
  %130 = load i32*, i32** %5, align 8
  %131 = call i32 @krb5_ret_int32(i32* %130, i64* %11)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  br label %254

134:                                              ; preds = %129
  %135 = load i32*, i32** %5, align 8
  %136 = call i32 @krb5_ret_int32(i32* %135, i64* %20)
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %134
  %140 = load i32, i32* %4, align 4
  %141 = load i64, i64* %11, align 8
  %142 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %140, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %141)
  br label %143

143:                                              ; preds = %139, %134
  %144 = load i32*, i32** %5, align 8
  %145 = call i32 @krb5_ret_int32(i32* %144, i64* %21)
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %7, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = load i32, i32* %4, align 4
  %150 = load i64, i64* %11, align 8
  %151 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %149, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %150)
  br label %152

152:                                              ; preds = %148, %143
  %153 = load i64, i64* %21, align 8
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %24, align 4
  %155 = load i32*, i32** %5, align 8
  %156 = call i32 @krb5_ret_int32(i32* %155, i64* %18)
  store i32 %156, i32* %7, align 4
  %157 = load i32, i32* %7, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %152
  %160 = load i32, i32* %4, align 4
  %161 = load i64, i64* %11, align 8
  %162 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %160, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %161)
  br label %163

163:                                              ; preds = %159, %152
  %164 = load i64, i64* %18, align 8
  %165 = icmp slt i64 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %163
  %167 = load i32, i32* %4, align 4
  %168 = load i64, i64* %11, align 8
  %169 = load i64, i64* %18, align 8
  %170 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %167, i32 1, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i64 %168, i64 %169)
  br label %171

171:                                              ; preds = %166, %163
  %172 = load i32*, i32** %5, align 8
  %173 = load i32, i32* @SEEK_CUR, align 4
  %174 = call i64 @krb5_storage_seek(i32* %172, i64 0, i32 %173)
  store i64 %174, i64* %22, align 8
  %175 = load i32, i32* %4, align 4
  %176 = load i64, i64* %11, align 8
  %177 = trunc i64 %176 to i32
  %178 = sext i32 %177 to i64
  %179 = call i32 (i32, i8*, i64, ...) @krb5_warnx(i32 %175, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i64 %178)
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %181 = load i32, i32* %24, align 4
  %182 = load i64, i64* %11, align 8
  %183 = load i64, i64* %18, align 8
  %184 = load i32*, i32** %5, align 8
  %185 = call i32 @kadm5_log_replay(%struct.TYPE_6__* %180, i32 %181, i64 %182, i64 %183, i32* %184)
  store i32 %185, i32* %7, align 4
  %186 = load i32, i32* %7, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %208

188:                                              ; preds = %171
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* %7, align 4
  %193 = call i8* @krb5_get_error_message(i32 %191, i32 %192)
  store i8* %193, i8** %25, align 8
  %194 = load i32, i32* %4, align 4
  %195 = load i64, i64* %11, align 8
  %196 = load i8*, i8** %25, align 8
  %197 = icmp ne i8* %196, null
  br i1 %197, label %198, label %200

198:                                              ; preds = %188
  %199 = load i8*, i8** %25, align 8
  br label %201

200:                                              ; preds = %188
  br label %201

201:                                              ; preds = %200, %198
  %202 = phi i8* [ %199, %198 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), %200 ]
  %203 = load i32, i32* %7, align 4
  %204 = call i32 (i32, i8*, i64, ...) @krb5_warnx(i32 %194, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.6, i64 0, i64 0), i64 %195, i8* %202, i32 %203)
  %205 = load i32, i32* %4, align 4
  %206 = load i8*, i8** %25, align 8
  %207 = call i32 @krb5_free_error_message(i32 %205, i8* %206)
  br label %208

208:                                              ; preds = %201, %171
  %209 = load i32*, i32** %5, align 8
  %210 = load i32, i32* @SEEK_CUR, align 4
  %211 = call i64 @krb5_storage_seek(i32* %209, i64 0, i32 %210)
  store i64 %211, i64* %23, align 8
  %212 = load i64, i64* %22, align 8
  %213 = load i64, i64* %18, align 8
  %214 = add nsw i64 %212, %213
  %215 = load i64, i64* %23, align 8
  %216 = icmp ne i64 %214, %215
  br i1 %216, label %217, label %221

217:                                              ; preds = %208
  %218 = load i32, i32* %4, align 4
  %219 = load i64, i64* %11, align 8
  %220 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %218, i32 1, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0), i64 %219)
  br label %221

221:                                              ; preds = %217, %208
  %222 = load i32*, i32** %5, align 8
  %223 = call i32 @krb5_ret_int32(i32* %222, i64* %19)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %221
  %226 = load i32, i32* %4, align 4
  %227 = load i64, i64* %11, align 8
  %228 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %226, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i64 %227)
  br label %229

229:                                              ; preds = %225, %221
  %230 = load i32*, i32** %5, align 8
  %231 = call i32 @krb5_ret_int32(i32* %230, i64* %12)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %229
  %234 = load i32, i32* %4, align 4
  %235 = load i64, i64* %11, align 8
  %236 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %234, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i64 %235)
  br label %237

237:                                              ; preds = %233, %229
  %238 = load i64, i64* %18, align 8
  %239 = load i64, i64* %19, align 8
  %240 = icmp ne i64 %238, %239
  br i1 %240, label %241, label %245

241:                                              ; preds = %237
  %242 = load i32, i32* %4, align 4
  %243 = load i64, i64* %11, align 8
  %244 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %242, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i64 %243)
  br label %245

245:                                              ; preds = %241, %237
  %246 = load i64, i64* %11, align 8
  %247 = load i64, i64* %12, align 8
  %248 = icmp ne i64 %246, %247
  br i1 %248, label %249, label %253

249:                                              ; preds = %245
  %250 = load i32, i32* %4, align 4
  %251 = load i64, i64* %11, align 8
  %252 = call i32 (i32, i32, i8*, ...) @krb5_errx(i32 %250, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i64 %251)
  br label %253

253:                                              ; preds = %249, %245
  br label %129

254:                                              ; preds = %133
  %255 = load i64, i64* %11, align 8
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 0
  store i64 %255, i64* %258, align 8
  br label %259

259:                                              ; preds = %254, %30
  ret void
}

declare dso_local i32 @krb5_ret_int32(i32*, i64*) #1

declare dso_local i64 @krb5_storage_seek(i32*, i64, i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @krb5_errx(i32, i32, i8*, ...) #1

declare dso_local i32 @krb5_storage_read(i32*, i8*, i64) #1

declare dso_local i64 @write(i32, i8*, i64) #1

declare dso_local i32 @krb5_err(i32, i32, i32, i8*) #1

declare dso_local i32 @fsync(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @krb5_warnx(i32, i8*, i64, ...) #1

declare dso_local i32 @kadm5_log_replay(%struct.TYPE_6__*, i32, i64, i64, i32*) #1

declare dso_local i8* @krb5_get_error_message(i32, i32) #1

declare dso_local i32 @krb5_free_error_message(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
