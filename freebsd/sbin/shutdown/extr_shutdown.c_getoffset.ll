; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/shutdown/extr_shutdown.c_getoffset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/shutdown/extr_shutdown.c_getoffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"now\00", align 1
@offset = common dso_local global i32 0, align 4
@shuttime = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@LONG_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"mins\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"hour\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"hours\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"sec\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"secs\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"that time is already past.\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"tomorrow is before today?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @getoffset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getoffset(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tm*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %9 = call i32 @time(i32* %5)
  %10 = load i8*, i8** %2, align 8
  %11 = call i64 @strcasecmp(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  store i32 0, i32* @offset, align 4
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* @shuttime, align 4
  br label %291

15:                                               ; preds = %1
  %16 = load i8*, i8** %2, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 43
  br i1 %19, label %20, label %101

20:                                               ; preds = %15
  %21 = load i8*, i8** %2, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %2, align 8
  %23 = load i8, i8* %22, align 1
  %24 = call i32 @isdigit(i8 signext %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = call i32 (...) @badtime()
  br label %28

28:                                               ; preds = %26, %20
  store i64 0, i64* @errno, align 8
  %29 = load i8*, i8** %2, align 8
  %30 = call i32 @strtol(i8* %29, i8** %8, i32 10)
  store i32 %30, i32* @offset, align 4
  %31 = load i32, i32* @offset, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @offset, align 4
  %35 = load i32, i32* @LONG_MAX, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* @errno, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37, %33, %28
  %41 = call i32 (...) @badtime()
  br label %42

42:                                               ; preds = %40, %37
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %42
  %49 = load i8*, i8** %8, align 8
  %50 = call i64 @strcasecmp(i8* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %48
  %53 = load i8*, i8** %8, align 8
  %54 = call i64 @strcasecmp(i8* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i8*, i8** %8, align 8
  %58 = call i64 @strcasecmp(i8* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56, %52, %48, %42
  %61 = load i32, i32* @offset, align 4
  %62 = mul nsw i32 %61, 60
  store i32 %62, i32* @offset, align 4
  br label %97

63:                                               ; preds = %56
  %64 = load i8*, i8** %8, align 8
  %65 = call i64 @strcasecmp(i8* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %63
  %68 = load i8*, i8** %8, align 8
  %69 = call i64 @strcasecmp(i8* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load i8*, i8** %8, align 8
  %73 = call i64 @strcasecmp(i8* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71, %67, %63
  %76 = load i32, i32* @offset, align 4
  %77 = mul nsw i32 %76, 3600
  store i32 %77, i32* @offset, align 4
  br label %96

78:                                               ; preds = %71
  %79 = load i8*, i8** %8, align 8
  %80 = call i64 @strcasecmp(i8* %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %78
  %83 = load i8*, i8** %8, align 8
  %84 = call i64 @strcasecmp(i8* %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load i8*, i8** %8, align 8
  %88 = call i64 @strcasecmp(i8* %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %86, %82, %78
  %91 = load i32, i32* @offset, align 4
  %92 = mul nsw i32 %91, 1
  store i32 %92, i32* @offset, align 4
  br label %95

93:                                               ; preds = %86
  %94 = call i32 (...) @badtime()
  br label %95

95:                                               ; preds = %93, %90
  br label %96

96:                                               ; preds = %95, %75
  br label %97

97:                                               ; preds = %96, %60
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @offset, align 4
  %100 = add nsw i32 %98, %99
  store i32 %100, i32* @shuttime, align 4
  br label %291

101:                                              ; preds = %15
  %102 = load i8*, i8** %2, align 8
  store i8* %102, i8** %4, align 8
  br label %103

103:                                              ; preds = %143, %101
  %104 = load i8*, i8** %4, align 8
  %105 = load i8, i8* %104, align 1
  %106 = icmp ne i8 %105, 0
  br i1 %106, label %107, label %146

107:                                              ; preds = %103
  %108 = load i8*, i8** %4, align 8
  %109 = load i8, i8* %108, align 1
  %110 = call i32 @isascii(i8 signext %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load i8*, i8** %4, align 8
  %114 = load i8, i8* %113, align 1
  %115 = call i32 @isdigit(i8 signext %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %142, label %117

117:                                              ; preds = %112, %107
  %118 = load i8*, i8** %4, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 58
  br i1 %121, label %122, label %139

122:                                              ; preds = %117
  %123 = load i8*, i8** %4, align 8
  %124 = call i32 @strlen(i8* %123)
  %125 = icmp eq i32 %124, 3
  br i1 %125, label %126, label %139

126:                                              ; preds = %122
  %127 = load i8*, i8** %4, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 1
  %129 = load i8, i8* %128, align 1
  %130 = load i8*, i8** %4, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 0
  store i8 %129, i8* %131, align 1
  %132 = load i8*, i8** %4, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 2
  %134 = load i8, i8* %133, align 1
  %135 = load i8*, i8** %4, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 1
  store i8 %134, i8* %136, align 1
  %137 = load i8*, i8** %4, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 2
  store i8 0, i8* %138, align 1
  br label %141

139:                                              ; preds = %122, %117
  %140 = call i32 (...) @badtime()
  br label %141

141:                                              ; preds = %139, %126
  br label %142

142:                                              ; preds = %141, %112
  br label %143

143:                                              ; preds = %142
  %144 = load i8*, i8** %4, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %4, align 8
  br label %103

146:                                              ; preds = %103
  %147 = call i32 @unsetenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %148 = call %struct.tm* @localtime(i32* %5)
  store %struct.tm* %148, %struct.tm** %3, align 8
  store i32 1, i32* %6, align 4
  %149 = load i8*, i8** %2, align 8
  %150 = call i32 @strlen(i8* %149)
  switch i32 %150, label %289 [
    i32 10, label %151
    i32 8, label %181
    i32 6, label %200
    i32 4, label %218
  ]

151:                                              ; preds = %146
  %152 = load %struct.tm*, %struct.tm** %3, align 8
  %153 = getelementptr inbounds %struct.tm, %struct.tm* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %7, align 4
  %155 = load i8*, i8** %2, align 8
  %156 = call i8* @ATOI2(i8* %155)
  %157 = ptrtoint i8* %156 to i32
  %158 = load %struct.tm*, %struct.tm** %3, align 8
  %159 = getelementptr inbounds %struct.tm, %struct.tm* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 4
  %160 = load %struct.tm*, %struct.tm** %3, align 8
  %161 = getelementptr inbounds %struct.tm, %struct.tm* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %7, align 4
  %164 = srem i32 %163, 100
  %165 = sub nsw i32 %164, 1
  %166 = icmp slt i32 %162, %165
  br i1 %166, label %167, label %172

167:                                              ; preds = %151
  %168 = load %struct.tm*, %struct.tm** %3, align 8
  %169 = getelementptr inbounds %struct.tm, %struct.tm* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, 100
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %167, %151
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* %7, align 4
  %175 = srem i32 %174, 100
  %176 = sub nsw i32 %173, %175
  %177 = load %struct.tm*, %struct.tm** %3, align 8
  %178 = getelementptr inbounds %struct.tm, %struct.tm* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = add nsw i32 %179, %176
  store i32 %180, i32* %178, align 4
  br label %181

181:                                              ; preds = %146, %172
  %182 = load i8*, i8** %2, align 8
  %183 = call i8* @ATOI2(i8* %182)
  %184 = ptrtoint i8* %183 to i32
  %185 = load %struct.tm*, %struct.tm** %3, align 8
  %186 = getelementptr inbounds %struct.tm, %struct.tm* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 4
  %187 = load %struct.tm*, %struct.tm** %3, align 8
  %188 = getelementptr inbounds %struct.tm, %struct.tm* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %189, -1
  store i32 %190, i32* %188, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %197, label %192

192:                                              ; preds = %181
  %193 = load %struct.tm*, %struct.tm** %3, align 8
  %194 = getelementptr inbounds %struct.tm, %struct.tm* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = icmp sgt i32 %195, 11
  br i1 %196, label %197, label %199

197:                                              ; preds = %192, %181
  %198 = call i32 (...) @badtime()
  br label %199

199:                                              ; preds = %197, %192
  br label %200

200:                                              ; preds = %146, %199
  store i32 0, i32* %6, align 4
  %201 = load i8*, i8** %2, align 8
  %202 = call i8* @ATOI2(i8* %201)
  %203 = ptrtoint i8* %202 to i32
  %204 = load %struct.tm*, %struct.tm** %3, align 8
  %205 = getelementptr inbounds %struct.tm, %struct.tm* %204, i32 0, i32 2
  store i32 %203, i32* %205, align 4
  %206 = load %struct.tm*, %struct.tm** %3, align 8
  %207 = getelementptr inbounds %struct.tm, %struct.tm* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = icmp slt i32 %208, 1
  br i1 %209, label %215, label %210

210:                                              ; preds = %200
  %211 = load %struct.tm*, %struct.tm** %3, align 8
  %212 = getelementptr inbounds %struct.tm, %struct.tm* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = icmp sgt i32 %213, 31
  br i1 %214, label %215, label %217

215:                                              ; preds = %210, %200
  %216 = call i32 (...) @badtime()
  br label %217

217:                                              ; preds = %215, %210
  br label %218

218:                                              ; preds = %146, %217
  %219 = load i8*, i8** %2, align 8
  %220 = call i8* @ATOI2(i8* %219)
  %221 = ptrtoint i8* %220 to i32
  %222 = load %struct.tm*, %struct.tm** %3, align 8
  %223 = getelementptr inbounds %struct.tm, %struct.tm* %222, i32 0, i32 3
  store i32 %221, i32* %223, align 4
  %224 = load %struct.tm*, %struct.tm** %3, align 8
  %225 = getelementptr inbounds %struct.tm, %struct.tm* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %233, label %228

228:                                              ; preds = %218
  %229 = load %struct.tm*, %struct.tm** %3, align 8
  %230 = getelementptr inbounds %struct.tm, %struct.tm* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = icmp sgt i32 %231, 23
  br i1 %232, label %233, label %235

233:                                              ; preds = %228, %218
  %234 = call i32 (...) @badtime()
  br label %235

235:                                              ; preds = %233, %228
  %236 = load i8*, i8** %2, align 8
  %237 = call i8* @ATOI2(i8* %236)
  %238 = ptrtoint i8* %237 to i32
  %239 = load %struct.tm*, %struct.tm** %3, align 8
  %240 = getelementptr inbounds %struct.tm, %struct.tm* %239, i32 0, i32 4
  store i32 %238, i32* %240, align 4
  %241 = load %struct.tm*, %struct.tm** %3, align 8
  %242 = getelementptr inbounds %struct.tm, %struct.tm* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 4
  %244 = icmp slt i32 %243, 0
  br i1 %244, label %250, label %245

245:                                              ; preds = %235
  %246 = load %struct.tm*, %struct.tm** %3, align 8
  %247 = getelementptr inbounds %struct.tm, %struct.tm* %246, i32 0, i32 4
  %248 = load i32, i32* %247, align 4
  %249 = icmp sgt i32 %248, 59
  br i1 %249, label %250, label %252

250:                                              ; preds = %245, %235
  %251 = call i32 (...) @badtime()
  br label %252

252:                                              ; preds = %250, %245
  %253 = load %struct.tm*, %struct.tm** %3, align 8
  %254 = getelementptr inbounds %struct.tm, %struct.tm* %253, i32 0, i32 5
  store i32 0, i32* %254, align 4
  %255 = load %struct.tm*, %struct.tm** %3, align 8
  %256 = call i32 @mktime(%struct.tm* %255)
  store i32 %256, i32* @shuttime, align 4
  %257 = icmp eq i32 %256, -1
  br i1 %257, label %258, label %260

258:                                              ; preds = %252
  %259 = call i32 (...) @badtime()
  br label %260

260:                                              ; preds = %258, %252
  %261 = load i32, i32* @shuttime, align 4
  %262 = load i32, i32* %5, align 4
  %263 = sub nsw i32 %261, %262
  store i32 %263, i32* @offset, align 4
  %264 = icmp slt i32 %263, 0
  br i1 %264, label %265, label %288

265:                                              ; preds = %260
  %266 = load i32, i32* %6, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %270, label %268

268:                                              ; preds = %265
  %269 = call i32 @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  br label %270

270:                                              ; preds = %268, %265
  %271 = load %struct.tm*, %struct.tm** %3, align 8
  %272 = getelementptr inbounds %struct.tm, %struct.tm* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %272, align 4
  %275 = load %struct.tm*, %struct.tm** %3, align 8
  %276 = call i32 @mktime(%struct.tm* %275)
  store i32 %276, i32* @shuttime, align 4
  %277 = icmp eq i32 %276, -1
  br i1 %277, label %278, label %280

278:                                              ; preds = %270
  %279 = call i32 (...) @badtime()
  br label %280

280:                                              ; preds = %278, %270
  %281 = load i32, i32* @shuttime, align 4
  %282 = load i32, i32* %5, align 4
  %283 = sub nsw i32 %281, %282
  store i32 %283, i32* @offset, align 4
  %284 = icmp slt i32 %283, 0
  br i1 %284, label %285, label %287

285:                                              ; preds = %280
  %286 = call i32 @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  br label %287

287:                                              ; preds = %285, %280
  br label %288

288:                                              ; preds = %287, %260
  br label %291

289:                                              ; preds = %146
  %290 = call i32 (...) @badtime()
  br label %291

291:                                              ; preds = %13, %97, %289, %288
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @badtime(...) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @isascii(i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @unsetenv(i8*) #1

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i8* @ATOI2(i8*) #1

declare dso_local i32 @mktime(%struct.tm*) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
