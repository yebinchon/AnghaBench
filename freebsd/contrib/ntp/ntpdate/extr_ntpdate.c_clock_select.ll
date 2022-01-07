; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdate/extr_ntpdate.c_clock_select.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdate/extr_ntpdate.c_clock_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.server = type { i64, i64, i64, i64, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.server* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@NTP_MAXCLOCK = common dso_local global i32 0, align 4
@sys_servers = common dso_local global %struct.server* null, align 8
@debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"%s: Server dropped: no data\0A\00", align 1
@NTP_INFIN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"%s: Server dropped: strata too high\0A\00", align 1
@NTP_MAXWGT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"%s: Server dropped: server too far away\0A\00", align 1
@LEAP_NOTINSYNC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"%s: Server dropped: leap not in sync\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"%s: Server dropped: server is very broken\0A\00", align 1
@NTP_MAXAGE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [59 x i8] c"%s: Server dropped: server has gone too long without sync\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"%s: Server dropped: Server is untrusted\0A\00", align 1
@NTP_MAXLIST = common dso_local global i64 0, align 8
@FP_SECOND = common dso_local global i32 0, align 4
@NTPDATE_PRECISION = common dso_local global i64 0, align 8
@NTP_MAXSKW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.server* ()* @clock_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.server* @clock_select() #0 {
  %1 = alloca %struct.server*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.server*, align 8
  %14 = load i32, i32* @NTP_MAXCLOCK, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca %struct.server*, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load i32, i32* @NTP_MAXCLOCK, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i64, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  store i64 0, i64* %2, align 8
  %21 = load %struct.server*, %struct.server** @sys_servers, align 8
  store %struct.server* %21, %struct.server** %1, align 8
  br label %22

22:                                               ; preds = %237, %0
  %23 = load %struct.server*, %struct.server** %1, align 8
  %24 = icmp ne %struct.server* %23, null
  br i1 %24, label %25, label %241

25:                                               ; preds = %22
  %26 = load %struct.server*, %struct.server** %1, align 8
  %27 = getelementptr inbounds %struct.server, %struct.server* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load i64, i64* @debug, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load %struct.server*, %struct.server** %1, align 8
  %35 = getelementptr inbounds %struct.server, %struct.server* %34, i32 0, i32 7
  %36 = call i8* @ntoa(i32* %35)
  %37 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %33, %30
  br label %237

39:                                               ; preds = %25
  %40 = load %struct.server*, %struct.server** %1, align 8
  %41 = getelementptr inbounds %struct.server, %struct.server* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @NTP_INFIN, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load i64, i64* @debug, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.server*, %struct.server** %1, align 8
  %50 = getelementptr inbounds %struct.server, %struct.server* %49, i32 0, i32 7
  %51 = call i8* @ntoa(i32* %50)
  %52 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %48, %45
  br label %237

54:                                               ; preds = %39
  %55 = load %struct.server*, %struct.server** %1, align 8
  %56 = getelementptr inbounds %struct.server, %struct.server* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @NTP_MAXWGT, align 8
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  %61 = load i64, i64* @debug, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load %struct.server*, %struct.server** %1, align 8
  %65 = getelementptr inbounds %struct.server, %struct.server* %64, i32 0, i32 7
  %66 = call i8* @ntoa(i32* %65)
  %67 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %63, %60
  br label %237

69:                                               ; preds = %54
  %70 = load %struct.server*, %struct.server** %1, align 8
  %71 = getelementptr inbounds %struct.server, %struct.server* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @LEAP_NOTINSYNC, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %69
  %76 = load i64, i64* @debug, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load %struct.server*, %struct.server** %1, align 8
  %80 = getelementptr inbounds %struct.server, %struct.server* %79, i32 0, i32 7
  %81 = call i8* @ntoa(i32* %80)
  %82 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %81)
  br label %83

83:                                               ; preds = %78, %75
  br label %237

