; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_tape.c_getfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_tape.c_getfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64, i64, i32, i64* }
%struct.TYPE_6__ = type { i32 }

@MAXBSIZE = common dso_local global i32 0, align 4
@TP_BSIZE = common dso_local global i32 0, align 4
@spcl = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@TS_END = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"ran off end of tape\0A\00", align 1
@FS_UFS2_MAGIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"not at beginning of a file\0A\00", align 1
@gettingfile = common dso_local global i64 0, align 8
@restart = common dso_local global i32 0, align 4
@readmapflag = common dso_local global i64 0, align 8
@TP_NINDIR = common dso_local global i32 0, align 4
@Dflag = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"spcl.c_count = %jd\0A\00", align 1
@fssize = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"skipping %d junk block(s)\0A\00", align 1
@GOOD = common dso_local global i64 0, align 8
@TS_ADDR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [53 x i8] c"Missing address (header) block for %s at %ld blocks\0A\00", align 1
@curfile = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@blksread = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"getfile: lost data\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @getfile(void (i8*, i64)* %0, void (i8*, i64)* %1, void (i8*, i64)* %2) #0 {
  %4 = alloca void (i8*, i64)*, align 8
  %5 = alloca void (i8*, i64)*, align 8
  %6 = alloca void (i8*, i64)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca void (i8*, i64)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store void (i8*, i64)* %0, void (i8*, i64)** %4, align 8
  store void (i8*, i64)* %1, void (i8*, i64)** %5, align 8
  store void (i8*, i64)* %2, void (i8*, i64)** %6, align 8
  %18 = load i32, i32* @MAXBSIZE, align 4
  %19 = load i32, i32* @TP_BSIZE, align 4
  %20 = sdiv i32 %18, %19
  %21 = zext i32 %20 to i64
  %22 = load i32, i32* @TP_BSIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %13, align 8
  %25 = mul nuw i64 %21, %23
  %26 = alloca i8, i64 %25, align 16
  store i64 %21, i64* %14, align 8
  store i64 %23, i64* %15, align 8
  %27 = load i32, i32* @TP_BSIZE, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %16, align 8
  store i32 0, i32* %10, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 0), align 8
  store volatile i32 %30, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 1), align 4
  store i32 %31, i32* %11, align 4
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 2), align 8
  %33 = load i64, i64* @TS_END, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %3
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 3), align 8
  %39 = load i64, i64* @FS_UFS2_MAGIC, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %37
  %44 = load i64, i64* @gettingfile, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* @restart, align 4
  %48 = call i64 @setjmp(i32 %47) #4
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 1, i32* %17, align 4
  br label %271

51:                                               ; preds = %46, %43
  %52 = load i64, i64* @gettingfile, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* @gettingfile, align 8
  %54 = load void (i8*, i64)*, void (i8*, i64)** %4, align 8
  store void (i8*, i64)* %54, void (i8*, i64)** %12, align 8
  %55 = load volatile i32, i32* %8, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load i32, i32* %11, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load void (i8*, i64)*, void (i8*, i64)** %5, align 8
  store void (i8*, i64)* %61, void (i8*, i64)** %12, align 8
  %62 = load i32, i32* %11, align 4
  store volatile i32 %62, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %63

63:                                               ; preds = %60, %57, %51
  br label %64

64:                                               ; preds = %258, %63
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %244, %64
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 4), align 8
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %247

69:                                               ; preds = %65
  %70 = load i64, i64* @readmapflag, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %87, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @TP_NINDIR, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %72
  %77 = load i64, i64* @Dflag, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32, i32* @stderr, align 4
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 4), align 8
  %82 = call i32 @fprintf(i32 %80, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  br label %247

83:                                               ; preds = %76
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 4), align 8
  %85 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %83
  br label %87

87:                                               ; preds = %86, %72, %69
  %88 = load i64, i64* @readmapflag, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %87
  %91 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 5), align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %130

97:                                               ; preds = %90, %87
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %10, align 4
  %100 = sext i32 %98 to i64
  %101 = mul nsw i64 %100, %23
  %102 = getelementptr inbounds i8, i8* %26, i64 %101
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  %104 = call i32 @readtape(i8* %103)
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* @fssize, align 4
  %107 = load i32, i32* @TP_BSIZE, align 4
  %108 = sdiv i32 %106, %107
  %109 = icmp eq i32 %105, %108
  br i1 %109, label %110, label %129

