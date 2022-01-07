; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_pw_scan.c___pw_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_pw_scan.c___pw_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8*, i8*, i32, i64*, i64*, i8*, i8*, i64*, i8*, i8*, i64* }

@pw_big_ids_warning = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"PW_SCAN_BIG_IDS\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@_PWF_NAME = common dso_local global i32 0, align 4
@_PWF_PASSWD = common dso_local global i32 0, align 4
@_PWF_UID = common dso_local global i32 0, align 4
@_PWSCAN_WARN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"no uid for user %s\00", align 1
@errno = common dso_local global i64 0, align 8
@ULONG_MAX = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@UID_MAX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"%s > max uid value (%u)\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"%s uid is incorrect\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"root uid should be 0\00", align 1
@USHRT_MAX = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [36 x i8] c"%s > recommended max uid value (%u)\00", align 1
@_PWF_GID = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"no gid for user %s\00", align 1
@GID_MAX = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [24 x i8] c"%s > max gid value (%u)\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"%s gid is incorrect\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"%s > recommended max gid value (%u)\00", align 1
@_PWSCAN_MASTER = common dso_local global i32 0, align 4
@_PWF_CLASS = common dso_local global i32 0, align 4
@_PWF_CHANGE = common dso_local global i32 0, align 4
@_PWF_EXPIRE = common dso_local global i32 0, align 4
@_PWF_GECOS = common dso_local global i32 0, align 4
@_PWF_DIR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [28 x i8] c"warning, unknown root shell\00", align 1
@_PWF_SHELL = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [16 x i8] c"corrupted entry\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__pw_scan(i8* %0, %struct.passwd* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.passwd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store %struct.passwd* %1, %struct.passwd** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @pw_big_ids_warning, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = call i32* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %18 = icmp eq i32* %17, null
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 1, i32 0
  store i32 %20, i32* @pw_big_ids_warning, align 4
  br label %21

21:                                               ; preds = %16, %3
  %22 = load %struct.passwd*, %struct.passwd** %6, align 8
  %23 = getelementptr inbounds %struct.passwd, %struct.passwd* %22, i32 0, i32 2
  store i32 0, i32* %23, align 8
  %24 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.passwd*, %struct.passwd** %6, align 8
  %26 = getelementptr inbounds %struct.passwd, %struct.passwd* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = icmp ne i8* %24, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  br label %462

29:                                               ; preds = %21
  %30 = load %struct.passwd*, %struct.passwd** %6, align 8
  %31 = getelementptr inbounds %struct.passwd, %struct.passwd* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %9, align 4
  %37 = load %struct.passwd*, %struct.passwd** %6, align 8
  %38 = getelementptr inbounds %struct.passwd, %struct.passwd* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %29
  %45 = load %struct.passwd*, %struct.passwd** %6, align 8
  %46 = getelementptr inbounds %struct.passwd, %struct.passwd* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 43
  br i1 %51, label %60, label %52

52:                                               ; preds = %44
  %53 = load %struct.passwd*, %struct.passwd** %6, align 8
  %54 = getelementptr inbounds %struct.passwd, %struct.passwd* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %52, %44
  %61 = load i32, i32* @_PWF_NAME, align 4
  %62 = load %struct.passwd*, %struct.passwd** %6, align 8
  %63 = getelementptr inbounds %struct.passwd, %struct.passwd* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %60, %52, %29
  %67 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %68 = bitcast i8* %67 to i64*
  %69 = load %struct.passwd*, %struct.passwd** %6, align 8
  %70 = getelementptr inbounds %struct.passwd, %struct.passwd* %69, i32 0, i32 10
  store i64* %68, i64** %70, align 8
  %71 = icmp ne i64* %68, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %66
  br label %462

