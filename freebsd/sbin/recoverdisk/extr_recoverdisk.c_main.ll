; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/recoverdisk/extr_recoverdisk.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/recoverdisk/extr_recoverdisk.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.stat = type { i64, i32 }

@.str = private unnamed_addr constant [9 x i8] c"b:r:w:s:\00", align 1
@optarg = common dso_local global i32 0, align 4
@bigsize = common dso_local global i32 0, align 4
@rworklist = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Cannot allocate enough memory\00", align 1
@wworklist = common dso_local global i32* null, align 8
@optind = common dso_local global i64 0, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Cannot open read descriptor %s\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"fstat failed\00", align 1
@DIOCGSECTORSIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"DIOCGSECTORSIZE failed\00", align 1
@DIOCGSTRIPESIZE = common dso_local global i32 0, align 4
@minsize = common dso_local global i32 0, align 4
@DIOCGMEDIASIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"DIOCGMEDIASIZE failed\00", align 1
@medsize = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"Bigsize = %zu, medsize = %zu, minsize = %zu\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Cannot allocate %zu bytes buffer\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@DEFFILEMODE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"Cannot open write descriptor %s\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Cannot truncate output %s to %jd bytes\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@sighandler = common dso_local global i32 0, align 4
@PRINT_HEADER = common dso_local global i32 0, align 4
@lumps = common dso_local global i32 0, align 4
@lp = common dso_local global %struct.TYPE_5__* null, align 8
@aborting = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"BOGUS i %10jd\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [25 x i8] c"\0AWrite error at %jd/%zu\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"\0A%jd %zu failed (%s)\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [40 x i8] c"read() size too big? Try with -b 131072\00", align 1
@ENXIO = common dso_local global i64 0, align 8
@list = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [12 x i8] c"\0ACompleted\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.stat, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 60, i64* %24, align 8
  br label %25

