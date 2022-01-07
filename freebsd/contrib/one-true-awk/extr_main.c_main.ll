; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_CTYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@LC_COLLATE = common dso_local global i32 0, align 4
@LC_NUMERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@cmdname = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [68 x i8] c"usage: %s [-F fs] [-v var=value] [-f progfile | 'prog'] [file ...]\0A\00", align 1
@SIGFPE = common dso_local global i32 0, align 4
@fpecatch = common dso_local global i32 0, align 4
@srand_seed = common dso_local global i32 0, align 4
@yyin = common dso_local global i32* null, align 8
@NSYMTAB = common dso_local global i32 0, align 4
@symtab = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"-version\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"awk %s\0A\00", align 1
@version = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"-safe\00", align 1
@safe = common dso_local global i32 0, align 4
@npfile = common dso_local global i64 0, align 8
@MAX_PFILE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"too many -f options\00", align 1
@pfile = common dso_local global i8** null, align 8
@.str.9 = private unnamed_addr constant [20 x i8] c"no program filename\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"field separator FS is empty\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"invalid -v option argument: %s\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"no variable name\00", align 1
@dbg = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [26 x i8] c"unknown option %s ignored\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"no program given\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"program = |%s|\0A\00", align 1
@lexprog = common dso_local global i8* null, align 8
@recsize = common dso_local global i32 0, align 4
@compile_time = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [21 x i8] c"argc=%d, argv[0]=%s\0A\00", align 1
@environ = common dso_local global i32 0, align 4
@FS = common dso_local global i32* null, align 8
@.str.18 = private unnamed_addr constant [14 x i8] c"errorflag=%d\0A\00", align 1
@errorflag = common dso_local global i64 0, align 8
@winner = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  %7 = load i32, i32* @LC_CTYPE, align 4
  %8 = call i32 @setlocale(i32 %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @LC_COLLATE, align 4
  %10 = call i32 @setlocale(i32 %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @LC_NUMERIC, align 4
  %12 = call i32 @setlocale(i32 %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** @cmdname, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load i32, i32* @stderr, align 4
  %20 = load i8*, i8** @cmdname, align 8
  %21 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  %22 = call i32 @exit(i32 1) #3
  unreachable

23:                                               ; preds = %2
  %24 = load i32, i32* @SIGFPE, align 4
  %25 = load i32, i32* @fpecatch, align 4
  %26 = call i32 @signal(i32 %24, i32 %25)
  store i32 1, i32* @srand_seed, align 4
  %27 = load i32, i32* @srand_seed, align 4
  %28 = sext i32 %27 to i64
  %29 = call i32 @srandom(i64 %28)
  store i32* null, i32** @yyin, align 8
  %30 = load i32, i32* @NSYMTAB, align 4
  %31 = load i32, i32* @NSYMTAB, align 4
  %32 = sdiv i32 %30, %31
  %33 = call i32 @makesymtab(i32 %32)
  store i32 %33, i32* @symtab, align 4
  br label %34

34:                                               ; preds = %313, %23
  %35 = load i32, i32* %4, align 4
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %53

37:                                               ; preds = %34
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 1
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 45
  br i1 %44, label %45, label %53

45:                                               ; preds = %37
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br label %53

53:                                               ; preds = %45, %37, %34
  %54 = phi i1 [ false, %37 ], [ false, %34 ], [ %52, %45 ]
  br i1 %54, label %55, label %318

55:                                               ; preds = %53
  %56 = load i8**, i8*** %5, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @strcmp(i8* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load i8**, i8*** %5, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i64 @strcmp(i8* %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %61, %55
  %68 = load i8*, i8** @version, align 8
  %69 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %68)
  %70 = call i32 @exit(i32 0) #3
  unreachable

71:                                               ; preds = %61
  %72 = load i8**, i8*** %5, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 1
  %74 = load i8*, i8** %73, align 8
  %75 = call i64 @strcmp(i8* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %71
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %4, align 4
  %80 = load i8**, i8*** %5, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i32 1
  store i8** %81, i8*** %5, align 8
  br label %318

82:                                               ; preds = %71
  %83 = load i8**, i8*** %5, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 1
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  switch i32 %88, label %308 [
    i32 115, label %89
    i32 102, label %97
    i32 70, label %148
    i32 118, label %241
    i32 100, label %296
  ]

89:                                               ; preds = %82
  %90 = load i8**, i8*** %5, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 1
  %92 = load i8*, i8** %91, align 8
  %93 = call i64 @strcmp(i8* %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  store i32 1, i32* @safe, align 4
  br label %96

96:                                               ; preds = %95, %89
  br label %313

97:                                               ; preds = %82
  %98 = load i8**, i8*** %5, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 1
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 2
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %122

105:                                              ; preds = %97
  %106 = load i64, i64* @npfile, align 8
  %107 = load i32, i32* @MAX_PFILE, align 4
  %108 = sub nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = icmp sge i64 %106, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = call i32 (i8*, ...) @FATAL(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %105
  %114 = load i8**, i8*** %5, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i64 1
  %116 = load i8*, i8** %115, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 2
  %118 = load i8**, i8*** @pfile, align 8
  %119 = load i64, i64* @npfile, align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* @npfile, align 8
  %121 = getelementptr inbounds i8*, i8** %118, i64 %119
  store i8* %117, i8** %121, align 8
  br label %147

122:                                              ; preds = %97
  %123 = load i32, i32* %4, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %4, align 4
  %125 = load i8**, i8*** %5, align 8
  %126 = getelementptr inbounds i8*, i8** %125, i32 1
  store i8** %126, i8*** %5, align 8
  %127 = load i32, i32* %4, align 4
  %128 = icmp sle i32 %127, 1
  br i1 %128, label %129, label %131

129:                                              ; preds = %122
  %130 = call i32 (i8*, ...) @FATAL(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %122
  %132 = load i64, i64* @npfile, align 8
  %133 = load i32, i32* @MAX_PFILE, align 4
  %134 = sub nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = icmp sge i64 %132, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  %138 = call i32 (i8*, ...) @FATAL(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  br label %139

139:                                              ; preds = %137, %131
  %140 = load i8**, i8*** %5, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i64 1
  %142 = load i8*, i8** %141, align 8
  %143 = load i8**, i8*** @pfile, align 8
  %144 = load i64, i64* @npfile, align 8
  %145 = add nsw i64 %144, 1
  store i64 %145, i64* @npfile, align 8
  %146 = getelementptr inbounds i8*, i8** %143, i64 %144
  store i8* %142, i8** %146, align 8
  br label %147

147:                                              ; preds = %139, %113
  br label %313

148:                                              ; preds = %82
  %149 = load i8**, i8*** %5, align 8
  %150 = getelementptr inbounds i8*, i8** %149, i64 1
  %151 = load i8*, i8** %150, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 2
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %188

156:                                              ; preds = %148
  %157 = load i8**, i8*** %5, align 8
  %158 = getelementptr inbounds i8*, i8** %157, i64 1
  %159 = load i8*, i8** %158, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 2
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %162, 116
  br i1 %163, label %164, label %173

164:                                              ; preds = %156
  %165 = load i8**, i8*** %5, align 8
  %166 = getelementptr inbounds i8*, i8** %165, i64 1
  %167 = load i8*, i8** %166, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 3
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %164
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8** %6, align 8
  br label %187

173:                                              ; preds = %164, %156
  %174 = load i8**, i8*** %5, align 8
  %175 = getelementptr inbounds i8*, i8** %174, i64 1
  %176 = load i8*, i8** %175, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 2
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %173
  %182 = load i8**, i8*** %5, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i64 1
  %184 = load i8*, i8** %183, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 2
  store i8* %185, i8** %6, align 8
  br label %186

186:                                              ; preds = %181, %173
  br label %187

187:                                              ; preds = %186, %172
  br label %230

188:                                              ; preds = %148
  %189 = load i32, i32* %4, align 4
  %190 = add nsw i32 %189, -1
  store i32 %190, i32* %4, align 4
  %191 = load i8**, i8*** %5, align 8
  %192 = getelementptr inbounds i8*, i8** %191, i32 1
  store i8** %192, i8*** %5, align 8
  %193 = load i32, i32* %4, align 4
  %194 = icmp sgt i32 %193, 1
  br i1 %194, label %195, label %212

195:                                              ; preds = %188
  %196 = load i8**, i8*** %5, align 8
  %197 = getelementptr inbounds i8*, i8** %196, i64 1
  %198 = load i8*, i8** %197, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 0
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp eq i32 %201, 116
  br i1 %202, label %203, label %212

203:                                              ; preds = %195
  %204 = load i8**, i8*** %5, align 8
  %205 = getelementptr inbounds i8*, i8** %204, i64 1
  %206 = load i8*, i8** %205, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 1
  %208 = load i8, i8* %207, align 1
  %209 = sext i8 %208 to i32
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %203
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8** %6, align 8
  br label %229

212:                                              ; preds = %203, %195, %188
  %213 = load i32, i32* %4, align 4
  %214 = icmp sgt i32 %213, 1
  br i1 %214, label %215, label %228

215:                                              ; preds = %212
  %216 = load i8**, i8*** %5, align 8
  %217 = getelementptr inbounds i8*, i8** %216, i64 1
  %218 = load i8*, i8** %217, align 8
  %219 = getelementptr inbounds i8, i8* %218, i64 0
  %220 = load i8, i8* %219, align 1
  %221 = sext i8 %220 to i32
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %215
  %224 = load i8**, i8*** %5, align 8
  %225 = getelementptr inbounds i8*, i8** %224, i64 1
  %226 = load i8*, i8** %225, align 8
  %227 = getelementptr inbounds i8, i8* %226, i64 0
  store i8* %227, i8** %6, align 8
  br label %228

228:                                              ; preds = %223, %215, %212
  br label %229

229:                                              ; preds = %228, %211
  br label %230

230:                                              ; preds = %229, %187
  %231 = load i8*, i8** %6, align 8
  %232 = icmp eq i8* %231, null
  br i1 %232, label %238, label %233

233:                                              ; preds = %230
  %234 = load i8*, i8** %6, align 8
  %235 = load i8, i8* %234, align 1
  %236 = sext i8 %235 to i32
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %233, %230
  %239 = call i32 (i8*, ...) @WARNING(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  br label %240

240:                                              ; preds = %238, %233
  br label %313

241:                                              ; preds = %82
  %242 = load i8**, i8*** %5, align 8
  %243 = getelementptr inbounds i8*, i8** %242, i64 1
  %244 = load i8*, i8** %243, align 8
  %245 = getelementptr inbounds i8, i8* %244, i64 2
  %246 = load i8, i8* %245, align 1
  %247 = sext i8 %246 to i32
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %269

249:                                              ; preds = %241
  %250 = load i8**, i8*** %5, align 8
  %251 = getelementptr inbounds i8*, i8** %250, i64 1
  %252 = load i8*, i8** %251, align 8
  %253 = getelementptr inbounds i8, i8* %252, i64 2
  %254 = call i32 @isclvar(i8* %253)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %262

256:                                              ; preds = %249
  %257 = load i8**, i8*** %5, align 8
  %258 = getelementptr inbounds i8*, i8** %257, i64 1
  %259 = load i8*, i8** %258, align 8
  %260 = getelementptr inbounds i8, i8* %259, i64 2
  %261 = call i32 @setclvar(i8* %260)
  br label %268

262:                                              ; preds = %249
  %263 = load i8**, i8*** %5, align 8
  %264 = getelementptr inbounds i8*, i8** %263, i64 1
  %265 = load i8*, i8** %264, align 8
  %266 = getelementptr inbounds i8, i8* %265, i64 2
  %267 = call i32 (i8*, ...) @FATAL(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i8* %266)
  br label %268

268:                                              ; preds = %262, %256
  br label %295

269:                                              ; preds = %241
  %270 = load i32, i32* %4, align 4
  %271 = add nsw i32 %270, -1
  store i32 %271, i32* %4, align 4
  %272 = load i8**, i8*** %5, align 8
  %273 = getelementptr inbounds i8*, i8** %272, i32 1
  store i8** %273, i8*** %5, align 8
  %274 = load i32, i32* %4, align 4
  %275 = icmp sle i32 %274, 1
  br i1 %275, label %276, label %278

276:                                              ; preds = %269
  %277 = call i32 (i8*, ...) @FATAL(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  br label %278

278:                                              ; preds = %276, %269
  %279 = load i8**, i8*** %5, align 8
  %280 = getelementptr inbounds i8*, i8** %279, i64 1
  %281 = load i8*, i8** %280, align 8
  %282 = call i32 @isclvar(i8* %281)
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %289

284:                                              ; preds = %278
  %285 = load i8**, i8*** %5, align 8
  %286 = getelementptr inbounds i8*, i8** %285, i64 1
  %287 = load i8*, i8** %286, align 8
  %288 = call i32 @setclvar(i8* %287)
  br label %294

289:                                              ; preds = %278
  %290 = load i8**, i8*** %5, align 8
  %291 = getelementptr inbounds i8*, i8** %290, i64 1
  %292 = load i8*, i8** %291, align 8
  %293 = call i32 (i8*, ...) @FATAL(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i8* %292)
  br label %294

294:                                              ; preds = %289, %284
  br label %295

295:                                              ; preds = %294, %268
  br label %313

296:                                              ; preds = %82
  %297 = load i8**, i8*** %5, align 8
  %298 = getelementptr inbounds i8*, i8** %297, i64 1
  %299 = load i8*, i8** %298, align 8
  %300 = getelementptr inbounds i8, i8* %299, i64 2
  %301 = call i64 @atoi(i8* %300)
  store i64 %301, i64* @dbg, align 8
  %302 = load i64, i64* @dbg, align 8
  %303 = icmp eq i64 %302, 0
  br i1 %303, label %304, label %305

304:                                              ; preds = %296
  store i64 1, i64* @dbg, align 8
  br label %305

305:                                              ; preds = %304, %296
  %306 = load i8*, i8** @version, align 8
  %307 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %306)
  br label %313

308:                                              ; preds = %82
  %309 = load i8**, i8*** %5, align 8
  %310 = getelementptr inbounds i8*, i8** %309, i64 1
  %311 = load i8*, i8** %310, align 8
  %312 = call i32 (i8*, ...) @WARNING(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i8* %311)
  br label %313

313:                                              ; preds = %308, %305, %295, %240, %147, %96
  %314 = load i32, i32* %4, align 4
  %315 = add nsw i32 %314, -1
  store i32 %315, i32* %4, align 4
  %316 = load i8**, i8*** %5, align 8
  %317 = getelementptr inbounds i8*, i8** %316, i32 1
  store i8** %317, i8*** %5, align 8
  br label %34

318:                                              ; preds = %77, %53
  %319 = load i64, i64* @npfile, align 8
  %320 = icmp eq i64 %319, 0
  br i1 %320, label %321, label %343

321:                                              ; preds = %318
  %322 = load i32, i32* %4, align 4
  %323 = icmp sle i32 %322, 1
  br i1 %323, label %324, label %331

324:                                              ; preds = %321
  %325 = load i64, i64* @dbg, align 8
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %329

327:                                              ; preds = %324
  %328 = call i32 @exit(i32 0) #3
  unreachable

329:                                              ; preds = %324
  %330 = call i32 (i8*, ...) @FATAL(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0))
  br label %331

331:                                              ; preds = %329, %321
  %332 = load i8**, i8*** %5, align 8
  %333 = getelementptr inbounds i8*, i8** %332, i64 1
  %334 = load i8*, i8** %333, align 8
  %335 = call i32 @dprintf(i8* %334)
  %336 = load i8**, i8*** %5, align 8
  %337 = getelementptr inbounds i8*, i8** %336, i64 1
  %338 = load i8*, i8** %337, align 8
  store i8* %338, i8** @lexprog, align 8
  %339 = load i32, i32* %4, align 4
  %340 = add nsw i32 %339, -1
  store i32 %340, i32* %4, align 4
  %341 = load i8**, i8*** %5, align 8
  %342 = getelementptr inbounds i8*, i8** %341, i32 1
  store i8** %342, i8*** %5, align 8
  br label %343

343:                                              ; preds = %331, %318
  %344 = load i32, i32* @recsize, align 4
  %345 = call i32 @recinit(i32 %344)
  %346 = call i32 (...) @syminit()
  store i32 1, i32* @compile_time, align 4
  %347 = load i8*, i8** @cmdname, align 8
  %348 = load i8**, i8*** %5, align 8
  %349 = getelementptr inbounds i8*, i8** %348, i64 0
  store i8* %347, i8** %349, align 8
  %350 = load i32, i32* %4, align 4
  %351 = load i8**, i8*** %5, align 8
  %352 = getelementptr inbounds i8*, i8** %351, i64 0
  %353 = load i8*, i8** %352, align 8
  %354 = call i32 @dprintf(i8* %353)
  %355 = load i32, i32* %4, align 4
  %356 = load i8**, i8*** %5, align 8
  %357 = call i32 @arginit(i32 %355, i8** %356)
  %358 = load i32, i32* @safe, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %363, label %360

360:                                              ; preds = %343
  %361 = load i32, i32* @environ, align 4
  %362 = call i32 @envinit(i32 %361)
  br label %363

363:                                              ; preds = %360, %343
  %364 = call i32 (...) @yyparse()
  %365 = load i32, i32* @LC_NUMERIC, align 4
  %366 = call i32 @setlocale(i32 %365, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %367 = load i8*, i8** %6, align 8
  %368 = icmp ne i8* %367, null
  br i1 %368, label %369, label %373

369:                                              ; preds = %363
  %370 = load i8*, i8** %6, align 8
  %371 = call i32 @qstring(i8* %370, i8 signext 0)
  %372 = load i32*, i32** @FS, align 8
  store i32 %371, i32* %372, align 4
  br label %373

373:                                              ; preds = %369, %363
  %374 = load i64, i64* @errorflag, align 8
  %375 = inttoptr i64 %374 to i8*
  %376 = call i32 @dprintf(i8* %375)
  %377 = load i64, i64* @errorflag, align 8
  %378 = icmp eq i64 %377, 0
  br i1 %378, label %379, label %382

379:                                              ; preds = %373
  store i32 0, i32* @compile_time, align 4
  %380 = load i32, i32* @winner, align 4
  %381 = call i32 @run(i32 %380)
  br label %384

382:                                              ; preds = %373
  %383 = call i32 (...) @bracecheck()
  br label %384

384:                                              ; preds = %382, %379
  %385 = load i64, i64* @errorflag, align 8
  %386 = trunc i64 %385 to i32
  ret i32 %386
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @srandom(i64) #1

declare dso_local i32 @makesymtab(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @FATAL(i8*, ...) #1

declare dso_local i32 @WARNING(i8*, ...) #1

declare dso_local i32 @isclvar(i8*) #1

declare dso_local i32 @setclvar(i8*) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i32 @dprintf(i8*) #1

declare dso_local i32 @recinit(i32) #1

declare dso_local i32 @syminit(...) #1

declare dso_local i32 @arginit(i32, i8**) #1

declare dso_local i32 @envinit(i32) #1

declare dso_local i32 @yyparse(...) #1

declare dso_local i32 @qstring(i8*, i8 signext) #1

declare dso_local i32 @run(i32) #1

declare dso_local i32 @bracecheck(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