84:                                               ; preds = %69
  %85 = load %struct.server*, %struct.server** %1, align 8
  %86 = getelementptr inbounds %struct.server, %struct.server* %85, i32 0, i32 9
  %87 = load %struct.server*, %struct.server** %1, align 8
  %88 = getelementptr inbounds %struct.server, %struct.server* %87, i32 0, i32 8
  %89 = call i32 @L_ISHIS(%struct.TYPE_3__* %86, %struct.TYPE_4__* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %100, label %91

91:                                               ; preds = %84
  %92 = load i64, i64* @debug, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load %struct.server*, %struct.server** %1, align 8
  %96 = getelementptr inbounds %struct.server, %struct.server* %95, i32 0, i32 7
  %97 = call i8* @ntoa(i32* %96)
  %98 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i8* %97)
  br label %99

99:                                               ; preds = %94, %91
  br label %237

100:                                              ; preds = %84
  %101 = load %struct.server*, %struct.server** %1, align 8
  %102 = getelementptr inbounds %struct.server, %struct.server* %101, i32 0, i32 9
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.server*, %struct.server** %1, align 8
  %106 = getelementptr inbounds %struct.server, %struct.server* %105, i32 0, i32 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = sub nsw i64 %104, %108
  %110 = load i64, i64* @NTP_MAXAGE, align 8
  %111 = icmp sge i64 %109, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %100
  %113 = load i64, i64* @debug, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load %struct.server*, %struct.server** %1, align 8
  %117 = getelementptr inbounds %struct.server, %struct.server* %116, i32 0, i32 7
  %118 = call i8* @ntoa(i32* %117)
  %119 = call i32 @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i8* %118)
  br label %120

120:                                              ; preds = %115, %112
  br label %237

121:                                              ; preds = %100
  %122 = load %struct.server*, %struct.server** %1, align 8
  %123 = getelementptr inbounds %struct.server, %struct.server* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %121
  %127 = load i64, i64* @debug, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load %struct.server*, %struct.server** %1, align 8
  %131 = getelementptr inbounds %struct.server, %struct.server* %130, i32 0, i32 7
  %132 = call i8* @ntoa(i32* %131)
  %133 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* %132)
  br label %134

134:                                              ; preds = %129, %126
  br label %237

135:                                              ; preds = %121
  %136 = load %struct.server*, %struct.server** %1, align 8
  %137 = getelementptr inbounds %struct.server, %struct.server* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.server*, %struct.server** %1, align 8
  %140 = getelementptr inbounds %struct.server, %struct.server* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %138, %141
  store i32 %142, i32* %3, align 4
  store i64 0, i64* %5, align 8
  br label %143

143:                                              ; preds = %159, %135
  %144 = load i64, i64* %5, align 8
  %145 = load i64, i64* %2, align 8
  %146 = icmp ult i64 %144, %145
  br i1 %146, label %147, label %162

147:                                              ; preds = %143
  %148 = load %struct.server*, %struct.server** %1, align 8
  %149 = getelementptr inbounds %struct.server, %struct.server* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* %5, align 8
  %152 = getelementptr inbounds %struct.server*, %struct.server** %17, i64 %151
  %153 = load %struct.server*, %struct.server** %152, align 8
  %154 = getelementptr inbounds %struct.server, %struct.server* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp sle i64 %150, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %147
  br label %162

158:                                              ; preds = %147
  br label %159

159:                                              ; preds = %158
  %160 = load i64, i64* %5, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %5, align 8
  br label %143

162:                                              ; preds = %157, %143
  br label %163

163:                                              ; preds = %187, %162
  %164 = load i64, i64* %5, align 8
  %165 = load i64, i64* %2, align 8
  %166 = icmp ult i64 %164, %165
  br i1 %166, label %167, label %190

167:                                              ; preds = %163
  %168 = load %struct.server*, %struct.server** %1, align 8
  %169 = getelementptr inbounds %struct.server, %struct.server* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* %5, align 8
  %172 = getelementptr inbounds %struct.server*, %struct.server** %17, i64 %171
  %173 = load %struct.server*, %struct.server** %172, align 8
  %174 = getelementptr inbounds %struct.server, %struct.server* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp slt i64 %170, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %167
  br label %190