25:                                               ; preds = %60, %2
  %26 = load i32, i32* %4, align 4
  %27 = load i8**, i8*** %5, align 8
  %28 = call i32 @getopt(i32 %26, i8** %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %6, align 4
  %29 = icmp ne i32 %28, -1
  br i1 %29, label %30, label %61

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  switch i32 %31, label %58 [
    i32 98, label %32
    i32 114, label %36
    i32 115, label %45
    i32 119, label %49
  ]

32:                                               ; preds = %30
  %33 = load i32, i32* @optarg, align 4
  %34 = call i8* @strtoul(i32 %33, i32* null, i32 0)
  %35 = ptrtoint i8* %34 to i32
  store i32 %35, i32* @bigsize, align 4
  br label %60

36:                                               ; preds = %30
  %37 = load i32, i32* @optarg, align 4
  %38 = call i8* @strdup(i32 %37)
  %39 = bitcast i8* %38 to i32*
  store i32* %39, i32** @rworklist, align 8
  %40 = load i32*, i32** @rworklist, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %36
  br label %60

45:                                               ; preds = %30
  %46 = load i32, i32* @optarg, align 4
  %47 = call i8* @strtoul(i32 %46, i32* null, i32 0)
  %48 = ptrtoint i8* %47 to i64
  store i64 %48, i64* %24, align 8
  br label %60

49:                                               ; preds = %30
  %50 = load i32, i32* @optarg, align 4
  %51 = call i8* @strdup(i32 %50)
  %52 = bitcast i8* %51 to i32*
  store i32* %52, i32** @wworklist, align 8
  %53 = load i32*, i32** @wworklist, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %49
  br label %60

58:                                               ; preds = %30
  %59 = call i32 (...) @usage()
  br label %60

60:                                               ; preds = %58, %57, %45, %44, %32
  br label %25

61:                                               ; preds = %25
  %62 = load i64, i64* @optind, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = sub nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %4, align 4
  %67 = load i64, i64* @optind, align 8
  %68 = load i8**, i8*** %5, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 %67
  store i8** %69, i8*** %5, align 8
  %70 = load i32, i32* %4, align 4
  %71 = icmp slt i32 %70, 1
  br i1 %71, label %75, label %72

72:                                               ; preds = %61
  %73 = load i32, i32* %4, align 4
  %74 = icmp sgt i32 %73, 2
  br i1 %74, label %75, label %77

75:                                               ; preds = %72, %61
  %76 = call i32 (...) @usage()
  br label %77

77:                                               ; preds = %75, %72
  %78 = load i8**, i8*** %5, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 0
  %80 = load i8*, i8** %79, align 8
  %81 = load i32, i32* @O_RDONLY, align 4
  %82 = call i32 (i8*, i32, ...) @open(i8* %80, i32 %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %77
  %86 = load i8**, i8*** %5, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %88)
  br label %90

90:                                               ; preds = %85, %77
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @fstat(i32 %91, %struct.stat* %22)
  store i32 %92, i32* %15, align 4
  %93 = load i32, i32* %15, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %90
  %98 = getelementptr inbounds %struct.stat, %struct.stat* %22, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @S_ISBLK(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.stat, %struct.stat* %22, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @S_ISCHR(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %142

107:                                              ; preds = %102, %97
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @DIOCGSECTORSIZE, align 4
  %110 = call i32 @ioctl(i32 %108, i32 %109, i64* %18)
  store i32 %110, i32* %15, align 4
  %111 = load i32, i32* %15, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  %114 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %115

115:                                              ; preds = %113, %107
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @DIOCGSTRIPESIZE, align 4
  %118 = call i32 @ioctl(i32 %116, i32 %117, i64* %19)
  store i32 %118, i32* %15, align 4
  %119 = load i32, i32* %15, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %115
  %122 = load i64, i64* %19, align 8
  %123 = load i64, i64* %18, align 8
  %124 = icmp sgt i64 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = load i64, i64* %19, align 8
  store i64 %126, i64* %18, align 8
  br label %127

127:                                              ; preds = %125, %121, %115
  %128 = load i64, i64* %18, align 8
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* @minsize, align 4
  %130 = load i32, i32* @bigsize, align 4
  %131 = load i64, i64* %18, align 8
  %132 = trunc i64 %131 to i32
  %133 = call i32 @rounddown(i32 %130, i32 %132)
  store i32 %133, i32* @bigsize, align 4
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* @DIOCGMEDIASIZE, align 4
  %136 = call i32 @ioctl(i32 %134, i32 %135, i64* %9)
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* %15, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %127
  %140 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %141

141:                                              ; preds = %139, %127
  br label %145

142:                                              ; preds = %102
  %143 = getelementptr inbounds %struct.stat, %struct.stat* %22, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  store i64 %144, i64* %9, align 8
  br label %145

145:                                              ; preds = %142, %141
  %146 = load i32, i32* @bigsize, align 4
  %147 = load i32, i32* @minsize, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  %150 = load i32, i32* @minsize, align 4
  store i32 %150, i32* @bigsize, align 4
  br label %151

151:                                              ; preds = %149, %145
  store i32 0, i32* %6, align 4
  br label %152

152:                                              ; preds = %159, %151
  %153 = load i32, i32* @bigsize, align 4
  %154 = load i32, i32* %6, align 4
  %155 = ashr i32 %153, %154
  %156 = load i32, i32* @minsize, align 4
  %157 = icmp sgt i32 %155, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %152
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %6, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %6, align 4
  br label %152

162:                                              ; preds = %152
  %163 = load i32, i32* @bigsize, align 4
  %164 = load i32, i32* %6, align 4
  %165 = sdiv i32 %164, 2
  %166 = ashr i32 %163, %165
  store i32 %166, i32* @medsize, align 4
  %167 = load i32, i32* @medsize, align 4
  %168 = load i32, i32* @minsize, align 4
  %169 = call i32 @rounddown(i32 %167, i32 %168)
  store i32 %169, i32* @medsize, align 4
  %170 = load i32, i32* @stderr, align 4
  %171 = load i32, i32* @bigsize, align 4
  %172 = load i32, i32* @medsize, align 4
  %173 = load i32, i32* @minsize, align 4
  %174 = call i32 @fprintf(i32 %170, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %171, i32 %172, i32 %173)
  %175 = load i32, i32* @bigsize, align 4
  %176 = call i32* @malloc(i32 %175)
  store i32* %176, i32** %17, align 8
  %177 = load i32*, i32** %17, align 8
  %178 = icmp eq i32* %177, null
  br i1 %178, label %179, label %182

179:                                              ; preds = %162
  %180 = load i32, i32* @bigsize, align 4
  %181 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %180)
  br label %182

182:                                              ; preds = %179, %162
  %183 = load i32, i32* %4, align 4
  %184 = icmp sgt i32 %183, 1
  br i1 %184, label %185, label %214

185:                                              ; preds = %182
  %186 = load i8**, i8*** %5, align 8
  %187 = getelementptr inbounds i8*, i8** %186, i64 1
  %188 = load i8*, i8** %187, align 8
  %189 = load i32, i32* @O_WRONLY, align 4
  %190 = load i32, i32* @O_CREAT, align 4
  %191 = or i32 %189, %190
  %192 = load i32, i32* @DEFFILEMODE, align 4
  %193 = call i32 (i8*, i32, ...) @open(i8* %188, i32 %191, i32 %192)
  store i32 %193, i32* %8, align 4
  %194 = load i32, i32* %8, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %185
  %197 = load i8**, i8*** %5, align 8
  %198 = getelementptr inbounds i8*, i8** %197, i64 1
  %199 = load i8*, i8** %198, align 8
  %200 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i8* %199)
  br label %201

201:                                              ; preds = %196, %185
  %202 = load i32, i32* %8, align 4
  %203 = load i64, i64* %9, align 8
  %204 = call i64 @ftruncate(i32 %202, i64 %203)
  %205 = icmp slt i64 %204, 0
  br i1 %205, label %206, label %213

206:                                              ; preds = %201
  %207 = load i8**, i8*** %5, align 8
  %208 = getelementptr inbounds i8*, i8** %207, i64 1
  %209 = load i8*, i8** %208, align 8
  %210 = load i64, i64* %9, align 8
  %211 = trunc i64 %210 to i32
  %212 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i8* %209, i32 %211)
  br label %213

