; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_filter_uu.c_uudecode_bidder_bid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_filter_uu.c_uudecode_bidder_bid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read_filter_bidder = type { i32 }
%struct.archive_read_filter = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"begin \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"begin-base64 \00", align 1
@UUENCODE_BID_MAX_READ = common dso_local global i64 0, align 8
@uuchar = common dso_local global i64* null, align 8
@base64 = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"====\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"====\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read_filter_bidder*, %struct.archive_read_filter*)* @uudecode_bidder_bid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uudecode_bidder_bid(%struct.archive_read_filter_bidder* %0, %struct.archive_read_filter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read_filter_bidder*, align 8
  %5 = alloca %struct.archive_read_filter*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.archive_read_filter_bidder* %0, %struct.archive_read_filter_bidder** %4, align 8
  store %struct.archive_read_filter* %1, %struct.archive_read_filter** %5, align 8
  %14 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %4, align 8
  %15 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %16 = call i8* @__archive_read_filter_ahead(%struct.archive_read_filter* %15, i32 1, i64* %7)
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %309

20:                                               ; preds = %2
  store i32 20, i32* %12, align 4
  %21 = load i64, i64* %7, align 8
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %7, align 8
  store i64 %22, i64* %13, align 8
  br label %23

23:                                               ; preds = %134, %20
  %24 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %25 = call i64 @bid_get_line(%struct.archive_read_filter* %24, i8** %6, i64* %7, i64* %8, i64* %10, i64* %13)
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %9, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i64, i64* %10, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %23
  store i32 0, i32* %3, align 4
  br label %309

32:                                               ; preds = %28
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %10, align 8
  %35 = sub nsw i64 %33, %34
  %36 = icmp sge i64 %35, 11
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i8*, i8** %6, align 8
  %39 = call i64 @memcmp(i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 6, i32* %11, align 4
  br label %54

42:                                               ; preds = %37, %32
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %10, align 8
  %45 = sub nsw i64 %43, %44
  %46 = icmp sge i64 %45, 18
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i8*, i8** %6, align 8
  %49 = call i64 @memcmp(i8* %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 13)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 13, i32* %11, align 4
  br label %53

52:                                               ; preds = %47, %42
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %52, %51
  br label %54

54:                                               ; preds = %53, %41
  %55 = load i32, i32* %11, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %119

57:                                               ; preds = %54
  %58 = load i8*, i8** %6, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp slt i32 %63, 48
  br i1 %64, label %118, label %65

65:                                               ; preds = %57
  %66 = load i8*, i8** %6, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp sgt i32 %71, 55
  br i1 %72, label %118, label %73

73:                                               ; preds = %65
  %74 = load i8*, i8** %6, align 8
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %74, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp slt i32 %80, 48
  br i1 %81, label %118, label %82

82:                                               ; preds = %73
  %83 = load i8*, i8** %6, align 8
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %83, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp sgt i32 %89, 55
  br i1 %90, label %118, label %91

91:                                               ; preds = %82
  %92 = load i8*, i8** %6, align 8
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, 2
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %92, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp slt i32 %98, 48
  br i1 %99, label %118, label %100

100:                                              ; preds = %91
  %101 = load i8*, i8** %6, align 8
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, 2
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %101, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp sgt i32 %107, 55
  br i1 %108, label %118, label %109

109:                                              ; preds = %100
  %110 = load i8*, i8** %6, align 8
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 3
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %110, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = icmp ne i32 %116, 32
  br i1 %117, label %118, label %119

118:                                              ; preds = %109, %100, %91, %82, %73, %65, %57
  store i32 0, i32* %11, align 4
  br label %119

119:                                              ; preds = %118, %109, %54
  %120 = load i64, i64* %9, align 8
  %121 = load i8*, i8** %6, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 %120
  store i8* %122, i8** %6, align 8
  %123 = load i64, i64* %9, align 8
  %124 = load i64, i64* %7, align 8
  %125 = sub nsw i64 %124, %123
  store i64 %125, i64* %7, align 8
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %119
  br label %135

129:                                              ; preds = %119
  store i32 0, i32* %12, align 4
  %130 = load i64, i64* %13, align 8
  %131 = load i64, i64* @UUENCODE_BID_MAX_READ, align 8
  %132 = icmp uge i64 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  store i32 0, i32* %3, align 4
  br label %309

134:                                              ; preds = %129
  br label %23

135:                                              ; preds = %128
  %136 = load i64, i64* %7, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %135
  store i32 0, i32* %3, align 4
  br label %309

139:                                              ; preds = %135
  %140 = load %struct.archive_read_filter*, %struct.archive_read_filter** %5, align 8
  %141 = call i64 @bid_get_line(%struct.archive_read_filter* %140, i8** %6, i64* %7, i64* %8, i64* %10, i64* %13)
  store i64 %141, i64* %9, align 8
  %142 = load i64, i64* %9, align 8
  %143 = icmp slt i64 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %139
  %145 = load i64, i64* %10, align 8
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %144, %139
  store i32 0, i32* %3, align 4
  br label %309

148:                                              ; preds = %144
  %149 = load i64, i64* %9, align 8
  %150 = load i64, i64* %7, align 8
  %151 = sub nsw i64 %150, %149
  store i64 %151, i64* %7, align 8
  %152 = load i32, i32* %11, align 4
  %153 = icmp eq i32 %152, 6
  br i1 %153, label %154, label %247

154:                                              ; preds = %148
  %155 = load i64*, i64** @uuchar, align 8
  %156 = load i8*, i8** %6, align 8
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i64
  %159 = getelementptr inbounds i64, i64* %155, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %154
  store i32 0, i32* %3, align 4
  br label %309

163:                                              ; preds = %154
  %164 = load i8*, i8** %6, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %165, i8** %6, align 8
  %166 = load i8, i8* %164, align 1
  %167 = zext i8 %166 to i32
  %168 = call i32 @UUDECODE(i32 %167)
  store i32 %168, i32* %11, align 4
  %169 = load i64, i64* %9, align 8
  %170 = add nsw i64 %169, -1
  store i64 %170, i64* %9, align 8
  %171 = load i32, i32* %11, align 4
  %172 = icmp sgt i32 %171, 45
  br i1 %172, label %173, label %174

173:                                              ; preds = %163
  store i32 0, i32* %3, align 4
  br label %309

174:                                              ; preds = %163
  %175 = load i32, i32* %11, align 4
  %176 = sext i32 %175 to i64
  %177 = load i64, i64* %9, align 8
  %178 = load i64, i64* %10, align 8
  %179 = sub nsw i64 %177, %178
  %180 = icmp sgt i64 %176, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %174
  store i32 0, i32* %3, align 4
  br label %309

182:                                              ; preds = %174
  br label %183

183:                                              ; preds = %196, %182
  %184 = load i32, i32* %11, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %201

186:                                              ; preds = %183
  %187 = load i64*, i64** @uuchar, align 8
  %188 = load i8*, i8** %6, align 8
  %189 = getelementptr inbounds i8, i8* %188, i32 1
  store i8* %189, i8** %6, align 8
  %190 = load i8, i8* %188, align 1
  %191 = zext i8 %190 to i64
  %192 = getelementptr inbounds i64, i64* %187, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %196, label %195

195:                                              ; preds = %186
  store i32 0, i32* %3, align 4
  br label %309

196:                                              ; preds = %186
  %197 = load i64, i64* %9, align 8
  %198 = add nsw i64 %197, -1
  store i64 %198, i64* %9, align 8
  %199 = load i32, i32* %11, align 4
  %200 = add nsw i32 %199, -1
  store i32 %200, i32* %11, align 4
  br label %183

201:                                              ; preds = %183
  %202 = load i64, i64* %9, align 8
  %203 = load i64, i64* %10, align 8
  %204 = sub nsw i64 %202, %203
  %205 = icmp eq i64 %204, 1
  br i1 %205, label %206, label %229

206:                                              ; preds = %201
  %207 = load i64*, i64** @uuchar, align 8
  %208 = load i8*, i8** %6, align 8
  %209 = load i8, i8* %208, align 1
  %210 = zext i8 %209 to i64
  %211 = getelementptr inbounds i64, i64* %207, i64 %210
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %224, label %214

214:                                              ; preds = %206
  %215 = load i8*, i8** %6, align 8
  %216 = load i8, i8* %215, align 1
  %217 = zext i8 %216 to i32
  %218 = icmp sge i32 %217, 97
  br i1 %218, label %219, label %229

219:                                              ; preds = %214
  %220 = load i8*, i8** %6, align 8
  %221 = load i8, i8* %220, align 1
  %222 = zext i8 %221 to i32
  %223 = icmp sle i32 %222, 122
  br i1 %223, label %224, label %229

224:                                              ; preds = %219, %206
  %225 = load i8*, i8** %6, align 8
  %226 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %226, i8** %6, align 8
  %227 = load i64, i64* %9, align 8
  %228 = add nsw i64 %227, -1
  store i64 %228, i64* %9, align 8
  br label %229

229:                                              ; preds = %224, %219, %214, %201
  %230 = load i64, i64* %10, align 8
  %231 = load i8*, i8** %6, align 8
  %232 = getelementptr inbounds i8, i8* %231, i64 %230
  store i8* %232, i8** %6, align 8
  %233 = load i64, i64* %7, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %246

235:                                              ; preds = %229
  %236 = load i64*, i64** @uuchar, align 8
  %237 = load i8*, i8** %6, align 8
  %238 = load i8, i8* %237, align 1
  %239 = zext i8 %238 to i64
  %240 = getelementptr inbounds i64, i64* %236, i64 %239
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %235
  %244 = load i32, i32* %12, align 4
  %245 = add nsw i32 %244, 30
  store i32 %245, i32* %3, align 4
  br label %309

246:                                              ; preds = %235, %229
  br label %308

247:                                              ; preds = %148
  %248 = load i32, i32* %11, align 4
  %249 = icmp eq i32 %248, 13
  br i1 %249, label %250, label %307

250:                                              ; preds = %247
  br label %251

251:                                              ; preds = %266, %250
  %252 = load i64, i64* %9, align 8
  %253 = load i64, i64* %10, align 8
  %254 = sub nsw i64 %252, %253
  %255 = icmp sgt i64 %254, 0
  br i1 %255, label %256, label %269

256:                                              ; preds = %251
  %257 = load i64*, i64** @base64, align 8
  %258 = load i8*, i8** %6, align 8
  %259 = getelementptr inbounds i8, i8* %258, i32 1
  store i8* %259, i8** %6, align 8
  %260 = load i8, i8* %258, align 1
  %261 = zext i8 %260 to i64
  %262 = getelementptr inbounds i64, i64* %257, i64 %261
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %266, label %265

265:                                              ; preds = %256
  store i32 0, i32* %3, align 4
  br label %309

266:                                              ; preds = %256
  %267 = load i64, i64* %9, align 8
  %268 = add nsw i64 %267, -1
  store i64 %268, i64* %9, align 8
  br label %251

269:                                              ; preds = %251
  %270 = load i64, i64* %10, align 8
  %271 = load i8*, i8** %6, align 8
  %272 = getelementptr inbounds i8, i8* %271, i64 %270
  store i8* %272, i8** %6, align 8
  %273 = load i64, i64* %7, align 8
  %274 = icmp sge i64 %273, 5
  br i1 %274, label %275, label %282

275:                                              ; preds = %269
  %276 = load i8*, i8** %6, align 8
  %277 = call i64 @memcmp(i8* %276, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %278 = icmp eq i64 %277, 0
  br i1 %278, label %279, label %282

279:                                              ; preds = %275
  %280 = load i32, i32* %12, align 4
  %281 = add nsw i32 %280, 40
  store i32 %281, i32* %3, align 4
  br label %309

282:                                              ; preds = %275, %269
  %283 = load i64, i64* %7, align 8
  %284 = icmp sge i64 %283, 6
  br i1 %284, label %285, label %292

285:                                              ; preds = %282
  %286 = load i8*, i8** %6, align 8
  %287 = call i64 @memcmp(i8* %286, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %288 = icmp eq i64 %287, 0
  br i1 %288, label %289, label %292

289:                                              ; preds = %285
  %290 = load i32, i32* %12, align 4
  %291 = add nsw i32 %290, 40
  store i32 %291, i32* %3, align 4
  br label %309

292:                                              ; preds = %285, %282
  %293 = load i64, i64* %7, align 8
  %294 = icmp sgt i64 %293, 0
  br i1 %294, label %295, label %306

295:                                              ; preds = %292
  %296 = load i64*, i64** @base64, align 8
  %297 = load i8*, i8** %6, align 8
  %298 = load i8, i8* %297, align 1
  %299 = zext i8 %298 to i64
  %300 = getelementptr inbounds i64, i64* %296, i64 %299
  %301 = load i64, i64* %300, align 8
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %306

303:                                              ; preds = %295
  %304 = load i32, i32* %12, align 4
  %305 = add nsw i32 %304, 30
  store i32 %305, i32* %3, align 4
  br label %309

306:                                              ; preds = %295, %292
  br label %307

307:                                              ; preds = %306, %247
  br label %308

308:                                              ; preds = %307, %246
  store i32 0, i32* %3, align 4
  br label %309

309:                                              ; preds = %308, %303, %289, %279, %265, %243, %195, %181, %173, %162, %147, %138, %133, %31, %19
  %310 = load i32, i32* %3, align 4
  ret i32 %310
}

declare dso_local i8* @__archive_read_filter_ahead(%struct.archive_read_filter*, i32, i64*) #1

declare dso_local i64 @bid_get_line(%struct.archive_read_filter*, i8**, i64*, i64*, i64*, i64*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @UUDECODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