178:                                              ; preds = %167
  %179 = load i32, i32* %3, align 4
  %180 = load i64, i64* %5, align 8
  %181 = getelementptr inbounds i64, i64* %20, i64 %180
  %182 = load i64, i64* %181, align 8
  %183 = trunc i64 %182 to i32
  %184 = icmp slt i32 %179, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %178
  br label %190

186:                                              ; preds = %178
  br label %187

187:                                              ; preds = %186
  %188 = load i64, i64* %5, align 8
  %189 = add i64 %188, 1
  store i64 %189, i64* %5, align 8
  br label %163

190:                                              ; preds = %185, %177, %163
  %191 = load i64, i64* %5, align 8
  %192 = load i64, i64* @NTP_MAXLIST, align 8
  %193 = icmp uge i64 %191, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %190
  br label %237

195:                                              ; preds = %190
  %196 = load i64, i64* %2, align 8
  store i64 %196, i64* %6, align 8
  br label %197

197:                                              ; preds = %219, %195
  %198 = load i64, i64* %6, align 8
  %199 = load i64, i64* %5, align 8
  %200 = icmp ugt i64 %198, %199
  br i1 %200, label %201, label %222

201:                                              ; preds = %197
  %202 = load i64, i64* %6, align 8
  %203 = load i64, i64* @NTP_MAXLIST, align 8
  %204 = icmp ult i64 %202, %203
  br i1 %204, label %205, label %218

205:                                              ; preds = %201
  %206 = load i64, i64* %6, align 8
  %207 = sub i64 %206, 1
  %208 = getelementptr inbounds %struct.server*, %struct.server** %17, i64 %207
  %209 = load %struct.server*, %struct.server** %208, align 8
  %210 = load i64, i64* %6, align 8
  %211 = getelementptr inbounds %struct.server*, %struct.server** %17, i64 %210
  store %struct.server* %209, %struct.server** %211, align 8
  %212 = load i64, i64* %6, align 8
  %213 = sub i64 %212, 1
  %214 = getelementptr inbounds i64, i64* %20, i64 %213
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* %6, align 8
  %217 = getelementptr inbounds i64, i64* %20, i64 %216
  store i64 %215, i64* %217, align 8
  br label %218

218:                                              ; preds = %205, %201
  br label %219

219:                                              ; preds = %218
  %220 = load i64, i64* %6, align 8
  %221 = add i64 %220, -1
  store i64 %221, i64* %6, align 8
  br label %197

222:                                              ; preds = %197
  %223 = load %struct.server*, %struct.server** %1, align 8
  %224 = load i64, i64* %5, align 8
  %225 = getelementptr inbounds %struct.server*, %struct.server** %17, i64 %224
  store %struct.server* %223, %struct.server** %225, align 8
  %226 = load i32, i32* %3, align 4
  %227 = sext i32 %226 to i64
  %228 = load i64, i64* %5, align 8
  %229 = getelementptr inbounds i64, i64* %20, i64 %228
  store i64 %227, i64* %229, align 8
  %230 = load i64, i64* %2, align 8
  %231 = load i64, i64* @NTP_MAXLIST, align 8
  %232 = icmp ult i64 %230, %231
  br i1 %232, label %233, label %236

233:                                              ; preds = %222
  %234 = load i64, i64* %2, align 8
  %235 = add i64 %234, 1
  store i64 %235, i64* %2, align 8
  br label %236

236:                                              ; preds = %233, %222
  br label %237

237:                                              ; preds = %236, %194, %134, %120, %99, %83, %68, %53, %38
  %238 = load %struct.server*, %struct.server** %1, align 8
  %239 = getelementptr inbounds %struct.server, %struct.server* %238, i32 0, i32 10
  %240 = load %struct.server*, %struct.server** %239, align 8
  store %struct.server* %240, %struct.server** %1, align 8
  br label %22

