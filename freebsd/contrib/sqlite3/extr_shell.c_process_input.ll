; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_process_input.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_process_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64, i32 }

@bail_on_error = common dso_local global i32 0, align 4
@stdin_is_interactive = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@seenInterrupt = common dso_local global i64 0, align 8
@SHFLG_Echo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c";\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @process_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_input(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  store i8* null, i8** %3, align 8
  store i8* null, i8** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  br label %15

15:                                               ; preds = %300, %136, %88, %1
  %16 = load i32, i32* %10, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* @bail_on_error, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i64, i64* @stdin_is_interactive, align 8
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %26, %21
  %30 = phi i1 [ false, %21 ], [ %28, %26 ]
  br label %31

31:                                               ; preds = %29, %18, %15
  %32 = phi i1 [ true, %18 ], [ true, %15 ], [ %30, %29 ]
  br i1 %32, label %33, label %301

33:                                               ; preds = %31
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @fflush(i32 %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %3, align 8
  %42 = load i32, i32* %6, align 4
  %43 = icmp sgt i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i8* @one_input_line(i32 %40, i8* %41, i32 %44)
  store i8* %45, i8** %3, align 8
  %46 = load i8*, i8** %3, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %33
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i64, i64* @stdin_is_interactive, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %53, %48
  br label %301

59:                                               ; preds = %33
  %60 = load i64, i64* @seenInterrupt, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %301

68:                                               ; preds = %62
  store i64 0, i64* @seenInterrupt, align 8
  br label %69

69:                                               ; preds = %68, %59
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  %74 = load i32, i32* %6, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %69
  %77 = load i8*, i8** %3, align 8
  %78 = call i64 @_all_whitespace(i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %76
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %82 = load i32, i32* @SHFLG_Echo, align 4
  %83 = call i64 @ShellHasFlag(%struct.TYPE_8__* %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i8*, i8** %3, align 8
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %85, %80
  br label %15

89:                                               ; preds = %76, %69
  %90 = load i8*, i8** %3, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %137

92:                                               ; preds = %89
  %93 = load i8*, i8** %3, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 46
  br i1 %97, label %104, label %98

98:                                               ; preds = %92
  %99 = load i8*, i8** %3, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 0
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 35
  br i1 %103, label %104, label %137

104:                                              ; preds = %98, %92
  %105 = load i32, i32* %6, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %137

107:                                              ; preds = %104
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %109 = load i32, i32* @SHFLG_Echo, align 4
  %110 = call i64 @ShellHasFlag(%struct.TYPE_8__* %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load i8*, i8** %3, align 8
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %113)
  br label %115

115:                                              ; preds = %112, %107
  %116 = load i8*, i8** %3, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 0
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 46
  br i1 %120, label %121, label %136

121:                                              ; preds = %115
  %122 = load i8*, i8** %3, align 8
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %124 = call i32 @do_meta_command(i8* %122, %struct.TYPE_8__* %123)
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %9, align 4
  %126 = icmp eq i32 %125, 2
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  br label %301

128:                                              ; preds = %121
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %10, align 4
  br label %134

134:                                              ; preds = %131, %128
  br label %135

135:                                              ; preds = %134
  br label %136

136:                                              ; preds = %135, %115
  br label %15

137:                                              ; preds = %104, %98, %89
  %138 = load i8*, i8** %3, align 8
  %139 = call i64 @line_is_command_terminator(i8* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %137
  %142 = load i8*, i8** %4, align 8
  %143 = load i32, i32* %6, align 4
  %144 = call i64 @line_is_complete(i8* %142, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %141
  %147 = load i8*, i8** %3, align 8
  %148 = call i32 @memcpy(i8* %147, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 2)
  br label %149

149:                                              ; preds = %146, %141, %137
  %150 = load i8*, i8** %3, align 8
  %151 = call i32 @strlen30(i8* %150)
  store i32 %151, i32* %5, align 4
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* %5, align 4
  %154 = add nsw i32 %152, %153
  %155 = add nsw i32 %154, 2
  %156 = load i32, i32* %7, align 4
  %157 = icmp sge i32 %155, %156
  br i1 %157, label %158, label %171

158:                                              ; preds = %149
  %159 = load i32, i32* %6, align 4
  %160 = load i32, i32* %5, align 4
  %161 = add nsw i32 %159, %160
  %162 = add nsw i32 %161, 100
  store i32 %162, i32* %7, align 4
  %163 = load i8*, i8** %4, align 8
  %164 = load i32, i32* %7, align 4
  %165 = call i8* @realloc(i8* %163, i32 %164)
  store i8* %165, i8** %4, align 8
  %166 = load i8*, i8** %4, align 8
  %167 = icmp eq i8* %166, null
  br i1 %167, label %168, label %170

168:                                              ; preds = %158
  %169 = call i32 (...) @shell_out_of_memory()
  br label %170

170:                                              ; preds = %168, %158
  br label %171

171:                                              ; preds = %170, %149
  %172 = load i32, i32* %6, align 4
  store i32 %172, i32* %8, align 4
  %173 = load i32, i32* %6, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %224

175:                                              ; preds = %171
  store i32 0, i32* %12, align 4
  br label %176

176:                                              ; preds = %195, %175
  %177 = load i8*, i8** %3, align 8
  %178 = load i32, i32* %12, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %177, i64 %179
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %176
  %185 = load i8*, i8** %3, align 8
  %186 = load i32, i32* %12, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %185, i64 %187
  %189 = load i8, i8* %188, align 1
  %190 = call i64 @IsSpace(i8 signext %189)
  %191 = icmp ne i64 %190, 0
  br label %192

192:                                              ; preds = %184, %176
  %193 = phi i1 [ false, %176 ], [ %191, %184 ]
  br i1 %193, label %194, label %198

194:                                              ; preds = %192
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %12, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %12, align 4
  br label %176

198:                                              ; preds = %192
  %199 = load i32, i32* %7, align 4
  %200 = icmp sgt i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %198
  %202 = load i8*, i8** %4, align 8
  %203 = icmp ne i8* %202, null
  br label %204

204:                                              ; preds = %201, %198
  %205 = phi i1 [ false, %198 ], [ %203, %201 ]
  %206 = zext i1 %205 to i32
  %207 = call i32 @assert(i32 %206)
  %208 = load i8*, i8** %4, align 8
  %209 = load i8*, i8** %3, align 8
  %210 = load i32, i32* %12, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8, i8* %209, i64 %211
  %213 = load i32, i32* %5, align 4
  %214 = add nsw i32 %213, 1
  %215 = load i32, i32* %12, align 4
  %216 = sub nsw i32 %214, %215
  %217 = call i32 @memcpy(i8* %208, i8* %212, i32 %216)
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  store i32 %220, i32* %11, align 4
  %221 = load i32, i32* %5, align 4
  %222 = load i32, i32* %12, align 4
  %223 = sub nsw i32 %221, %222
  store i32 %223, i32* %6, align 4
  br label %241

224:                                              ; preds = %171
  %225 = load i8*, i8** %4, align 8
  %226 = load i32, i32* %6, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %6, align 4
  %228 = sext i32 %226 to i64
  %229 = getelementptr inbounds i8, i8* %225, i64 %228
  store i8 10, i8* %229, align 1
  %230 = load i8*, i8** %4, align 8
  %231 = load i32, i32* %6, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8, i8* %230, i64 %232
  %234 = load i8*, i8** %3, align 8
  %235 = load i32, i32* %5, align 4
  %236 = add nsw i32 %235, 1
  %237 = call i32 @memcpy(i8* %233, i8* %234, i32 %236)
  %238 = load i32, i32* %5, align 4
  %239 = load i32, i32* %6, align 4
  %240 = add nsw i32 %239, %238
  store i32 %240, i32* %6, align 4
  br label %241

241:                                              ; preds = %224, %204
  %242 = load i32, i32* %6, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %283

244:                                              ; preds = %241
  %245 = load i8*, i8** %4, align 8
  %246 = load i32, i32* %8, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8, i8* %245, i64 %247
  %249 = load i32, i32* %6, align 4
  %250 = load i32, i32* %8, align 4
  %251 = sub nsw i32 %249, %250
  %252 = call i64 @line_contains_semicolon(i8* %248, i32 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %283

254:                                              ; preds = %244
  %255 = load i8*, i8** %4, align 8
  %256 = call i64 @sqlite3_complete(i8* %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %283

258:                                              ; preds = %254
  %259 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %260 = load i8*, i8** %4, align 8
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* %11, align 4
  %265 = call i64 @runOneSqlLine(%struct.TYPE_8__* %259, i8* %260, i32 %263, i32 %264)
  %266 = load i32, i32* %10, align 4
  %267 = sext i32 %266 to i64
  %268 = add nsw i64 %267, %265
  %269 = trunc i64 %268 to i32
  store i32 %269, i32* %10, align 4
  store i32 0, i32* %6, align 4
  %270 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 2
  %272 = load i64, i64* %271, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %279

274:                                              ; preds = %258
  %275 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %276 = call i32 @output_reset(%struct.TYPE_8__* %275)
  %277 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 2
  store i64 0, i64* %278, align 8
  br label %282

279:                                              ; preds = %258
  %280 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %281 = call i32 @clearTempFile(%struct.TYPE_8__* %280)
  br label %282

282:                                              ; preds = %279, %274
  br label %300

283:                                              ; preds = %254, %244, %241
  %284 = load i32, i32* %6, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %299

286:                                              ; preds = %283
  %287 = load i8*, i8** %4, align 8
  %288 = call i64 @_all_whitespace(i8* %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %299

290:                                              ; preds = %286
  %291 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %292 = load i32, i32* @SHFLG_Echo, align 4
  %293 = call i64 @ShellHasFlag(%struct.TYPE_8__* %291, i32 %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %298

295:                                              ; preds = %290
  %296 = load i8*, i8** %4, align 8
  %297 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %296)
  br label %298

298:                                              ; preds = %295, %290
  store i32 0, i32* %6, align 4
  br label %299

299:                                              ; preds = %298, %286, %283
  br label %300

300:                                              ; preds = %299, %282
  br label %15

301:                                              ; preds = %127, %67, %58, %31
  %302 = load i32, i32* %6, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %320

304:                                              ; preds = %301
  %305 = load i8*, i8** %4, align 8
  %306 = call i64 @_all_whitespace(i8* %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %320, label %308

308:                                              ; preds = %304
  %309 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %310 = load i8*, i8** %4, align 8
  %311 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* %11, align 4
  %315 = call i64 @runOneSqlLine(%struct.TYPE_8__* %309, i8* %310, i32 %313, i32 %314)
  %316 = load i32, i32* %10, align 4
  %317 = sext i32 %316 to i64
  %318 = add nsw i64 %317, %315
  %319 = trunc i64 %318 to i32
  store i32 %319, i32* %10, align 4
  br label %320

320:                                              ; preds = %308, %304, %301
  %321 = load i8*, i8** %4, align 8
  %322 = call i32 @free(i8* %321)
  %323 = load i8*, i8** %3, align 8
  %324 = call i32 @free(i8* %323)
  %325 = load i32, i32* %10, align 4
  %326 = icmp sgt i32 %325, 0
  %327 = zext i1 %326 to i32
  ret i32 %327
}

declare dso_local i32 @fflush(i32) #1

declare dso_local i8* @one_input_line(i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @_all_whitespace(i8*) #1

declare dso_local i64 @ShellHasFlag(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @do_meta_command(i8*, %struct.TYPE_8__*) #1

declare dso_local i64 @line_is_command_terminator(i8*) #1

declare dso_local i64 @line_is_complete(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strlen30(i8*) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @shell_out_of_memory(...) #1

declare dso_local i64 @IsSpace(i8 signext) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @line_contains_semicolon(i8*, i32) #1

declare dso_local i64 @sqlite3_complete(i8*) #1

declare dso_local i64 @runOneSqlLine(%struct.TYPE_8__*, i8*, i32, i32) #1

declare dso_local i32 @output_reset(%struct.TYPE_8__*) #1

declare dso_local i32 @clearTempFile(%struct.TYPE_8__*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