73:                                               ; preds = %66
  %74 = load %struct.passwd*, %struct.passwd** %6, align 8
  %75 = getelementptr inbounds %struct.passwd, %struct.passwd* %74, i32 0, i32 10
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = load i32, i32* @_PWF_PASSWD, align 4
  %82 = load %struct.passwd*, %struct.passwd** %6, align 8
  %83 = getelementptr inbounds %struct.passwd, %struct.passwd* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %80, %73
  %87 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %87, i8** %11, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %86
  br label %462

90:                                               ; preds = %86
  %91 = load i8*, i8** %11, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = icmp ne i8 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load i32, i32* @_PWF_UID, align 4
  %97 = load %struct.passwd*, %struct.passwd** %6, align 8
  %98 = getelementptr inbounds %struct.passwd, %struct.passwd* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %129

101:                                              ; preds = %90
  %102 = load %struct.passwd*, %struct.passwd** %6, align 8
  %103 = getelementptr inbounds %struct.passwd, %struct.passwd* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 0
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp ne i32 %107, 43
  br i1 %108, label %109, label %128

109:                                              ; preds = %101
  %110 = load %struct.passwd*, %struct.passwd** %6, align 8
  %111 = getelementptr inbounds %struct.passwd, %struct.passwd* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 0
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %115, 45
  br i1 %116, label %117, label %128

117:                                              ; preds = %109
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @_PWSCAN_WARN, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = load %struct.passwd*, %struct.passwd** %6, align 8
  %124 = getelementptr inbounds %struct.passwd, %struct.passwd* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %125)
  br label %127

127:                                              ; preds = %122, %117
  store i32 0, i32* %4, align 4
  br label %471

128:                                              ; preds = %109, %101
  br label %129

129:                                              ; preds = %128, %95
  store i64 0, i64* @errno, align 8
  %130 = load i8*, i8** %11, align 8
  %131 = call i64 @strtoul(i8* %130, i8** %10, i32 10)
  store i64 %131, i64* %13, align 8
  %132 = load i64, i64* %13, align 8
  %133 = load i64, i64* @ULONG_MAX, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %129
  %136 = load i64, i64* @errno, align 8
  %137 = load i64, i64* @ERANGE, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %143, label %139

139:                                              ; preds = %135, %129
  %140 = load i64, i64* %13, align 8
  %141 = load i64, i64* @UID_MAX, align 8
  %142 = icmp ugt i64 %140, %141
  br i1 %142, label %143, label %153

143:                                              ; preds = %139, %135
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* @_PWSCAN_WARN, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = load i8*, i8** %11, align 8
  %150 = load i64, i64* @UID_MAX, align 8
  %151 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %149, i64 %150)
  br label %152

152:                                              ; preds = %148, %143
  store i32 0, i32* %4, align 4
  br label %471

153:                                              ; preds = %139
  %154 = load i64, i64* %13, align 8
  %155 = inttoptr i64 %154 to i8*
  store i8* %155, i8** %8, align 8
  %156 = load i8*, i8** %10, align 8
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %169

160:                                              ; preds = %153
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* @_PWSCAN_WARN, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load i8*, i8** %11, align 8
  %167 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %166)
  br label %168

168:                                              ; preds = %165, %160
  store i32 0, i32* %4, align 4
  br label %471

169:                                              ; preds = %153
  %170 = load i32, i32* %9, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %183

172:                                              ; preds = %169
  %173 = load i8*, i8** %8, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %183

175:                                              ; preds = %172
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* @_PWSCAN_WARN, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %175
  %181 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %182

182:                                              ; preds = %180, %175
  store i32 0, i32* %4, align 4
  br label %471

183:                                              ; preds = %172, %169
  %184 = load i32, i32* %7, align 4
  %185 = load i32, i32* @_PWSCAN_WARN, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %199

188:                                              ; preds = %183
  %189 = load i32, i32* @pw_big_ids_warning, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %199

191:                                              ; preds = %188
  %192 = load i8*, i8** %8, align 8
  %193 = load i8*, i8** @USHRT_MAX, align 8
  %194 = icmp ugt i8* %192, %193
  br i1 %194, label %195, label %199

