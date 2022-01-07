; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/compat/extr_strptime.c_unbound_strptime.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/compat/extr_strptime.c_unbound_strptime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@full_weekdays = common dso_local global i32 0, align 4
@abb_weekdays = common dso_local global i32 0, align 4
@full_months = common dso_local global i32 0, align 4
@abb_months = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%x %X\00", align 1
@TM_YEAR_BASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%m/%d/%y\00", align 1
@ampm = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"%I:%M:%S %p\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%H:%M\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%H:%M:%S\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @unbound_strptime(i8* %0, i8* %1, %struct.tm* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.tm* %2, %struct.tm** %7, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %376, %3
  %12 = load i8*, i8** %6, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  store i32 %14, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %379

16:                                               ; preds = %11
  %17 = load i32, i32* %8, align 4
  %18 = trunc i32 %17 to i8
  %19 = call i64 @isspace(i8 zeroext %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %27, %21
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = call i64 @isspace(i8 zeroext %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %5, align 8
  br label %22

30:                                               ; preds = %22
  br label %376

31:                                               ; preds = %16
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, 37
  br i1 %33, label %34, label %365

34:                                               ; preds = %31
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %6, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  switch i32 %40, label %363 [
    i32 37, label %41
    i32 97, label %51
    i32 65, label %51
    i32 98, label %67
    i32 66, label %67
    i32 104, label %67
    i32 99, label %83
    i32 67, label %90
    i32 100, label %119
    i32 101, label %119
    i32 68, label %131
    i32 72, label %138
    i32 73, label %150
    i32 106, label %166
    i32 109, label %178
    i32 77, label %191
    i32 110, label %203
    i32 116, label %203
    i32 112, label %213
    i32 114, label %239
    i32 82, label %246
    i32 83, label %253
    i32 84, label %265
    i32 85, label %272
    i32 119, label %281
    i32 87, label %293
    i32 120, label %302
    i32 88, label %309
    i32 121, label %316
    i32 89, label %348
    i32 0, label %362
  ]

41:                                               ; preds = %34
  %42 = load i8*, i8** %5, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i8* null, i8** %4, align 8
  br label %381

48:                                               ; preds = %41
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %5, align 8
  br label %364

51:                                               ; preds = %34, %34
  %52 = load i32, i32* @full_weekdays, align 4
  %53 = call i32 @match_string(i8** %5, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* @abb_weekdays, align 4
  %58 = call i32 @match_string(i8** %5, i32 %57)
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i8* null, i8** %4, align 8
  br label %381

63:                                               ; preds = %59
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.tm*, %struct.tm** %7, align 8
  %66 = getelementptr inbounds %struct.tm, %struct.tm* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  br label %364

67:                                               ; preds = %34, %34, %34
  %68 = load i32, i32* @full_months, align 4
  %69 = call i32 @match_string(i8** %5, i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* @abb_months, align 4
  %74 = call i32 @match_string(i8** %5, i32 %73)
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %72, %67
  %76 = load i32, i32* %9, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i8* null, i8** %4, align 8
  br label %381

79:                                               ; preds = %75
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.tm*, %struct.tm** %7, align 8
  %82 = getelementptr inbounds %struct.tm, %struct.tm* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  br label %364

83:                                               ; preds = %34
  %84 = load i8*, i8** %5, align 8
  %85 = load %struct.tm*, %struct.tm** %7, align 8
  %86 = call i8* @unbound_strptime(i8* %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.tm* %85)
  store i8* %86, i8** %5, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  store i8* null, i8** %4, align 8
  br label %381

89:                                               ; preds = %83
  br label %364

90:                                               ; preds = %34
  %91 = call i32 @str2int(i8** %5, i32 2)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* %9, align 4
  %96 = icmp sgt i32 %95, 99
  br i1 %96, label %97, label %98

97:                                               ; preds = %94, %90
  store i8* null, i8** %4, align 8
  br label %381

98:                                               ; preds = %94
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %98
  %102 = load i32, i32* %9, align 4
  %103 = mul nsw i32 %102, 100
  %104 = load %struct.tm*, %struct.tm** %7, align 8
  %105 = getelementptr inbounds %struct.tm, %struct.tm* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = srem i32 %106, 100
  %108 = add nsw i32 %103, %107
  %109 = load %struct.tm*, %struct.tm** %7, align 8
  %110 = getelementptr inbounds %struct.tm, %struct.tm* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 4
  br label %118

111:                                              ; preds = %98
  %112 = load i32, i32* %9, align 4
  %113 = mul nsw i32 %112, 100
  %114 = load i32, i32* @TM_YEAR_BASE, align 4
  %115 = sub nsw i32 %113, %114
  %116 = load %struct.tm*, %struct.tm** %7, align 8
  %117 = getelementptr inbounds %struct.tm, %struct.tm* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 4
  store i32 1, i32* %10, align 4
  br label %118

118:                                              ; preds = %111, %101
  br label %364

119:                                              ; preds = %34, %34
  %120 = call i32 @str2int(i8** %5, i32 2)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp slt i32 %121, 1
  br i1 %122, label %126, label %123

123:                                              ; preds = %119
  %124 = load i32, i32* %9, align 4
  %125 = icmp sgt i32 %124, 31
  br i1 %125, label %126, label %127

126:                                              ; preds = %123, %119
  store i8* null, i8** %4, align 8
  br label %381

127:                                              ; preds = %123
  %128 = load i32, i32* %9, align 4
  %129 = load %struct.tm*, %struct.tm** %7, align 8
  %130 = getelementptr inbounds %struct.tm, %struct.tm* %129, i32 0, i32 3
  store i32 %128, i32* %130, align 4
  br label %364

131:                                              ; preds = %34
  %132 = load i8*, i8** %5, align 8
  %133 = load %struct.tm*, %struct.tm** %7, align 8
  %134 = call i8* @unbound_strptime(i8* %132, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.tm* %133)
  store i8* %134, i8** %5, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %131
  store i8* null, i8** %4, align 8
  br label %381

137:                                              ; preds = %131
  br label %364

138:                                              ; preds = %34
  %139 = call i32 @str2int(i8** %5, i32 2)
  store i32 %139, i32* %9, align 4
  %140 = load i32, i32* %9, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %138
  %143 = load i32, i32* %9, align 4
  %144 = icmp sgt i32 %143, 23
  br i1 %144, label %145, label %146

145:                                              ; preds = %142, %138
  store i8* null, i8** %4, align 8
  br label %381

146:                                              ; preds = %142
  %147 = load i32, i32* %9, align 4
  %148 = load %struct.tm*, %struct.tm** %7, align 8
  %149 = getelementptr inbounds %struct.tm, %struct.tm* %148, i32 0, i32 4
  store i32 %147, i32* %149, align 4
  br label %364

150:                                              ; preds = %34
  %151 = call i32 @str2int(i8** %5, i32 2)
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %9, align 4
  %153 = icmp slt i32 %152, 1
  br i1 %153, label %157, label %154

154:                                              ; preds = %150
  %155 = load i32, i32* %9, align 4
  %156 = icmp sgt i32 %155, 12
  br i1 %156, label %157, label %158

157:                                              ; preds = %154, %150
  store i8* null, i8** %4, align 8
  br label %381

158:                                              ; preds = %154
  %159 = load i32, i32* %9, align 4
  %160 = icmp eq i32 %159, 12
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  store i32 0, i32* %9, align 4
  br label %162

162:                                              ; preds = %161, %158
  %163 = load i32, i32* %9, align 4
  %164 = load %struct.tm*, %struct.tm** %7, align 8
  %165 = getelementptr inbounds %struct.tm, %struct.tm* %164, i32 0, i32 4
  store i32 %163, i32* %165, align 4
  br label %364

166:                                              ; preds = %34
  %167 = call i32 @str2int(i8** %5, i32 2)
  store i32 %167, i32* %9, align 4
  %168 = load i32, i32* %9, align 4
  %169 = icmp slt i32 %168, 1
  br i1 %169, label %173, label %170

170:                                              ; preds = %166
  %171 = load i32, i32* %9, align 4
  %172 = icmp sgt i32 %171, 366
  br i1 %172, label %173, label %174

173:                                              ; preds = %170, %166
  store i8* null, i8** %4, align 8
  br label %381

174:                                              ; preds = %170
  %175 = load i32, i32* %9, align 4
  %176 = load %struct.tm*, %struct.tm** %7, align 8
  %177 = getelementptr inbounds %struct.tm, %struct.tm* %176, i32 0, i32 5
  store i32 %175, i32* %177, align 4
  br label %364

178:                                              ; preds = %34
  %179 = call i32 @str2int(i8** %5, i32 2)
  store i32 %179, i32* %9, align 4
  %180 = load i32, i32* %9, align 4
  %181 = icmp slt i32 %180, 1
  br i1 %181, label %185, label %182

182:                                              ; preds = %178
  %183 = load i32, i32* %9, align 4
  %184 = icmp sgt i32 %183, 12
  br i1 %184, label %185, label %186

185:                                              ; preds = %182, %178
  store i8* null, i8** %4, align 8
  br label %381

186:                                              ; preds = %182
  %187 = load i32, i32* %9, align 4
  %188 = sub nsw i32 %187, 1
  %189 = load %struct.tm*, %struct.tm** %7, align 8
  %190 = getelementptr inbounds %struct.tm, %struct.tm* %189, i32 0, i32 1
  store i32 %188, i32* %190, align 4
  br label %364

191:                                              ; preds = %34
  %192 = call i32 @str2int(i8** %5, i32 2)
  store i32 %192, i32* %9, align 4
  %193 = load i32, i32* %9, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %198, label %195

195:                                              ; preds = %191
  %196 = load i32, i32* %9, align 4
  %197 = icmp sgt i32 %196, 59
  br i1 %197, label %198, label %199

198:                                              ; preds = %195, %191
  store i8* null, i8** %4, align 8
  br label %381

199:                                              ; preds = %195
  %200 = load i32, i32* %9, align 4
  %201 = load %struct.tm*, %struct.tm** %7, align 8
  %202 = getelementptr inbounds %struct.tm, %struct.tm* %201, i32 0, i32 6
  store i32 %200, i32* %202, align 4
  br label %364

203:                                              ; preds = %34, %34
  br label %204

204:                                              ; preds = %209, %203
  %205 = load i8*, i8** %5, align 8
  %206 = load i8, i8* %205, align 1
  %207 = call i64 @isspace(i8 zeroext %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %204
  %210 = load i8*, i8** %5, align 8
  %211 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %211, i8** %5, align 8
  br label %204

212:                                              ; preds = %204
  br label %364

213:                                              ; preds = %34
  %214 = load i32, i32* @ampm, align 4
  %215 = call i32 @match_string(i8** %5, i32 %214)
  store i32 %215, i32* %9, align 4
  %216 = load i32, i32* %9, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %213
  store i8* null, i8** %4, align 8
  br label %381

219:                                              ; preds = %213
  %220 = load %struct.tm*, %struct.tm** %7, align 8
  %221 = getelementptr inbounds %struct.tm, %struct.tm* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %229, label %224

224:                                              ; preds = %219
  %225 = load %struct.tm*, %struct.tm** %7, align 8
  %226 = getelementptr inbounds %struct.tm, %struct.tm* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 4
  %228 = icmp sgt i32 %227, 11
  br i1 %228, label %229, label %230

229:                                              ; preds = %224, %219
  store i8* null, i8** %4, align 8
  br label %381

230:                                              ; preds = %224
  %231 = load i32, i32* %9, align 4
  %232 = icmp eq i32 %231, 1
  br i1 %232, label %233, label %238

233:                                              ; preds = %230
  %234 = load %struct.tm*, %struct.tm** %7, align 8
  %235 = getelementptr inbounds %struct.tm, %struct.tm* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 4
  %237 = add nsw i32 %236, 12
  store i32 %237, i32* %235, align 4
  br label %238

238:                                              ; preds = %233, %230
  br label %364

239:                                              ; preds = %34
  %240 = load i8*, i8** %5, align 8
  %241 = load %struct.tm*, %struct.tm** %7, align 8
  %242 = call i8* @unbound_strptime(i8* %240, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), %struct.tm* %241)
  store i8* %242, i8** %5, align 8
  %243 = icmp ne i8* %242, null
  br i1 %243, label %245, label %244

244:                                              ; preds = %239
  store i8* null, i8** %4, align 8
  br label %381

245:                                              ; preds = %239
  br label %364

246:                                              ; preds = %34
  %247 = load i8*, i8** %5, align 8
  %248 = load %struct.tm*, %struct.tm** %7, align 8
  %249 = call i8* @unbound_strptime(i8* %247, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %struct.tm* %248)
  store i8* %249, i8** %5, align 8
  %250 = icmp ne i8* %249, null
  br i1 %250, label %252, label %251

251:                                              ; preds = %246
  store i8* null, i8** %4, align 8
  br label %381

252:                                              ; preds = %246
  br label %364

253:                                              ; preds = %34
  %254 = call i32 @str2int(i8** %5, i32 2)
  store i32 %254, i32* %9, align 4
  %255 = load i32, i32* %9, align 4
  %256 = icmp slt i32 %255, 0
  br i1 %256, label %260, label %257

257:                                              ; preds = %253
  %258 = load i32, i32* %9, align 4
  %259 = icmp sgt i32 %258, 60
  br i1 %259, label %260, label %261

260:                                              ; preds = %257, %253
  store i8* null, i8** %4, align 8
  br label %381

261:                                              ; preds = %257
  %262 = load i32, i32* %9, align 4
  %263 = load %struct.tm*, %struct.tm** %7, align 8
  %264 = getelementptr inbounds %struct.tm, %struct.tm* %263, i32 0, i32 7
  store i32 %262, i32* %264, align 4
  br label %364

265:                                              ; preds = %34
  %266 = load i8*, i8** %5, align 8
  %267 = load %struct.tm*, %struct.tm** %7, align 8
  %268 = call i8* @unbound_strptime(i8* %266, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), %struct.tm* %267)
  store i8* %268, i8** %5, align 8
  %269 = icmp ne i8* %268, null
  br i1 %269, label %271, label %270

270:                                              ; preds = %265
  store i8* null, i8** %4, align 8
  br label %381

271:                                              ; preds = %265
  br label %364

272:                                              ; preds = %34
  %273 = call i32 @str2int(i8** %5, i32 2)
  store i32 %273, i32* %9, align 4
  %274 = load i32, i32* %9, align 4
  %275 = icmp slt i32 %274, 0
  br i1 %275, label %279, label %276

276:                                              ; preds = %272
  %277 = load i32, i32* %9, align 4
  %278 = icmp sgt i32 %277, 53
  br i1 %278, label %279, label %280

279:                                              ; preds = %276, %272
  store i8* null, i8** %4, align 8
  br label %381

280:                                              ; preds = %276
  br label %364

281:                                              ; preds = %34
  %282 = call i32 @str2int(i8** %5, i32 1)
  store i32 %282, i32* %9, align 4
  %283 = load i32, i32* %9, align 4
  %284 = icmp slt i32 %283, 0
  br i1 %284, label %288, label %285

285:                                              ; preds = %281
  %286 = load i32, i32* %9, align 4
  %287 = icmp sgt i32 %286, 6
  br i1 %287, label %288, label %289

288:                                              ; preds = %285, %281
  store i8* null, i8** %4, align 8
  br label %381

289:                                              ; preds = %285
  %290 = load i32, i32* %9, align 4
  %291 = load %struct.tm*, %struct.tm** %7, align 8
  %292 = getelementptr inbounds %struct.tm, %struct.tm* %291, i32 0, i32 0
  store i32 %290, i32* %292, align 4
  br label %364

293:                                              ; preds = %34
  %294 = call i32 @str2int(i8** %5, i32 2)
  store i32 %294, i32* %9, align 4
  %295 = load i32, i32* %9, align 4
  %296 = icmp slt i32 %295, 0
  br i1 %296, label %300, label %297

297:                                              ; preds = %293
  %298 = load i32, i32* %9, align 4
  %299 = icmp sgt i32 %298, 53
  br i1 %299, label %300, label %301

300:                                              ; preds = %297, %293
  store i8* null, i8** %4, align 8
  br label %381

301:                                              ; preds = %297
  br label %364

302:                                              ; preds = %34
  %303 = load i8*, i8** %5, align 8
  %304 = load %struct.tm*, %struct.tm** %7, align 8
  %305 = call i8* @unbound_strptime(i8* %303, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.tm* %304)
  store i8* %305, i8** %5, align 8
  %306 = icmp ne i8* %305, null
  br i1 %306, label %308, label %307

307:                                              ; preds = %302
  store i8* null, i8** %4, align 8
  br label %381

308:                                              ; preds = %302
  br label %364

309:                                              ; preds = %34
  %310 = load i8*, i8** %5, align 8
  %311 = load %struct.tm*, %struct.tm** %7, align 8
  %312 = call i8* @unbound_strptime(i8* %310, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), %struct.tm* %311)
  store i8* %312, i8** %5, align 8
  %313 = icmp ne i8* %312, null
  br i1 %313, label %315, label %314

314:                                              ; preds = %309
  store i8* null, i8** %4, align 8
  br label %381

315:                                              ; preds = %309
  br label %364

316:                                              ; preds = %34
  %317 = call i32 @str2int(i8** %5, i32 2)
  store i32 %317, i32* %9, align 4
  %318 = load i32, i32* %9, align 4
  %319 = icmp slt i32 %318, 0
  br i1 %319, label %323, label %320

320:                                              ; preds = %316
  %321 = load i32, i32* %9, align 4
  %322 = icmp sgt i32 %321, 99
  br i1 %322, label %323, label %324

323:                                              ; preds = %320, %316
  store i8* null, i8** %4, align 8
  br label %381

324:                                              ; preds = %320
  %325 = load i32, i32* %10, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %337

327:                                              ; preds = %324
  %328 = load %struct.tm*, %struct.tm** %7, align 8
  %329 = getelementptr inbounds %struct.tm, %struct.tm* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 4
  %331 = sdiv i32 %330, 100
  %332 = mul nsw i32 %331, 100
  %333 = load i32, i32* %9, align 4
  %334 = add nsw i32 %332, %333
  %335 = load %struct.tm*, %struct.tm** %7, align 8
  %336 = getelementptr inbounds %struct.tm, %struct.tm* %335, i32 0, i32 2
  store i32 %334, i32* %336, align 4
  br label %347

337:                                              ; preds = %324
  store i32 1, i32* %10, align 4
  %338 = load i32, i32* %9, align 4
  %339 = icmp slt i32 %338, 69
  br i1 %339, label %340, label %343

340:                                              ; preds = %337
  %341 = load i32, i32* %9, align 4
  %342 = add nsw i32 %341, 100
  store i32 %342, i32* %9, align 4
  br label %343

343:                                              ; preds = %340, %337
  %344 = load i32, i32* %9, align 4
  %345 = load %struct.tm*, %struct.tm** %7, align 8
  %346 = getelementptr inbounds %struct.tm, %struct.tm* %345, i32 0, i32 2
  store i32 %344, i32* %346, align 4
  br label %347

347:                                              ; preds = %343, %327
  br label %364

348:                                              ; preds = %34
  %349 = call i32 @str2int(i8** %5, i32 4)
  store i32 %349, i32* %9, align 4
  %350 = load i32, i32* %9, align 4
  %351 = icmp slt i32 %350, 0
  br i1 %351, label %355, label %352

352:                                              ; preds = %348
  %353 = load i32, i32* %9, align 4
  %354 = icmp sgt i32 %353, 9999
  br i1 %354, label %355, label %356

355:                                              ; preds = %352, %348
  store i8* null, i8** %4, align 8
  br label %381

356:                                              ; preds = %352
  %357 = load i32, i32* %9, align 4
  %358 = load i32, i32* @TM_YEAR_BASE, align 4
  %359 = sub nsw i32 %357, %358
  %360 = load %struct.tm*, %struct.tm** %7, align 8
  %361 = getelementptr inbounds %struct.tm, %struct.tm* %360, i32 0, i32 2
  store i32 %359, i32* %361, align 4
  br label %364

362:                                              ; preds = %34
  br label %363

363:                                              ; preds = %34, %362
  store i8* null, i8** %4, align 8
  br label %381

364:                                              ; preds = %356, %347, %315, %308, %301, %289, %280, %271, %261, %252, %245, %238, %212, %199, %186, %174, %162, %146, %137, %127, %118, %89, %79, %63, %48
  br label %375

365:                                              ; preds = %31
  %366 = load i8*, i8** %5, align 8
  %367 = load i8, i8* %366, align 1
  %368 = sext i8 %367 to i32
  %369 = load i32, i32* %8, align 4
  %370 = icmp ne i32 %368, %369
  br i1 %370, label %371, label %372

371:                                              ; preds = %365
  store i8* null, i8** %4, align 8
  br label %381

372:                                              ; preds = %365
  %373 = load i8*, i8** %5, align 8
  %374 = getelementptr inbounds i8, i8* %373, i32 1
  store i8* %374, i8** %5, align 8
  br label %375

375:                                              ; preds = %372, %364
  br label %376

376:                                              ; preds = %375, %30
  %377 = load i8*, i8** %6, align 8
  %378 = getelementptr inbounds i8, i8* %377, i32 1
  store i8* %378, i8** %6, align 8
  br label %11

379:                                              ; preds = %11
  %380 = load i8*, i8** %5, align 8
  store i8* %380, i8** %4, align 8
  br label %381

381:                                              ; preds = %379, %371, %363, %355, %323, %314, %307, %300, %288, %279, %270, %260, %251, %244, %229, %218, %198, %185, %173, %157, %145, %136, %126, %97, %88, %78, %62, %47
  %382 = load i8*, i8** %4, align 8
  ret i8* %382
}

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i32 @match_string(i8**, i32) #1

declare dso_local i32 @str2int(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