241:                                              ; preds = %22
  store i64 0, i64* %4, align 8
  store i64 1, i64* %5, align 8
  br label %242

242:                                              ; preds = %268, %241
  %243 = load i64, i64* %5, align 8
  %244 = load i64, i64* %2, align 8
  %245 = icmp ult i64 %243, %244
  br i1 %245, label %246, label %271

246:                                              ; preds = %242
  %247 = load i64, i64* %5, align 8
  %248 = getelementptr inbounds %struct.server*, %struct.server** %17, i64 %247
  %249 = load %struct.server*, %struct.server** %248, align 8
  %250 = getelementptr inbounds %struct.server, %struct.server* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* %5, align 8
  %253 = sub i64 %252, 1
  %254 = getelementptr inbounds %struct.server*, %struct.server** %17, i64 %253
  %255 = load %struct.server*, %struct.server** %254, align 8
  %256 = getelementptr inbounds %struct.server, %struct.server* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = icmp sgt i64 %251, %257
  br i1 %258, label %259, label %267

259:                                              ; preds = %246
  %260 = load i64, i64* %4, align 8
  %261 = add i64 %260, 1
  store i64 %261, i64* %4, align 8
  %262 = load i64, i64* %4, align 8
  %263 = icmp eq i64 2, %262
  br i1 %263, label %264, label %266

264:                                              ; preds = %259
  %265 = load i64, i64* %5, align 8
  store i64 %265, i64* %2, align 8
  br label %271

266:                                              ; preds = %259
  br label %267

267:                                              ; preds = %266, %246
  br label %268

268:                                              ; preds = %267
  %269 = load i64, i64* %5, align 8
  %270 = add i64 %269, 1
  store i64 %270, i64* %5, align 8
  br label %242

271:                                              ; preds = %264, %242
  %272 = load i64, i64* %2, align 8
  %273 = icmp eq i64 0, %272
  br i1 %273, label %274, label %275

274:                                              ; preds = %271
  store %struct.server* null, %struct.server** %13, align 8
  br label %486

275:                                              ; preds = %271
  %276 = load i64, i64* %2, align 8
  %277 = icmp eq i64 1, %276
  br i1 %277, label %278, label %281

278:                                              ; preds = %275
  %279 = getelementptr inbounds %struct.server*, %struct.server** %17, i64 0
  %280 = load %struct.server*, %struct.server** %279, align 16
  store %struct.server* %280, %struct.server** %13, align 8
  br label %485

281:                                              ; preds = %275
  store i64 0, i64* %5, align 8
  br label %282

282:                                              ; preds = %336, %281
  %283 = load i64, i64* %5, align 8
  %284 = load i64, i64* %2, align 8
  %285 = sub i64 %284, 1
  %286 = icmp ult i64 %283, %285
  br i1 %286, label %287, label %339

287:                                              ; preds = %282
  %288 = load i64, i64* %5, align 8
  %289 = add i64 %288, 1
  store i64 %289, i64* %6, align 8
  br label %290

290:                                              ; preds = %332, %287
  %291 = load i64, i64* %6, align 8
  %292 = load i64, i64* %2, align 8
  %293 = icmp ult i64 %291, %292
  br i1 %293, label %294, label %335

294:                                              ; preds = %290
  %295 = load i64, i64* %5, align 8
  %296 = getelementptr inbounds %struct.server*, %struct.server** %17, i64 %295
  %297 = load %struct.server*, %struct.server** %296, align 8
  %298 = getelementptr inbounds %struct.server, %struct.server* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = load i64, i64* %6, align 8
  %301 = getelementptr inbounds %struct.server*, %struct.server** %17, i64 %300
  %302 = load %struct.server*, %struct.server** %301, align 8
  %303 = getelementptr inbounds %struct.server, %struct.server* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = icmp slt i64 %299, %304
  br i1 %305, label %306, label %307

