; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.term.c_dosetty.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.term.c_dosetty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcshmodes = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.command = type { i32 }

@EX_IO = common dso_local global i32 0, align 4
@xfree = common dso_local global i32 0, align 4
@ED_IO = common dso_local global i32 0, align 4
@QU_IO = common dso_local global i32 0, align 4
@ERR_NAME = common dso_local global i32 0, align 4
@ERR_SYSTEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Unknown switch\00", align 1
@didsetty = common dso_local global i32 0, align 4
@modelist = common dso_local global %struct.tcshmodes* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ttylist = common dso_local global %struct.TYPE_2__** null, align 8
@TermH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"\0A%*s\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%c%s \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Invalid argument\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dosetty(i8** %0, %struct.command* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.command*, align 8
  %5 = alloca %struct.tcshmodes*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store %struct.command* %1, %struct.command** %4, align 8
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* @EX_IO, align 4
  store i32 %16, i32* %11, align 4
  %17 = load %struct.command*, %struct.command** %4, align 8
  %18 = call i32 @USE(%struct.command* %17)
  %19 = load i8**, i8*** %3, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i32 1
  store i8** %20, i8*** %3, align 8
  %21 = load i8*, i8** %19, align 8
  %22 = call i8* @short2str(i8* %21)
  %23 = call i8* @strsave(i8* %22)
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* @xfree, align 4
  %26 = call i32 @cleanup_push(i8* %24, i32 %25)
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @setname(i8* %27)
  br label %29

29:                                               ; preds = %88, %2
  %30 = load i8**, i8*** %3, align 8
  %31 = icmp ne i8** %30, null
  br i1 %31, label %32, label %52

32:                                               ; preds = %29
  %33 = load i8**, i8*** %3, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %52

36:                                               ; preds = %32
  %37 = load i8**, i8*** %3, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 45
  br i1 %43, label %44, label %52

44:                                               ; preds = %36
  %45 = load i8**, i8*** %3, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 0
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 2
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 0
  br label %52

52:                                               ; preds = %44, %36, %32, %29
  %53 = phi i1 [ false, %36 ], [ false, %32 ], [ false, %29 ], [ %51, %44 ]
  br i1 %53, label %54, label %89

54:                                               ; preds = %52
  %55 = load i8**, i8*** %3, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 0
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  switch i32 %60, label %78 [
    i32 97, label %61
    i32 100, label %66
    i32 120, label %70
    i32 113, label %74
  ]

61:                                               ; preds = %54
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  %64 = load i8**, i8*** %3, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i32 1
  store i8** %65, i8*** %3, align 8
  br label %88

66:                                               ; preds = %54
  %67 = load i8**, i8*** %3, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i32 1
  store i8** %68, i8*** %3, align 8
  %69 = load i32, i32* @ED_IO, align 4
  store i32 %69, i32* %11, align 4
  br label %88

70:                                               ; preds = %54
  %71 = load i8**, i8*** %3, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i32 1
  store i8** %72, i8*** %3, align 8
  %73 = load i32, i32* @EX_IO, align 4
  store i32 %73, i32* %11, align 4
  br label %88

74:                                               ; preds = %54
  %75 = load i8**, i8*** %3, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i32 1
  store i8** %76, i8*** %3, align 8
  %77 = load i32, i32* @QU_IO, align 4
  store i32 %77, i32* %11, align 4
  br label %88

78:                                               ; preds = %54
  %79 = load i32, i32* @ERR_NAME, align 4
  %80 = load i32, i32* @ERR_SYSTEM, align 4
  %81 = or i32 %79, %80
  %82 = load i8**, i8*** %3, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i8* @short2str(i8* %84)
  %86 = call i32 @CGETS(i32 8, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %87 = call i32 @stderror(i32 %81, i8* %85, i32 %86)
  br label %88

88:                                               ; preds = %78, %74, %70, %66, %61
  br label %29

89:                                               ; preds = %52
  store i32 1, i32* @didsetty, align 4
  %90 = load i8**, i8*** %3, align 8
  %91 = icmp ne i8** %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load i8**, i8*** %3, align 8
  %94 = load i8*, i8** %93, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %245, label %96

96:                                               ; preds = %92, %89
  store i32 -1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %97 = load %struct.tcshmodes*, %struct.tcshmodes** @modelist, align 8
  store %struct.tcshmodes* %97, %struct.tcshmodes** %5, align 8
  br label %98

98:                                               ; preds = %238, %96
  %99 = load %struct.tcshmodes*, %struct.tcshmodes** %5, align 8
  %100 = getelementptr inbounds %struct.tcshmodes, %struct.tcshmodes* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %241

103:                                              ; preds = %98
  %104 = load %struct.tcshmodes*, %struct.tcshmodes** %5, align 8
  %105 = getelementptr inbounds %struct.tcshmodes, %struct.tcshmodes* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %12, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %143

109:                                              ; preds = %103
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, -1
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %114 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @ttylist, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %114, i64 %116
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = load %struct.tcshmodes*, %struct.tcshmodes** %5, align 8
  %120 = getelementptr inbounds %struct.tcshmodes, %struct.tcshmodes* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %113, i32 %125)
  %127 = load %struct.tcshmodes*, %struct.tcshmodes** %5, align 8
  %128 = getelementptr inbounds %struct.tcshmodes, %struct.tcshmodes* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %12, align 4
  %130 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @ttylist, align 8
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %130, i64 %132
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = load %struct.tcshmodes*, %struct.tcshmodes** %5, align 8
  %136 = getelementptr inbounds %struct.tcshmodes, %struct.tcshmodes* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @strlen(i32 %141)
  store i32 %142, i32* %13, align 4
  store i32 %142, i32* %14, align 4
  br label %143

