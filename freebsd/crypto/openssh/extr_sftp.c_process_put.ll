; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp.c_process_put.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp.c_process_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sftp_conn = type { i32 }
%struct.TYPE_5__ = type { i32, i8** }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"Looking up %s\00", align 1
@GLOB_NOCHECK = common dso_local global i32 0, align 4
@GLOB_MARK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"File \22%s\22 not found.\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"Multiple paths match, but destination \22%s\22 is not a directory\00", align 1
@interrupted = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"stat %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"basename %s: %s\00", align 1
@global_aflag = common dso_local global i32 0, align 4
@quiet = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Resuming upload of %s to %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Uploading %s to %s\0A\00", align 1
@global_rflag = common dso_local global i64 0, align 8
@global_pflag = common dso_local global i64 0, align 8
@global_fflag = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sftp_conn*, i8*, i8*, i8*, i32, i32, i32, i32)* @process_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_put(%struct.sftp_conn* %0, i8* %1, i8* %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.sftp_conn*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_5__, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.stat, align 4
  store %struct.sftp_conn* %0, %struct.sftp_conn** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  store i8* null, i8** %20, align 8
  store i32 0, i32* %22, align 4
  store i32 1, i32* %24, align 4
  %26 = load i8*, i8** %11, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %8
  %29 = load i8*, i8** %11, align 8
  %30 = call i8* @xstrdup(i8* %29)
  store i8* %30, i8** %17, align 8
  %31 = load i8*, i8** %17, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = call i8* @make_absolute(i8* %31, i8* %32)
  store i8* %33, i8** %17, align 8
  br label %34

34:                                               ; preds = %28, %8
  %35 = call i32 @memset(%struct.TYPE_5__* %21, i32 0, i32 16)
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @debug3(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %36)
  %38 = load i8*, i8** %10, align 8
  %39 = load i32, i32* @GLOB_NOCHECK, align 4
  %40 = load i32, i32* @GLOB_MARK, align 4
  %41 = or i32 %39, %40
  %42 = call i64 @glob(i8* %38, i32 %41, i32* null, %struct.TYPE_5__* %21)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  store i32 -1, i32* %22, align 4
  br label %266

47:                                               ; preds = %34
  %48 = load i8*, i8** %17, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load %struct.sftp_conn*, %struct.sftp_conn** %9, align 8
  %52 = load i8*, i8** %17, align 8
  %53 = call i32 @remote_is_dir(%struct.sftp_conn* %51, i8* %52)
  store i32 %53, i32* %24, align 4
  br label %54

54:                                               ; preds = %50, %47
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp sgt i32 %56, 1
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load i8*, i8** %17, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load i32, i32* %24, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i8*, i8** %17, align 8
  %66 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i8* %65)
  store i32 -1, i32* %22, align 4
  br label %266

67:                                               ; preds = %61, %58, %54
  store i32 0, i32* %23, align 4
  br label %68

68:                                               ; preds = %262, %67
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %70 = load i8**, i8*** %69, align 8
  %71 = load i32, i32* %23, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %68
  %77 = load i32, i32* @interrupted, align 4
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  br label %80

80:                                               ; preds = %76, %68
  %81 = phi i1 [ false, %68 ], [ %79, %76 ]
  br i1 %81, label %82, label %265

82:                                               ; preds = %80
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %84 = load i8**, i8*** %83, align 8
  %85 = load i32, i32* %23, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @stat(i8* %88, %struct.stat* %25)
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %91, label %101

91:                                               ; preds = %82
  store i32 -1, i32* %22, align 4
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %93 = load i8**, i8*** %92, align 8
  %94 = load i32, i32* %23, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %93, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = load i32, i32* @errno, align 4
  %99 = call i8* @strerror(i32 %98)
  %100 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %97, i8* %99)
  br label %262