306:                                              ; preds = %294
  br label %335

307:                                              ; preds = %294
  %308 = load i64, i64* %5, align 8
  %309 = getelementptr inbounds %struct.server*, %struct.server** %17, i64 %308
  %310 = load %struct.server*, %struct.server** %309, align 8
  %311 = getelementptr inbounds %struct.server, %struct.server* %310, i32 0, i32 1
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* %6, align 8
  %314 = getelementptr inbounds %struct.server*, %struct.server** %17, i64 %313
  %315 = load %struct.server*, %struct.server** %314, align 8
  %316 = getelementptr inbounds %struct.server, %struct.server* %315, i32 0, i32 1
  %317 = load i64, i64* %316, align 8
  %318 = icmp slt i64 %312, %317
  br i1 %318, label %319, label %320

319:                                              ; preds = %307
  br label %332

320:                                              ; preds = %307
  %321 = load i64, i64* %5, align 8
  %322 = getelementptr inbounds %struct.server*, %struct.server** %17, i64 %321
  %323 = load %struct.server*, %struct.server** %322, align 8
  store %struct.server* %323, %struct.server** %1, align 8
  %324 = load i64, i64* %6, align 8
  %325 = getelementptr inbounds %struct.server*, %struct.server** %17, i64 %324
  %326 = load %struct.server*, %struct.server** %325, align 8
  %327 = load i64, i64* %5, align 8
  %328 = getelementptr inbounds %struct.server*, %struct.server** %17, i64 %327
  store %struct.server* %326, %struct.server** %328, align 8
  %329 = load %struct.server*, %struct.server** %1, align 8
  %330 = load i64, i64* %6, align 8
  %331 = getelementptr inbounds %struct.server*, %struct.server** %17, i64 %330
  store %struct.server* %329, %struct.server** %331, align 8
  br label %332

332:                                              ; preds = %320, %319
  %333 = load i64, i64* %6, align 8
  %334 = add i64 %333, 1
  store i64 %334, i64* %6, align 8
  br label %290

335:                                              ; preds = %306, %290
  br label %336

336:                                              ; preds = %335
  %337 = load i64, i64* %5, align 8
  %338 = add i64 %337, 1
  store i64 %338, i64* %5, align 8
  br label %282

339:                                              ; preds = %282
  %340 = load i32, i32* @FP_SECOND, align 4
  %341 = load i64, i64* @NTPDATE_PRECISION, align 8
  %342 = trunc i64 %341 to i32
  %343 = sub nsw i32 0, %342
  %344 = ashr i32 %340, %343
  %345 = load i32, i32* @NTP_MAXSKW, align 4
  %346 = add nsw i32 %344, %345
  store i32 %346, i32* %9, align 4
  br label %347

347:                                              ; preds = %479, %339
  %348 = load i64, i64* %2, align 8
  %349 = icmp ugt i64 %348, 1
  br i1 %349, label %350, label %482

350:                                              ; preds = %347
  store i64 0, i64* %7, align 8
  br label %351

351:                                              ; preds = %409, %350
  %352 = load i64, i64* %7, align 8
  %353 = load i64, i64* %2, align 8
  %354 = icmp ult i64 %352, %353
  br i1 %354, label %355, label %412

355:                                              ; preds = %351
  %356 = load i64, i64* %7, align 8
  %357 = getelementptr inbounds i64, i64* %20, i64 %356
  store i64 0, i64* %357, align 8
  store i64 0, i64* %6, align 8
  br label %358

358:                                              ; preds = %405, %355
  %359 = load i64, i64* %6, align 8
  %360 = load i64, i64* %2, align 8
  %361 = icmp ult i64 %359, %360
  br i1 %361, label %362, label %408

362:                                              ; preds = %358
  %363 = load i64, i64* %6, align 8
  %364 = load i64, i64* %7, align 8
  %365 = icmp eq i64 %363, %364
  br i1 %365, label %366, label %367