143:                                              ; preds = %109, %103
  %144 = load i32, i32* %12, align 4
  %145 = icmp ne i32 %144, -1
  %146 = zext i1 %145 to i32
  %147 = call i32 @assert(i32 %146)
  %148 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @ttylist, align 8
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %148, i64 %150
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.tcshmodes*, %struct.tcshmodes** %5, align 8
  %159 = getelementptr inbounds %struct.tcshmodes, %struct.tcshmodes* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = and i32 %157, %160
  %162 = icmp ne i32 %161, 0
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i32 43, i32 0
  %165 = trunc i32 %164 to i8
  store i8 %165, i8* %6, align 1
  %166 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @ttylist, align 8
  %167 = load i32, i32* %11, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %166, i64 %168
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = load i32, i32* %12, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.tcshmodes*, %struct.tcshmodes** %5, align 8
  %177 = getelementptr inbounds %struct.tcshmodes, %struct.tcshmodes* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = and i32 %175, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %143
  br label %185

182:                                              ; preds = %143
  %183 = load i8, i8* %6, align 1
  %184 = sext i8 %183 to i32
  br label %185

185:                                              ; preds = %182, %181
  %186 = phi i32 [ 45, %181 ], [ %184, %182 ]
  %187 = trunc i32 %186 to i8
  store i8 %187, i8* %6, align 1
  %188 = load i8, i8* %6, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %194, label %191

191:                                              ; preds = %185
  %192 = load i32, i32* %9, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %237

194:                                              ; preds = %191, %185
  %195 = load %struct.tcshmodes*, %struct.tcshmodes** %5, align 8
  %196 = getelementptr inbounds %struct.tcshmodes, %struct.tcshmodes* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @strlen(i32 %197)
  %199 = load i8, i8* %6, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp ne i32 %200, 0
  %202 = zext i1 %201 to i32
  %203 = add nsw i32 %198, %202
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %15, align 4
  %205 = load i32, i32* %13, align 4
  %206 = load i32, i32* %15, align 4
  %207 = add nsw i32 %205, %206
  %208 = load i32, i32* @TermH, align 4
  %209 = icmp sge i32 %207, %208
  br i1 %209, label %210, label %216

210:                                              ; preds = %194
  %211 = load i32, i32* %14, align 4
  %212 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %211, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %213 = load i32, i32* %14, align 4
  %214 = load i32, i32* %15, align 4
  %215 = add nsw i32 %213, %214
  store i32 %215, i32* %13, align 4
  br label %220

216:                                              ; preds = %194
  %217 = load i32, i32* %15, align 4
  %218 = load i32, i32* %13, align 4
  %219 = add nsw i32 %218, %217
  store i32 %219, i32* %13, align 4
  br label %220

220:                                              ; preds = %216, %210
  %221 = load i8, i8* %6, align 1
  %222 = sext i8 %221 to i32
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %231

224:                                              ; preds = %220
  %225 = load i8, i8* %6, align 1
  %226 = sext i8 %225 to i32
  %227 = load %struct.tcshmodes*, %struct.tcshmodes** %5, align 8
  %228 = getelementptr inbounds %struct.tcshmodes, %struct.tcshmodes* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %226, i32 %229)
  br label %236

231:                                              ; preds = %220
  %232 = load %struct.tcshmodes*, %struct.tcshmodes** %5, align 8
  %233 = getelementptr inbounds %struct.tcshmodes, %struct.tcshmodes* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = call i32 (i8*, ...) @xprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %234)
  br label %236

236:                                              ; preds = %231, %224
  br label %237

237:                                              ; preds = %236, %191
  br label %238