213:                                              ; preds = %206, %201
  br label %215

214:                                              ; preds = %182
  store i32 -1, i32* %8, align 4
  br label %215

215:                                              ; preds = %214, %213
  %216 = load i32*, i32** @rworklist, align 8
  %217 = icmp ne i32* %216, null
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = load i64, i64* %9, align 8
  %220 = call i64 @read_worklist(i64 %219)
  store i64 %220, i64* %10, align 8
  br label %224

221:                                              ; preds = %215
  %222 = load i64, i64* %9, align 8
  %223 = call i32 @new_lump(i64 0, i64 %222, i32 0)
  store i64 0, i64* %10, align 8
  br label %224

224:                                              ; preds = %221, %218
  %225 = load i32*, i32** @wworklist, align 8
  %226 = icmp ne i32* %225, null
  br i1 %226, label %227, label %231

227:                                              ; preds = %224
  %228 = load i32, i32* @SIGINT, align 4
  %229 = load i32, i32* @sighandler, align 4
  %230 = call i32 @signal(i32 %228, i32 %229)
  br label %231

231:                                              ; preds = %227, %224
  store i64 0, i64* %20, align 8
  store i32 0, i32* %16, align 4
  store i64 0, i64* %13, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %11, align 8
  %232 = load i32, i32* @PRINT_HEADER, align 4
  store i64 0, i64* %23, align 8
  br label %233

233:                                              ; preds = %417, %231
  %234 = call %struct.TYPE_5__* @TAILQ_FIRST(i32* @lumps)
  store %struct.TYPE_5__* %234, %struct.TYPE_5__** @lp, align 8
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lp, align 8
  %236 = icmp eq %struct.TYPE_5__* %235, null
  br i1 %236, label %237, label %238

237:                                              ; preds = %233
  br label %423

238:                                              ; preds = %233
  br label %239

239:                                              ; preds = %392, %363, %238
  %240 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lp, align 8
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = icmp sgt i64 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %239
  %245 = load i32, i32* @aborting, align 4
  %246 = icmp ne i32 %245, 0
  %247 = xor i1 %246, true
  br label %248

248:                                              ; preds = %244, %239
  %249 = phi i1 [ false, %239 ], [ %247, %244 ]
  br i1 %249, label %250, label %412

250:                                              ; preds = %248
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lp, align 8
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  store i64 %253, i64* %11, align 8
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lp, align 8
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  store i64 %256, i64* %12, align 8
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lp, align 8
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  store i32 %259, i32* %16, align 4
  %260 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lp, align 8
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load i32, i32* @bigsize, align 4
  %264 = sext i32 %263 to i64
  %265 = call i64 @MIN(i64 %262, i64 %264)
  store i64 %265, i64* %13, align 8
  %266 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lp, align 8
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 8
  %269 = icmp eq i32 %268, 1
  br i1 %269, label %270, label %277

270:                                              ; preds = %250
  %271 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lp, align 8
  %272 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = load i32, i32* @medsize, align 4
  %275 = sext i32 %274 to i64
  %276 = call i64 @MIN(i64 %273, i64 %275)
  store i64 %276, i64* %13, align 8
  br label %277