366:                                              ; preds = %362
  br label %405

367:                                              ; preds = %362
  %368 = load i64, i64* %6, align 8
  %369 = getelementptr inbounds %struct.server*, %struct.server** %17, i64 %368
  %370 = load %struct.server*, %struct.server** %369, align 8
  %371 = getelementptr inbounds %struct.server, %struct.server* %370, i32 0, i32 5
  %372 = load i32, i32* %371, align 4
  %373 = load i64, i64* %7, align 8
  %374 = getelementptr inbounds %struct.server*, %struct.server** %17, i64 %373
  %375 = load %struct.server*, %struct.server** %374, align 8
  %376 = getelementptr inbounds %struct.server, %struct.server* %375, i32 0, i32 5
  %377 = load i32, i32* %376, align 4
  %378 = sub nsw i32 %372, %377
  store i32 %378, i32* %3, align 4
  %379 = load i32, i32* %3, align 4
  %380 = icmp slt i32 %379, 0
  br i1 %380, label %381, label %384

381:                                              ; preds = %367
  %382 = load i32, i32* %3, align 4
  %383 = sub nsw i32 0, %382
  store i32 %383, i32* %3, align 4
  br label %384

384:                                              ; preds = %381, %367
  store i64 0, i64* %5, align 8
  br label %385

385:                                              ; preds = %395, %384
  %386 = load i64, i64* %5, align 8
  %387 = load i64, i64* %6, align 8
  %388 = icmp ult i64 %386, %387
  br i1 %388, label %389, label %398

389:                                              ; preds = %385
  %390 = load i32, i32* %3, align 4
  %391 = ashr i32 %390, 1
  %392 = load i32, i32* %3, align 4
  %393 = ashr i32 %392, 2
  %394 = add nsw i32 %391, %393
  store i32 %394, i32* %3, align 4
  br label %395

395:                                              ; preds = %389
  %396 = load i64, i64* %5, align 8
  %397 = add i64 %396, 1
  store i64 %397, i64* %5, align 8
  br label %385

398:                                              ; preds = %385
  %399 = load i32, i32* %3, align 4
  %400 = sext i32 %399 to i64
  %401 = load i64, i64* %7, align 8
  %402 = getelementptr inbounds i64, i64* %20, i64 %401
  %403 = load i64, i64* %402, align 8
  %404 = add nsw i64 %403, %400
  store i64 %404, i64* %402, align 8
  br label %405

405:                                              ; preds = %398, %366
  %406 = load i64, i64* %6, align 8
  %407 = add i64 %406, 1
  store i64 %407, i64* %6, align 8
  br label %358

408:                                              ; preds = %358
  br label %409

409:                                              ; preds = %408
  %410 = load i64, i64* %7, align 8
  %411 = add i64 %410, 1
  store i64 %411, i64* %7, align 8
  br label %351

412:                                              ; preds = %351
  store i64 0, i64* %5, align 8
  %413 = getelementptr inbounds %struct.server*, %struct.server** %17, i64 0
  %414 = load %struct.server*, %struct.server** %413, align 16
  %415 = getelementptr inbounds %struct.server, %struct.server* %414, i32 0, i32 6
  %416 = load i32, i32* %415, align 8
  store i32 %416, i32* %8, align 4
  store i64 1, i64* %6, align 8
  br label %417

417:                                              ; preds = %446, %412
  %418 = load i64, i64* %6, align 8
  %419 = load i64, i64* %2, align 8
  %420 = icmp ult i64 %418, %419
  br i1 %420, label %421, label %449

421:                                              ; preds = %417
  %422 = load i64, i64* %6, align 8
  %423 = getelementptr inbounds i64, i64* %20, i64 %422
  %424 = load i64, i64* %423, align 8
  %425 = load i64, i64* %5, align 8
  %426 = getelementptr inbounds i64, i64* %20, i64 %425
  %427 = load i64, i64* %426, align 8
  %428 = icmp sge i64 %424, %427
  br i1 %428, label %429, label %431