238:                                              ; preds = %237
  %239 = load %struct.tcshmodes*, %struct.tcshmodes** %5, align 8
  %240 = getelementptr inbounds %struct.tcshmodes, %struct.tcshmodes* %239, i32 1
  store %struct.tcshmodes* %240, %struct.tcshmodes** %5, align 8
  br label %98

241:                                              ; preds = %98
  %242 = call i32 @xputchar(i8 signext 10)
  %243 = load i8*, i8** %8, align 8
  %244 = call i32 @cleanup_until(i8* %243)
  br label %408

245:                                              ; preds = %92
  br label %246

246:                                              ; preds = %404, %245
  %247 = load i8**, i8*** %3, align 8
  %248 = icmp ne i8** %247, null
  br i1 %248, label %249, label %254

249:                                              ; preds = %246
  %250 = load i8**, i8*** %3, align 8
  %251 = getelementptr inbounds i8*, i8** %250, i32 1
  store i8** %251, i8*** %3, align 8
  %252 = load i8*, i8** %250, align 8
  store i8* %252, i8** %10, align 8
  %253 = icmp ne i8* %252, null
  br label %254

254:                                              ; preds = %249, %246
  %255 = phi i1 [ false, %246 ], [ %253, %249 ]
  br i1 %255, label %256, label %405

256:                                              ; preds = %254
  %257 = load i8*, i8** %10, align 8
  %258 = load i8, i8* %257, align 1
  %259 = sext i8 %258 to i32
  switch i32 %259, label %264 [
    i32 43, label %260
    i32 45, label %260
  ]

260:                                              ; preds = %256, %256
  %261 = load i8*, i8** %10, align 8
  %262 = getelementptr inbounds i8, i8* %261, i32 1
  store i8* %262, i8** %10, align 8
  %263 = load i8, i8* %261, align 1
  store i8 %263, i8* %6, align 1
  br label %265

264:                                              ; preds = %256
  store i8 0, i8* %6, align 1
  br label %265

265:                                              ; preds = %264, %260
  %266 = load i8*, i8** %10, align 8
  %267 = call i8* @short2str(i8* %266)
  store i8* %267, i8** %7, align 8
  %268 = load %struct.tcshmodes*, %struct.tcshmodes** @modelist, align 8
  store %struct.tcshmodes* %268, %struct.tcshmodes** %5, align 8
  br label %269

269:                                              ; preds = %283, %265
  %270 = load %struct.tcshmodes*, %struct.tcshmodes** %5, align 8
  %271 = getelementptr inbounds %struct.tcshmodes, %struct.tcshmodes* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %286

274:                                              ; preds = %269
  %275 = load %struct.tcshmodes*, %struct.tcshmodes** %5, align 8
  %276 = getelementptr inbounds %struct.tcshmodes, %struct.tcshmodes* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 4
  %278 = load i8*, i8** %7, align 8
  %279 = call i64 @strcmp(i32 %277, i8* %278)
  %280 = icmp eq i64 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %274
  br label %286

282:                                              ; preds = %274
  br label %283

283:                                              ; preds = %282
  %284 = load %struct.tcshmodes*, %struct.tcshmodes** %5, align 8
  %285 = getelementptr inbounds %struct.tcshmodes, %struct.tcshmodes* %284, i32 1
  store %struct.tcshmodes* %285, %struct.tcshmodes** %5, align 8
  br label %269

286:                                              ; preds = %281, %269
  %287 = load %struct.tcshmodes*, %struct.tcshmodes** %5, align 8
  %288 = getelementptr inbounds %struct.tcshmodes, %struct.tcshmodes* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %298, label %291