110:                                              ; preds = %97
  %111 = load void (i8*, i64)*, void (i8*, i64)** %6, align 8
  %112 = call i32 @skiphole(void (i8*, i64)* %111, i64* %9)
  %113 = load void (i8*, i64)*, void (i8*, i64)** %12, align 8
  %114 = load volatile i32, i32* %8, align 4
  %115 = load i32, i32* @TP_BSIZE, align 4
  %116 = icmp sgt i32 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %110
  %118 = load i32, i32* @fssize, align 4
  br label %126

119:                                              ; preds = %110
  %120 = load i32, i32* %10, align 4
  %121 = sub nsw i32 %120, 1
  %122 = load i32, i32* @TP_BSIZE, align 4
  %123 = mul nsw i32 %121, %122
  %124 = load volatile i32, i32* %8, align 4
  %125 = add nsw i32 %123, %124
  br label %126

126:                                              ; preds = %119, %117
  %127 = phi i32 [ %118, %117 ], [ %125, %119 ]
  %128 = sext i32 %127 to i64
  call void %113(i8* %26, i64 %128)
  store i32 0, i32* %10, align 4
  br label %129

129:                                              ; preds = %126, %97
  br label %160

130:                                              ; preds = %90
  %131 = load i32, i32* %10, align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %154

133:                                              ; preds = %130
  %134 = load void (i8*, i64)*, void (i8*, i64)** %6, align 8
  %135 = call i32 @skiphole(void (i8*, i64)* %134, i64* %9)
  %136 = load void (i8*, i64)*, void (i8*, i64)** %12, align 8
  %137 = load volatile i32, i32* %8, align 4
  %138 = load i32, i32* @TP_BSIZE, align 4
  %139 = icmp sgt i32 %137, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %133
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* @TP_BSIZE, align 4
  %143 = mul nsw i32 %141, %142
  br label %151

144:                                              ; preds = %133
  %145 = load i32, i32* %10, align 4
  %146 = sub nsw i32 %145, 1
  %147 = load i32, i32* @TP_BSIZE, align 4
  %148 = mul nsw i32 %146, %147
  %149 = load volatile i32, i32* %8, align 4
  %150 = add nsw i32 %148, %149
  br label %151

151:                                              ; preds = %144, %140
  %152 = phi i32 [ %143, %140 ], [ %150, %144 ]
  %153 = sext i32 %152 to i64
  call void %136(i8* %26, i64 %153)
  store i32 0, i32* %10, align 4
  br label %154

154:                                              ; preds = %151, %130
  %155 = load i32, i32* @TP_BSIZE, align 4
  %156 = load volatile i32, i32* %8, align 4
  %157 = call i64 @MIN(i32 %155, i32 %156)
  %158 = load i64, i64* %9, align 8
  %159 = add i64 %158, %157
  store i64 %159, i64* %9, align 8
  br label %160

160:                                              ; preds = %154, %129
  %161 = load i32, i32* @TP_BSIZE, align 4
  %162 = load volatile i32, i32* %8, align 4
  %163 = sub nsw i32 %162, %161
  store volatile i32 %163, i32* %8, align 4
  %164 = icmp sle i32 %163, 0
  br i1 %164, label %165, label %243

165:                                              ; preds = %160
  %166 = load volatile i32, i32* %8, align 4
  %167 = load i32, i32* @TP_BSIZE, align 4
  %168 = sub nsw i32 0, %167
  %169 = icmp sgt i32 %166, %168
  br i1 %169, label %170, label %183

170:                                              ; preds = %165
  %171 = load i32, i32* %10, align 4
  %172 = icmp sgt i32 %171, 0
  br i1 %172, label %173, label %183

173:                                              ; preds = %170
  %174 = load void (i8*, i64)*, void (i8*, i64)** %6, align 8
  %175 = call i32 @skiphole(void (i8*, i64)* %174, i64* %9)
  %176 = load void (i8*, i64)*, void (i8*, i64)** %12, align 8
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* @TP_BSIZE, align 4
  %179 = mul nsw i32 %177, %178
  %180 = load volatile i32, i32* %8, align 4
  %181 = add nsw i32 %179, %180
  %182 = sext i32 %181 to i64
  call void %176(i8* %26, i64 %182)
  store i32 0, i32* %10, align 4
  br label %183

183:                                              ; preds = %173, %170, %165
  %184 = load i32, i32* %11, align 4
  %185 = icmp sgt i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = load void (i8*, i64)*, void (i8*, i64)** %5, align 8
  store void (i8*, i64)* %187, void (i8*, i64)** %12, align 8
  %188 = load i32, i32* %11, align 4
  store volatile i32 %188, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %244

