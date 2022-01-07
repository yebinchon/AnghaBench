; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_cmds.c_getit.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_cmds.c_getit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"remote-file\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"local-file\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"usage: %s remote-file [ local-file ]\0A\00", align 1
@code = common dso_local global i32 0, align 4
@mcase = common dso_local global i64 0, align 8
@MaxPathLen = common dso_local global i32 0, align 4
@ntflag = common dso_local global i64 0, align 8
@mapflag = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"local: %s\00", align 1
@restart_point = common dso_local global i64 0, align 8
@verbose = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"MDTM %s\00", align 1
@COMPLETE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@reply_string = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"%*s %04d%02d%02d%02d%02d%02d\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"bad MDTM result\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"RETR\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getit(i32 %0, i8** %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.stat, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.tm*, align 8
  %29 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %42

32:                                               ; preds = %4
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  store i32 0, i32* %11, align 4
  %35 = load i8**, i8*** %7, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  %37 = load i8*, i8** %36, align 8
  %38 = load i8**, i8*** %7, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 2
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %32, %4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 2
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = call i32 @another(i32* %6, i8*** %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45, %42
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 3
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = call i32 @another(i32* %6, i8*** %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %51, %45
  %55 = load i8**, i8*** %7, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  store i32 -1, i32* @code, align 4
  store i32 0, i32* %5, align 4
  br label %316

59:                                               ; preds = %51, %48
  %60 = load i8**, i8*** %7, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 1
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %12, align 8
  %63 = load i8**, i8*** %7, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 2
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %13, align 8
  %66 = load i8**, i8*** %7, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 2
  %68 = call i32 @globulize(i8** %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %59
  store i32 -1, i32* @code, align 4
  store i32 0, i32* %5, align 4
  br label %316

71:                                               ; preds = %59
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %138

74:                                               ; preds = %71
  %75 = load i64, i64* @mcase, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %138

77:                                               ; preds = %74
  %78 = load i8**, i8*** %7, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 1
  %80 = load i8*, i8** %79, align 8
  store i8* %80, i8** %14, align 8
  %81 = load i32, i32* @MaxPathLen, align 4
  %82 = zext i32 %81 to i64
  %83 = call i8* @llvm.stacksave()
  store i8* %83, i8** %16, align 8
  %84 = alloca i8, i64 %82, align 16
  store i64 %82, i64* %17, align 8
  br label %85

85:                                               ; preds = %98, %77
  %86 = load i8*, i8** %14, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load i8*, i8** %14, align 8
  %92 = load i8, i8* %91, align 1
  %93 = call i32 @islower(i8 zeroext %92)
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  br label %96

96:                                               ; preds = %90, %85
  %97 = phi i1 [ false, %85 ], [ %95, %90 ]
  br i1 %97, label %98, label %101

98:                                               ; preds = %96
  %99 = load i8*, i8** %14, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %14, align 8
  br label %85

101:                                              ; preds = %96
  %102 = load i8*, i8** %14, align 8
  %103 = load i8, i8* %102, align 1
  %104 = icmp ne i8 %103, 0
  br i1 %104, label %136, label %105

105:                                              ; preds = %101
  %106 = load i8**, i8*** %7, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 2
  %108 = load i8*, i8** %107, align 8
  store i8* %108, i8** %14, align 8
  store i8* %84, i8** %15, align 8
  br label %109

109:                                              ; preds = %128, %105
  %110 = load i8*, i8** %14, align 8
  %111 = load i8, i8* %110, align 1
  %112 = load i8*, i8** %15, align 8
  store i8 %111, i8* %112, align 1
  %113 = sext i8 %111 to i32
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %133

115:                                              ; preds = %109
  %116 = load i8*, i8** %15, align 8
  %117 = load i8, i8* %116, align 1
  %118 = call i64 @isupper(i8 zeroext %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %115
  %121 = load i8*, i8** %15, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = add nsw i32 97, %123
  %125 = sub nsw i32 %124, 65
  %126 = trunc i32 %125 to i8
  %127 = load i8*, i8** %15, align 8
  store i8 %126, i8* %127, align 1
  br label %128

128:                                              ; preds = %120, %115
  %129 = load i8*, i8** %14, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %14, align 8
  %131 = load i8*, i8** %15, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %15, align 8
  br label %109

133:                                              ; preds = %109
  %134 = load i8**, i8*** %7, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i64 2
  store i8* %84, i8** %135, align 8
  br label %136

136:                                              ; preds = %133, %101
  %137 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %137)
  br label %138

138:                                              ; preds = %136, %74, %71
  %139 = load i32, i32* %10, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %138
  %142 = load i64, i64* @ntflag, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %141
  %145 = load i8**, i8*** %7, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i64 2
  %147 = load i8*, i8** %146, align 8
  %148 = call i8* @dotrans(i8* %147)
  %149 = load i8**, i8*** %7, align 8
  %150 = getelementptr inbounds i8*, i8** %149, i64 2
  store i8* %148, i8** %150, align 8
  br label %151

151:                                              ; preds = %144, %141, %138
  %152 = load i32, i32* %10, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %151
  %155 = load i64, i64* @mapflag, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %154
  %158 = load i8**, i8*** %7, align 8
  %159 = getelementptr inbounds i8*, i8** %158, i64 2
  %160 = load i8*, i8** %159, align 8
  %161 = call i8* @domap(i8* %160)
  %162 = load i8**, i8*** %7, align 8
  %163 = getelementptr inbounds i8*, i8** %162, i64 2
  store i8* %161, i8** %163, align 8
  br label %164

164:                                              ; preds = %157, %154, %151
  %165 = load i32, i32* %8, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %292

167:                                              ; preds = %164
  %168 = load i8**, i8*** %7, align 8
  %169 = getelementptr inbounds i8*, i8** %168, i64 2
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 @stat(i8* %170, %struct.stat* %18)
  store i32 %171, i32* %19, align 4
  %172 = load i32, i32* %8, align 4
  %173 = icmp eq i32 %172, 1
  br i1 %173, label %174, label %185

174:                                              ; preds = %167
  %175 = load i32, i32* %19, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %174
  %178 = load i8**, i8*** %7, align 8
  %179 = getelementptr inbounds i8*, i8** %178, i64 2
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 @warn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %180)
  store i32 0, i32* %5, align 4
  br label %316

182:                                              ; preds = %174
  %183 = getelementptr inbounds %struct.stat, %struct.stat* %18, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  store i64 %184, i64* @restart_point, align 8
  br label %291

185:                                              ; preds = %167
  %186 = load i32, i32* %19, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %290

188:                                              ; preds = %185
  %189 = getelementptr inbounds %struct.stat, %struct.stat* %18, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  store i32 %190, i32* %29, align 4
  %191 = load i32, i32* @verbose, align 4
  store i32 %191, i32* %20, align 4
  %192 = load i64, i64* @debug, align 8
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %188
  store i32 -1, i32* @verbose, align 4
  br label %195

195:                                              ; preds = %194, %188
  %196 = load i8**, i8*** %7, align 8
  %197 = getelementptr inbounds i8*, i8** %196, i64 1
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 @command(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %198)
  store i32 %199, i32* %21, align 4
  %200 = load i32, i32* %20, align 4
  store i32 %200, i32* @verbose, align 4
  %201 = load i32, i32* %21, align 4
  %202 = load i32, i32* @COMPLETE, align 4
  %203 = icmp ne i32 %201, %202
  br i1 %203, label %204, label %207

204:                                              ; preds = %195
  %205 = load i8*, i8** @reply_string, align 8
  %206 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %205)
  store i32 0, i32* %5, align 4
  br label %316

207:                                              ; preds = %195
  %208 = load i8*, i8** @reply_string, align 8
  %209 = call i32 @sscanf(i8* %208, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32* %22, i32* %23, i32* %24, i32* %25, i32* %26, i32* %27)
  %210 = icmp ne i32 %209, 6
  br i1 %210, label %211, label %213

211:                                              ; preds = %207
  %212 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %316

213:                                              ; preds = %207
  %214 = call %struct.tm* @gmtime(i32* %29)
  store %struct.tm* %214, %struct.tm** %28, align 8
  %215 = load %struct.tm*, %struct.tm** %28, align 8
  %216 = getelementptr inbounds %struct.tm, %struct.tm* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %216, align 4
  %219 = load %struct.tm*, %struct.tm** %28, align 8
  %220 = getelementptr inbounds %struct.tm, %struct.tm* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = add nsw i32 %221, 1900
  store i32 %222, i32* %220, align 4
  %223 = load %struct.tm*, %struct.tm** %28, align 8
  %224 = getelementptr inbounds %struct.tm, %struct.tm* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %22, align 4
  %227 = icmp sgt i32 %225, %226
  br i1 %227, label %288, label %228

228:                                              ; preds = %213
  %229 = load %struct.tm*, %struct.tm** %28, align 8
  %230 = getelementptr inbounds %struct.tm, %struct.tm* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* %22, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %234, label %240

234:                                              ; preds = %228
  %235 = load %struct.tm*, %struct.tm** %28, align 8
  %236 = getelementptr inbounds %struct.tm, %struct.tm* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %23, align 4
  %239 = icmp sgt i32 %237, %238
  br i1 %239, label %288, label %240

240:                                              ; preds = %234, %228
  %241 = load %struct.tm*, %struct.tm** %28, align 8
  %242 = getelementptr inbounds %struct.tm, %struct.tm* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* %23, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %252

246:                                              ; preds = %240
  %247 = load %struct.tm*, %struct.tm** %28, align 8
  %248 = getelementptr inbounds %struct.tm, %struct.tm* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* %24, align 4
  %251 = icmp sgt i32 %249, %250
  br i1 %251, label %288, label %252

252:                                              ; preds = %246, %240
  %253 = load %struct.tm*, %struct.tm** %28, align 8
  %254 = getelementptr inbounds %struct.tm, %struct.tm* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* %24, align 4
  %257 = icmp eq i32 %255, %256
  br i1 %257, label %258, label %264

258:                                              ; preds = %252
  %259 = load %struct.tm*, %struct.tm** %28, align 8
  %260 = getelementptr inbounds %struct.tm, %struct.tm* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* %25, align 4
  %263 = icmp sgt i32 %261, %262
  br i1 %263, label %288, label %264

264:                                              ; preds = %258, %252
  %265 = load %struct.tm*, %struct.tm** %28, align 8
  %266 = getelementptr inbounds %struct.tm, %struct.tm* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* %25, align 4
  %269 = icmp eq i32 %267, %268
  br i1 %269, label %270, label %276

270:                                              ; preds = %264
  %271 = load %struct.tm*, %struct.tm** %28, align 8
  %272 = getelementptr inbounds %struct.tm, %struct.tm* %271, i32 0, i32 4
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* %26, align 4
  %275 = icmp sgt i32 %273, %274
  br i1 %275, label %288, label %276

276:                                              ; preds = %270, %264
  %277 = load %struct.tm*, %struct.tm** %28, align 8
  %278 = getelementptr inbounds %struct.tm, %struct.tm* %277, i32 0, i32 4
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* %26, align 4
  %281 = icmp eq i32 %279, %280
  br i1 %281, label %282, label %289

282:                                              ; preds = %276
  %283 = load %struct.tm*, %struct.tm** %28, align 8
  %284 = getelementptr inbounds %struct.tm, %struct.tm* %283, i32 0, i32 5
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* %27, align 4
  %287 = icmp sgt i32 %285, %286
  br i1 %287, label %288, label %289

288:                                              ; preds = %282, %270, %258, %246, %234, %213
  store i32 1, i32* %5, align 4
  br label %316

289:                                              ; preds = %282, %276
  br label %290

290:                                              ; preds = %289, %185
  br label %291

291:                                              ; preds = %290, %182
  br label %292

292:                                              ; preds = %291, %164
  %293 = load i8**, i8*** %7, align 8
  %294 = getelementptr inbounds i8*, i8** %293, i64 2
  %295 = load i8*, i8** %294, align 8
  %296 = load i8**, i8*** %7, align 8
  %297 = getelementptr inbounds i8*, i8** %296, i64 1
  %298 = load i8*, i8** %297, align 8
  %299 = load i8*, i8** %9, align 8
  %300 = load i8**, i8*** %7, align 8
  %301 = getelementptr inbounds i8*, i8** %300, i64 1
  %302 = load i8*, i8** %301, align 8
  %303 = load i8*, i8** %12, align 8
  %304 = icmp ne i8* %302, %303
  br i1 %304, label %311, label %305

305:                                              ; preds = %292
  %306 = load i8**, i8*** %7, align 8
  %307 = getelementptr inbounds i8*, i8** %306, i64 2
  %308 = load i8*, i8** %307, align 8
  %309 = load i8*, i8** %13, align 8
  %310 = icmp ne i8* %308, %309
  br label %311

311:                                              ; preds = %305, %292
  %312 = phi i1 [ true, %292 ], [ %310, %305 ]
  %313 = zext i1 %312 to i32
  %314 = load i32, i32* %11, align 4
  %315 = call i32 @recvrequest(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %295, i8* %298, i8* %299, i32 %313, i32 %314)
  store i64 0, i64* @restart_point, align 8
  store i32 0, i32* %5, align 4
  br label %316

316:                                              ; preds = %311, %288, %211, %204, %177, %70, %54
  %317 = load i32, i32* %5, align 4
  ret i32 %317
}

declare dso_local i32 @another(i32*, i8***, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @globulize(i8**) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @islower(i8 zeroext) #1

declare dso_local i64 @isupper(i8 zeroext) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i8* @dotrans(i8*) #1

declare dso_local i8* @domap(i8*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @command(i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.tm* @gmtime(i32*) #1

declare dso_local i32 @recvrequest(i8*, i8*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