429:                                              ; preds = %421
  %430 = load i64, i64* %6, align 8
  store i64 %430, i64* %5, align 8
  br label %431

431:                                              ; preds = %429, %421
  %432 = load i32, i32* %8, align 4
  %433 = load i64, i64* %6, align 8
  %434 = getelementptr inbounds %struct.server*, %struct.server** %17, i64 %433
  %435 = load %struct.server*, %struct.server** %434, align 8
  %436 = getelementptr inbounds %struct.server, %struct.server* %435, i32 0, i32 6
  %437 = load i32, i32* %436, align 8
  %438 = icmp sgt i32 %432, %437
  br i1 %438, label %439, label %445

439:                                              ; preds = %431
  %440 = load i64, i64* %6, align 8
  %441 = getelementptr inbounds %struct.server*, %struct.server** %17, i64 %440
  %442 = load %struct.server*, %struct.server** %441, align 8
  %443 = getelementptr inbounds %struct.server, %struct.server* %442, i32 0, i32 6
  %444 = load i32, i32* %443, align 8
  store i32 %444, i32* %8, align 4
  br label %445

445:                                              ; preds = %439, %431
  br label %446

446:                                              ; preds = %445
  %447 = load i64, i64* %6, align 8
  %448 = add i64 %447, 1
  store i64 %448, i64* %6, align 8
  br label %417

449:                                              ; preds = %417
  %450 = load i64, i64* %5, align 8
  %451 = getelementptr inbounds i64, i64* %20, i64 %450
  %452 = load i64, i64* %451, align 8
  %453 = trunc i64 %452 to i32
  %454 = load i32, i32* %9, align 4
  %455 = load i32, i32* @FP_SECOND, align 4
  %456 = load i32, i32* %8, align 4
  %457 = sub nsw i32 0, %456
  %458 = ashr i32 %455, %457
  %459 = add nsw i32 %454, %458
  %460 = icmp slt i32 %453, %459
  br i1 %460, label %461, label %462

461:                                              ; preds = %449
  br label %482

462:                                              ; preds = %449
  %463 = load i64, i64* %5, align 8
  %464 = add i64 %463, 1
  store i64 %464, i64* %6, align 8
  br label %465

465:                                              ; preds = %476, %462
  %466 = load i64, i64* %6, align 8
  %467 = load i64, i64* %2, align 8
  %468 = icmp ult i64 %466, %467
  br i1 %468, label %469, label %479

469:                                              ; preds = %465
  %470 = load i64, i64* %6, align 8
  %471 = getelementptr inbounds %struct.server*, %struct.server** %17, i64 %470
  %472 = load %struct.server*, %struct.server** %471, align 8
  %473 = load i64, i64* %6, align 8
  %474 = sub i64 %473, 1
  %475 = getelementptr inbounds %struct.server*, %struct.server** %17, i64 %474
  store %struct.server* %472, %struct.server** %475, align 8
  br label %476

476:                                              ; preds = %469
  %477 = load i64, i64* %6, align 8
  %478 = add i64 %477, 1
  store i64 %478, i64* %6, align 8
  br label %465

479:                                              ; preds = %465
  %480 = load i64, i64* %2, align 8
  %481 = add i64 %480, -1
  store i64 %481, i64* %2, align 8
  br label %347

482:                                              ; preds = %461, %347
  %483 = getelementptr inbounds %struct.server*, %struct.server** %17, i64 0
  %484 = load %struct.server*, %struct.server** %483, align 16
  store %struct.server* %484, %struct.server** %13, align 8
  br label %485

485:                                              ; preds = %482, %278
  br label %486

486:                                              ; preds = %485, %274
  %487 = load %struct.server*, %struct.server** %13, align 8
  %488 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %488)
  ret %struct.server* %487
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i8* @ntoa(i32*) #2

declare dso_local i32 @L_ISHIS(%struct.TYPE_3__*, %struct.TYPE_4__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
