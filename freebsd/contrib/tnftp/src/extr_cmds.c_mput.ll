; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_mput.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_mput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i8** }

@.str = private unnamed_addr constant [12 x i8] c"local-files\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"usage: %s local-files\0A\00", align 1
@code = common dso_local global i32 0, align 4
@mflag = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@mintr = common dso_local global i32 0, align 4
@jabort = common dso_local global i32 0, align 4
@proxy = common dso_local global i64 0, align 8
@connected = common dso_local global i64 0, align 8
@MAXPATHLEN = common dso_local global i32 0, align 4
@mcase = common dso_local global i32 0, align 4
@ntflag = common dso_local global i32 0, align 4
@mapflag = common dso_local global i32 0, align 4
@sunique = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"STOU\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"STOR\00", align 1
@interactive = common dso_local global i32 0, align 4
@fromatty = common dso_local global i64 0, align 8
@doglob = common dso_local global i32 0, align 4
@GLOB_BRACE = common dso_local global i32 0, align 4
@GLOB_NOCHECK = common dso_local global i32 0, align 4
@GLOB_TILDE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Glob pattern `%s' not found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mput(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8**, align 8
  %13 = alloca %struct.TYPE_5__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %3, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = call i32 @another(i32* %3, i8*** %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %24, %2
  %28 = load i8**, i8*** %4, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @UPRINTF(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  store i32 -1, i32* @code, align 4
  br label %324

32:                                               ; preds = %24, %21
  store i32 1, i32* @mflag, align 4
  %33 = load i32, i32* @SIGINT, align 4
  %34 = load i32, i32* @mintr, align 4
  %35 = call i32 @xsignal(i32 %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* @jabort, align 4
  %37 = call i64 @sigsetjmp(i32 %36, i32 1) #4
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load i8**, i8*** %4, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @mabort(i8* %42)
  br label %44

44:                                               ; preds = %39, %32
  %45 = load i64, i64* @proxy, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %120

47:                                               ; preds = %44
  br label %48

48:                                               ; preds = %118, %60, %47
  %49 = load i8**, i8*** %4, align 8
  %50 = call i8* @remglob(i8** %49, i32 0, i32* null)
  store i8* %50, i8** %9, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %119

52:                                               ; preds = %48
  %53 = load i8*, i8** %9, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load i64, i64* @connected, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57, %52
  store i32 0, i32* @mflag, align 4
  br label %48

61:                                               ; preds = %57
  %62 = load i32, i32* @mflag, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %118

64:                                               ; preds = %61
  %65 = load i8**, i8*** %4, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 0
  %67 = load i8*, i8** %66, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = call i64 @confirm(i8* %67, i8* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %118

71:                                               ; preds = %64
  %72 = load i32, i32* @MAXPATHLEN, align 4
  %73 = zext i32 %72 to i64
  %74 = call i8* @llvm.stacksave()
  store i8* %74, i8** %10, align 8
  %75 = alloca i8, i64 %73, align 16
  store i64 %73, i64* %11, align 8
  %76 = trunc i64 %73 to i32
  %77 = load i8*, i8** %9, align 8
  %78 = load i32, i32* @mcase, align 4
  %79 = load i32, i32* @ntflag, align 4
  %80 = load i32, i32* @mapflag, align 4
  %81 = call i8* @doprocess(i8* %75, i32 %76, i8* %77, i32 %78, i32 %79, i32 %80)
  store i8* %81, i8** %8, align 8
  %82 = load i64, i64* @sunique, align 8
  %83 = icmp ne i64 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %86 = load i8*, i8** %9, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = icmp ne i8* %88, %89
  br i1 %90, label %95, label %91

91:                                               ; preds = %71
  %92 = load i32, i32* @interactive, align 4
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  br label %95

95:                                               ; preds = %91, %71
  %96 = phi i1 [ true, %71 ], [ %94, %91 ]
  %97 = zext i1 %96 to i32
  %98 = call i32 @sendrequest(i8* %85, i8* %86, i8* %87, i32 %97)
  %99 = load i32, i32* @mflag, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %116, label %101

101:                                              ; preds = %95
  %102 = load i64, i64* @fromatty, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %101
  %105 = load i32, i32* @interactive, align 4
  store i32 %105, i32* %7, align 4
  store i32 1, i32* @interactive, align 4
  %106 = load i8**, i8*** %4, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i64 @confirm(i8* %108, i8* null)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %104
  %112 = load i32, i32* @mflag, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* @mflag, align 4
  br label %114

114:                                              ; preds = %111, %104
  %115 = load i32, i32* %7, align 4
  store i32 %115, i32* @interactive, align 4
  br label %116

116:                                              ; preds = %114, %101, %95
  %117 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %117)
  br label %118

118:                                              ; preds = %116, %64, %61
  br label %48

119:                                              ; preds = %48
  br label %320

120:                                              ; preds = %44
  store i32 1, i32* %5, align 4
  br label %121

121:                                              ; preds = %316, %120
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* %3, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load i64, i64* @connected, align 8
  %127 = icmp ne i64 %126, 0
  br label %128

128:                                              ; preds = %125, %121
  %129 = phi i1 [ false, %121 ], [ %127, %125 ]
  br i1 %129, label %130, label %319

130:                                              ; preds = %128
  %131 = load i32, i32* @doglob, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %206, label %133

133:                                              ; preds = %130
  %134 = load i32, i32* @mflag, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %205

136:                                              ; preds = %133
  %137 = load i8**, i8*** %4, align 8
  %138 = getelementptr inbounds i8*, i8** %137, i64 0
  %139 = load i8*, i8** %138, align 8
  %140 = load i8**, i8*** %4, align 8
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8*, i8** %140, i64 %142
  %144 = load i8*, i8** %143, align 8
  %145 = call i64 @confirm(i8* %139, i8* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %205

147:                                              ; preds = %136
  %148 = load i32, i32* @MAXPATHLEN, align 4
  %149 = zext i32 %148 to i64
  %150 = call i8* @llvm.stacksave()
  store i8* %150, i8** %15, align 8
  %151 = alloca i8, i64 %149, align 16
  store i64 %149, i64* %16, align 8
  %152 = trunc i64 %149 to i32
  %153 = load i8**, i8*** %4, align 8
  %154 = load i32, i32* %5, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8*, i8** %153, i64 %155
  %157 = load i8*, i8** %156, align 8
  %158 = load i32, i32* @ntflag, align 4
  %159 = load i32, i32* @mapflag, align 4
  %160 = call i8* @doprocess(i8* %151, i32 %152, i8* %157, i32 0, i32 %158, i32 %159)
  store i8* %160, i8** %8, align 8
  %161 = load i64, i64* @sunique, align 8
  %162 = icmp ne i64 %161, 0
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %165 = load i8**, i8*** %4, align 8
  %166 = load i32, i32* %5, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8*, i8** %165, i64 %167
  %169 = load i8*, i8** %168, align 8
  %170 = load i8*, i8** %8, align 8
  %171 = load i8*, i8** %8, align 8
  %172 = load i8**, i8*** %4, align 8
  %173 = load i32, i32* %5, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8*, i8** %172, i64 %174
  %176 = load i8*, i8** %175, align 8
  %177 = icmp ne i8* %171, %176
  br i1 %177, label %182, label %178

178:                                              ; preds = %147
  %179 = load i32, i32* @interactive, align 4
  %180 = icmp ne i32 %179, 0
  %181 = xor i1 %180, true
  br label %182

182:                                              ; preds = %178, %147
  %183 = phi i1 [ true, %147 ], [ %181, %178 ]
  %184 = zext i1 %183 to i32
  %185 = call i32 @sendrequest(i8* %164, i8* %169, i8* %170, i32 %184)
  %186 = load i32, i32* @mflag, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %203, label %188

188:                                              ; preds = %182
  %189 = load i64, i64* @fromatty, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %203

191:                                              ; preds = %188
  %192 = load i32, i32* @interactive, align 4
  store i32 %192, i32* %7, align 4
  store i32 1, i32* @interactive, align 4
  %193 = load i8**, i8*** %4, align 8
  %194 = getelementptr inbounds i8*, i8** %193, i64 0
  %195 = load i8*, i8** %194, align 8
  %196 = call i64 @confirm(i8* %195, i8* null)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %191
  %199 = load i32, i32* @mflag, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* @mflag, align 4
  br label %201

201:                                              ; preds = %198, %191
  %202 = load i32, i32* %7, align 4
  store i32 %202, i32* @interactive, align 4
  br label %203

203:                                              ; preds = %201, %188, %182
  %204 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %204)
  br label %205

205:                                              ; preds = %203, %136, %133
  br label %316

206:                                              ; preds = %130
  %207 = call i32 @memset(%struct.TYPE_5__* %13, i32 0, i32 16)
  %208 = load i32, i32* @GLOB_BRACE, align 4
  %209 = load i32, i32* @GLOB_NOCHECK, align 4
  %210 = or i32 %208, %209
  %211 = load i32, i32* @GLOB_TILDE, align 4
  %212 = or i32 %210, %211
  store i32 %212, i32* %14, align 4
  %213 = load i8**, i8*** %4, align 8
  %214 = load i32, i32* %5, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8*, i8** %213, i64 %215
  %217 = load i8*, i8** %216, align 8
  %218 = load i32, i32* %14, align 4
  %219 = call i64 @glob(i8* %217, i32 %218, i32* null, %struct.TYPE_5__* %13)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %225, label %221

221:                                              ; preds = %206
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %225, label %233

225:                                              ; preds = %221, %206
  %226 = load i8**, i8*** %4, align 8
  %227 = load i32, i32* %5, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8*, i8** %226, i64 %228
  %230 = load i8*, i8** %229, align 8
  %231 = call i32 @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* %230)
  %232 = call i32 @globfree(%struct.TYPE_5__* %13)
  br label %316

233:                                              ; preds = %221
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %235 = load i8**, i8*** %234, align 8
  store i8** %235, i8*** %12, align 8
  br label %236

236:                                              ; preds = %311, %233
  %237 = load i8**, i8*** %12, align 8
  %238 = icmp ne i8** %237, null
  br i1 %238, label %239, label %246

239:                                              ; preds = %236
  %240 = load i8**, i8*** %12, align 8
  %241 = load i8*, i8** %240, align 8
  %242 = icmp ne i8* %241, null
  br i1 %242, label %243, label %246

243:                                              ; preds = %239
  %244 = load i64, i64* @connected, align 8
  %245 = icmp ne i64 %244, 0
  br label %246

246:                                              ; preds = %243, %239, %236
  %247 = phi i1 [ false, %239 ], [ false, %236 ], [ %245, %243 ]
  br i1 %247, label %248, label %314

248:                                              ; preds = %246
  %249 = load i32, i32* @mflag, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %310

251:                                              ; preds = %248
  %252 = load i8**, i8*** %4, align 8
  %253 = getelementptr inbounds i8*, i8** %252, i64 0
  %254 = load i8*, i8** %253, align 8
  %255 = load i8**, i8*** %12, align 8
  %256 = load i8*, i8** %255, align 8
  %257 = call i64 @confirm(i8* %254, i8* %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %310

259:                                              ; preds = %251
  %260 = load i32, i32* @MAXPATHLEN, align 4
  %261 = zext i32 %260 to i64
  %262 = call i8* @llvm.stacksave()
  store i8* %262, i8** %17, align 8
  %263 = alloca i8, i64 %261, align 16
  store i64 %261, i64* %18, align 8
  %264 = load i8**, i8*** %12, align 8
  %265 = load i8*, i8** %264, align 8
  store i8* %265, i8** %8, align 8
  %266 = trunc i64 %261 to i32
  %267 = load i8**, i8*** %12, align 8
  %268 = load i8*, i8** %267, align 8
  %269 = load i32, i32* @ntflag, align 4
  %270 = load i32, i32* @mapflag, align 4
  %271 = call i8* @doprocess(i8* %263, i32 %266, i8* %268, i32 0, i32 %269, i32 %270)
  store i8* %271, i8** %8, align 8
  %272 = load i64, i64* @sunique, align 8
  %273 = icmp ne i64 %272, 0
  %274 = zext i1 %273 to i64
  %275 = select i1 %273, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %276 = load i8**, i8*** %12, align 8
  %277 = load i8*, i8** %276, align 8
  %278 = load i8*, i8** %8, align 8
  %279 = load i8**, i8*** %12, align 8
  %280 = load i8*, i8** %279, align 8
  %281 = load i8*, i8** %8, align 8
  %282 = icmp ne i8* %280, %281
  br i1 %282, label %287, label %283

283:                                              ; preds = %259
  %284 = load i32, i32* @interactive, align 4
  %285 = icmp ne i32 %284, 0
  %286 = xor i1 %285, true
  br label %287

287:                                              ; preds = %283, %259
  %288 = phi i1 [ true, %259 ], [ %286, %283 ]
  %289 = zext i1 %288 to i32
  %290 = call i32 @sendrequest(i8* %275, i8* %277, i8* %278, i32 %289)
  %291 = load i32, i32* @mflag, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %308, label %293

293:                                              ; preds = %287
  %294 = load i64, i64* @fromatty, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %308

296:                                              ; preds = %293
  %297 = load i32, i32* @interactive, align 4
  store i32 %297, i32* %7, align 4
  store i32 1, i32* @interactive, align 4
  %298 = load i8**, i8*** %4, align 8
  %299 = getelementptr inbounds i8*, i8** %298, i64 0
  %300 = load i8*, i8** %299, align 8
  %301 = call i64 @confirm(i8* %300, i8* null)
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %306

303:                                              ; preds = %296
  %304 = load i32, i32* @mflag, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* @mflag, align 4
  br label %306

306:                                              ; preds = %303, %296
  %307 = load i32, i32* %7, align 4
  store i32 %307, i32* @interactive, align 4
  br label %308

308:                                              ; preds = %306, %293, %287
  %309 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %309)
  br label %310

310:                                              ; preds = %308, %251, %248
  br label %311

311:                                              ; preds = %310
  %312 = load i8**, i8*** %12, align 8
  %313 = getelementptr inbounds i8*, i8** %312, i32 1
  store i8** %313, i8*** %12, align 8
  br label %236

314:                                              ; preds = %246
  %315 = call i32 @globfree(%struct.TYPE_5__* %13)
  br label %316

316:                                              ; preds = %314, %225, %205
  %317 = load i32, i32* %5, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %5, align 4
  br label %121

319:                                              ; preds = %128
  br label %320

320:                                              ; preds = %319, %119
  %321 = load i32, i32* @SIGINT, align 4
  %322 = load i32, i32* %6, align 4
  %323 = call i32 @xsignal(i32 %321, i32 %322)
  store i32 0, i32* @mflag, align 4
  br label %324

324:                                              ; preds = %320, %27
  ret void
}

declare dso_local i32 @another(i32*, i8***, i8*) #1

declare dso_local i32 @UPRINTF(i8*, i8*) #1

declare dso_local i32 @xsignal(i32, i32) #1

; Function Attrs: returns_twice
declare dso_local i64 @sigsetjmp(i32, i32) #2

declare dso_local i32 @mabort(i8*) #1

declare dso_local i8* @remglob(i8**, i32, i32*) #1

declare dso_local i64 @confirm(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i8* @doprocess(i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @sendrequest(i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @glob(i8*, i32, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @globfree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
