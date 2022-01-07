; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc.c_docmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc.c_docmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i8*, i64, i32* }
%struct.xcmd = type { i32*, i32 (%struct.parse.0*, i32*)* }
%struct.parse.0 = type opaque

@MAXARGS = common dso_local global i32 0, align 4
@MOREARGS = common dso_local global i32 0, align 4
@ai_fam_default = common dso_local global i32 0, align 4
@ai_fam_templ = common dso_local global i32 0, align 4
@MAXLINE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [49 x i8] c"***Command ignored, more than %d characters:\0A%s\0A\00", align 1
@builtins = common dso_local global i32 0, align 4
@opcmds = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"***Command `%s' unknown\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"***Command `%s' ambiguous\0A\00", align 1
@NO = common dso_local global i32 0, align 4
@OPT = common dso_local global i32 0, align 4
@NTP_STR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"***No file for redirect\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@current_output = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"***Error opening %s: \00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stdout = common dso_local global i32* null, align 8
@interactive = common dso_local global i64 0, align 8
@interrupt_buf = common dso_local global i32 0, align 4
@jump = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"\0A >>> command aborted <<<\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @docmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @docmd(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.parse, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.xcmd*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %13 = load i32, i32* @MAXARGS, align 4
  %14 = add nsw i32 1, %13
  %15 = load i32, i32* @MOREARGS, align 4
  %16 = add nsw i32 %14, %15
  %17 = add nsw i32 %16, 2
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %3, align 8
  %20 = alloca i8*, i64 %18, align 16
  store i64 %18, i64* %4, align 8
  %21 = load i32, i32* @ai_fam_default, align 4
  store i32 %21, i32* @ai_fam_templ, align 4
  %22 = load i8*, i8** %2, align 8
  %23 = call i64 @strlen(i8* %22)
  %24 = load i64, i64* @MAXLINE, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load i32*, i32** @stderr, align 8
  %28 = load i64, i64* @MAXLINE, align 8
  %29 = sub nsw i64 %28, 1
  %30 = load i8*, i8** %2, align 8
  %31 = call i32 (i32*, i8*, ...) @fprintf(i32* %27, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %29, i8* %30)
  store i32 1, i32* %11, align 4
  br label %303

32:                                               ; preds = %1
  %33 = load i8*, i8** %2, align 8
  %34 = call i32 @tokenize(i8* %33, i8** %20, i32* %6)
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 1, i32* %11, align 4
  br label %303

38:                                               ; preds = %32
  %39 = getelementptr inbounds i8*, i8** %20, i64 0
  %40 = load i8*, i8** %39, align 16
  %41 = load i32, i32* @builtins, align 4
  %42 = load i32, i32* @opcmds, align 4
  %43 = call i32 @findcmd(i8* %40, i32 %41, i32 %42, %struct.xcmd** %10)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load i32*, i32** @stderr, align 8
  %48 = getelementptr inbounds i8*, i8** %20, i64 0
  %49 = load i8*, i8** %48, align 16
  %50 = call i32 (i32*, i8*, ...) @fprintf(i32* %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  store i32 1, i32* %11, align 4
  br label %303

51:                                               ; preds = %38
  %52 = load i32, i32* %7, align 4
  %53 = icmp sge i32 %52, 2
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i32*, i32** @stderr, align 8
  %56 = getelementptr inbounds i8*, i8** %20, i64 0
  %57 = load i8*, i8** %56, align 16
  %58 = call i32 (i32*, i8*, ...) @fprintf(i32* %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  store i32 1, i32* %11, align 4
  br label %303

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59
  %61 = getelementptr inbounds i8*, i8** %20, i64 0
  %62 = load i8*, i8** %61, align 16
  %63 = getelementptr inbounds %struct.parse, %struct.parse* %5, i32 0, i32 0
  store i8* %62, i8** %63, align 8
  %64 = getelementptr inbounds %struct.parse, %struct.parse* %5, i32 0, i32 1
  store i64 0, i64* %64, align 8
  store i32 1, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %154, %147, %60
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @MAXARGS, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %65
  %70 = load %struct.xcmd*, %struct.xcmd** %10, align 8
  %71 = getelementptr inbounds %struct.xcmd, %struct.xcmd* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @NO, align 4
  %78 = icmp ne i32 %76, %77
  br label %79

79:                                               ; preds = %69, %65
  %80 = phi i1 [ false, %65 ], [ %78, %69 ]
  br i1 %80, label %81, label %160

81:                                               ; preds = %79
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %82, %83
  %85 = load i32, i32* %6, align 4
  %86 = icmp sge i32 %84, %85
  br i1 %86, label %87, label %103

87:                                               ; preds = %81
  %88 = load %struct.xcmd*, %struct.xcmd** %10, align 8
  %89 = getelementptr inbounds %struct.xcmd, %struct.xcmd* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @OPT, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %87
  %99 = load %struct.xcmd*, %struct.xcmd** %10, align 8
  %100 = load i32*, i32** @stderr, align 8
  %101 = call i32 @printusage(%struct.xcmd* %99, i32* %100)
  store i32 1, i32* %11, align 4
  br label %303

102:                                              ; preds = %87
  br label %160

103:                                              ; preds = %81
  %104 = load %struct.xcmd*, %struct.xcmd** %10, align 8
  %105 = getelementptr inbounds %struct.xcmd, %struct.xcmd* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @OPT, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %103
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %115, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %20, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 62
  br i1 %123, label %124, label %125

124:                                              ; preds = %114
  br label %160

125:                                              ; preds = %114, %103
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %126, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %20, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.xcmd*, %struct.xcmd** %10, align 8
  %133 = getelementptr inbounds %struct.xcmd, %struct.xcmd* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds %struct.parse, %struct.parse* %5, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = call i32 @getarg(i8* %131, i32 %138, i32* %143)
  store i32 %144, i32* %9, align 4
  %145 = load i32, i32* %9, align 4
  %146 = icmp eq i32 %145, -1
  br i1 %146, label %147, label %150

147:                                              ; preds = %125
  %148 = load i32, i32* %8, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %8, align 4
  br label %65

150:                                              ; preds = %125
  %151 = load i32, i32* %9, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  store i32 1, i32* %11, align 4
  br label %303

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.parse, %struct.parse* %5, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %156, 1
  store i64 %157, i64* %155, align 8
  %158 = load i32, i32* %7, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %7, align 4
  br label %65

160:                                              ; preds = %124, %102, %79
  br label %161

161:                                              ; preds = %199, %192, %160
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* @MAXARGS, align 4
  %164 = load i32, i32* @MOREARGS, align 4
  %165 = add nsw i32 %163, %164
  %166 = icmp slt i32 %162, %165
  br i1 %166, label %167, label %205

167:                                              ; preds = %161
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* %8, align 4
  %170 = add nsw i32 %168, %169
  %171 = load i32, i32* %6, align 4
  %172 = icmp sge i32 %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %167
  br label %205

174:                                              ; preds = %167
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* %8, align 4
  %177 = add nsw i32 %175, %176
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8*, i8** %20, i64 %178
  %180 = load i8*, i8** %179, align 8
  %181 = load i32, i32* @OPT, align 4
  %182 = load i32, i32* @NTP_STR, align 4
  %183 = or i32 %181, %182
  %184 = getelementptr inbounds %struct.parse, %struct.parse* %5, i32 0, i32 2
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %7, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = call i32 @getarg(i8* %180, i32 %183, i32* %188)
  store i32 %189, i32* %9, align 4
  %190 = load i32, i32* %9, align 4
  %191 = icmp eq i32 %190, -1
  br i1 %191, label %192, label %195

192:                                              ; preds = %174
  %193 = load i32, i32* %8, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %8, align 4
  br label %161

195:                                              ; preds = %174
  %196 = load i32, i32* %9, align 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %195
  store i32 1, i32* %11, align 4
  br label %303

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.parse, %struct.parse* %5, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = add nsw i64 %201, 1
  store i64 %202, i64* %200, align 8
  %203 = load i32, i32* %7, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %7, align 4
  br label %161

205:                                              ; preds = %173, %161
  %206 = load i32, i32* %8, align 4
  %207 = load i32, i32* %7, align 4
  %208 = add nsw i32 %207, %206
  store i32 %208, i32* %7, align 4
  %209 = load i32, i32* %7, align 4
  %210 = load i32, i32* %6, align 4
  %211 = icmp slt i32 %209, %210
  br i1 %211, label %212, label %261

212:                                              ; preds = %205
  %213 = load i32, i32* %7, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8*, i8** %20, i64 %214
  %216 = load i8*, i8** %215, align 8
  %217 = load i8, i8* %216, align 1
  %218 = sext i8 %217 to i32
  %219 = icmp eq i32 %218, 62
  br i1 %219, label %220, label %261

220:                                              ; preds = %212
  %221 = load i32, i32* %7, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8*, i8** %20, i64 %222
  %224 = load i8*, i8** %223, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 1
  %226 = load i8, i8* %225, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %235

229:                                              ; preds = %220
  %230 = load i32, i32* %7, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8*, i8** %20, i64 %231
  %233 = load i8*, i8** %232, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 1
  store i8* %234, i8** %12, align 8
  br label %250

235:                                              ; preds = %220
  %236 = load i32, i32* %7, align 4
  %237 = add nsw i32 %236, 1
  %238 = load i32, i32* %6, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %246

240:                                              ; preds = %235
  %241 = load i32, i32* %7, align 4
  %242 = add nsw i32 %241, 1
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8*, i8** %20, i64 %243
  %245 = load i8*, i8** %244, align 8
  store i8* %245, i8** %12, align 8
  br label %249

246:                                              ; preds = %235
  %247 = load i32*, i32** @stderr, align 8
  %248 = call i32 (i32*, i8*, ...) @fprintf(i32* %247, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %303

249:                                              ; preds = %240
  br label %250

250:                                              ; preds = %249, %229
  %251 = load i8*, i8** %12, align 8
  %252 = call i32* @fopen(i8* %251, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %252, i32** @current_output, align 8
  %253 = load i32*, i32** @current_output, align 8
  %254 = icmp eq i32* %253, null
  br i1 %254, label %255, label %260

255:                                              ; preds = %250
  %256 = load i32*, i32** @stderr, align 8
  %257 = load i8*, i8** %12, align 8
  %258 = call i32 (i32*, i8*, ...) @fprintf(i32* %256, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %257)
  %259 = call i32 @perror(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %303

260:                                              ; preds = %250
  br label %263

261:                                              ; preds = %212, %205
  %262 = load i32*, i32** @stdout, align 8
  store i32* %262, i32** @current_output, align 8
  br label %263

263:                                              ; preds = %261, %260
  %264 = load i64, i64* @interactive, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %285

266:                                              ; preds = %263
  %267 = load i32, i32* @interrupt_buf, align 4
  %268 = call i32 @SETJMP(i32 %267)
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %277, label %270

270:                                              ; preds = %266
  store i32 1, i32* @jump, align 4
  %271 = load %struct.xcmd*, %struct.xcmd** %10, align 8
  %272 = getelementptr inbounds %struct.xcmd, %struct.xcmd* %271, i32 0, i32 1
  %273 = load i32 (%struct.parse.0*, i32*)*, i32 (%struct.parse.0*, i32*)** %272, align 8
  %274 = bitcast %struct.parse* %5 to %struct.parse.0*
  %275 = load i32*, i32** @current_output, align 8
  %276 = call i32 %273(%struct.parse.0* %274, i32* %275)
  store i32 0, i32* @jump, align 4
  br label %284

277:                                              ; preds = %266
  %278 = load i32*, i32** @current_output, align 8
  %279 = call i32 @fflush(i32* %278)
  %280 = load i32*, i32** @stderr, align 8
  %281 = call i32 @fputs(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32* %280)
  %282 = load i32*, i32** @stderr, align 8
  %283 = call i32 @fflush(i32* %282)
  br label %284

284:                                              ; preds = %277, %270
  br label %292

285:                                              ; preds = %263
  store i32 0, i32* @jump, align 4
  %286 = load %struct.xcmd*, %struct.xcmd** %10, align 8
  %287 = getelementptr inbounds %struct.xcmd, %struct.xcmd* %286, i32 0, i32 1
  %288 = load i32 (%struct.parse.0*, i32*)*, i32 (%struct.parse.0*, i32*)** %287, align 8
  %289 = bitcast %struct.parse* %5 to %struct.parse.0*
  %290 = load i32*, i32** @current_output, align 8
  %291 = call i32 %288(%struct.parse.0* %289, i32* %290)
  br label %292

292:                                              ; preds = %285, %284
  %293 = load i32*, i32** @current_output, align 8
  %294 = icmp ne i32* null, %293
  br i1 %294, label %295, label %302

295:                                              ; preds = %292
  %296 = load i32*, i32** @stdout, align 8
  %297 = load i32*, i32** @current_output, align 8
  %298 = icmp ne i32* %296, %297
  br i1 %298, label %299, label %302

299:                                              ; preds = %295
  %300 = load i32*, i32** @current_output, align 8
  %301 = call i32 @fclose(i32* %300)
  store i32* null, i32** @current_output, align 8
  br label %302

302:                                              ; preds = %299, %295, %292
  store i32 0, i32* %11, align 4
  br label %303

303:                                              ; preds = %302, %255, %246, %198, %153, %98, %54, %46, %37, %26
  %304 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %304)
  %305 = load i32, i32* %11, align 4
  switch i32 %305, label %307 [
    i32 0, label %306
    i32 1, label %306
  ]

306:                                              ; preds = %303, %303
  ret void

307:                                              ; preds = %303
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @fprintf(i32*, i8*, ...) #2

declare dso_local i32 @tokenize(i8*, i8**, i32*) #2

declare dso_local i32 @findcmd(i8*, i32, i32, %struct.xcmd**) #2

declare dso_local i32 @printusage(%struct.xcmd*, i32*) #2

declare dso_local i32 @getarg(i8*, i32, i32*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @SETJMP(i32) #2

declare dso_local i32 @fflush(i32*) #2

declare dso_local i32 @fputs(i8*, i32*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