195:                                              ; preds = %191
  %196 = load i8*, i8** %11, align 8
  %197 = load i8*, i8** @USHRT_MAX, align 8
  %198 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i8* %196, i8* %197)
  br label %199

199:                                              ; preds = %195, %191, %188, %183
  %200 = load i8*, i8** %8, align 8
  %201 = load %struct.passwd*, %struct.passwd** %6, align 8
  %202 = getelementptr inbounds %struct.passwd, %struct.passwd* %201, i32 0, i32 9
  store i8* %200, i8** %202, align 8
  %203 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %203, i8** %11, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %206, label %205

205:                                              ; preds = %199
  br label %462

206:                                              ; preds = %199
  %207 = load i8*, i8** %11, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 0
  %209 = load i8, i8* %208, align 1
  %210 = icmp ne i8 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %206
  %212 = load i32, i32* @_PWF_GID, align 4
  %213 = load %struct.passwd*, %struct.passwd** %6, align 8
  %214 = getelementptr inbounds %struct.passwd, %struct.passwd* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = or i32 %215, %212
  store i32 %216, i32* %214, align 8
  br label %245

217:                                              ; preds = %206
  %218 = load %struct.passwd*, %struct.passwd** %6, align 8
  %219 = getelementptr inbounds %struct.passwd, %struct.passwd* %218, i32 0, i32 0
  %220 = load i8*, i8** %219, align 8
  %221 = getelementptr inbounds i8, i8* %220, i64 0
  %222 = load i8, i8* %221, align 1
  %223 = sext i8 %222 to i32
  %224 = icmp ne i32 %223, 43
  br i1 %224, label %225, label %244

225:                                              ; preds = %217
  %226 = load %struct.passwd*, %struct.passwd** %6, align 8
  %227 = getelementptr inbounds %struct.passwd, %struct.passwd* %226, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 0
  %230 = load i8, i8* %229, align 1
  %231 = sext i8 %230 to i32
  %232 = icmp ne i32 %231, 45
  br i1 %232, label %233, label %244

233:                                              ; preds = %225
  %234 = load i32, i32* %7, align 4
  %235 = load i32, i32* @_PWSCAN_WARN, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %243

238:                                              ; preds = %233
  %239 = load %struct.passwd*, %struct.passwd** %6, align 8
  %240 = getelementptr inbounds %struct.passwd, %struct.passwd* %239, i32 0, i32 0
  %241 = load i8*, i8** %240, align 8
  %242 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* %241)
  br label %243

243:                                              ; preds = %238, %233
  store i32 0, i32* %4, align 4
  br label %471

244:                                              ; preds = %225, %217
  br label %245

245:                                              ; preds = %244, %211
  store i64 0, i64* @errno, align 8
  %246 = load i8*, i8** %11, align 8
  %247 = call i64 @strtoul(i8* %246, i8** %10, i32 10)
  store i64 %247, i64* %13, align 8
  %248 = load i64, i64* %13, align 8
  %249 = load i64, i64* @ULONG_MAX, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %255

251:                                              ; preds = %245
  %252 = load i64, i64* @errno, align 8
  %253 = load i64, i64* @ERANGE, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %259, label %255

255:                                              ; preds = %251, %245
  %256 = load i64, i64* %13, align 8
  %257 = load i64, i64* @GID_MAX, align 8
  %258 = icmp ugt i64 %256, %257
  br i1 %258, label %259, label %269

259:                                              ; preds = %255, %251
  %260 = load i32, i32* %7, align 4
  %261 = load i32, i32* @_PWSCAN_WARN, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %259
  %265 = load i8*, i8** %11, align 8
  %266 = load i64, i64* @GID_MAX, align 8
  %267 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i8* %265, i64 %266)
  br label %268

268:                                              ; preds = %264, %259
  store i32 0, i32* %4, align 4
  br label %471

