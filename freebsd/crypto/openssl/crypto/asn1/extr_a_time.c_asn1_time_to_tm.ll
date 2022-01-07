; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_time.c_asn1_time_to_tm.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_time.c_asn1_time_to_tm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i32, i32, i64 }

@asn1_time_to_tm.min = internal constant [9 x i32] [i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@asn1_time_to_tm.max = internal constant [9 x i32] [i32 99, i32 99, i32 12, i32 31, i32 23, i32 59, i32 59, i32 12, i32 59], align 16
@asn1_time_to_tm.mdays = internal constant [12 x i32] [i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@V_ASN1_UTCTIME = common dso_local global i64 0, align 8
@ASN1_STRING_FLAG_X509_TIME = common dso_local global i32 0, align 4
@V_ASN1_GENERALIZEDTIME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asn1_time_to_tm(%struct.tm* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tm*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.tm, align 4
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.tm* %0, %struct.tm** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 11, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 6, i32* %14, align 4
  store i32 5, i32* %15, align 4
  store i8 90, i8* %18, align 1
  store i8 48, i8* %19, align 1
  store i8 46, i8* %20, align 1
  store i8 45, i8* %21, align 1
  store i8 43, i8* %22, align 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @V_ASN1_UTCTIME, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @ASN1_STRING_FLAG_X509_TIME, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 13, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %38

38:                                               ; preds = %37, %30
  br label %57

39:                                               ; preds = %2
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @V_ASN1_GENERALIZEDTIME, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  store i32 7, i32* %14, align 4
  store i32 6, i32* %15, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @ASN1_STRING_FLAG_X509_TIME, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i32 15, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %54

53:                                               ; preds = %45
  store i32 13, i32* %12, align 4
  br label %54

54:                                               ; preds = %53, %52
  br label %56

55:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %483

56:                                               ; preds = %54
  br label %57

57:                                               ; preds = %56, %38
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %10, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i8*
  store i8* %64, i8** %6, align 8
  store i32 0, i32* %11, align 4
  %65 = call i32 @memset(%struct.tm* %17, i32 0, i32 24)
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %482

70:                                               ; preds = %57
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %253, %70
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %256

75:                                               ; preds = %71
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %109, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %15, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %109

82:                                               ; preds = %78
  %83 = load i8*, i8** %6, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 90
  br i1 %89, label %106, label %90

90:                                               ; preds = %82
  %91 = load i8*, i8** %6, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 43
  br i1 %97, label %106, label %98

98:                                               ; preds = %90
  %99 = load i8*, i8** %6, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 45
  br i1 %105, label %106, label %109

106:                                              ; preds = %98, %90, %82
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %8, align 4
  br label %256

109:                                              ; preds = %98, %78, %75
  %110 = load i8*, i8** %6, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = call i64 @ascii_isdigit(i8 signext %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %109
  br label %482

118:                                              ; preds = %109
  %119 = load i8*, i8** %6, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = sub nsw i32 %124, 48
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %11, align 4
  %128 = load i32, i32* %10, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %118
  br label %482

131:                                              ; preds = %118
  %132 = load i8*, i8** %6, align 8
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = call i64 @ascii_isdigit(i8 signext %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %131
  br label %482

140:                                              ; preds = %131
  %141 = load i32, i32* %7, align 4
  %142 = mul nsw i32 %141, 10
  %143 = load i8*, i8** %6, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = add nsw i32 %142, %148
  %150 = sub nsw i32 %149, 48
  store i32 %150, i32* %7, align 4
  %151 = load i32, i32* %11, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %11, align 4
  %153 = load i32, i32* %10, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %140
  br label %482

156:                                              ; preds = %140
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @V_ASN1_UTCTIME, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %156
  %163 = load i32, i32* %8, align 4
  %164 = add nsw i32 %163, 1
  br label %167

165:                                              ; preds = %156
  %166 = load i32, i32* %8, align 4
  br label %167

167:                                              ; preds = %165, %162
  %168 = phi i32 [ %164, %162 ], [ %166, %165 ]
  store i32 %168, i32* %9, align 4
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [9 x i32], [9 x i32]* @asn1_time_to_tm.min, i64 0, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = icmp slt i32 %169, %173
  br i1 %174, label %182, label %175

175:                                              ; preds = %167
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* %9, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [9 x i32], [9 x i32]* @asn1_time_to_tm.max, i64 0, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = icmp sgt i32 %176, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %175, %167
  br label %482

183:                                              ; preds = %175
  %184 = load i32, i32* %9, align 4
  switch i32 %184, label %252 [
    i32 0, label %185
    i32 1, label %190
    i32 2, label %213
    i32 3, label %217
    i32 4, label %243
    i32 5, label %246
    i32 6, label %249
  ]

185:                                              ; preds = %183
  %186 = load i32, i32* %7, align 4
  %187 = mul nsw i32 %186, 100
  %188 = sub nsw i32 %187, 1900
  %189 = getelementptr inbounds %struct.tm, %struct.tm* %17, i32 0, i32 0
  store i32 %188, i32* %189, align 4
  br label %252

190:                                              ; preds = %183
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @V_ASN1_UTCTIME, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %207

196:                                              ; preds = %190
  %197 = load i32, i32* %7, align 4
  %198 = icmp slt i32 %197, 50
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = load i32, i32* %7, align 4
  %201 = add nsw i32 %200, 100
  br label %204

202:                                              ; preds = %196
  %203 = load i32, i32* %7, align 4
  br label %204

204:                                              ; preds = %202, %199
  %205 = phi i32 [ %201, %199 ], [ %203, %202 ]
  %206 = getelementptr inbounds %struct.tm, %struct.tm* %17, i32 0, i32 0
  store i32 %205, i32* %206, align 4
  br label %212

207:                                              ; preds = %190
  %208 = load i32, i32* %7, align 4
  %209 = getelementptr inbounds %struct.tm, %struct.tm* %17, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %210, %208
  store i32 %211, i32* %209, align 4
  br label %212

212:                                              ; preds = %207, %204
  br label %252

213:                                              ; preds = %183
  %214 = load i32, i32* %7, align 4
  %215 = sub nsw i32 %214, 1
  %216 = getelementptr inbounds %struct.tm, %struct.tm* %17, i32 0, i32 1
  store i32 %215, i32* %216, align 4
  br label %252

217:                                              ; preds = %183
  %218 = getelementptr inbounds %struct.tm, %struct.tm* %17, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = icmp eq i32 %219, 1
  br i1 %220, label %221, label %228

221:                                              ; preds = %217
  %222 = load i32, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @asn1_time_to_tm.mdays, i64 0, i64 1), align 4
  %223 = getelementptr inbounds %struct.tm, %struct.tm* %17, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = add nsw i32 %224, 1900
  %226 = call i32 @leap_year(i32 %225)
  %227 = add nsw i32 %222, %226
  store i32 %227, i32* %16, align 4
  br label %234

228:                                              ; preds = %217
  %229 = getelementptr inbounds %struct.tm, %struct.tm* %17, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [12 x i32], [12 x i32]* @asn1_time_to_tm.mdays, i64 0, i64 %231
  %233 = load i32, i32* %232, align 4
  store i32 %233, i32* %16, align 4
  br label %234

234:                                              ; preds = %228, %221
  %235 = load i32, i32* %7, align 4
  %236 = load i32, i32* %16, align 4
  %237 = icmp sgt i32 %235, %236
  br i1 %237, label %238, label %239

238:                                              ; preds = %234
  br label %482

239:                                              ; preds = %234
  %240 = load i32, i32* %7, align 4
  %241 = getelementptr inbounds %struct.tm, %struct.tm* %17, i32 0, i32 2
  store i32 %240, i32* %241, align 4
  %242 = call i32 @determine_days(%struct.tm* %17)
  br label %252

243:                                              ; preds = %183
  %244 = load i32, i32* %7, align 4
  %245 = getelementptr inbounds %struct.tm, %struct.tm* %17, i32 0, i32 3
  store i32 %244, i32* %245, align 4
  br label %252

246:                                              ; preds = %183
  %247 = load i32, i32* %7, align 4
  %248 = getelementptr inbounds %struct.tm, %struct.tm* %17, i32 0, i32 4
  store i32 %247, i32* %248, align 4
  br label %252

249:                                              ; preds = %183
  %250 = load i32, i32* %7, align 4
  %251 = getelementptr inbounds %struct.tm, %struct.tm* %17, i32 0, i32 5
  store i32 %250, i32* %251, align 4
  br label %252

252:                                              ; preds = %183, %249, %246, %243, %239, %213, %212, %185
  br label %253

253:                                              ; preds = %252
  %254 = load i32, i32* %8, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %8, align 4
  br label %71

256:                                              ; preds = %106, %71
  %257 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @V_ASN1_GENERALIZEDTIME, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %262, label %310

262:                                              ; preds = %256
  %263 = load i8*, i8** %6, align 8
  %264 = load i32, i32* %11, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8, i8* %263, i64 %265
  %267 = load i8, i8* %266, align 1
  %268 = sext i8 %267 to i32
  %269 = icmp eq i32 %268, 46
  br i1 %269, label %270, label %310

270:                                              ; preds = %262
  %271 = load i32, i32* %13, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %270
  br label %482

274:                                              ; preds = %270
  %275 = load i32, i32* %11, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %11, align 4
  %277 = load i32, i32* %10, align 4
  %278 = icmp eq i32 %276, %277
  br i1 %278, label %279, label %280

279:                                              ; preds = %274
  br label %482

280:                                              ; preds = %274
  %281 = load i32, i32* %11, align 4
  store i32 %281, i32* %8, align 4
  br label %282

282:                                              ; preds = %296, %280
  %283 = load i32, i32* %11, align 4
  %284 = load i32, i32* %10, align 4
  %285 = icmp slt i32 %283, %284
  br i1 %285, label %286, label %294

286:                                              ; preds = %282
  %287 = load i8*, i8** %6, align 8
  %288 = load i32, i32* %11, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i8, i8* %287, i64 %289
  %291 = load i8, i8* %290, align 1
  %292 = call i64 @ascii_isdigit(i8 signext %291)
  %293 = icmp ne i64 %292, 0
  br label %294

294:                                              ; preds = %286, %282
  %295 = phi i1 [ false, %282 ], [ %293, %286 ]
  br i1 %295, label %296, label %299

296:                                              ; preds = %294
  %297 = load i32, i32* %11, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %11, align 4
  br label %282

299:                                              ; preds = %294
  %300 = load i32, i32* %8, align 4
  %301 = load i32, i32* %11, align 4
  %302 = icmp eq i32 %300, %301
  br i1 %302, label %303, label %304

303:                                              ; preds = %299
  br label %482

304:                                              ; preds = %299
  %305 = load i32, i32* %11, align 4
  %306 = load i32, i32* %10, align 4
  %307 = icmp eq i32 %305, %306
  br i1 %307, label %308, label %309

308:                                              ; preds = %304
  br label %482

309:                                              ; preds = %304
  br label %310

310:                                              ; preds = %309, %262, %256
  %311 = load i8*, i8** %6, align 8
  %312 = load i32, i32* %11, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i8, i8* %311, i64 %313
  %315 = load i8, i8* %314, align 1
  %316 = sext i8 %315 to i32
  %317 = icmp eq i32 %316, 90
  br i1 %317, label %318, label %321

318:                                              ; preds = %310
  %319 = load i32, i32* %11, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %11, align 4
  br label %469

321:                                              ; preds = %310
  %322 = load i32, i32* %13, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %467, label %324

324:                                              ; preds = %321
  %325 = load i8*, i8** %6, align 8
  %326 = load i32, i32* %11, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i8, i8* %325, i64 %327
  %329 = load i8, i8* %328, align 1
  %330 = sext i8 %329 to i32
  %331 = icmp eq i32 %330, 43
  br i1 %331, label %340, label %332

332:                                              ; preds = %324
  %333 = load i8*, i8** %6, align 8
  %334 = load i32, i32* %11, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i8, i8* %333, i64 %335
  %337 = load i8, i8* %336, align 1
  %338 = sext i8 %337 to i32
  %339 = icmp eq i32 %338, 45
  br i1 %339, label %340, label %467

340:                                              ; preds = %332, %324
  %341 = load i8*, i8** %6, align 8
  %342 = load i32, i32* %11, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i8, i8* %341, i64 %343
  %345 = load i8, i8* %344, align 1
  %346 = sext i8 %345 to i32
  %347 = icmp eq i32 %346, 45
  %348 = zext i1 %347 to i64
  %349 = select i1 %347, i32 1, i32 -1
  store i32 %349, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %350 = load i32, i32* %11, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %11, align 4
  %352 = load i32, i32* %11, align 4
  %353 = add nsw i32 %352, 4
  %354 = load i32, i32* %10, align 4
  %355 = icmp ne i32 %353, %354
  br i1 %355, label %356, label %357

356:                                              ; preds = %340
  br label %482

357:                                              ; preds = %340
  %358 = load i32, i32* %14, align 4
  store i32 %358, i32* %8, align 4
  br label %359

359:                                              ; preds = %453, %357
  %360 = load i32, i32* %8, align 4
  %361 = load i32, i32* %14, align 4
  %362 = add nsw i32 %361, 2
  %363 = icmp slt i32 %360, %362
  br i1 %363, label %364, label %456

364:                                              ; preds = %359
  %365 = load i8*, i8** %6, align 8
  %366 = load i32, i32* %11, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i8, i8* %365, i64 %367
  %369 = load i8, i8* %368, align 1
  %370 = call i64 @ascii_isdigit(i8 signext %369)
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %373, label %372

372:                                              ; preds = %364
  br label %482

373:                                              ; preds = %364
  %374 = load i8*, i8** %6, align 8
  %375 = load i32, i32* %11, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i8, i8* %374, i64 %376
  %378 = load i8, i8* %377, align 1
  %379 = sext i8 %378 to i32
  %380 = sub nsw i32 %379, 48
  store i32 %380, i32* %7, align 4
  %381 = load i32, i32* %11, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %11, align 4
  %383 = load i8*, i8** %6, align 8
  %384 = load i32, i32* %11, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i8, i8* %383, i64 %385
  %387 = load i8, i8* %386, align 1
  %388 = call i64 @ascii_isdigit(i8 signext %387)
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %391, label %390

390:                                              ; preds = %373
  br label %482

391:                                              ; preds = %373
  %392 = load i32, i32* %7, align 4
  %393 = mul nsw i32 %392, 10
  %394 = load i8*, i8** %6, align 8
  %395 = load i32, i32* %11, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i8, i8* %394, i64 %396
  %398 = load i8, i8* %397, align 1
  %399 = sext i8 %398 to i32
  %400 = add nsw i32 %393, %399
  %401 = sub nsw i32 %400, 48
  store i32 %401, i32* %7, align 4
  %402 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %403 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %402, i32 0, i32 0
  %404 = load i64, i64* %403, align 8
  %405 = load i64, i64* @V_ASN1_UTCTIME, align 8
  %406 = icmp eq i64 %404, %405
  br i1 %406, label %407, label %410

407:                                              ; preds = %391
  %408 = load i32, i32* %8, align 4
  %409 = add nsw i32 %408, 1
  br label %412

410:                                              ; preds = %391
  %411 = load i32, i32* %8, align 4
  br label %412

412:                                              ; preds = %410, %407
  %413 = phi i32 [ %409, %407 ], [ %411, %410 ]
  store i32 %413, i32* %9, align 4
  %414 = load i32, i32* %7, align 4
  %415 = load i32, i32* %9, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds [9 x i32], [9 x i32]* @asn1_time_to_tm.min, i64 0, i64 %416
  %418 = load i32, i32* %417, align 4
  %419 = icmp slt i32 %414, %418
  br i1 %419, label %427, label %420

420:                                              ; preds = %412
  %421 = load i32, i32* %7, align 4
  %422 = load i32, i32* %9, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds [9 x i32], [9 x i32]* @asn1_time_to_tm.max, i64 0, i64 %423
  %425 = load i32, i32* %424, align 4
  %426 = icmp sgt i32 %421, %425
  br i1 %426, label %427, label %428

427:                                              ; preds = %420, %412
  br label %482

428:                                              ; preds = %420
  %429 = load %struct.tm*, %struct.tm** %4, align 8
  %430 = icmp ne %struct.tm* %429, null
  br i1 %430, label %431, label %450

431:                                              ; preds = %428
  %432 = load i32, i32* %8, align 4
  %433 = load i32, i32* %14, align 4
  %434 = icmp eq i32 %432, %433
  br i1 %434, label %435, label %438

435:                                              ; preds = %431
  %436 = load i32, i32* %7, align 4
  %437 = mul nsw i32 %436, 3600
  store i32 %437, i32* %24, align 4
  br label %449

438:                                              ; preds = %431
  %439 = load i32, i32* %8, align 4
  %440 = load i32, i32* %14, align 4
  %441 = add nsw i32 %440, 1
  %442 = icmp eq i32 %439, %441
  br i1 %442, label %443, label %448

443:                                              ; preds = %438
  %444 = load i32, i32* %7, align 4
  %445 = mul nsw i32 %444, 60
  %446 = load i32, i32* %24, align 4
  %447 = add nsw i32 %446, %445
  store i32 %447, i32* %24, align 4
  br label %448

448:                                              ; preds = %443, %438
  br label %449

449:                                              ; preds = %448, %435
  br label %450

450:                                              ; preds = %449, %428
  %451 = load i32, i32* %11, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %11, align 4
  br label %453

453:                                              ; preds = %450
  %454 = load i32, i32* %8, align 4
  %455 = add nsw i32 %454, 1
  store i32 %455, i32* %8, align 4
  br label %359

456:                                              ; preds = %359
  %457 = load i32, i32* %24, align 4
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %459, label %466

459:                                              ; preds = %456
  %460 = load i32, i32* %24, align 4
  %461 = load i32, i32* %23, align 4
  %462 = mul nsw i32 %460, %461
  %463 = call i32 @OPENSSL_gmtime_adj(%struct.tm* %17, i32 0, i32 %462)
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %466, label %465

465:                                              ; preds = %459
  br label %482

466:                                              ; preds = %459, %456
  br label %468

467:                                              ; preds = %332, %321
  br label %482

468:                                              ; preds = %466
  br label %469

469:                                              ; preds = %468, %318
  %470 = load i32, i32* %11, align 4
  %471 = load i32, i32* %10, align 4
  %472 = icmp eq i32 %470, %471
  br i1 %472, label %473, label %481

473:                                              ; preds = %469
  %474 = load %struct.tm*, %struct.tm** %4, align 8
  %475 = icmp ne %struct.tm* %474, null
  br i1 %475, label %476, label %480

476:                                              ; preds = %473
  %477 = load %struct.tm*, %struct.tm** %4, align 8
  %478 = bitcast %struct.tm* %477 to i8*
  %479 = bitcast %struct.tm* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %478, i8* align 4 %479, i64 24, i1 false)
  br label %480

480:                                              ; preds = %476, %473
  store i32 1, i32* %3, align 4
  br label %483

481:                                              ; preds = %469
  br label %482

482:                                              ; preds = %481, %467, %465, %427, %390, %372, %356, %308, %303, %279, %273, %238, %182, %155, %139, %130, %117, %69
  store i32 0, i32* %3, align 4
  br label %483

483:                                              ; preds = %482, %480, %55
  %484 = load i32, i32* %3, align 4
  ret i32 %484
}

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

declare dso_local i64 @ascii_isdigit(i8 signext) #1

declare dso_local i32 @leap_year(i32) #1

declare dso_local i32 @determine_days(%struct.tm*) #1

declare dso_local i32 @OPENSSL_gmtime_adj(%struct.tm*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
