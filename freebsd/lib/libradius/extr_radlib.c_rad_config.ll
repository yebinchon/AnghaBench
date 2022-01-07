; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_rad_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_rad_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rad_handle = type { i32, i32 }
%struct.in_addr = type { i64 }

@MAXCONFLINE = common dso_local global i32 0, align 4
@PATH_RADIUS_CONF = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Cannot open \22%s\22: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@MAX_FIELDS = common dso_local global i32 0, align 4
@ERRSIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"%s:%d: line too long\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"%s:%d: missing newline\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%s:%d: %s\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"auth\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"acct\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"%s:%d: invalid service type\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"%s:%d: missing shared secret\00", align 1
@RADIUS_AUTH = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"%s:%d: invalid port\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"%s:%d: invalid timeout\00", align 1
@TIMEOUT = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [24 x i8] c"%s:%d: invalid maxtries\00", align 1
@MAXTRIES = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [25 x i8] c"%s:%d: invalid dead_time\00", align 1
@DEAD_TIME = common dso_local global i64 0, align 8
@INADDR_NONE = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [22 x i8] c"%s:%d: invalid bindto\00", align 1
@INADDR_ANY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rad_config(%struct.rad_handle* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rad_handle*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca %struct.in_addr, align 8
  %33 = alloca i32, align 4
  store %struct.rad_handle* %0, %struct.rad_handle** %4, align 8
  store i8* %1, i8** %5, align 8
  %34 = load i32, i32* @MAXCONFLINE, align 4
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %7, align 8
  %37 = alloca i8, i64 %35, align 16
  store i64 %35, i64* %8, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %2
  %41 = load i8*, i8** @PATH_RADIUS_CONF, align 8
  store i8* %41, i8** %5, align 8
  br label %42

42:                                               ; preds = %40, %2
  %43 = load i8*, i8** %5, align 8
  %44 = call i32* @fopen(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %44, i32** %6, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load %struct.rad_handle*, %struct.rad_handle** %4, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* @errno, align 4
  %50 = call i32 @strerror(i32 %49)
  %51 = call i32 (%struct.rad_handle*, i8*, i8*, i32, ...) @generr(%struct.rad_handle* %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %48, i32 %50)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %312

52:                                               ; preds = %42
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %305, %302, %52
  %54 = trunc i64 %35 to i32
  %55 = load i32*, i32** %6, align 8
  %56 = call i32* @fgets(i8* %37, i32 %54, i32* %55)
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %306

58:                                               ; preds = %53
  %59 = load i32, i32* @MAX_FIELDS, align 4
  %60 = zext i32 %59 to i64
  %61 = call i8* @llvm.stacksave()
  store i8* %61, i8** %13, align 8
  %62 = alloca i8*, i64 %60, align 16
  store i64 %60, i64* %14, align 8
  %63 = load i32, i32* @ERRSIZE, align 4
  %64 = zext i32 %63 to i64
  %65 = alloca i8, i64 %64, align 16
  store i64 %64, i64* %16, align 8
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  %68 = call i32 @strlen(i8* %37)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %37, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 10
  br i1 %75, label %76, label %92

76:                                               ; preds = %58
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = sub i64 %35, 1
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load %struct.rad_handle*, %struct.rad_handle** %4, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 (%struct.rad_handle*, i8*, i8*, i32, ...) @generr(%struct.rad_handle* %82, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %83, i32 %84)
  br label %91

86:                                               ; preds = %76
  %87 = load %struct.rad_handle*, %struct.rad_handle** %4, align 8
  %88 = load i8*, i8** %5, align 8
  %89 = load i32, i32* %9, align 4
  %90 = call i32 (%struct.rad_handle*, i8*, i8*, i32, ...) @generr(%struct.rad_handle* %87, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %88, i32 %89)
  br label %91

91:                                               ; preds = %86, %81
  store i32 -1, i32* %10, align 4
  store i32 3, i32* %11, align 4
  br label %302

92:                                               ; preds = %58
  %93 = load i32, i32* %12, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %37, i64 %95
  store i8 0, i8* %96, align 1
  %97 = load i32, i32* @MAX_FIELDS, align 4
  %98 = trunc i64 %64 to i32
  %99 = call i32 @split(i8* %37, i8** %62, i32 %97, i8* %65, i32 %98)
  store i32 %99, i32* %15, align 4
  %100 = load i32, i32* %15, align 4
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %102, label %107

102:                                              ; preds = %92
  %103 = load %struct.rad_handle*, %struct.rad_handle** %4, align 8
  %104 = load i8*, i8** %5, align 8
  %105 = load i32, i32* %9, align 4
  %106 = call i32 (%struct.rad_handle*, i8*, i8*, i32, ...) @generr(%struct.rad_handle* %103, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %104, i32 %105, i8* %65)
  store i32 -1, i32* %10, align 4
  store i32 3, i32* %11, align 4
  br label %302

107:                                              ; preds = %92
  %108 = load i32, i32* %15, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  store i32 2, i32* %11, align 4
  br label %302

111:                                              ; preds = %107
  %112 = getelementptr inbounds i8*, i8** %62, i64 0
  %113 = load i8*, i8** %112, align 16
  %114 = call i64 @strcmp(i8* %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %149

116:                                              ; preds = %111
  %117 = getelementptr inbounds i8*, i8** %62, i64 0
  %118 = load i8*, i8** %117, align 16
  %119 = call i64 @strcmp(i8* %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %149

121:                                              ; preds = %116
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* @MAX_FIELDS, align 4
  %124 = icmp sge i32 %122, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  %126 = load %struct.rad_handle*, %struct.rad_handle** %4, align 8
  %127 = load i8*, i8** %5, align 8
  %128 = load i32, i32* %9, align 4
  %129 = call i32 (%struct.rad_handle*, i8*, i8*, i32, ...) @generr(%struct.rad_handle* %126, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i8* %127, i32 %128)
  store i32 -1, i32* %10, align 4
  store i32 3, i32* %11, align 4
  br label %302

130:                                              ; preds = %121
  %131 = load i32, i32* %15, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %15, align 4
  %133 = load i32, i32* %15, align 4
  store i32 %133, i32* %33, align 4
  br label %134

134:                                              ; preds = %138, %130
  %135 = load i32, i32* %33, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %33, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %134
  %139 = load i32, i32* %33, align 4
  %140 = sub nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %62, i64 %141
  %143 = load i8*, i8** %142, align 8
  %144 = load i32, i32* %33, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %62, i64 %145
  store i8* %143, i8** %146, align 8
  br label %134

147:                                              ; preds = %134
  %148 = getelementptr inbounds i8*, i8** %62, i64 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %148, align 16
  br label %149

149:                                              ; preds = %147, %116, %111
  %150 = load i32, i32* %15, align 4
  %151 = icmp slt i32 %150, 3
  br i1 %151, label %152, label %157

152:                                              ; preds = %149
  %153 = load %struct.rad_handle*, %struct.rad_handle** %4, align 8
  %154 = load i8*, i8** %5, align 8
  %155 = load i32, i32* %9, align 4
  %156 = call i32 (%struct.rad_handle*, i8*, i8*, i32, ...) @generr(%struct.rad_handle* %153, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* %154, i32 %155)
  store i32 -1, i32* %10, align 4
  store i32 3, i32* %11, align 4
  br label %302

157:                                              ; preds = %149
  %158 = getelementptr inbounds i8*, i8** %62, i64 0
  %159 = load i8*, i8** %158, align 16
  store i8* %159, i8** %17, align 8
  %160 = getelementptr inbounds i8*, i8** %62, i64 1
  %161 = load i8*, i8** %160, align 8
  store i8* %161, i8** %18, align 8
  %162 = getelementptr inbounds i8*, i8** %62, i64 2
  %163 = load i8*, i8** %162, align 16
  store i8* %163, i8** %21, align 8
  %164 = getelementptr inbounds i8*, i8** %62, i64 3
  %165 = load i8*, i8** %164, align 8
  store i8* %165, i8** %22, align 8
  %166 = getelementptr inbounds i8*, i8** %62, i64 4
  %167 = load i8*, i8** %166, align 16
  store i8* %167, i8** %23, align 8
  %168 = getelementptr inbounds i8*, i8** %62, i64 5
  %169 = load i8*, i8** %168, align 8
  store i8* %169, i8** %24, align 8
  %170 = getelementptr inbounds i8*, i8** %62, i64 6
  %171 = load i8*, i8** %170, align 16
  store i8* %171, i8** %25, align 8
  %172 = load %struct.rad_handle*, %struct.rad_handle** %4, align 8
  %173 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @RADIUS_AUTH, align 4
  %176 = icmp eq i32 %174, %175
  %177 = zext i1 %176 to i64
  %178 = select i1 %176, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  store i8* %178, i8** %27, align 8
  %179 = load i8*, i8** %17, align 8
  %180 = load i8*, i8** %27, align 8
  %181 = call i64 @strcmp(i8* %179, i8* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %157
  store i32 2, i32* %11, align 4
  br label %302

184:                                              ; preds = %157
  %185 = load i8*, i8** %18, align 8
  store i8* %185, i8** %19, align 8
  %186 = call i8* @strsep(i8** %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store i8* %186, i8** %18, align 8
  %187 = call i8* @strsep(i8** %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store i8* %187, i8** %20, align 8
  %188 = load i8*, i8** %20, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %190, label %204

190:                                              ; preds = %184
  %191 = load i8*, i8** %20, align 8
  %192 = call i8* @strtoul(i8* %191, i8** %26, i32 10)
  %193 = ptrtoint i8* %192 to i32
  store i32 %193, i32* %31, align 4
  %194 = load i8*, i8** %26, align 8
  %195 = load i8, i8* %194, align 1
  %196 = sext i8 %195 to i32
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %190
  %199 = load %struct.rad_handle*, %struct.rad_handle** %4, align 8
  %200 = load i8*, i8** %5, align 8
  %201 = load i32, i32* %9, align 4
  %202 = call i32 (%struct.rad_handle*, i8*, i8*, i32, ...) @generr(%struct.rad_handle* %199, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8* %200, i32 %201)
  store i32 -1, i32* %10, align 4
  store i32 3, i32* %11, align 4
  br label %302

203:                                              ; preds = %190
  br label %205

204:                                              ; preds = %184
  store i32 0, i32* %31, align 4
  br label %205

205:                                              ; preds = %204, %203
  %206 = load i8*, i8** %22, align 8
  %207 = icmp ne i8* %206, null
  br i1 %207, label %208, label %222

208:                                              ; preds = %205
  %209 = load i8*, i8** %22, align 8
  %210 = call i8* @strtoul(i8* %209, i8** %26, i32 10)
  %211 = ptrtoint i8* %210 to i64
  store i64 %211, i64* %28, align 8
  %212 = load i8*, i8** %26, align 8
  %213 = load i8, i8* %212, align 1
  %214 = sext i8 %213 to i32
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %208
  %217 = load %struct.rad_handle*, %struct.rad_handle** %4, align 8
  %218 = load i8*, i8** %5, align 8
  %219 = load i32, i32* %9, align 4
  %220 = call i32 (%struct.rad_handle*, i8*, i8*, i32, ...) @generr(%struct.rad_handle* %217, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i8* %218, i32 %219)
  store i32 -1, i32* %10, align 4
  store i32 3, i32* %11, align 4
  br label %302

221:                                              ; preds = %208
  br label %224

222:                                              ; preds = %205
  %223 = load i64, i64* @TIMEOUT, align 8
  store i64 %223, i64* %28, align 8
  br label %224

224:                                              ; preds = %222, %221
  %225 = load i8*, i8** %23, align 8
  %226 = icmp ne i8* %225, null
  br i1 %226, label %227, label %241

227:                                              ; preds = %224
  %228 = load i8*, i8** %23, align 8
  %229 = call i8* @strtoul(i8* %228, i8** %26, i32 10)
  %230 = ptrtoint i8* %229 to i64
  store i64 %230, i64* %29, align 8
  %231 = load i8*, i8** %26, align 8
  %232 = load i8, i8* %231, align 1
  %233 = sext i8 %232 to i32
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %227
  %236 = load %struct.rad_handle*, %struct.rad_handle** %4, align 8
  %237 = load i8*, i8** %5, align 8
  %238 = load i32, i32* %9, align 4
  %239 = call i32 (%struct.rad_handle*, i8*, i8*, i32, ...) @generr(%struct.rad_handle* %236, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i8* %237, i32 %238)
  store i32 -1, i32* %10, align 4
  store i32 3, i32* %11, align 4
  br label %302

240:                                              ; preds = %227
  br label %243

241:                                              ; preds = %224
  %242 = load i64, i64* @MAXTRIES, align 8
  store i64 %242, i64* %29, align 8
  br label %243

243:                                              ; preds = %241, %240
  %244 = load i8*, i8** %24, align 8
  %245 = icmp ne i8* %244, null
  br i1 %245, label %246, label %260

246:                                              ; preds = %243
  %247 = load i8*, i8** %24, align 8
  %248 = call i8* @strtoul(i8* %247, i8** %26, i32 10)
  %249 = ptrtoint i8* %248 to i64
  store i64 %249, i64* %30, align 8
  %250 = load i8*, i8** %26, align 8
  %251 = load i8, i8* %250, align 1
  %252 = sext i8 %251 to i32
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %259

254:                                              ; preds = %246
  %255 = load %struct.rad_handle*, %struct.rad_handle** %4, align 8
  %256 = load i8*, i8** %5, align 8
  %257 = load i32, i32* %9, align 4
  %258 = call i32 (%struct.rad_handle*, i8*, i8*, i32, ...) @generr(%struct.rad_handle* %255, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i8* %256, i32 %257)
  store i32 -1, i32* %10, align 4
  store i32 3, i32* %11, align 4
  br label %302

259:                                              ; preds = %246
  br label %262

260:                                              ; preds = %243
  %261 = load i64, i64* @DEAD_TIME, align 8
  store i64 %261, i64* %30, align 8
  br label %262

262:                                              ; preds = %260, %259
  %263 = load i8*, i8** %25, align 8
  %264 = icmp ne i8* %263, null
  br i1 %264, label %265, label %279

265:                                              ; preds = %262
  %266 = load i8*, i8** %25, align 8
  %267 = call i64 @inet_addr(i8* %266)
  %268 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %32, i32 0, i32 0
  store i64 %267, i64* %268, align 8
  %269 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %32, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @INADDR_NONE, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %278

273:                                              ; preds = %265
  %274 = load %struct.rad_handle*, %struct.rad_handle** %4, align 8
  %275 = load i8*, i8** %5, align 8
  %276 = load i32, i32* %9, align 4
  %277 = call i32 (%struct.rad_handle*, i8*, i8*, i32, ...) @generr(%struct.rad_handle* %274, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i8* %275, i32 %276)
  store i32 -1, i32* %10, align 4
  store i32 3, i32* %11, align 4
  br label %302

278:                                              ; preds = %265
  br label %282

279:                                              ; preds = %262
  %280 = load i64, i64* @INADDR_ANY, align 8
  %281 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %32, i32 0, i32 0
  store i64 %280, i64* %281, align 8
  br label %282

282:                                              ; preds = %279, %278
  %283 = load %struct.rad_handle*, %struct.rad_handle** %4, align 8
  %284 = load i8*, i8** %18, align 8
  %285 = load i32, i32* %31, align 4
  %286 = load i8*, i8** %21, align 8
  %287 = load i64, i64* %28, align 8
  %288 = load i64, i64* %29, align 8
  %289 = load i64, i64* %30, align 8
  %290 = call i32 @rad_add_server_ex(%struct.rad_handle* %283, i8* %284, i32 %285, i8* %286, i64 %287, i64 %288, i64 %289, %struct.in_addr* %32)
  %291 = icmp eq i32 %290, -1
  br i1 %291, label %292, label %301

292:                                              ; preds = %282
  %293 = load %struct.rad_handle*, %struct.rad_handle** %4, align 8
  %294 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @strcpy(i8* %65, i32 %295)
  %297 = load %struct.rad_handle*, %struct.rad_handle** %4, align 8
  %298 = load i8*, i8** %5, align 8
  %299 = load i32, i32* %9, align 4
  %300 = call i32 (%struct.rad_handle*, i8*, i8*, i32, ...) @generr(%struct.rad_handle* %297, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %298, i32 %299, i8* %65)
  store i32 -1, i32* %10, align 4
  store i32 3, i32* %11, align 4
  br label %302

301:                                              ; preds = %282
  store i32 0, i32* %11, align 4
  br label %302

302:                                              ; preds = %301, %292, %273, %254, %235, %216, %198, %183, %152, %125, %110, %102, %91
  %303 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %303)
  %304 = load i32, i32* %11, align 4
  switch i32 %304, label %315 [
    i32 0, label %305
    i32 3, label %306
    i32 2, label %53
  ]

305:                                              ; preds = %302
  br label %53

306:                                              ; preds = %302, %53
  %307 = trunc i64 %35 to i32
  %308 = call i32 @memset(i8* %37, i32 0, i32 %307)
  %309 = load i32*, i32** %6, align 8
  %310 = call i32 @fclose(i32* %309)
  %311 = load i32, i32* %10, align 4
  store i32 %311, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %312

312:                                              ; preds = %306, %46
  %313 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %313)
  %314 = load i32, i32* %3, align 4
  ret i32 %314

315:                                              ; preds = %302
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @generr(%struct.rad_handle*, i8*, i8*, i32, ...) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @split(i8*, i8**, i32, i8*, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i8* @strtoul(i8*, i8**, i32) #2

declare dso_local i64 @inet_addr(i8*) #2

declare dso_local i32 @rad_add_server_ex(%struct.rad_handle*, i8*, i32, i8*, i64, i64, i64, %struct.in_addr*) #2

declare dso_local i32 @strcpy(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @fclose(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