269:                                              ; preds = %255
  %270 = load i64, i64* %13, align 8
  %271 = inttoptr i64 %270 to i8*
  store i8* %271, i8** %8, align 8
  %272 = load i8*, i8** %10, align 8
  %273 = load i8, i8* %272, align 1
  %274 = sext i8 %273 to i32
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %285

276:                                              ; preds = %269
  %277 = load i32, i32* %7, align 4
  %278 = load i32, i32* @_PWSCAN_WARN, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %284

281:                                              ; preds = %276
  %282 = load i8*, i8** %11, align 8
  %283 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8* %282)
  br label %284

284:                                              ; preds = %281, %276
  store i32 0, i32* %4, align 4
  br label %471

285:                                              ; preds = %269
  %286 = load i32, i32* %7, align 4
  %287 = load i32, i32* @_PWSCAN_WARN, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %301

290:                                              ; preds = %285
  %291 = load i32, i32* @pw_big_ids_warning, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %301

293:                                              ; preds = %290
  %294 = load i8*, i8** %8, align 8
  %295 = load i8*, i8** @USHRT_MAX, align 8
  %296 = icmp ugt i8* %294, %295
  br i1 %296, label %297, label %301

297:                                              ; preds = %293
  %298 = load i8*, i8** %11, align 8
  %299 = load i8*, i8** @USHRT_MAX, align 8
  %300 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i8* %298, i8* %299)
  br label %301

301:                                              ; preds = %297, %293, %290, %285
  %302 = load i8*, i8** %8, align 8
  %303 = load %struct.passwd*, %struct.passwd** %6, align 8
  %304 = getelementptr inbounds %struct.passwd, %struct.passwd* %303, i32 0, i32 8
  store i8* %302, i8** %304, align 8
  %305 = load i32, i32* %7, align 4
  %306 = load i32, i32* @_PWSCAN_MASTER, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %368

309:                                              ; preds = %301
  %310 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %311 = bitcast i8* %310 to i64*
  %312 = load %struct.passwd*, %struct.passwd** %6, align 8
  %313 = getelementptr inbounds %struct.passwd, %struct.passwd* %312, i32 0, i32 7
  store i64* %311, i64** %313, align 8
  %314 = icmp ne i64* %311, null
  br i1 %314, label %316, label %315

315:                                              ; preds = %309
  br label %462

316:                                              ; preds = %309
  %317 = load %struct.passwd*, %struct.passwd** %6, align 8
  %318 = getelementptr inbounds %struct.passwd, %struct.passwd* %317, i32 0, i32 7
  %319 = load i64*, i64** %318, align 8
  %320 = getelementptr inbounds i64, i64* %319, i64 0
  %321 = load i64, i64* %320, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %329

323:                                              ; preds = %316
  %324 = load i32, i32* @_PWF_CLASS, align 4
  %325 = load %struct.passwd*, %struct.passwd** %6, align 8
  %326 = getelementptr inbounds %struct.passwd, %struct.passwd* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 8
  %328 = or i32 %327, %324
  store i32 %328, i32* %326, align 8
  br label %329

329:                                              ; preds = %323, %316
  %330 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %330, i8** %11, align 8
  %331 = icmp ne i8* %330, null
  br i1 %331, label %333, label %332

332:                                              ; preds = %329
  br label %462

333:                                              ; preds = %329
  %334 = load i8*, i8** %11, align 8
  %335 = getelementptr inbounds i8, i8* %334, i64 0
  %336 = load i8, i8* %335, align 1
  %337 = icmp ne i8 %336, 0
  br i1 %337, label %338, label %344

338:                                              ; preds = %333
  %339 = load i32, i32* @_PWF_CHANGE, align 4
  %340 = load %struct.passwd*, %struct.passwd** %6, align 8
  %341 = getelementptr inbounds %struct.passwd, %struct.passwd* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 8
  %343 = or i32 %342, %339
  store i32 %343, i32* %341, align 8
  br label %344