101:                                              ; preds = %82
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %103 = load i8**, i8*** %102, align 8
  %104 = load i32, i32* %23, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = call i8* @xstrdup(i8* %107)
  store i8* %108, i8** %19, align 8
  %109 = load i8*, i8** %19, align 8
  %110 = call i8* @basename(i8* %109)
  store i8* %110, i8** %20, align 8
  %111 = icmp eq i8* %110, null
  br i1 %111, label %112, label %119

112:                                              ; preds = %101
  %113 = load i8*, i8** %19, align 8
  %114 = load i32, i32* @errno, align 4
  %115 = call i8* @strerror(i32 %114)
  %116 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %113, i8* %115)
  %117 = load i8*, i8** %19, align 8
  %118 = call i32 @free(i8* %117)
  store i32 -1, i32* %22, align 4
  br label %266

119:                                              ; preds = %101
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %123, label %137

123:                                              ; preds = %119
  %124 = load i8*, i8** %17, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %137

126:                                              ; preds = %123
  %127 = load i32, i32* %24, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load i8*, i8** %17, align 8
  %131 = load i8*, i8** %20, align 8
  %132 = call i8* @path_append(i8* %130, i8* %131)
  store i8* %132, i8** %18, align 8
  br label %136

133:                                              ; preds = %126
  %134 = load i8*, i8** %17, align 8
  %135 = call i8* @xstrdup(i8* %134)
  store i8* %135, i8** %18, align 8
  br label %136

136:                                              ; preds = %133, %129
  br label %150

137:                                              ; preds = %123, %119
  %138 = load i8*, i8** %17, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = load i8*, i8** %17, align 8
  %142 = load i8*, i8** %20, align 8
  %143 = call i8* @path_append(i8* %141, i8* %142)
  store i8* %143, i8** %18, align 8
  br label %149

144:                                              ; preds = %137
  %145 = load i8*, i8** %20, align 8
  %146 = call i8* @xstrdup(i8* %145)
  %147 = load i8*, i8** %12, align 8
  %148 = call i8* @make_absolute(i8* %146, i8* %147)
  store i8* %148, i8** %18, align 8
  br label %149

149:                                              ; preds = %144, %140
  br label %150

150:                                              ; preds = %149, %136
  %151 = load i8*, i8** %19, align 8
  %152 = call i32 @free(i8* %151)
  %153 = load i32, i32* @global_aflag, align 4
  %154 = load i32, i32* %15, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %15, align 4
  %156 = load i32, i32* @quiet, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %170, label %158

158:                                              ; preds = %150
  %159 = load i32, i32* %15, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %170

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %163 = load i8**, i8*** %162, align 8
  %164 = load i32, i32* %23, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8*, i8** %163, i64 %165
  %167 = load i8*, i8** %166, align 8
  %168 = load i8*, i8** %18, align 8
  %169 = call i32 @mprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %167, i8* %168)
  br label %186

170:                                              ; preds = %158, %150
  %171 = load i32, i32* @quiet, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %185, label %173

173:                                              ; preds = %170
  %174 = load i32, i32* %15, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %185, label %176

176:                                              ; preds = %173
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %178 = load i8**, i8*** %177, align 8
  %179 = load i32, i32* %23, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8*, i8** %178, i64 %180
  %182 = load i8*, i8** %181, align 8
  %183 = load i8*, i8** %18, align 8
  %184 = call i32 @mprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %182, i8* %183)
  br label %185

185:                                              ; preds = %176, %173, %170
  br label %186

