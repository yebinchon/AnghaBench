; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.sched.c_dosched.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.sched.c_dosched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_event = type { i64, i32, %struct.sched_event* }
%struct.command = type { i32 }
%struct.tm = type { i32, i32, i8* }

@STRsched = common dso_local global i32 0, align 4
@STRNULL = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"%h\09%T\09%R\0A\00", align 1
@sched_ptr = common dso_local global %struct.sched_event* null, align 8
@FMT_SCHED = common dso_local global i32 0, align 4
@ERR_NOSCHED = common dso_local global i32 0, align 4
@ERR_SCHEDUSAGE = common dso_local global i32 0, align 4
@ERR_SCHEDEV = common dso_local global i32 0, align 4
@ERR_SCHEDCOM = common dso_local global i32 0, align 4
@ERR_SCHEDTIME = common dso_local global i32 0, align 4
@ERR_SCHEDREL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dosched(i8** %0, %struct.command* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.command*, align 8
  %5 = alloca %struct.sched_event*, align 8
  %6 = alloca %struct.sched_event**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.tm*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  store %struct.command* %1, %struct.command** %4, align 8
  %19 = load %struct.command*, %struct.command** %4, align 8
  %20 = call i32 @USE(%struct.command* %19)
  %21 = load i8**, i8*** %3, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i32 1
  store i8** %22, i8*** %3, align 8
  %23 = load i8**, i8*** %3, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i32 1
  store i8** %24, i8*** %3, align 8
  %25 = load i8*, i8** %23, align 8
  store i8* %25, i8** %13, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %80

28:                                               ; preds = %2
  %29 = load i32, i32* @STRsched, align 4
  %30 = call i8* @varval(i32 %29)
  store i8* %30, i8** %16, align 8
  %31 = load i8*, i8** @STRNULL, align 8
  %32 = icmp eq i8* %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i8* @str2short(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %34, i8** %16, align 8
  br label %35

35:                                               ; preds = %33, %28
  store i32 1, i32* %8, align 4
  %36 = load %struct.sched_event*, %struct.sched_event** @sched_ptr, align 8
  store %struct.sched_event* %36, %struct.sched_event** %5, align 8
  br label %37

37:                                               ; preds = %73, %35
  %38 = load %struct.sched_event*, %struct.sched_event** %5, align 8
  %39 = icmp ne %struct.sched_event* %38, null
  br i1 %39, label %40, label %79

40:                                               ; preds = %37
  %41 = load %struct.sched_event*, %struct.sched_event** %5, align 8
  %42 = getelementptr inbounds %struct.sched_event, %struct.sched_event* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i8* @blkexpand(i32 %43)
  store i8* %44, i8** %17, align 8
  %45 = load i8*, i8** %17, align 8
  %46 = call i32 @cleanup_push(i8* %45, i32 (%struct.sched_event*)* @xfree)
  %47 = load i32, i32* @FMT_SCHED, align 4
  %48 = load i8*, i8** %16, align 8
  %49 = load i8*, i8** %17, align 8
  %50 = call i32 @short2str(i8* %49)
  %51 = load %struct.sched_event*, %struct.sched_event** %5, align 8
  %52 = getelementptr inbounds %struct.sched_event, %struct.sched_event* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i8* @tprintf(i32 %47, i8* %48, i32 %50, i64 %53, i32* %8)
  store i8* %54, i8** %18, align 8
  %55 = load i8*, i8** %17, align 8
  %56 = call i32 @cleanup_until(i8* %55)
  %57 = load i8*, i8** %18, align 8
  %58 = call i32 @cleanup_push(i8* %57, i32 (%struct.sched_event*)* @xfree)
  %59 = load i8*, i8** %18, align 8
  store i8* %59, i8** %13, align 8
  br label %60

60:                                               ; preds = %64, %40
  %61 = load i8*, i8** %13, align 8
  %62 = load i8, i8* %61, align 1
  %63 = icmp ne i8 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load i8*, i8** %13, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %13, align 8
  %67 = load i8, i8* %65, align 1
  %68 = sext i8 %67 to i32
  %69 = call i32 @xputwchar(i32 %68)
  br label %60

70:                                               ; preds = %60
  %71 = load i8*, i8** %18, align 8
  %72 = call i32 @cleanup_until(i8* %71)
  br label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  %76 = load %struct.sched_event*, %struct.sched_event** %5, align 8
  %77 = getelementptr inbounds %struct.sched_event, %struct.sched_event* %76, i32 0, i32 2
  %78 = load %struct.sched_event*, %struct.sched_event** %77, align 8
  store %struct.sched_event* %78, %struct.sched_event** %5, align 8
  br label %37

79:                                               ; preds = %37
  br label %352

80:                                               ; preds = %2
  %81 = load i8*, i8** %13, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 45
  br i1 %84, label %85, label %144

85:                                               ; preds = %80
  %86 = load %struct.sched_event*, %struct.sched_event** @sched_ptr, align 8
  %87 = icmp ne %struct.sched_event* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* @ERR_NOSCHED, align 4
  %90 = call i32 @stderror(i32 %89)
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i8**, i8*** %3, align 8
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i32, i32* @ERR_SCHEDUSAGE, align 4
  %97 = call i32 @stderror(i32 %96)
  br label %98

98:                                               ; preds = %95, %91
  %99 = load i8*, i8** %13, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %13, align 8
  %101 = call i32 @short2str(i8* %100)
  %102 = call i32 @atoi(i32 %101)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp sle i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = load i32, i32* @ERR_SCHEDUSAGE, align 4
  %107 = call i32 @stderror(i32 %106)
  br label %108

108:                                              ; preds = %105, %98
  store %struct.sched_event** @sched_ptr, %struct.sched_event*** %6, align 8
  %109 = load %struct.sched_event*, %struct.sched_event** @sched_ptr, align 8
  store %struct.sched_event* %109, %struct.sched_event** %5, align 8
  br label %110

110:                                              ; preds = %126, %108
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %127

114:                                              ; preds = %110
  %115 = load %struct.sched_event*, %struct.sched_event** %5, align 8
  %116 = getelementptr inbounds %struct.sched_event, %struct.sched_event* %115, i32 0, i32 2
  %117 = load %struct.sched_event*, %struct.sched_event** %116, align 8
  %118 = icmp eq %struct.sched_event* %117, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  br label %127

120:                                              ; preds = %114
  %121 = load %struct.sched_event*, %struct.sched_event** %5, align 8
  %122 = getelementptr inbounds %struct.sched_event, %struct.sched_event* %121, i32 0, i32 2
  store %struct.sched_event** %122, %struct.sched_event*** %6, align 8
  %123 = load %struct.sched_event*, %struct.sched_event** %5, align 8
  %124 = getelementptr inbounds %struct.sched_event, %struct.sched_event* %123, i32 0, i32 2
  %125 = load %struct.sched_event*, %struct.sched_event** %124, align 8
  store %struct.sched_event* %125, %struct.sched_event** %5, align 8
  br label %126

126:                                              ; preds = %120
  br label %110

127:                                              ; preds = %119, %110
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i32, i32* @ERR_SCHEDEV, align 4
  %132 = call i32 @stderror(i32 %131)
  br label %133

133:                                              ; preds = %130, %127
  %134 = load %struct.sched_event*, %struct.sched_event** %5, align 8
  %135 = getelementptr inbounds %struct.sched_event, %struct.sched_event* %134, i32 0, i32 2
  %136 = load %struct.sched_event*, %struct.sched_event** %135, align 8
  %137 = load %struct.sched_event**, %struct.sched_event*** %6, align 8
  store %struct.sched_event* %136, %struct.sched_event** %137, align 8
  %138 = load %struct.sched_event*, %struct.sched_event** %5, align 8
  %139 = getelementptr inbounds %struct.sched_event, %struct.sched_event* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @blkfree(i32 %140)
  %142 = load %struct.sched_event*, %struct.sched_event** %5, align 8
  %143 = call i32 @xfree(%struct.sched_event* %142)
  br label %352

144:                                              ; preds = %80
  %145 = load i8**, i8*** %3, align 8
  %146 = load i8*, i8** %145, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %151, label %148

148:                                              ; preds = %144
  %149 = load i32, i32* @ERR_SCHEDCOM, align 4
  %150 = call i32 @stderror(i32 %149)
  br label %151

151:                                              ; preds = %148, %144
  store i32 0, i32* %14, align 4
  %152 = load i8*, i8** %13, align 8
  %153 = load i8, i8* %152, align 1
  %154 = call i32 @Isdigit(i8 signext %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %169, label %156

156:                                              ; preds = %151
  %157 = load i8*, i8** %13, align 8
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp ne i32 %159, 43
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load i32, i32* @ERR_SCHEDUSAGE, align 4
  %163 = call i32 @stderror(i32 %162)
  br label %164

164:                                              ; preds = %161, %156
  %165 = load i8*, i8** %13, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %13, align 8
  %167 = load i32, i32* %14, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %14, align 4
  br label %169

169:                                              ; preds = %164, %151
  store i32 0, i32* %10, align 4
  %170 = load i8*, i8** %13, align 8
  %171 = call i32 @short2str(i8* %170)
  %172 = call i32 @atoi(i32 %171)
  store i32 %172, i32* %9, align 4
  br label %173

173:                                              ; preds = %195, %169
  %174 = load i8*, i8** %13, align 8
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %193

178:                                              ; preds = %173
  %179 = load i8*, i8** %13, align 8
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp ne i32 %181, 58
  br i1 %182, label %183, label %193

183:                                              ; preds = %178
  %184 = load i8*, i8** %13, align 8
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp ne i32 %186, 97
  br i1 %187, label %188, label %193

188:                                              ; preds = %183
  %189 = load i8*, i8** %13, align 8
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = icmp ne i32 %191, 112
  br label %193

193:                                              ; preds = %188, %183, %178, %173
  %194 = phi i1 [ false, %183 ], [ false, %178 ], [ false, %173 ], [ %192, %188 ]
  br i1 %194, label %195, label %198

195:                                              ; preds = %193
  %196 = load i8*, i8** %13, align 8
  %197 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %197, i8** %13, align 8
  br label %173

198:                                              ; preds = %193
  %199 = load i8*, i8** %13, align 8
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %213

203:                                              ; preds = %198
  %204 = load i8*, i8** %13, align 8
  %205 = load i8, i8* %204, align 1
  %206 = sext i8 %205 to i32
  %207 = icmp eq i32 %206, 58
  br i1 %207, label %208, label %213

208:                                              ; preds = %203
  %209 = load i8*, i8** %13, align 8
  %210 = getelementptr inbounds i8, i8* %209, i32 1
  store i8* %210, i8** %13, align 8
  %211 = call i32 @short2str(i8* %210)
  %212 = call i32 @atoi(i32 %211)
  store i32 %212, i32* %10, align 4
  br label %213

213:                                              ; preds = %208, %203, %198
  %214 = load i32, i32* %9, align 4
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %225, label %216

216:                                              ; preds = %213
  %217 = load i32, i32* %10, align 4
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %225, label %219

219:                                              ; preds = %216
  %220 = load i32, i32* %9, align 4
  %221 = icmp sgt i32 %220, 23
  br i1 %221, label %225, label %222

222:                                              ; preds = %219
  %223 = load i32, i32* %10, align 4
  %224 = icmp sgt i32 %223, 59
  br i1 %224, label %225, label %228

225:                                              ; preds = %222, %219, %216, %213
  %226 = load i32, i32* @ERR_SCHEDTIME, align 4
  %227 = call i32 @stderror(i32 %226)
  br label %228

228:                                              ; preds = %225, %222
  br label %229

229:                                              ; preds = %246, %228
  %230 = load i8*, i8** %13, align 8
  %231 = load i8, i8* %230, align 1
  %232 = sext i8 %231 to i32
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %244

234:                                              ; preds = %229
  %235 = load i8*, i8** %13, align 8
  %236 = load i8, i8* %235, align 1
  %237 = sext i8 %236 to i32
  %238 = icmp ne i32 %237, 112
  br i1 %238, label %239, label %244

239:                                              ; preds = %234
  %240 = load i8*, i8** %13, align 8
  %241 = load i8, i8* %240, align 1
  %242 = sext i8 %241 to i32
  %243 = icmp ne i32 %242, 97
  br label %244

244:                                              ; preds = %239, %234, %229
  %245 = phi i1 [ false, %234 ], [ false, %229 ], [ %243, %239 ]
  br i1 %245, label %246, label %249

246:                                              ; preds = %244
  %247 = load i8*, i8** %13, align 8
  %248 = getelementptr inbounds i8, i8* %247, i32 1
  store i8* %248, i8** %13, align 8
  br label %229

249:                                              ; preds = %244
  %250 = load i8*, i8** %13, align 8
  %251 = load i8, i8* %250, align 1
  %252 = sext i8 %251 to i32
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %260

254:                                              ; preds = %249
  %255 = load i32, i32* %14, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %254
  %258 = load i32, i32* @ERR_SCHEDREL, align 4
  %259 = call i32 @stderror(i32 %258)
  br label %260

260:                                              ; preds = %257, %254, %249
  %261 = load i8*, i8** %13, align 8
  %262 = load i8, i8* %261, align 1
  %263 = sext i8 %262 to i32
  %264 = icmp eq i32 %263, 112
  br i1 %264, label %265, label %268

265:                                              ; preds = %260
  %266 = load i32, i32* %9, align 4
  %267 = add nsw i32 %266, 12
  store i32 %267, i32* %9, align 4
  br label %268

268:                                              ; preds = %265, %260
  %269 = call i32 @time(i8** %7)
  %270 = call %struct.tm* @localtime(i8** %7)
  store %struct.tm* %270, %struct.tm** %15, align 8
  %271 = load i32, i32* %14, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %268
  %274 = load i32, i32* %9, align 4
  store i32 %274, i32* %11, align 4
  %275 = load i32, i32* %10, align 4
  store i32 %275, i32* %12, align 4
  br label %302

276:                                              ; preds = %268
  %277 = load i32, i32* %9, align 4
  %278 = load %struct.tm*, %struct.tm** %15, align 8
  %279 = getelementptr inbounds %struct.tm, %struct.tm* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = sub nsw i32 %277, %280
  store i32 %281, i32* %11, align 4
  %282 = icmp slt i32 %281, 0
  br i1 %282, label %283, label %286

283:                                              ; preds = %276
  %284 = load i32, i32* %11, align 4
  %285 = add nsw i32 %284, 24
  store i32 %285, i32* %11, align 4
  br label %286

286:                                              ; preds = %283, %276
  %287 = load i32, i32* %10, align 4
  %288 = load %struct.tm*, %struct.tm** %15, align 8
  %289 = getelementptr inbounds %struct.tm, %struct.tm* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = sub nsw i32 %287, %290
  store i32 %291, i32* %12, align 4
  %292 = icmp slt i32 %291, 0
  br i1 %292, label %293, label %301

293:                                              ; preds = %286
  %294 = load i32, i32* %12, align 4
  %295 = add nsw i32 %294, 60
  store i32 %295, i32* %12, align 4
  %296 = load i32, i32* %11, align 4
  %297 = add nsw i32 %296, -1
  store i32 %297, i32* %11, align 4
  %298 = icmp slt i32 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %293
  store i32 23, i32* %11, align 4
  br label %300

300:                                              ; preds = %299, %293
  br label %301

301:                                              ; preds = %300, %286
  br label %302

302:                                              ; preds = %301, %273
  %303 = call %struct.sched_event* @xcalloc(i32 1, i32 24)
  store %struct.sched_event* %303, %struct.sched_event** %5, align 8
  %304 = load i8*, i8** %7, align 8
  %305 = load %struct.tm*, %struct.tm** %15, align 8
  %306 = getelementptr inbounds %struct.tm, %struct.tm* %305, i32 0, i32 2
  %307 = load i8*, i8** %306, align 8
  %308 = ptrtoint i8* %304 to i64
  %309 = ptrtoint i8* %307 to i64
  %310 = sub i64 %308, %309
  %311 = load i32, i32* %11, align 4
  %312 = sext i32 %311 to i64
  %313 = mul nsw i64 %312, 3600
  %314 = add nsw i64 %310, %313
  %315 = load i32, i32* %12, align 4
  %316 = sext i32 %315 to i64
  %317 = mul nsw i64 %316, 60
  %318 = add nsw i64 %314, %317
  %319 = load %struct.sched_event*, %struct.sched_event** %5, align 8
  %320 = getelementptr inbounds %struct.sched_event, %struct.sched_event* %319, i32 0, i32 0
  store i64 %318, i64* %320, align 8
  store %struct.sched_event** @sched_ptr, %struct.sched_event*** %6, align 8
  br label %321

321:                                              ; preds = %337, %302
  %322 = load %struct.sched_event**, %struct.sched_event*** %6, align 8
  %323 = load %struct.sched_event*, %struct.sched_event** %322, align 8
  %324 = icmp ne %struct.sched_event* %323, null
  br i1 %324, label %325, label %334

325:                                              ; preds = %321
  %326 = load %struct.sched_event*, %struct.sched_event** %5, align 8
  %327 = getelementptr inbounds %struct.sched_event, %struct.sched_event* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = load %struct.sched_event**, %struct.sched_event*** %6, align 8
  %330 = load %struct.sched_event*, %struct.sched_event** %329, align 8
  %331 = getelementptr inbounds %struct.sched_event, %struct.sched_event* %330, i32 0, i32 0
  %332 = load i64, i64* %331, align 8
  %333 = icmp sge i64 %328, %332
  br label %334

334:                                              ; preds = %325, %321
  %335 = phi i1 [ false, %321 ], [ %333, %325 ]
  br i1 %335, label %336, label %341

336:                                              ; preds = %334
  br label %337

337:                                              ; preds = %336
  %338 = load %struct.sched_event**, %struct.sched_event*** %6, align 8
  %339 = load %struct.sched_event*, %struct.sched_event** %338, align 8
  %340 = getelementptr inbounds %struct.sched_event, %struct.sched_event* %339, i32 0, i32 2
  store %struct.sched_event** %340, %struct.sched_event*** %6, align 8
  br label %321

341:                                              ; preds = %334
  %342 = load %struct.sched_event**, %struct.sched_event*** %6, align 8
  %343 = load %struct.sched_event*, %struct.sched_event** %342, align 8
  %344 = load %struct.sched_event*, %struct.sched_event** %5, align 8
  %345 = getelementptr inbounds %struct.sched_event, %struct.sched_event* %344, i32 0, i32 2
  store %struct.sched_event* %343, %struct.sched_event** %345, align 8
  %346 = load %struct.sched_event*, %struct.sched_event** %5, align 8
  %347 = load %struct.sched_event**, %struct.sched_event*** %6, align 8
  store %struct.sched_event* %346, %struct.sched_event** %347, align 8
  %348 = load i8**, i8*** %3, align 8
  %349 = call i32 @saveblk(i8** %348)
  %350 = load %struct.sched_event*, %struct.sched_event** %5, align 8
  %351 = getelementptr inbounds %struct.sched_event, %struct.sched_event* %350, i32 0, i32 1
  store i32 %349, i32* %351, align 8
  br label %352

352:                                              ; preds = %341, %133, %79
  ret void
}

declare dso_local i32 @USE(%struct.command*) #1

declare dso_local i8* @varval(i32) #1

declare dso_local i8* @str2short(i8*) #1

declare dso_local i8* @blkexpand(i32) #1

declare dso_local i32 @cleanup_push(i8*, i32 (%struct.sched_event*)*) #1

declare dso_local i32 @xfree(%struct.sched_event*) #1

declare dso_local i8* @tprintf(i32, i8*, i32, i64, i32*) #1

declare dso_local i32 @short2str(i8*) #1

declare dso_local i32 @cleanup_until(i8*) #1

declare dso_local i32 @xputwchar(i32) #1

declare dso_local i32 @stderror(i32) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @blkfree(i32) #1

declare dso_local i32 @Isdigit(i8 signext) #1

declare dso_local i32 @time(i8**) #1

declare dso_local %struct.tm* @localtime(i8**) #1

declare dso_local %struct.sched_event* @xcalloc(i32, i32) #1

declare dso_local i32 @saveblk(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
