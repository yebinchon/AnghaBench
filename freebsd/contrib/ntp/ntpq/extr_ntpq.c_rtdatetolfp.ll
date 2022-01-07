; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq.c_rtdatetolfp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq.c_rtdatetolfp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }
%struct.calendar = type { i32, i32, i32, i32, i32, i8*, i64 }

@months = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_4__*)* @rtdatetolfp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtdatetolfp(i8* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.calendar, align 8
  %9 = alloca [4 x i8], align 1
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %10 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 6
  store i64 0, i64* %10, align 8
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @pgetc(i8* %12)
  %14 = call i64 @isdigit(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %2
  %17 = load i8*, i8** %6, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 45
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = call i32 @L_CLR(%struct.TYPE_4__* %22)
  store i32 1, i32* %3, align 4
  br label %397

24:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %397

25:                                               ; preds = %2
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %6, align 8
  %28 = load i8, i8* %26, align 1
  %29 = sext i8 %28 to i32
  %30 = sub nsw i32 %29, 48
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = ptrtoint i8* %32 to i32
  %34 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @pgetc(i8* %35)
  %37 = call i64 @isdigit(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %25
  %40 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = shl i32 %41, 3
  %43 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = shl i32 %44, 1
  %46 = add nsw i32 %42, %45
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8*
  %49 = ptrtoint i8* %48 to i32
  %50 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 0
  store i32 %49, i32* %50, align 8
  %51 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %6, align 8
  %55 = load i8, i8* %53, align 1
  %56 = sext i8 %55 to i32
  %57 = add nsw i32 %52, %56
  %58 = sub nsw i32 %57, 48
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i8*
  %61 = ptrtoint i8* %60 to i32
  %62 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 0
  store i32 %61, i32* %62, align 8
  br label %63

63:                                               ; preds = %39, %25
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %6, align 8
  %66 = load i8, i8* %64, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 45
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %397

70:                                               ; preds = %63
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %81, %70
  %72 = load i32, i32* %7, align 4
  %73 = icmp slt i32 %72, 3
  br i1 %73, label %74, label %84

74:                                               ; preds = %71
  %75 = load i8*, i8** %6, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %6, align 8
  %77 = load i8, i8* %75, align 1
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 %79
  store i8 %77, i8* %80, align 1
  br label %81

81:                                               ; preds = %74
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %71

84:                                               ; preds = %71
  %85 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 3
  store i8 0, i8* %85, align 1
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %100, %84
  %87 = load i32, i32* %7, align 4
  %88 = icmp slt i32 %87, 12
  br i1 %88, label %89, label %103

89:                                               ; preds = %86
  %90 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %91 = load i32*, i32** @months, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @STREQ(i8* %90, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %89
  br label %103

99:                                               ; preds = %89
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %86

103:                                              ; preds = %98, %86
  %104 = load i32, i32* %7, align 4
  %105 = icmp eq i32 %104, 12
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  store i32 0, i32* %3, align 4
  br label %397

107:                                              ; preds = %103
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = inttoptr i64 %110 to i8*
  %112 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 5
  store i8* %111, i8** %112, align 8
  %113 = load i8*, i8** %6, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %6, align 8
  %115 = load i8, i8* %113, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp ne i32 %116, 45
  br i1 %117, label %118, label %119

118:                                              ; preds = %107
  store i32 0, i32* %3, align 4
  br label %397

119:                                              ; preds = %107
  %120 = load i8*, i8** %6, align 8
  %121 = call i32 @pgetc(i8* %120)
  %122 = call i64 @isdigit(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %119
  store i32 0, i32* %3, align 4
  br label %397

125:                                              ; preds = %119
  %126 = load i8*, i8** %6, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %6, align 8
  %128 = load i8, i8* %126, align 1
  %129 = sext i8 %128 to i32
  %130 = sub nsw i32 %129, 48
  %131 = sext i32 %130 to i64
  %132 = inttoptr i64 %131 to i8*
  %133 = ptrtoint i8* %132 to i32
  %134 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 1
  store i32 %133, i32* %134, align 4
  %135 = load i8*, i8** %6, align 8
  %136 = call i32 @pgetc(i8* %135)
  %137 = call i64 @isdigit(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %160

139:                                              ; preds = %125
  %140 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = shl i32 %141, 3
  %143 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = shl i32 %144, 1
  %146 = add nsw i32 %142, %145
  %147 = sext i32 %146 to i64
  %148 = inttoptr i64 %147 to i8*
  %149 = ptrtoint i8* %148 to i32
  %150 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 1
  store i32 %149, i32* %150, align 4
  %151 = load i8*, i8** %6, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %6, align 8
  %153 = load i8, i8* %151, align 1
  %154 = sext i8 %153 to i32
  %155 = sub nsw i32 %154, 48
  %156 = sext i32 %155 to i64
  %157 = inttoptr i64 %156 to i8*
  %158 = ptrtoint i8* %157 to i32
  %159 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 1
  store i32 %158, i32* %159, align 4
  br label %160

160:                                              ; preds = %139, %125
  %161 = load i8*, i8** %6, align 8
  %162 = call i32 @pgetc(i8* %161)
  %163 = call i64 @isdigit(i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %189

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = shl i32 %167, 3
  %169 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = shl i32 %170, 1
  %172 = add nsw i32 %168, %171
  %173 = sext i32 %172 to i64
  %174 = inttoptr i64 %173 to i8*
  %175 = ptrtoint i8* %174 to i32
  %176 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 1
  store i32 %175, i32* %176, align 4
  %177 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i8*, i8** %6, align 8
  %180 = getelementptr inbounds i8, i8* %179, i32 1
  store i8* %180, i8** %6, align 8
  %181 = load i8, i8* %179, align 1
  %182 = sext i8 %181 to i32
  %183 = add nsw i32 %178, %182
  %184 = sub nsw i32 %183, 48
  %185 = sext i32 %184 to i64
  %186 = inttoptr i64 %185 to i8*
  %187 = ptrtoint i8* %186 to i32
  %188 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 1
  store i32 %187, i32* %188, align 4
  br label %189

189:                                              ; preds = %165, %160
  %190 = load i8*, i8** %6, align 8
  %191 = call i32 @pgetc(i8* %190)
  %192 = call i64 @isdigit(i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %218

194:                                              ; preds = %189
  %195 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = shl i32 %196, 3
  %198 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = shl i32 %199, 1
  %201 = add nsw i32 %197, %200
  %202 = sext i32 %201 to i64
  %203 = inttoptr i64 %202 to i8*
  %204 = ptrtoint i8* %203 to i32
  %205 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 1
  store i32 %204, i32* %205, align 4
  %206 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load i8*, i8** %6, align 8
  %209 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %209, i8** %6, align 8
  %210 = load i8, i8* %208, align 1
  %211 = sext i8 %210 to i32
  %212 = add nsw i32 %207, %211
  %213 = sub nsw i32 %212, 48
  %214 = sext i32 %213 to i64
  %215 = inttoptr i64 %214 to i8*
  %216 = ptrtoint i8* %215 to i32
  %217 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 1
  store i32 %216, i32* %217, align 4
  br label %218

218:                                              ; preds = %194, %189
  %219 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %218
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %224 = call i32 @L_CLR(%struct.TYPE_4__* %223)
  store i32 1, i32* %3, align 4
  br label %397

225:                                              ; preds = %218
  %226 = load i8*, i8** %6, align 8
  %227 = getelementptr inbounds i8, i8* %226, i32 1
  store i8* %227, i8** %6, align 8
  %228 = load i8, i8* %226, align 1
  %229 = sext i8 %228 to i32
  %230 = icmp ne i32 %229, 32
  br i1 %230, label %236, label %231

231:                                              ; preds = %225
  %232 = load i8*, i8** %6, align 8
  %233 = call i32 @pgetc(i8* %232)
  %234 = call i64 @isdigit(i32 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %237, label %236

236:                                              ; preds = %231, %225
  store i32 0, i32* %3, align 4
  br label %397

237:                                              ; preds = %231
  %238 = load i8*, i8** %6, align 8
  %239 = getelementptr inbounds i8, i8* %238, i32 1
  store i8* %239, i8** %6, align 8
  %240 = load i8, i8* %238, align 1
  %241 = sext i8 %240 to i32
  %242 = sub nsw i32 %241, 48
  %243 = sext i32 %242 to i64
  %244 = inttoptr i64 %243 to i8*
  %245 = ptrtoint i8* %244 to i32
  %246 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 2
  store i32 %245, i32* %246, align 8
  %247 = load i8*, i8** %6, align 8
  %248 = call i32 @pgetc(i8* %247)
  %249 = call i64 @isdigit(i32 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %275

251:                                              ; preds = %237
  %252 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = shl i32 %253, 3
  %255 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = shl i32 %256, 1
  %258 = add nsw i32 %254, %257
  %259 = sext i32 %258 to i64
  %260 = inttoptr i64 %259 to i8*
  %261 = ptrtoint i8* %260 to i32
  %262 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 2
  store i32 %261, i32* %262, align 8
  %263 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = load i8*, i8** %6, align 8
  %266 = getelementptr inbounds i8, i8* %265, i32 1
  store i8* %266, i8** %6, align 8
  %267 = load i8, i8* %265, align 1
  %268 = sext i8 %267 to i32
  %269 = add nsw i32 %264, %268
  %270 = sub nsw i32 %269, 48
  %271 = sext i32 %270 to i64
  %272 = inttoptr i64 %271 to i8*
  %273 = ptrtoint i8* %272 to i32
  %274 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 2
  store i32 %273, i32* %274, align 8
  br label %275

275:                                              ; preds = %251, %237
  %276 = load i8*, i8** %6, align 8
  %277 = getelementptr inbounds i8, i8* %276, i32 1
  store i8* %277, i8** %6, align 8
  %278 = load i8, i8* %276, align 1
  %279 = sext i8 %278 to i32
  %280 = icmp ne i32 %279, 58
  br i1 %280, label %286, label %281

281:                                              ; preds = %275
  %282 = load i8*, i8** %6, align 8
  %283 = call i32 @pgetc(i8* %282)
  %284 = call i64 @isdigit(i32 %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %287, label %286

286:                                              ; preds = %281, %275
  store i32 0, i32* %3, align 4
  br label %397

287:                                              ; preds = %281
  %288 = load i8*, i8** %6, align 8
  %289 = getelementptr inbounds i8, i8* %288, i32 1
  store i8* %289, i8** %6, align 8
  %290 = load i8, i8* %288, align 1
  %291 = sext i8 %290 to i32
  %292 = sub nsw i32 %291, 48
  %293 = sext i32 %292 to i64
  %294 = inttoptr i64 %293 to i8*
  %295 = ptrtoint i8* %294 to i32
  %296 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 3
  store i32 %295, i32* %296, align 4
  %297 = load i8*, i8** %6, align 8
  %298 = call i32 @pgetc(i8* %297)
  %299 = call i64 @isdigit(i32 %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %325

301:                                              ; preds = %287
  %302 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 3
  %303 = load i32, i32* %302, align 4
  %304 = shl i32 %303, 3
  %305 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 3
  %306 = load i32, i32* %305, align 4
  %307 = shl i32 %306, 1
  %308 = add nsw i32 %304, %307
  %309 = sext i32 %308 to i64
  %310 = inttoptr i64 %309 to i8*
  %311 = ptrtoint i8* %310 to i32
  %312 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 3
  store i32 %311, i32* %312, align 4
  %313 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 3
  %314 = load i32, i32* %313, align 4
  %315 = load i8*, i8** %6, align 8
  %316 = getelementptr inbounds i8, i8* %315, i32 1
  store i8* %316, i8** %6, align 8
  %317 = load i8, i8* %315, align 1
  %318 = sext i8 %317 to i32
  %319 = add nsw i32 %314, %318
  %320 = sub nsw i32 %319, 48
  %321 = sext i32 %320 to i64
  %322 = inttoptr i64 %321 to i8*
  %323 = ptrtoint i8* %322 to i32
  %324 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 3
  store i32 %323, i32* %324, align 4
  br label %325

325:                                              ; preds = %301, %287
  %326 = load i8*, i8** %6, align 8
  %327 = getelementptr inbounds i8, i8* %326, i32 1
  store i8* %327, i8** %6, align 8
  %328 = load i8, i8* %326, align 1
  %329 = sext i8 %328 to i32
  %330 = icmp ne i32 %329, 58
  br i1 %330, label %336, label %331

331:                                              ; preds = %325
  %332 = load i8*, i8** %6, align 8
  %333 = call i32 @pgetc(i8* %332)
  %334 = call i64 @isdigit(i32 %333)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %337, label %336

336:                                              ; preds = %331, %325
  store i32 0, i32* %3, align 4
  br label %397

337:                                              ; preds = %331
  %338 = load i8*, i8** %6, align 8
  %339 = getelementptr inbounds i8, i8* %338, i32 1
  store i8* %339, i8** %6, align 8
  %340 = load i8, i8* %338, align 1
  %341 = sext i8 %340 to i32
  %342 = sub nsw i32 %341, 48
  %343 = sext i32 %342 to i64
  %344 = inttoptr i64 %343 to i8*
  %345 = ptrtoint i8* %344 to i32
  %346 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 4
  store i32 %345, i32* %346, align 8
  %347 = load i8*, i8** %6, align 8
  %348 = call i32 @pgetc(i8* %347)
  %349 = call i64 @isdigit(i32 %348)
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %375

351:                                              ; preds = %337
  %352 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 4
  %353 = load i32, i32* %352, align 8
  %354 = shl i32 %353, 3
  %355 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 4
  %356 = load i32, i32* %355, align 8
  %357 = shl i32 %356, 1
  %358 = add nsw i32 %354, %357
  %359 = sext i32 %358 to i64
  %360 = inttoptr i64 %359 to i8*
  %361 = ptrtoint i8* %360 to i32
  %362 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 4
  store i32 %361, i32* %362, align 8
  %363 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 4
  %364 = load i32, i32* %363, align 8
  %365 = load i8*, i8** %6, align 8
  %366 = getelementptr inbounds i8, i8* %365, i32 1
  store i8* %366, i8** %6, align 8
  %367 = load i8, i8* %365, align 1
  %368 = sext i8 %367 to i32
  %369 = add nsw i32 %364, %368
  %370 = sub nsw i32 %369, 48
  %371 = sext i32 %370 to i64
  %372 = inttoptr i64 %371 to i8*
  %373 = ptrtoint i8* %372 to i32
  %374 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 4
  store i32 %373, i32* %374, align 8
  br label %375

375:                                              ; preds = %351, %337
  %376 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 1
  %377 = load i32, i32* %376, align 4
  %378 = icmp slt i32 %377, 72
  br i1 %378, label %379, label %383

379:                                              ; preds = %375
  %380 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 1
  %381 = load i32, i32* %380, align 4
  %382 = add nsw i32 %381, 2000
  store i32 %382, i32* %380, align 4
  br label %383

383:                                              ; preds = %379, %375
  %384 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  %386 = icmp slt i32 %385, 100
  br i1 %386, label %387, label %391

387:                                              ; preds = %383
  %388 = getelementptr inbounds %struct.calendar, %struct.calendar* %8, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = add nsw i32 %389, 1900
  store i32 %390, i32* %388, align 4
  br label %391

391:                                              ; preds = %387, %383
  %392 = call i32 @caltontp(%struct.calendar* %8)
  %393 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %394 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %393, i32 0, i32 1
  store i32 %392, i32* %394, align 8
  %395 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %396 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %395, i32 0, i32 0
  store i64 0, i64* %396, align 8
  store i32 1, i32* %3, align 4
  br label %397

397:                                              ; preds = %391, %336, %286, %236, %222, %124, %118, %106, %69, %24, %21
  %398 = load i32, i32* %3, align 4
  ret i32 %398
}

declare dso_local i64 @isdigit(i32) #1

declare dso_local i32 @pgetc(i8*) #1

declare dso_local i32 @L_CLR(%struct.TYPE_4__*) #1

declare dso_local i64 @STREQ(i8*, i32) #1

declare dso_local i32 @caltontp(%struct.calendar*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