277:                                              ; preds = %270, %250
  %278 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lp, align 8
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 8
  %281 = icmp sgt i32 %280, 1
  br i1 %281, label %282, label %289

282:                                              ; preds = %277
  %283 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lp, align 8
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = load i32, i32* @minsize, align 4
  %287 = sext i32 %286 to i64
  %288 = call i64 @MIN(i64 %285, i64 %287)
  store i64 %288, i64* %13, align 8
  br label %289

289:                                              ; preds = %282, %277
  %290 = call i32 @time(i64* %21)
  %291 = load i64, i64* %20, align 8
  %292 = load i64, i64* %21, align 8
  %293 = icmp ne i64 %291, %292
  br i1 %293, label %301, label %294

294:                                              ; preds = %289
  %295 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lp, align 8
  %296 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = load i32, i32* @bigsize, align 4
  %299 = sext i32 %298 to i64
  %300 = icmp slt i64 %297, %299
  br i1 %300, label %301, label %317

301:                                              ; preds = %294, %289
  %302 = load i64, i64* %11, align 8
  %303 = load i64, i64* %13, align 8
  %304 = load i64, i64* %12, align 8
  %305 = load i32, i32* %16, align 4
  %306 = load i64, i64* %10, align 8
  %307 = load i64, i64* %9, align 8
  %308 = call i32 @PRINT_STATUS(i64 %302, i64 %303, i64 %304, i32 %305, i64 %306, i64 %307)
  %309 = load i64, i64* %21, align 8
  store i64 %309, i64* %20, align 8
  %310 = load i64, i64* %23, align 8
  %311 = add nsw i64 %310, 1
  store i64 %311, i64* %23, align 8
  %312 = load i64, i64* %24, align 8
  %313 = icmp eq i64 %311, %312
  br i1 %313, label %314, label %316

314:                                              ; preds = %301
  %315 = call i32 (...) @save_worklist()
  store i64 0, i64* %23, align 8
  br label %316

316:                                              ; preds = %314, %301
  br label %317

317:                                              ; preds = %316, %294
  %318 = load i64, i64* %13, align 8
  %319 = icmp eq i64 %318, 0
  br i1 %319, label %320, label %324

320:                                              ; preds = %317
  %321 = load i64, i64* %13, align 8
  %322 = trunc i64 %321 to i32
  %323 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %322)
  br label %324

324:                                              ; preds = %320, %317
  %325 = load i32, i32* @stdout, align 4
  %326 = call i32 @fflush(i32 %325)
  %327 = load i32, i32* %7, align 4
  %328 = load i32*, i32** %17, align 8
  %329 = load i64, i64* %13, align 8
  %330 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lp, align 8
  %331 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %330, i32 0, i32 1
  %332 = load i64, i64* %331, align 8
  %333 = call i64 @pread(i32 %327, i32* %328, i64 %329, i64 %332)
  store i64 %333, i64* %14, align 8
  %334 = load i64, i64* %14, align 8
  %335 = load i64, i64* %13, align 8
  %336 = icmp eq i64 %334, %335
  br i1 %336, label %337, label %374

337:                                              ; preds = %324
  %338 = load i64, i64* %13, align 8
  %339 = load i64, i64* %10, align 8
  %340 = add i64 %339, %338
  store i64 %340, i64* %10, align 8
  %341 = load i32, i32* %8, align 4
  %342 = icmp sge i32 %341, 0
  br i1 %342, label %343, label %351

343:                                              ; preds = %337
  %344 = load i32, i32* %8, align 4
  %345 = load i32*, i32** %17, align 8
  %346 = load i64, i64* %13, align 8
  %347 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lp, align 8
  %348 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %347, i32 0, i32 1
  %349 = load i64, i64* %348, align 8
  %350 = call i64 @pwrite(i32 %344, i32* %345, i64 %346, i64 %349)
  store i64 %350, i64* %14, align 8
  br label %353

351:                                              ; preds = %337
  %352 = load i64, i64* %13, align 8
  store i64 %352, i64* %14, align 8
  br label %353

353:                                              ; preds = %351, %343
  %354 = load i64, i64* %14, align 8
  %355 = load i64, i64* %13, align 8
  %356 = icmp ne i64 %354, %355
  br i1 %356, label %357, label %363

357:                                              ; preds = %353
  %358 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lp, align 8
  %359 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %358, i32 0, i32 1
  %360 = load i64, i64* %359, align 8
  %361 = load i64, i64* %13, align 8
  %362 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i64 %360, i64 %361)
  br label %363