291:                                              ; preds = %286
  %292 = load i32, i32* @ERR_NAME, align 4
  %293 = load i32, i32* @ERR_SYSTEM, align 4
  %294 = or i32 %292, %293
  %295 = load i8*, i8** %7, align 8
  %296 = call i32 @CGETS(i32 8, i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %297 = call i32 @stderror(i32 %294, i8* %295, i32 %296)
  br label %298

298:                                              ; preds = %291, %286
  %299 = load i8, i8* %6, align 1
  %300 = sext i8 %299 to i32
  switch i32 %300, label %369 [
    i32 43, label %301
    i32 45, label %335
  ]

301:                                              ; preds = %298
  %302 = load %struct.tcshmodes*, %struct.tcshmodes** %5, align 8
  %303 = getelementptr inbounds %struct.tcshmodes, %struct.tcshmodes* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @ttylist, align 8
  %306 = load i32, i32* %11, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %305, i64 %307
  %309 = load %struct.TYPE_2__*, %struct.TYPE_2__** %308, align 8
  %310 = load %struct.tcshmodes*, %struct.tcshmodes** %5, align 8
  %311 = getelementptr inbounds %struct.tcshmodes, %struct.tcshmodes* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %309, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = or i32 %316, %304
  store i32 %317, i32* %315, align 4
  %318 = load %struct.tcshmodes*, %struct.tcshmodes** %5, align 8
  %319 = getelementptr inbounds %struct.tcshmodes, %struct.tcshmodes* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = xor i32 %320, -1
  %322 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @ttylist, align 8
  %323 = load i32, i32* %11, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %322, i64 %324
  %326 = load %struct.TYPE_2__*, %struct.TYPE_2__** %325, align 8
  %327 = load %struct.tcshmodes*, %struct.tcshmodes** %5, align 8
  %328 = getelementptr inbounds %struct.tcshmodes, %struct.tcshmodes* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %326, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = and i32 %333, %321
  store i32 %334, i32* %332, align 4
  br label %404

335:                                              ; preds = %298
  %336 = load %struct.tcshmodes*, %struct.tcshmodes** %5, align 8
  %337 = getelementptr inbounds %struct.tcshmodes, %struct.tcshmodes* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 4
  %339 = xor i32 %338, -1
  %340 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @ttylist, align 8
  %341 = load i32, i32* %11, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %340, i64 %342
  %344 = load %struct.TYPE_2__*, %struct.TYPE_2__** %343, align 8
  %345 = load %struct.tcshmodes*, %struct.tcshmodes** %5, align 8
  %346 = getelementptr inbounds %struct.tcshmodes, %struct.tcshmodes* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %344, i64 %348
  %350 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = and i32 %351, %339
  store i32 %352, i32* %350, align 4
  %353 = load %struct.tcshmodes*, %struct.tcshmodes** %5, align 8
  %354 = getelementptr inbounds %struct.tcshmodes, %struct.tcshmodes* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 4
  %356 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @ttylist, align 8
  %357 = load i32, i32* %11, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %356, i64 %358
  %360 = load %struct.TYPE_2__*, %struct.TYPE_2__** %359, align 8
  %361 = load %struct.tcshmodes*, %struct.tcshmodes** %5, align 8
  %362 = getelementptr inbounds %struct.tcshmodes, %struct.tcshmodes* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %360, i64 %364
  %366 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = or i32 %367, %355
  store i32 %368, i32* %366, align 4
  br label %404

369:                                              ; preds = %298
  %370 = load %struct.tcshmodes*, %struct.tcshmodes** %5, align 8
  %371 = getelementptr inbounds %struct.tcshmodes, %struct.tcshmodes* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = xor i32 %372, -1
  %374 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @ttylist, align 8
  %375 = load i32, i32* %11, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %374, i64 %376
  %378 = load %struct.TYPE_2__*, %struct.TYPE_2__** %377, align 8
  %379 = load %struct.tcshmodes*, %struct.tcshmodes** %5, align 8
  %380 = getelementptr inbounds %struct.tcshmodes, %struct.tcshmodes* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %378, i64 %382
  %384 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 4
  %386 = and i32 %385, %373
  store i32 %386, i32* %384, align 4
  %387 = load %struct.tcshmodes*, %struct.tcshmodes** %5, align 8
  %388 = getelementptr inbounds %struct.tcshmodes, %struct.tcshmodes* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = xor i32 %389, -1
  %391 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @ttylist, align 8
  %392 = load i32, i32* %11, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %391, i64 %393
  %395 = load %struct.TYPE_2__*, %struct.TYPE_2__** %394, align 8
  %396 = load %struct.tcshmodes*, %struct.tcshmodes** %5, align 8
  %397 = getelementptr inbounds %struct.tcshmodes, %struct.tcshmodes* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %395, i64 %399
  %401 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 4
  %403 = and i32 %402, %390
  store i32 %403, i32* %401, align 4
  br label %404

404:                                              ; preds = %369, %335, %301
  br label %246

405:                                              ; preds = %254
  %406 = load i8*, i8** %8, align 8
  %407 = call i32 @cleanup_until(i8* %406)
  br label %408

408:                                              ; preds = %405, %241
  ret void
}

declare dso_local i32 @USE(%struct.command*) #1

declare dso_local i8* @strsave(i8*) #1

declare dso_local i8* @short2str(i8*) #1

declare dso_local i32 @cleanup_push(i8*, i32) #1

declare dso_local i32 @setname(i8*) #1

declare dso_local i32 @stderror(i32, i8*, i32) #1

declare dso_local i32 @CGETS(i32, i32, i8*) #1

declare dso_local i32 @xprintf(i8*, ...) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @xputchar(i8 signext) #1

declare dso_local i32 @cleanup_until(i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