189:                                              ; preds = %183
  %190 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 4), align 8
  %191 = load i32, i32* %7, align 4
  %192 = sub nsw i32 %190, %191
  %193 = icmp sgt i32 %192, 1
  br i1 %193, label %194, label %201

194:                                              ; preds = %189
  %195 = load i32, i32* @stdout, align 4
  %196 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 4), align 8
  %197 = load i32, i32* %7, align 4
  %198 = sub nsw i32 %196, %197
  %199 = sub nsw i32 %198, 1
  %200 = call i32 (i32, i8*, i32, ...) @dprintf(i32 %195, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %199)
  br label %201

201:                                              ; preds = %194, %189
  %202 = load i32, i32* %7, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %7, align 4
  br label %204

204:                                              ; preds = %239, %201
  %205 = load i32, i32* %7, align 4
  %206 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 4), align 8
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %242

208:                                              ; preds = %204
  %209 = load i64, i64* @readmapflag, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %226, label %211

211:                                              ; preds = %208
  %212 = load i32, i32* %7, align 4
  %213 = load i32, i32* @TP_NINDIR, align 4
  %214 = icmp sgt i32 %212, %213
  br i1 %214, label %215, label %226

215:                                              ; preds = %211
  %216 = load i64, i64* @Dflag, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %215
  %219 = load i32, i32* @stderr, align 4
  %220 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 4), align 8
  %221 = call i32 @fprintf(i32 %219, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %220)
  br label %242

222:                                              ; preds = %215
  %223 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 4), align 8
  %224 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %223)
  br label %225

225:                                              ; preds = %222
  br label %226

226:                                              ; preds = %225, %211, %208
  %227 = load i64, i64* @readmapflag, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %236, label %229

229:                                              ; preds = %226
  %230 = load i64*, i64** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 5), align 8
  %231 = load i32, i32* %7, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i64, i64* %230, i64 %232
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %229, %226
  %237 = call i32 @readtape(i8* %29)
  br label %238

238:                                              ; preds = %236, %229
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %7, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %7, align 4
  br label %204

242:                                              ; preds = %218, %204
  br label %247

243:                                              ; preds = %160
  br label %244

244:                                              ; preds = %243, %186
  %245 = load i32, i32* %7, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %7, align 4
  br label %65

247:                                              ; preds = %242, %79, %65
  %248 = call i64 @gethead(%struct.TYPE_5__* @spcl)
  %249 = load i64, i64* @GOOD, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %264

251:                                              ; preds = %247
  %252 = load volatile i32, i32* %8, align 4
  %253 = icmp sgt i32 %252, 0
  br i1 %253, label %254, label %264

254:                                              ; preds = %251
  %255 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @spcl, i32 0, i32 2), align 8
  %256 = load i64, i64* @TS_ADDR, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %254
  br label %64

259:                                              ; preds = %254
  %260 = load i32, i32* @stdout, align 4
  %261 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @curfile, i32 0, i32 0), align 4
  %262 = load i32, i32* @blksread, align 4
  %263 = call i32 (i32, i8*, i32, ...) @dprintf(i32 %260, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %261, i32 %262)
  br label %264

264:                                              ; preds = %259, %251, %247
  %265 = load i32, i32* %10, align 4
  %266 = icmp sgt i32 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %264
  %268 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %269

269:                                              ; preds = %267, %264
  %270 = call i32 @findinode(%struct.TYPE_5__* @spcl)
  store i64 0, i64* @gettingfile, align 8
  store i32 0, i32* %17, align 4
  br label %271

271:                                              ; preds = %269, %50
  %272 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %272)
  %273 = load i32, i32* %17, align 4
  switch i32 %273, label %275 [
    i32 0, label %274
    i32 1, label %274
  ]

274:                                              ; preds = %271, %271
  ret void

275:                                              ; preds = %271
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @panic(i8*, ...) #2

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #3

declare dso_local i32 @fprintf(i32, i8*, i32) #2

declare dso_local i32 @readtape(i8*) #2

declare dso_local i32 @skiphole(void (i8*, i64)*, i64*) #2

declare dso_local i64 @MIN(i32, i32) #2

declare dso_local i32 @dprintf(i32, i8*, i32, ...) #2

declare dso_local i64 @gethead(%struct.TYPE_5__*) #2

declare dso_local i32 @findinode(%struct.TYPE_5__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