363:                                              ; preds = %357, %353
  %364 = load i64, i64* %13, align 8
  %365 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lp, align 8
  %366 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %365, i32 0, i32 1
  %367 = load i64, i64* %366, align 8
  %368 = add i64 %367, %364
  store i64 %368, i64* %366, align 8
  %369 = load i64, i64* %13, align 8
  %370 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lp, align 8
  %371 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %370, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  %373 = sub i64 %372, %369
  store i64 %373, i64* %371, align 8
  br label %239

374:                                              ; preds = %324
  %375 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lp, align 8
  %376 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %375, i32 0, i32 1
  %377 = load i64, i64* %376, align 8
  %378 = load i64, i64* %13, align 8
  %379 = load i64, i64* @errno, align 8
  %380 = call i32 @strerror(i64 %379)
  %381 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i64 %377, i64 %378, i32 %380)
  %382 = load i64, i64* @errno, align 8
  %383 = load i64, i64* @EINVAL, align 8
  %384 = icmp eq i64 %382, %383
  br i1 %384, label %385, label %387

385:                                              ; preds = %374
  %386 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0))
  store i32 1, i32* @aborting, align 4
  br label %387

387:                                              ; preds = %385, %374
  %388 = load i64, i64* @errno, align 8
  %389 = load i64, i64* @ENXIO, align 8
  %390 = icmp eq i64 %388, %389
  br i1 %390, label %391, label %392

391:                                              ; preds = %387
  store i32 1, i32* @aborting, align 4
  br label %392

392:                                              ; preds = %391, %387
  %393 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lp, align 8
  %394 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %393, i32 0, i32 1
  %395 = load i64, i64* %394, align 8
  %396 = load i64, i64* %13, align 8
  %397 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lp, align 8
  %398 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %397, i32 0, i32 2
  %399 = load i32, i32* %398, align 8
  %400 = add nsw i32 %399, 1
  %401 = call i32 @new_lump(i64 %395, i64 %396, i32 %400)
  %402 = load i64, i64* %13, align 8
  %403 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lp, align 8
  %404 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %403, i32 0, i32 1
  %405 = load i64, i64* %404, align 8
  %406 = add i64 %405, %402
  store i64 %406, i64* %404, align 8
  %407 = load i64, i64* %13, align 8
  %408 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lp, align 8
  %409 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %408, i32 0, i32 0
  %410 = load i64, i64* %409, align 8
  %411 = sub i64 %410, %407
  store i64 %411, i64* %409, align 8
  br label %239

412:                                              ; preds = %248
  %413 = load i32, i32* @aborting, align 4
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %417

415:                                              ; preds = %412
  %416 = call i32 (...) @save_worklist()
  store i32 0, i32* %3, align 4
  br label %433

417:                                              ; preds = %412
  %418 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lp, align 8
  %419 = load i32, i32* @list, align 4
  %420 = call i32 @TAILQ_REMOVE(i32* @lumps, %struct.TYPE_5__* %418, i32 %419)
  %421 = load %struct.TYPE_5__*, %struct.TYPE_5__** @lp, align 8
  %422 = call i32 @free(%struct.TYPE_5__* %421)
  br label %233

423:                                              ; preds = %237
  %424 = load i64, i64* %11, align 8
  %425 = load i64, i64* %13, align 8
  %426 = load i64, i64* %12, align 8
  %427 = load i32, i32* %16, align 4
  %428 = load i64, i64* %10, align 8
  %429 = load i64, i64* %9, align 8
  %430 = call i32 @PRINT_STATUS(i64 %424, i64 %425, i64 %426, i32 %427, i64 %428, i64 %429)
  %431 = call i32 (...) @save_worklist()
  %432 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %433

433:                                              ; preds = %423, %415
  %434 = load i32, i32* %3, align 4
  ret i32 %434
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @strtoul(i32, i32*, i32) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @open(i8*, i32, ...) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i32 @ioctl(i32, i32, i64*) #1

declare dso_local i32 @rounddown(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i64 @ftruncate(i32, i64) #1

declare dso_local i64 @read_worklist(i64) #1

declare dso_local i32 @new_lump(i64, i64, i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local %struct.TYPE_5__* @TAILQ_FIRST(i32*) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @time(i64*) #1

declare dso_local i32 @PRINT_STATUS(i64, i64, i64, i32, i64, i64) #1

declare dso_local i32 @save_worklist(...) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i64 @pread(i32, i32*, i64, i64) #1

declare dso_local i64 @pwrite(i32, i32*, i64, i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