344:                                              ; preds = %338, %333
  %345 = load i8*, i8** %11, align 8
  %346 = call i8* @atol(i8* %345)
  %347 = load %struct.passwd*, %struct.passwd** %6, align 8
  %348 = getelementptr inbounds %struct.passwd, %struct.passwd* %347, i32 0, i32 6
  store i8* %346, i8** %348, align 8
  %349 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %349, i8** %11, align 8
  %350 = icmp ne i8* %349, null
  br i1 %350, label %352, label %351

351:                                              ; preds = %344
  br label %462

352:                                              ; preds = %344
  %353 = load i8*, i8** %11, align 8
  %354 = getelementptr inbounds i8, i8* %353, i64 0
  %355 = load i8, i8* %354, align 1
  %356 = icmp ne i8 %355, 0
  br i1 %356, label %357, label %363

357:                                              ; preds = %352
  %358 = load i32, i32* @_PWF_EXPIRE, align 4
  %359 = load %struct.passwd*, %struct.passwd** %6, align 8
  %360 = getelementptr inbounds %struct.passwd, %struct.passwd* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 8
  %362 = or i32 %361, %358
  store i32 %362, i32* %360, align 8
  br label %363

363:                                              ; preds = %357, %352
  %364 = load i8*, i8** %11, align 8
  %365 = call i8* @atol(i8* %364)
  %366 = load %struct.passwd*, %struct.passwd** %6, align 8
  %367 = getelementptr inbounds %struct.passwd, %struct.passwd* %366, i32 0, i32 5
  store i8* %365, i8** %367, align 8
  br label %368

368:                                              ; preds = %363, %301
  %369 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %370 = bitcast i8* %369 to i64*
  %371 = load %struct.passwd*, %struct.passwd** %6, align 8
  %372 = getelementptr inbounds %struct.passwd, %struct.passwd* %371, i32 0, i32 4
  store i64* %370, i64** %372, align 8
  %373 = icmp ne i64* %370, null
  br i1 %373, label %375, label %374

374:                                              ; preds = %368
  br label %462

375:                                              ; preds = %368
  %376 = load %struct.passwd*, %struct.passwd** %6, align 8
  %377 = getelementptr inbounds %struct.passwd, %struct.passwd* %376, i32 0, i32 4
  %378 = load i64*, i64** %377, align 8
  %379 = getelementptr inbounds i64, i64* %378, i64 0
  %380 = load i64, i64* %379, align 8
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %388

382:                                              ; preds = %375
  %383 = load i32, i32* @_PWF_GECOS, align 4
  %384 = load %struct.passwd*, %struct.passwd** %6, align 8
  %385 = getelementptr inbounds %struct.passwd, %struct.passwd* %384, i32 0, i32 2
  %386 = load i32, i32* %385, align 8
  %387 = or i32 %386, %383
  store i32 %387, i32* %385, align 8
  br label %388

388:                                              ; preds = %382, %375
  %389 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %390 = bitcast i8* %389 to i64*
  %391 = load %struct.passwd*, %struct.passwd** %6, align 8
  %392 = getelementptr inbounds %struct.passwd, %struct.passwd* %391, i32 0, i32 3
  store i64* %390, i64** %392, align 8
  %393 = icmp ne i64* %390, null
  br i1 %393, label %395, label %394

394:                                              ; preds = %388
  br label %462

395:                                              ; preds = %388
  %396 = load %struct.passwd*, %struct.passwd** %6, align 8
  %397 = getelementptr inbounds %struct.passwd, %struct.passwd* %396, i32 0, i32 3
  %398 = load i64*, i64** %397, align 8
  %399 = getelementptr inbounds i64, i64* %398, i64 0
  %400 = load i64, i64* %399, align 8
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %408

402:                                              ; preds = %395
  %403 = load i32, i32* @_PWF_DIR, align 4
  %404 = load %struct.passwd*, %struct.passwd** %6, align 8
  %405 = getelementptr inbounds %struct.passwd, %struct.passwd* %404, i32 0, i32 2
  %406 = load i32, i32* %405, align 8
  %407 = or i32 %406, %403
  store i32 %407, i32* %405, align 8
  br label %408

