; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.exp.c_filetest.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.exp.c_filetest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.passwd = type { i8* }
%struct.group = type { i8* }

@STR0 = common dso_local global i8* null, align 8
@MB_LEN_MAX = common dso_local global i32 0, align 4
@FILETESTS = common dso_local global i8* null, align 8
@FILEVALS = common dso_local global i8* null, align 8
@STRcolon = common dso_local global i8* null, align 8
@STRminus1 = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"AMCUGP\00", align 1
@ERR_NAME = common dso_local global i32 0, align 4
@ERR_FILEINQ = common dso_local global i32 0, align 4
@ANYOP = common dso_local global i32 0, align 4
@ERR_FILENAME = common dso_local global i32 0, align 4
@TEXP_IGNORE = common dso_local global i32 0, align 4
@STRNULL = common dso_local global i8* null, align 8
@G_APPEND = common dso_local global i32 0, align 4
@R_OK = common dso_local global i32 0, align 4
@W_OK = common dso_local global i32 0, align 4
@X_OK = common dso_local global i32 0, align 4
@S_ISUID = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@S_ISVTX = common dso_local global i32 0, align 4
@uid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%o\00", align 1
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4
@S_IRWXO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"exp6 -? i\00", align 1
@IMIGRATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @filetest(i8* %0, i8*** %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8***, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat, align 8
  %9 = alloca %struct.stat*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8, align 1
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.passwd*, align 8
  %27 = alloca %struct.group*, align 8
  %28 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8*** %1, i8**** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.stat* null, %struct.stat** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 65535, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %29 = load i8*, i8** %5, align 8
  store i8* %29, i8** %13, align 8
  store i8 0, i8* %20, align 1
  %30 = load i8*, i8** @STR0, align 8
  store i8* %30, i8** %21, align 8
  %31 = load i32, i32* @MB_LEN_MAX, align 4
  %32 = add nsw i32 22, %31
  %33 = add nsw i32 %32, 1
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %23, align 8
  %36 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %24, align 8
  br label %37

37:                                               ; preds = %44, %3
  %38 = load i8*, i8** @FILETESTS, align 8
  %39 = load i8*, i8** %13, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %13, align 8
  %41 = load i8, i8* %40, align 1
  %42 = call i64 @any(i8* %38, i8 signext %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %37

45:                                               ; preds = %37
  %46 = load i8*, i8** %13, align 8
  %47 = load i8, i8* %46, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %45
  %50 = load i8*, i8** %13, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 -1
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 76
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i8*, i8** %13, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 -1
  store i8* %57, i8** %13, align 8
  br label %58

58:                                               ; preds = %55, %49, %45
  %59 = load i8*, i8** @FILEVALS, align 8
  %60 = load i8*, i8** %13, align 8
  %61 = load i8, i8* %60, align 1
  %62 = call i64 @any(i8* %59, i8 signext %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %130

64:                                               ; preds = %58
  %65 = load i8*, i8** %13, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %13, align 8
  %67 = load i8, i8* %65, align 1
  store i8 %67, i8* %20, align 1
  %68 = load i8, i8* %20, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 70
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i8*, i8** @STRcolon, align 8
  br label %75

73:                                               ; preds = %64
  %74 = load i8*, i8** @STRminus1, align 8
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i8* [ %72, %71 ], [ %74, %73 ]
  store i8* %76, i8** %21, align 8
  %77 = load i8, i8* %20, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 80
  br i1 %79, label %80, label %117

80:                                               ; preds = %75
  %81 = load i8*, i8** %13, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp sge i32 %83, 48
  br i1 %84, label %85, label %117

85:                                               ; preds = %80
  %86 = load i8*, i8** %13, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp sle i32 %88, 55
  br i1 %89, label %90, label %117

90:                                               ; preds = %85
  %91 = load i8*, i8** %13, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = sub nsw i32 %93, 48
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %108, %90
  %96 = load i8*, i8** %13, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %13, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp sge i32 %99, 48
  br i1 %100, label %101, label %106

101:                                              ; preds = %95
  %102 = load i8*, i8** %13, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp sle i32 %104, 55
  br label %106

106:                                              ; preds = %101, %95
  %107 = phi i1 [ false, %95 ], [ %105, %101 ]
  br i1 %107, label %108, label %116

108:                                              ; preds = %106
  %109 = load i32, i32* %11, align 4
  %110 = mul i32 8, %109
  %111 = load i8*, i8** %13, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = sub nsw i32 %113, 48
  %115 = add i32 %110, %114
  store i32 %115, i32* %11, align 4
  br label %95

116:                                              ; preds = %106
  br label %117

117:                                              ; preds = %116, %85, %80, %75
  %118 = load i8*, i8** %13, align 8
  %119 = load i8*, i8** @STRcolon, align 8
  %120 = call i64 @Strcmp(i8* %118, i8* %119)
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %117
  %123 = load i8, i8* %20, align 1
  %124 = call i64 @any(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8 signext %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  store i32 1, i32* %12, align 4
  %127 = load i8*, i8** %13, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %13, align 8
  br label %129

129:                                              ; preds = %126, %122, %117
  br label %130

130:                                              ; preds = %129, %58
  %131 = load i8*, i8** %13, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %140, label %135

135:                                              ; preds = %130
  %136 = load i8*, i8** %13, align 8
  %137 = load i8*, i8** %5, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 1
  %139 = icmp eq i8* %136, %138
  br i1 %139, label %140, label %145

140:                                              ; preds = %135, %130
  %141 = load i32, i32* @ERR_NAME, align 4
  %142 = load i32, i32* @ERR_FILEINQ, align 4
  %143 = or i32 %141, %142
  %144 = call i32 @stderror(i32 %143)
  br label %145

145:                                              ; preds = %140, %135
  %146 = load i8***, i8**** %6, align 8
  %147 = load i8**, i8*** %146, align 8
  %148 = load i8*, i8** %147, align 8
  %149 = load i32, i32* @ANYOP, align 4
  %150 = call i64 @isa(i8* %148, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %164

152:                                              ; preds = %145
  %153 = load i8***, i8**** %6, align 8
  %154 = load i8**, i8*** %153, align 8
  %155 = load i8*, i8** %154, align 8
  %156 = call i8* @short2str(i8* %155)
  %157 = call i32 (i8*, %struct.stat*, ...) bitcast (i32 (...)* @stat to i32 (i8*, %struct.stat*, ...)*)(i8* %156, %struct.stat* %8)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %152
  %160 = load i32, i32* @ERR_NAME, align 4
  %161 = load i32, i32* @ERR_FILENAME, align 4
  %162 = or i32 %160, %161
  %163 = call i32 @stderror(i32 %162)
  br label %164

164:                                              ; preds = %159, %152, %145
  %165 = load i8***, i8**** %6, align 8
  %166 = load i8**, i8*** %165, align 8
  %167 = getelementptr inbounds i8*, i8** %166, i32 1
  store i8** %167, i8*** %165, align 8
  %168 = load i8*, i8** %166, align 8
  store i8* %168, i8** %14, align 8
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* @TEXP_IGNORE, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %164
  %174 = load i8*, i8** @STRNULL, align 8
  %175 = call i8* @Strsave(i8* %174)
  store i8* %175, i8** %4, align 8
  store i32 1, i32* %28, align 4
  br label %491

176:                                              ; preds = %164
  %177 = load i8*, i8** %14, align 8
  %178 = load i32, i32* @G_APPEND, align 4
  %179 = call i8* @globone(i8* %177, i32 %178)
  store i8* %179, i8** %15, align 8
  %180 = load i8*, i8** %15, align 8
  %181 = call i32 @cleanup_push(i8* %180, i32 (i8*)* @xfree)
  %182 = load i8*, i8** %5, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 1
  store i8* %183, i8** %13, align 8
  br label %184

184:                                              ; preds = %481, %176
  %185 = load i8*, i8** %13, align 8
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  switch i32 %187, label %217 [
    i32 114, label %188
    i32 119, label %195
    i32 120, label %202
    i32 88, label %209
    i32 116, label %212
  ]

188:                                              ; preds = %184
  %189 = load i8*, i8** %15, align 8
  %190 = load i32, i32* @R_OK, align 4
  %191 = call i32 @sh_access(i8* %189, i32 %190)
  %192 = icmp ne i32 %191, 0
  %193 = xor i1 %192, true
  %194 = zext i1 %193 to i32
  store i32 %194, i32* %10, align 4
  br label %471

195:                                              ; preds = %184
  %196 = load i8*, i8** %15, align 8
  %197 = load i32, i32* @W_OK, align 4
  %198 = call i32 @sh_access(i8* %196, i32 %197)
  %199 = icmp ne i32 %198, 0
  %200 = xor i1 %199, true
  %201 = zext i1 %200 to i32
  store i32 %201, i32* %10, align 4
  br label %471

202:                                              ; preds = %184
  %203 = load i8*, i8** %15, align 8
  %204 = load i32, i32* @X_OK, align 4
  %205 = call i32 @sh_access(i8* %203, i32 %204)
  %206 = icmp ne i32 %205, 0
  %207 = xor i1 %206, true
  %208 = zext i1 %207 to i32
  store i32 %208, i32* %10, align 4
  br label %471

209:                                              ; preds = %184
  %210 = load i8*, i8** %15, align 8
  %211 = call i32 @find_cmd(i8* %210, i32 0)
  store i32 %211, i32* %10, align 4
  br label %471

212:                                              ; preds = %184
  %213 = load i8*, i8** %15, align 8
  %214 = call i8* @short2str(i8* %213)
  %215 = call i32 @atoi(i8* %214)
  %216 = call i32 @isatty(i32 %215)
  store i32 %216, i32* %10, align 4
  br label %471

217:                                              ; preds = %184
  %218 = load %struct.stat*, %struct.stat** %9, align 8
  %219 = icmp ne %struct.stat* %218, null
  br i1 %219, label %232, label %220

220:                                              ; preds = %217
  store %struct.stat* %8, %struct.stat** %9, align 8
  %221 = load i8*, i8** %15, align 8
  %222 = call i8* @short2str(i8* %221)
  %223 = load %struct.stat*, %struct.stat** %9, align 8
  %224 = call i32 (i8*, %struct.stat*, ...) bitcast (i32 (...)* @stat to i32 (i8*, %struct.stat*, ...)*)(i8* %222, %struct.stat* %223)
  %225 = icmp eq i32 %224, -1
  br i1 %225, label %226, label %231

226:                                              ; preds = %220
  %227 = load i8*, i8** %15, align 8
  %228 = call i32 @cleanup_until(i8* %227)
  %229 = load i8*, i8** %21, align 8
  %230 = call i8* @Strsave(i8* %229)
  store i8* %230, i8** %4, align 8
  store i32 1, i32* %28, align 4
  br label %491

231:                                              ; preds = %220
  br label %232

232:                                              ; preds = %231, %217
  %233 = load i8*, i8** %13, align 8
  %234 = load i8, i8* %233, align 1
  %235 = sext i8 %234 to i32
  switch i32 %235, label %470 [
    i32 102, label %236
    i32 100, label %237
    i32 112, label %238
    i32 109, label %239
    i32 75, label %240
    i32 108, label %241
    i32 83, label %242
    i32 98, label %243
    i32 99, label %244
    i32 117, label %245
    i32 103, label %253
    i32 107, label %261
    i32 122, label %269
    i32 115, label %275
    i32 101, label %280
    i32 111, label %281
    i32 68, label %288
    i32 73, label %293
    i32 70, label %298
    i32 76, label %333
    i32 78, label %340
    i32 80, label %344
    i32 85, label %381
    i32 71, label %402
    i32 90, label %423
    i32 65, label %427
    i32 77, label %427
    i32 67, label %427
  ]

236:                                              ; preds = %232
  store i32 0, i32* %10, align 4
  br label %470

237:                                              ; preds = %232
  store i32 0, i32* %10, align 4
  br label %470

238:                                              ; preds = %232
  store i32 0, i32* %10, align 4
  br label %470

239:                                              ; preds = %232
  store i32 0, i32* %10, align 4
  br label %470

240:                                              ; preds = %232
  store i32 0, i32* %10, align 4
  br label %470

241:                                              ; preds = %232
  store i32 0, i32* %10, align 4
  br label %470

242:                                              ; preds = %232
  store i32 0, i32* %10, align 4
  br label %470

243:                                              ; preds = %232
  store i32 0, i32* %10, align 4
  br label %470

244:                                              ; preds = %232
  store i32 0, i32* %10, align 4
  br label %470

245:                                              ; preds = %232
  %246 = load i32, i32* @S_ISUID, align 4
  %247 = load %struct.stat*, %struct.stat** %9, align 8
  %248 = getelementptr inbounds %struct.stat, %struct.stat* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = and i32 %246, %249
  %251 = icmp ne i32 %250, 0
  %252 = zext i1 %251 to i32
  store i32 %252, i32* %10, align 4
  br label %470

253:                                              ; preds = %232
  %254 = load i32, i32* @S_ISGID, align 4
  %255 = load %struct.stat*, %struct.stat** %9, align 8
  %256 = getelementptr inbounds %struct.stat, %struct.stat* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = and i32 %254, %257
  %259 = icmp ne i32 %258, 0
  %260 = zext i1 %259 to i32
  store i32 %260, i32* %10, align 4
  br label %470

261:                                              ; preds = %232
  %262 = load i32, i32* @S_ISVTX, align 4
  %263 = load %struct.stat*, %struct.stat** %9, align 8
  %264 = getelementptr inbounds %struct.stat, %struct.stat* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = and i32 %262, %265
  %267 = icmp ne i32 %266, 0
  %268 = zext i1 %267 to i32
  store i32 %268, i32* %10, align 4
  br label %470

269:                                              ; preds = %232
  %270 = load %struct.stat*, %struct.stat** %9, align 8
  %271 = getelementptr inbounds %struct.stat, %struct.stat* %270, i32 0, i32 6
  %272 = load i32, i32* %271, align 8
  %273 = icmp eq i32 %272, 0
  %274 = zext i1 %273 to i32
  store i32 %274, i32* %10, align 4
  br label %470

275:                                              ; preds = %232
  %276 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 6
  %277 = load i32, i32* %276, align 8
  %278 = icmp ne i32 %277, 0
  %279 = zext i1 %278 to i32
  store i32 %279, i32* %10, align 4
  br label %470

280:                                              ; preds = %232
  store i32 1, i32* %10, align 4
  br label %470

281:                                              ; preds = %232
  %282 = load %struct.stat*, %struct.stat** %9, align 8
  %283 = getelementptr inbounds %struct.stat, %struct.stat* %282, i32 0, i32 8
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @uid, align 4
  %286 = icmp eq i32 %284, %285
  %287 = zext i1 %286 to i32
  store i32 %287, i32* %10, align 4
  br label %470

288:                                              ; preds = %232
  %289 = load %struct.stat*, %struct.stat** %9, align 8
  %290 = getelementptr inbounds %struct.stat, %struct.stat* %289, i32 0, i32 11
  %291 = load i64, i64* %290, align 8
  %292 = trunc i64 %291 to i32
  store i32 %292, i32* %10, align 4
  br label %470

293:                                              ; preds = %232
  %294 = load %struct.stat*, %struct.stat** %9, align 8
  %295 = getelementptr inbounds %struct.stat, %struct.stat* %294, i32 0, i32 10
  %296 = load i64, i64* %295, align 8
  %297 = trunc i64 %296 to i32
  store i32 %297, i32* %10, align 4
  br label %470

298:                                              ; preds = %232
  %299 = load %struct.stat*, %struct.stat** %9, align 8
  %300 = getelementptr inbounds %struct.stat, %struct.stat* %299, i32 0, i32 11
  %301 = load i64, i64* %300, align 8
  %302 = trunc i64 %301 to i32
  %303 = call i8* @putn(i32 %302)
  store i8* %303, i8** %16, align 8
  %304 = load %struct.stat*, %struct.stat** %9, align 8
  %305 = getelementptr inbounds %struct.stat, %struct.stat* %304, i32 0, i32 10
  %306 = load i64, i64* %305, align 8
  %307 = trunc i64 %306 to i32
  %308 = call i8* @putn(i32 %307)
  store i8* %308, i8** %17, align 8
  %309 = load i8*, i8** %16, align 8
  %310 = call i32 @Strlen(i8* %309)
  %311 = add nsw i32 2, %310
  %312 = load i8*, i8** %17, align 8
  %313 = call i32 @Strlen(i8* %312)
  %314 = add nsw i32 %311, %313
  %315 = sext i32 %314 to i64
  %316 = mul i64 %315, 1
  %317 = trunc i64 %316 to i32
  %318 = call i8* @xmalloc(i32 %317)
  store i8* %318, i8** %18, align 8
  %319 = load i8*, i8** %18, align 8
  %320 = load i8*, i8** %16, align 8
  %321 = call i32 @Strcpy(i8* %319, i8* %320)
  %322 = load i8*, i8** @STRcolon, align 8
  %323 = call i32 @Strcat(i32 %321, i8* %322)
  %324 = load i8*, i8** %17, align 8
  %325 = call i32 @Strcat(i32 %323, i8* %324)
  %326 = load i8*, i8** %16, align 8
  %327 = call i32 @xfree(i8* %326)
  %328 = load i8*, i8** %17, align 8
  %329 = call i32 @xfree(i8* %328)
  %330 = load i8*, i8** %15, align 8
  %331 = call i32 @cleanup_until(i8* %330)
  %332 = load i8*, i8** %18, align 8
  store i8* %332, i8** %4, align 8
  store i32 1, i32* %28, align 4
  br label %491

333:                                              ; preds = %232
  %334 = load i8*, i8** %13, align 8
  %335 = getelementptr inbounds i8, i8* %334, i64 1
  %336 = load i8, i8* %335, align 1
  %337 = icmp ne i8 %336, 0
  br i1 %337, label %338, label %339

338:                                              ; preds = %333
  store i32 1, i32* %10, align 4
  br label %470

339:                                              ; preds = %333
  store i32 0, i32* %10, align 4
  br label %470

340:                                              ; preds = %232
  %341 = load %struct.stat*, %struct.stat** %9, align 8
  %342 = getelementptr inbounds %struct.stat, %struct.stat* %341, i32 0, i32 9
  %343 = load i32, i32* %342, align 4
  store i32 %343, i32* %10, align 4
  br label %470

344:                                              ; preds = %232
  %345 = getelementptr inbounds i8, i8* %36, i64 1
  store i8* %345, i8** %22, align 8
  %346 = load i8*, i8** %22, align 8
  %347 = sub i64 %34, 1
  %348 = trunc i64 %347 to i32
  %349 = load i32, i32* %11, align 4
  %350 = load i32, i32* @S_IRWXU, align 4
  %351 = load i32, i32* @S_IRWXG, align 4
  %352 = or i32 %350, %351
  %353 = load i32, i32* @S_IRWXO, align 4
  %354 = or i32 %352, %353
  %355 = load i32, i32* @S_ISUID, align 4
  %356 = or i32 %354, %355
  %357 = load i32, i32* @S_ISGID, align 4
  %358 = or i32 %356, %357
  %359 = load %struct.stat*, %struct.stat** %9, align 8
  %360 = getelementptr inbounds %struct.stat, %struct.stat* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = and i32 %358, %361
  %363 = and i32 %349, %362
  %364 = call i32 @xsnprintf(i8* %346, i32 %348, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %363)
  %365 = load i32, i32* %12, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %375

367:                                              ; preds = %344
  %368 = load i8*, i8** %22, align 8
  %369 = load i8, i8* %368, align 1
  %370 = sext i8 %369 to i32
  %371 = icmp ne i32 %370, 48
  br i1 %371, label %372, label %375

372:                                              ; preds = %367
  %373 = load i8*, i8** %22, align 8
  %374 = getelementptr inbounds i8, i8* %373, i32 -1
  store i8* %374, i8** %22, align 8
  store i8 48, i8* %374, align 1
  br label %375

375:                                              ; preds = %372, %367, %344
  %376 = load i8*, i8** %15, align 8
  %377 = call i32 @cleanup_until(i8* %376)
  %378 = load i8*, i8** %22, align 8
  %379 = call i8* @str2short(i8* %378)
  %380 = call i8* @Strsave(i8* %379)
  store i8* %380, i8** %4, align 8
  store i32 1, i32* %28, align 4
  br label %491

381:                                              ; preds = %232
  %382 = load i32, i32* %12, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %398

384:                                              ; preds = %381
  %385 = load %struct.stat*, %struct.stat** %9, align 8
  %386 = getelementptr inbounds %struct.stat, %struct.stat* %385, i32 0, i32 8
  %387 = load i32, i32* %386, align 8
  %388 = call %struct.passwd* @xgetpwuid(i32 %387)
  store %struct.passwd* %388, %struct.passwd** %26, align 8
  %389 = icmp ne %struct.passwd* %388, null
  br i1 %389, label %390, label %398

390:                                              ; preds = %384
  %391 = load i8*, i8** %15, align 8
  %392 = call i32 @cleanup_until(i8* %391)
  %393 = load %struct.passwd*, %struct.passwd** %26, align 8
  %394 = getelementptr inbounds %struct.passwd, %struct.passwd* %393, i32 0, i32 0
  %395 = load i8*, i8** %394, align 8
  %396 = call i8* @str2short(i8* %395)
  %397 = call i8* @Strsave(i8* %396)
  store i8* %397, i8** %4, align 8
  store i32 1, i32* %28, align 4
  br label %491

398:                                              ; preds = %384, %381
  %399 = load %struct.stat*, %struct.stat** %9, align 8
  %400 = getelementptr inbounds %struct.stat, %struct.stat* %399, i32 0, i32 8
  %401 = load i32, i32* %400, align 8
  store i32 %401, i32* %10, align 4
  br label %470

402:                                              ; preds = %232
  %403 = load i32, i32* %12, align 4
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %419

405:                                              ; preds = %402
  %406 = load %struct.stat*, %struct.stat** %9, align 8
  %407 = getelementptr inbounds %struct.stat, %struct.stat* %406, i32 0, i32 7
  %408 = load i32, i32* %407, align 4
  %409 = call %struct.group* @xgetgrgid(i32 %408)
  store %struct.group* %409, %struct.group** %27, align 8
  %410 = icmp ne %struct.group* %409, null
  br i1 %410, label %411, label %419

411:                                              ; preds = %405
  %412 = load i8*, i8** %15, align 8
  %413 = call i32 @cleanup_until(i8* %412)
  %414 = load %struct.group*, %struct.group** %27, align 8
  %415 = getelementptr inbounds %struct.group, %struct.group* %414, i32 0, i32 0
  %416 = load i8*, i8** %415, align 8
  %417 = call i8* @str2short(i8* %416)
  %418 = call i8* @Strsave(i8* %417)
  store i8* %418, i8** %4, align 8
  store i32 1, i32* %28, align 4
  br label %491

419:                                              ; preds = %405, %402
  %420 = load %struct.stat*, %struct.stat** %9, align 8
  %421 = getelementptr inbounds %struct.stat, %struct.stat* %420, i32 0, i32 7
  %422 = load i32, i32* %421, align 4
  store i32 %422, i32* %10, align 4
  br label %470

423:                                              ; preds = %232
  %424 = load %struct.stat*, %struct.stat** %9, align 8
  %425 = getelementptr inbounds %struct.stat, %struct.stat* %424, i32 0, i32 6
  %426 = load i32, i32* %425, align 8
  store i32 %426, i32* %10, align 4
  br label %470

427:                                              ; preds = %232, %232, %232
  %428 = load i8*, i8** %13, align 8
  %429 = load i8, i8* %428, align 1
  %430 = sext i8 %429 to i32
  %431 = icmp eq i32 %430, 65
  br i1 %431, label %432, label %436

432:                                              ; preds = %427
  %433 = load %struct.stat*, %struct.stat** %9, align 8
  %434 = getelementptr inbounds %struct.stat, %struct.stat* %433, i32 0, i32 5
  %435 = load i32, i32* %434, align 4
  br label %451

436:                                              ; preds = %427
  %437 = load i8*, i8** %13, align 8
  %438 = load i8, i8* %437, align 1
  %439 = sext i8 %438 to i32
  %440 = icmp eq i32 %439, 77
  br i1 %440, label %441, label %445

441:                                              ; preds = %436
  %442 = load %struct.stat*, %struct.stat** %9, align 8
  %443 = getelementptr inbounds %struct.stat, %struct.stat* %442, i32 0, i32 4
  %444 = load i32, i32* %443, align 8
  br label %449

445:                                              ; preds = %436
  %446 = load %struct.stat*, %struct.stat** %9, align 8
  %447 = getelementptr inbounds %struct.stat, %struct.stat* %446, i32 0, i32 3
  %448 = load i32, i32* %447, align 4
  br label %449

449:                                              ; preds = %445, %441
  %450 = phi i32 [ %444, %441 ], [ %448, %445 ]
  br label %451

451:                                              ; preds = %449, %432
  %452 = phi i32 [ %435, %432 ], [ %450, %449 ]
  store i32 %452, i32* %25, align 4
  %453 = load i32, i32* %12, align 4
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %468

455:                                              ; preds = %451
  %456 = call i8* @ctime(i32* %25)
  %457 = call i8* @str2short(i8* %456)
  store i8* %457, i8** %18, align 8
  %458 = load i8*, i8** %18, align 8
  %459 = call i8* @Strchr(i8* %458, i8 signext 10)
  store i8* %459, i8** %19, align 8
  %460 = icmp ne i8* %459, null
  br i1 %460, label %461, label %463

461:                                              ; preds = %455
  %462 = load i8*, i8** %19, align 8
  store i8 0, i8* %462, align 1
  br label %463

463:                                              ; preds = %461, %455
  %464 = load i8*, i8** %15, align 8
  %465 = call i32 @cleanup_until(i8* %464)
  %466 = load i8*, i8** %18, align 8
  %467 = call i8* @Strsave(i8* %466)
  store i8* %467, i8** %4, align 8
  store i32 1, i32* %28, align 4
  br label %491

468:                                              ; preds = %451
  %469 = load i32, i32* %25, align 4
  store i32 %469, i32* %10, align 4
  br label %470

470:                                              ; preds = %232, %468, %423, %419, %398, %340, %339, %338, %293, %288, %281, %280, %275, %269, %261, %253, %245, %244, %243, %242, %241, %240, %239, %238, %237, %236
  br label %471

471:                                              ; preds = %470, %212, %209, %202, %195, %188
  br label %472

472:                                              ; preds = %471
  %473 = load i8*, i8** %13, align 8
  %474 = getelementptr inbounds i8, i8* %473, i32 1
  store i8* %474, i8** %13, align 8
  %475 = load i8, i8* %474, align 1
  %476 = sext i8 %475 to i32
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %481

478:                                              ; preds = %472
  %479 = load i32, i32* %10, align 4
  %480 = icmp ne i32 %479, 0
  br label %481

481:                                              ; preds = %478, %472
  %482 = phi i1 [ false, %472 ], [ %480, %478 ]
  br i1 %482, label %184, label %483

483:                                              ; preds = %481
  %484 = load i32, i32* %10, align 4
  %485 = load i8***, i8**** %6, align 8
  %486 = call i32 @etraci(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %484, i8*** %485)
  %487 = load i8*, i8** %15, align 8
  %488 = call i32 @cleanup_until(i8* %487)
  %489 = load i32, i32* %10, align 4
  %490 = call i8* @putn(i32 %489)
  store i8* %490, i8** %4, align 8
  store i32 1, i32* %28, align 4
  br label %491

491:                                              ; preds = %483, %463, %411, %390, %375, %298, %226, %173
  %492 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %492)
  %493 = load i8*, i8** %4, align 8
  ret i8* %493
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @any(i8*, i8 signext) #2

declare dso_local i64 @Strcmp(i8*, i8*) #2

declare dso_local i32 @stderror(i32) #2

declare dso_local i64 @isa(i8*, i32) #2

declare dso_local i32 @stat(...) #2

declare dso_local i8* @short2str(i8*) #2

declare dso_local i8* @Strsave(i8*) #2

declare dso_local i8* @globone(i8*, i32) #2

declare dso_local i32 @cleanup_push(i8*, i32 (i8*)*) #2

declare dso_local i32 @xfree(i8*) #2

declare dso_local i32 @sh_access(i8*, i32) #2

declare dso_local i32 @find_cmd(i8*, i32) #2

declare dso_local i32 @isatty(i32) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @cleanup_until(i8*) #2

declare dso_local i8* @putn(i32) #2

declare dso_local i8* @xmalloc(i32) #2

declare dso_local i32 @Strlen(i8*) #2

declare dso_local i32 @Strcat(i32, i8*) #2

declare dso_local i32 @Strcpy(i8*, i8*) #2

declare dso_local i32 @xsnprintf(i8*, i32, i8*, i32) #2

declare dso_local i8* @str2short(i8*) #2

declare dso_local %struct.passwd* @xgetpwuid(i32) #2

declare dso_local %struct.group* @xgetgrgid(i32) #2

declare dso_local i8* @ctime(i32*) #2

declare dso_local i8* @Strchr(i8*, i8 signext) #2

declare dso_local i32 @etraci(i8*, i32, i8***) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