186:                                              ; preds = %185, %161
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %188 = load i8**, i8*** %187, align 8
  %189 = load i32, i32* %23, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8*, i8** %188, i64 %190
  %192 = load i8*, i8** %191, align 8
  %193 = call i64 @pathname_is_dir(i8* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %231

195:                                              ; preds = %186
  %196 = load i32, i32* %14, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %201, label %198

198:                                              ; preds = %195
  %199 = load i64, i64* @global_rflag, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %231

201:                                              ; preds = %198, %195
  %202 = load %struct.sftp_conn*, %struct.sftp_conn** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %204 = load i8**, i8*** %203, align 8
  %205 = load i32, i32* %23, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8*, i8** %204, i64 %206
  %208 = load i8*, i8** %207, align 8
  %209 = load i8*, i8** %18, align 8
  %210 = load i32, i32* %13, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %215, label %212

212:                                              ; preds = %201
  %213 = load i64, i64* @global_pflag, align 8
  %214 = icmp ne i64 %213, 0
  br label %215

215:                                              ; preds = %212, %201
  %216 = phi i1 [ true, %201 ], [ %214, %212 ]
  %217 = zext i1 %216 to i32
  %218 = load i32, i32* %15, align 4
  %219 = load i32, i32* %16, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %224, label %221

221:                                              ; preds = %215
  %222 = load i64, i64* @global_fflag, align 8
  %223 = icmp ne i64 %222, 0
  br label %224

224:                                              ; preds = %221, %215
  %225 = phi i1 [ true, %215 ], [ %223, %221 ]
  %226 = zext i1 %225 to i32
  %227 = call i32 @upload_dir(%struct.sftp_conn* %202, i8* %208, i8* %209, i32 %217, i32 1, i32 %218, i32 %226)
  %228 = icmp eq i32 %227, -1
  br i1 %228, label %229, label %230

229:                                              ; preds = %224
  store i32 -1, i32* %22, align 4
  br label %230

230:                                              ; preds = %229, %224
  br label %261

231:                                              ; preds = %198, %186
  %232 = load %struct.sftp_conn*, %struct.sftp_conn** %9, align 8
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %234 = load i8**, i8*** %233, align 8
  %235 = load i32, i32* %23, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8*, i8** %234, i64 %236
  %238 = load i8*, i8** %237, align 8
  %239 = load i8*, i8** %18, align 8
  %240 = load i32, i32* %13, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %245, label %242

242:                                              ; preds = %231
  %243 = load i64, i64* @global_pflag, align 8
  %244 = icmp ne i64 %243, 0
  br label %245

245:                                              ; preds = %242, %231
  %246 = phi i1 [ true, %231 ], [ %244, %242 ]
  %247 = zext i1 %246 to i32
  %248 = load i32, i32* %15, align 4
  %249 = load i32, i32* %16, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %254, label %251

251:                                              ; preds = %245
  %252 = load i64, i64* @global_fflag, align 8
  %253 = icmp ne i64 %252, 0
  br label %254

254:                                              ; preds = %251, %245
  %255 = phi i1 [ true, %245 ], [ %253, %251 ]
  %256 = zext i1 %255 to i32
  %257 = call i32 @do_upload(%struct.sftp_conn* %232, i8* %238, i8* %239, i32 %247, i32 %248, i32 %256)
  %258 = icmp eq i32 %257, -1
  br i1 %258, label %259, label %260

259:                                              ; preds = %254
  store i32 -1, i32* %22, align 4
  br label %260

260:                                              ; preds = %259, %254
  br label %261

261:                                              ; preds = %260, %230
  br label %262

262:                                              ; preds = %261, %91
  %263 = load i32, i32* %23, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %23, align 4
  br label %68

265:                                              ; preds = %80
  br label %266

266:                                              ; preds = %265, %112, %64, %44
  %267 = load i8*, i8** %18, align 8
  %268 = call i32 @free(i8* %267)
  %269 = load i8*, i8** %17, align 8
  %270 = call i32 @free(i8* %269)
  %271 = call i32 @globfree(%struct.TYPE_5__* %21)
  %272 = load i32, i32* %22, align 4
  ret i32 %272
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @make_absolute(i8*, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @debug3(i8*, i8*) #1

declare dso_local i64 @glob(i8*, i32, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @error(i8*, i8*, ...) #1

declare dso_local i32 @remote_is_dir(%struct.sftp_conn*, i8*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i8* @basename(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @path_append(i8*, i8*) #1

declare dso_local i32 @mprintf(i8*, i8*, i8*) #1

declare dso_local i64 @pathname_is_dir(i8*) #1

declare dso_local i32 @upload_dir(%struct.sftp_conn*, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @do_upload(%struct.sftp_conn*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @globfree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