408:                                              ; preds = %402, %395
  %409 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %410 = load %struct.passwd*, %struct.passwd** %6, align 8
  %411 = getelementptr inbounds %struct.passwd, %struct.passwd* %410, i32 0, i32 1
  store i8* %409, i8** %411, align 8
  %412 = icmp ne i8* %409, null
  br i1 %412, label %414, label %413

413:                                              ; preds = %408
  br label %462

414:                                              ; preds = %408
  %415 = load %struct.passwd*, %struct.passwd** %6, align 8
  %416 = getelementptr inbounds %struct.passwd, %struct.passwd* %415, i32 0, i32 1
  %417 = load i8*, i8** %416, align 8
  store i8* %417, i8** %11, align 8
  %418 = load i32, i32* %9, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %447

420:                                              ; preds = %414
  %421 = load i8*, i8** %11, align 8
  %422 = load i8, i8* %421, align 1
  %423 = sext i8 %422 to i32
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %447

425:                                              ; preds = %420
  %426 = call i32 (...) @setusershell()
  br label %427

427:                                              ; preds = %444, %425
  %428 = call i8* (...) @getusershell()
  store i8* %428, i8** %12, align 8
  %429 = icmp ne i8* %428, null
  br i1 %429, label %438, label %430

430:                                              ; preds = %427
  %431 = load i32, i32* %7, align 4
  %432 = load i32, i32* @_PWSCAN_WARN, align 4
  %433 = and i32 %431, %432
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %437

435:                                              ; preds = %430
  %436 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  br label %437

437:                                              ; preds = %435, %430
  br label %445

438:                                              ; preds = %427
  %439 = load i8*, i8** %11, align 8
  %440 = load i8*, i8** %12, align 8
  %441 = call i32 @strcmp(i8* %439, i8* %440)
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %444, label %443

443:                                              ; preds = %438
  br label %445

444:                                              ; preds = %438
  br label %427

445:                                              ; preds = %443, %437
  %446 = call i32 (...) @endusershell()
  br label %447

447:                                              ; preds = %445, %420, %414
  %448 = load i8*, i8** %11, align 8
  %449 = getelementptr inbounds i8, i8* %448, i64 0
  %450 = load i8, i8* %449, align 1
  %451 = icmp ne i8 %450, 0
  br i1 %451, label %452, label %458

452:                                              ; preds = %447
  %453 = load i32, i32* @_PWF_SHELL, align 4
  %454 = load %struct.passwd*, %struct.passwd** %6, align 8
  %455 = getelementptr inbounds %struct.passwd, %struct.passwd* %454, i32 0, i32 2
  %456 = load i32, i32* %455, align 8
  %457 = or i32 %456, %453
  store i32 %457, i32* %455, align 8
  br label %458

458:                                              ; preds = %452, %447
  %459 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %459, i8** %11, align 8
  %460 = icmp ne i8* %459, null
  br i1 %460, label %461, label %470

461:                                              ; preds = %458
  br label %462

462:                                              ; preds = %461, %413, %394, %374, %351, %332, %315, %205, %89, %72, %28
  %463 = load i32, i32* %7, align 4
  %464 = load i32, i32* @_PWSCAN_WARN, align 4
  %465 = and i32 %463, %464
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %467, label %469

467:                                              ; preds = %462
  %468 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  br label %469

469:                                              ; preds = %467, %462
  store i32 0, i32* %4, align 4
  br label %471

470:                                              ; preds = %458
  store i32 1, i32* %4, align 4
  br label %471

471:                                              ; preds = %470, %469, %284, %268, %243, %182, %168, %152, %127
  %472 = load i32, i32* %4, align 4
  ret i32 %472
}

declare dso_local i32* @getenv(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i8* @atol(i8*) #1

declare dso_local i32 @setusershell(...) #1

declare dso_local i8* @getusershell(...) #1

declare dso_local i32 @endusershell(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
