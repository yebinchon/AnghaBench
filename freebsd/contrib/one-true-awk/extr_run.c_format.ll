; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_run.c_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_run.c_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__* }

@recsize = common dso_local global i32 0, align 4
@format.first = internal global i32 1, align 4
@format.have_a_format = internal global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%a\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"0x1.5p+5\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"out of memory in format()\00", align 1
@MAXNUMSIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"format1\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"format2\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"format3\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"format item %.30s... ran format() out of memory\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"'$' not permitted in awk formats\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"not enough args in printf(%s)\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"format4\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"weird printf conversion %s\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"format5\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"format6\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"format7\00", align 1
@.str.17 = private unnamed_addr constant [76 x i8] c"huge string/format (%d chars) in printf %.30s... ran format() out of memory\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"can't happen: bad conversion %c in format()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @format(i8** %0, i32* %1, i8* %2, %struct.TYPE_4__* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca [100 x i8], align 16
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %8, align 8
  store i32 0, i32* %14, align 4
  %21 = load i32, i32* @recsize, align 4
  store i32 %21, i32* %17, align 4
  %22 = load i8**, i8*** %5, align 8
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %18, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %19, align 4
  %26 = load i32, i32* @format.first, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %4
  %29 = getelementptr inbounds [100 x i8], [100 x i8]* %20, i64 0, i64 0
  %30 = call i32 (i8*, i8*, ...) @sprintf(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), double 4.200000e+01)
  %31 = getelementptr inbounds [100 x i8], [100 x i8]* %20, i64 0, i64 0
  %32 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  %34 = zext i1 %33 to i32
  store i32 %34, i32* @format.have_a_format, align 4
  store i32 0, i32* @format.first, align 4
  br label %35

35:                                               ; preds = %28, %4
  %36 = load i8*, i8** %7, align 8
  store i8* %36, i8** %12, align 8
  %37 = load i8*, i8** %18, align 8
  store i8* %37, i8** %10, align 8
  %38 = load i32, i32* %17, align 4
  %39 = call i64 @malloc(i32 %38)
  %40 = inttoptr i64 %39 to i8*
  store i8* %40, i8** %9, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = call i32 (i8*, ...) @FATAL(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %35
  br label %45

45:                                               ; preds = %415, %77, %65, %44
  %46 = load i8*, i8** %7, align 8
  %47 = load i8, i8* %46, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %49, label %425

49:                                               ; preds = %45
  %50 = load i32, i32* @MAXNUMSIZE, align 4
  %51 = add nsw i32 %50, 1
  %52 = load i8*, i8** %10, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  %55 = load i8*, i8** %18, align 8
  %56 = ptrtoint i8* %54 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = load i32, i32* @recsize, align 4
  %60 = call i32 (i8**, i32*, ...) @adjbuf(i8** %18, i32* %19, i64 %58, i32 %59, i8** %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %61 = load i8*, i8** %7, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 37
  br i1 %64, label %65, label %71

65:                                               ; preds = %49
  %66 = load i8*, i8** %7, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %7, align 8
  %68 = load i8, i8* %66, align 1
  %69 = load i8*, i8** %10, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %10, align 8
  store i8 %68, i8* %69, align 1
  br label %45

71:                                               ; preds = %49
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 37
  br i1 %76, label %77, label %82

77:                                               ; preds = %71
  %78 = load i8*, i8** %10, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %10, align 8
  store i8 37, i8* %78, align 1
  %80 = load i8*, i8** %7, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 2
  store i8* %81, i8** %7, align 8
  br label %45

82:                                               ; preds = %71
  %83 = load i8*, i8** %7, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = call i32 @atoi(i8* %84)
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %16, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load i32, i32* %16, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %16, align 4
  br label %91

91:                                               ; preds = %88, %82
  %92 = load i32, i32* %16, align 4
  %93 = add nsw i32 %92, 1
  %94 = load i8*, i8** %10, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  %97 = load i8*, i8** %18, align 8
  %98 = ptrtoint i8* %96 to i64
  %99 = ptrtoint i8* %97 to i64
  %100 = sub i64 %98, %99
  %101 = load i32, i32* @recsize, align 4
  %102 = call i32 (i8**, i32*, ...) @adjbuf(i8** %18, i32* %19, i64 %100, i32 %101, i8** %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %103 = load i8*, i8** %9, align 8
  store i8* %103, i8** %11, align 8
  br label %104

104:                                              ; preds = %203, %91
  %105 = load i8*, i8** %7, align 8
  %106 = load i8, i8* %105, align 1
  %107 = load i8*, i8** %11, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %11, align 8
  store i8 %106, i8* %107, align 1
  %109 = sext i8 %106 to i32
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %206

111:                                              ; preds = %104
  %112 = load i32, i32* @MAXNUMSIZE, align 4
  %113 = add nsw i32 %112, 1
  %114 = load i8*, i8** %11, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  %117 = load i8*, i8** %9, align 8
  %118 = ptrtoint i8* %116 to i64
  %119 = ptrtoint i8* %117 to i64
  %120 = sub i64 %118, %119
  %121 = load i32, i32* @recsize, align 4
  %122 = call i32 (i8**, i32*, ...) @adjbuf(i8** %9, i32* %17, i64 %120, i32 %121, i8** %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %111
  %125 = load i8*, i8** %12, align 8
  %126 = call i32 (i8*, ...) @FATAL(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i8* %125)
  br label %127

127:                                              ; preds = %124, %111
  %128 = load i8*, i8** %7, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = call i64 @isalpha(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %149

133:                                              ; preds = %127
  %134 = load i8*, i8** %7, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp ne i32 %136, 108
  br i1 %137, label %138, label %149

138:                                              ; preds = %133
  %139 = load i8*, i8** %7, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp ne i32 %141, 104
  br i1 %142, label %143, label %149

143:                                              ; preds = %138
  %144 = load i8*, i8** %7, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp ne i32 %146, 76
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  br label %206

149:                                              ; preds = %143, %138, %133, %127
  %150 = load i8*, i8** %7, align 8
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 36
  br i1 %153, label %154, label %156

154:                                              ; preds = %149
  %155 = call i32 (i8*, ...) @FATAL(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %156

156:                                              ; preds = %154, %149
  %157 = load i8*, i8** %7, align 8
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp eq i32 %159, 42
  br i1 %160, label %161, label %202

161:                                              ; preds = %156
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %163 = icmp eq %struct.TYPE_4__* %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i8*, i8** %12, align 8
  %166 = call i32 (i8*, ...) @FATAL(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i8* %165)
  br label %167

167:                                              ; preds = %164, %161
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %169 = call i32* @execute(%struct.TYPE_4__* %168)
  store i32* %169, i32** %13, align 8
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %171, align 8
  store %struct.TYPE_4__* %172, %struct.TYPE_4__** %8, align 8
  %173 = load i8*, i8** %11, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 -1
  %175 = load i32*, i32** %13, align 8
  %176 = call i32 @getfval(i32* %175)
  store i32 %176, i32* %16, align 4
  %177 = call i32 (i8*, i8*, ...) @sprintf(i8* %174, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %176)
  %178 = load i32, i32* %16, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %167
  %181 = load i32, i32* %16, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %16, align 4
  br label %183

183:                                              ; preds = %180, %167
  %184 = load i32, i32* %16, align 4
  %185 = add nsw i32 %184, 1
  %186 = load i8*, i8** %10, align 8
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds i8, i8* %186, i64 %187
  %189 = load i8*, i8** %18, align 8
  %190 = ptrtoint i8* %188 to i64
  %191 = ptrtoint i8* %189 to i64
  %192 = sub i64 %190, %191
  %193 = load i32, i32* @recsize, align 4
  %194 = call i32 (i8**, i32*, ...) @adjbuf(i8** %18, i32* %19, i64 %192, i32 %193, i8** %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %195 = load i8*, i8** %9, align 8
  %196 = load i8*, i8** %9, align 8
  %197 = call i32 @strlen(i8* %196)
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %195, i64 %198
  store i8* %199, i8** %11, align 8
  %200 = load i32*, i32** %13, align 8
  %201 = call i32 @tempfree(i32* %200)
  br label %202

202:                                              ; preds = %183, %156
  br label %203

203:                                              ; preds = %202
  %204 = load i8*, i8** %7, align 8
  %205 = getelementptr inbounds i8, i8* %204, i32 1
  store i8* %205, i8** %7, align 8
  br label %104

206:                                              ; preds = %148, %104
  %207 = load i8*, i8** %11, align 8
  store i8 0, i8* %207, align 1
  %208 = load i32, i32* %16, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %206
  %211 = load i32, i32* %16, align 4
  %212 = sub nsw i32 0, %211
  store i32 %212, i32* %16, align 4
  br label %213

213:                                              ; preds = %210, %206
  %214 = load i32, i32* %16, align 4
  %215 = add nsw i32 %214, 1
  %216 = load i8*, i8** %10, align 8
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds i8, i8* %216, i64 %217
  %219 = load i8*, i8** %18, align 8
  %220 = ptrtoint i8* %218 to i64
  %221 = ptrtoint i8* %219 to i64
  %222 = sub i64 %220, %221
  %223 = load i32, i32* @recsize, align 4
  %224 = call i32 (i8**, i32*, ...) @adjbuf(i8** %18, i32* %19, i64 %222, i32 %223, i8** %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %225 = load i8*, i8** %7, align 8
  %226 = load i8, i8* %225, align 1
  %227 = sext i8 %226 to i32
  switch i32 %227, label %261 [
    i32 97, label %228
    i32 65, label %228
    i32 102, label %237
    i32 101, label %237
    i32 103, label %237
    i32 69, label %237
    i32 71, label %237
    i32 100, label %238
    i32 105, label %238
    i32 111, label %251
    i32 120, label %251
    i32 88, label %251
    i32 117, label %251
    i32 115, label %259
    i32 99, label %260
  ]

228:                                              ; preds = %213, %213
  %229 = load i32, i32* @format.have_a_format, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %228
  %232 = load i8*, i8** %7, align 8
  %233 = load i8, i8* %232, align 1
  %234 = sext i8 %233 to i32
  store i32 %234, i32* %14, align 4
  br label %236

235:                                              ; preds = %228
  store i32 102, i32* %14, align 4
  br label %236

236:                                              ; preds = %235, %231
  br label %264

237:                                              ; preds = %213, %213, %213, %213, %213
  store i32 102, i32* %14, align 4
  br label %264

238:                                              ; preds = %213, %213
  store i32 100, i32* %14, align 4
  %239 = load i8*, i8** %7, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 -1
  %241 = load i8, i8* %240, align 1
  %242 = sext i8 %241 to i32
  %243 = icmp eq i32 %242, 108
  br i1 %243, label %244, label %245

244:                                              ; preds = %238
  br label %264

245:                                              ; preds = %238
  %246 = load i8*, i8** %11, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 -1
  store i8 108, i8* %247, align 1
  %248 = load i8*, i8** %11, align 8
  store i8 100, i8* %248, align 1
  %249 = load i8*, i8** %11, align 8
  %250 = getelementptr inbounds i8, i8* %249, i32 1
  store i8* %250, i8** %11, align 8
  store i8 0, i8* %250, align 1
  br label %264

251:                                              ; preds = %213, %213, %213, %213
  %252 = load i8*, i8** %7, align 8
  %253 = getelementptr inbounds i8, i8* %252, i64 -1
  %254 = load i8, i8* %253, align 1
  %255 = sext i8 %254 to i32
  %256 = icmp eq i32 %255, 108
  %257 = zext i1 %256 to i64
  %258 = select i1 %256, i32 100, i32 117
  store i32 %258, i32* %14, align 4
  br label %264

259:                                              ; preds = %213
  store i32 115, i32* %14, align 4
  br label %264

260:                                              ; preds = %213
  store i32 99, i32* %14, align 4
  br label %264

261:                                              ; preds = %213
  %262 = load i8*, i8** %9, align 8
  %263 = call i32 @WARNING(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i8* %262)
  store i32 63, i32* %14, align 4
  br label %264

264:                                              ; preds = %261, %260, %259, %251, %245, %244, %237, %236
  %265 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %266 = icmp eq %struct.TYPE_4__* %265, null
  br i1 %266, label %267, label %270

267:                                              ; preds = %264
  %268 = load i8*, i8** %12, align 8
  %269 = call i32 (i8*, ...) @FATAL(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i8* %268)
  br label %270

270:                                              ; preds = %267, %264
  %271 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %272 = call i32* @execute(%struct.TYPE_4__* %271)
  store i32* %272, i32** %13, align 8
  %273 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 0
  %275 = load %struct.TYPE_4__*, %struct.TYPE_4__** %274, align 8
  store %struct.TYPE_4__* %275, %struct.TYPE_4__** %8, align 8
  %276 = load i32, i32* @MAXNUMSIZE, align 4
  store i32 %276, i32* %15, align 4
  %277 = load i32, i32* %16, align 4
  %278 = load i32, i32* %15, align 4
  %279 = icmp sgt i32 %277, %278
  br i1 %279, label %280, label %282

280:                                              ; preds = %270
  %281 = load i32, i32* %16, align 4
  store i32 %281, i32* %15, align 4
  br label %282

282:                                              ; preds = %280, %270
  %283 = load i32, i32* %15, align 4
  %284 = add nsw i32 1, %283
  %285 = load i8*, i8** %10, align 8
  %286 = sext i32 %284 to i64
  %287 = getelementptr inbounds i8, i8* %285, i64 %286
  %288 = load i8*, i8** %18, align 8
  %289 = ptrtoint i8* %287 to i64
  %290 = ptrtoint i8* %288 to i64
  %291 = sub i64 %289, %290
  %292 = load i32, i32* @recsize, align 4
  %293 = call i32 (i8**, i32*, ...) @adjbuf(i8** %18, i32* %19, i64 %291, i32 %292, i8** %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %294 = load i32, i32* %14, align 4
  switch i32 %294, label %412 [
    i32 63, label %295
    i32 97, label %332
    i32 65, label %332
    i32 102, label %332
    i32 100, label %338
    i32 117, label %345
    i32 115, label %351
    i32 99, label %384
  ]

295:                                              ; preds = %282
  %296 = load i8*, i8** %10, align 8
  %297 = load i8*, i8** %9, align 8
  %298 = call i32 (i8*, i8*, ...) @sprintf(i8* %296, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* %297)
  %299 = load i32*, i32** %13, align 8
  %300 = call i32* @getsval(i32* %299)
  %301 = bitcast i32* %300 to i8*
  store i8* %301, i8** %11, align 8
  %302 = load i8*, i8** %11, align 8
  %303 = call i32 @strlen(i8* %302)
  store i32 %303, i32* %15, align 4
  %304 = load i32, i32* %16, align 4
  %305 = load i32, i32* %15, align 4
  %306 = icmp sgt i32 %304, %305
  br i1 %306, label %307, label %309

307:                                              ; preds = %295
  %308 = load i32, i32* %16, align 4
  store i32 %308, i32* %15, align 4
  br label %309

309:                                              ; preds = %307, %295
  %310 = load i8*, i8** %10, align 8
  %311 = call i32 @strlen(i8* %310)
  %312 = add nsw i32 1, %311
  %313 = load i32, i32* %15, align 4
  %314 = add nsw i32 %312, %313
  %315 = load i8*, i8** %10, align 8
  %316 = sext i32 %314 to i64
  %317 = getelementptr inbounds i8, i8* %315, i64 %316
  %318 = load i8*, i8** %18, align 8
  %319 = ptrtoint i8* %317 to i64
  %320 = ptrtoint i8* %318 to i64
  %321 = sub i64 %319, %320
  %322 = load i32, i32* @recsize, align 4
  %323 = call i32 (i8**, i32*, ...) @adjbuf(i8** %18, i32* %19, i64 %321, i32 %322, i8** %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  %324 = load i8*, i8** %10, align 8
  %325 = call i32 @strlen(i8* %324)
  %326 = load i8*, i8** %10, align 8
  %327 = sext i32 %325 to i64
  %328 = getelementptr inbounds i8, i8* %326, i64 %327
  store i8* %328, i8** %10, align 8
  %329 = load i8*, i8** %10, align 8
  %330 = load i8*, i8** %11, align 8
  %331 = call i32 (i8*, i8*, ...) @sprintf(i8* %329, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* %330)
  br label %415

332:                                              ; preds = %282, %282, %282
  %333 = load i8*, i8** %10, align 8
  %334 = load i8*, i8** %9, align 8
  %335 = load i32*, i32** %13, align 8
  %336 = call i32 @getfval(i32* %335)
  %337 = call i32 (i8*, i8*, ...) @sprintf(i8* %333, i8* %334, i32 %336)
  br label %415

338:                                              ; preds = %282
  %339 = load i8*, i8** %10, align 8
  %340 = load i8*, i8** %9, align 8
  %341 = load i32*, i32** %13, align 8
  %342 = call i32 @getfval(i32* %341)
  %343 = sext i32 %342 to i64
  %344 = call i32 (i8*, i8*, ...) @sprintf(i8* %339, i8* %340, i64 %343)
  br label %415

345:                                              ; preds = %282
  %346 = load i8*, i8** %10, align 8
  %347 = load i8*, i8** %9, align 8
  %348 = load i32*, i32** %13, align 8
  %349 = call i32 @getfval(i32* %348)
  %350 = call i32 (i8*, i8*, ...) @sprintf(i8* %346, i8* %347, i32 %349)
  br label %415

351:                                              ; preds = %282
  %352 = load i32*, i32** %13, align 8
  %353 = call i32* @getsval(i32* %352)
  %354 = bitcast i32* %353 to i8*
  store i8* %354, i8** %11, align 8
  %355 = load i8*, i8** %11, align 8
  %356 = call i32 @strlen(i8* %355)
  store i32 %356, i32* %15, align 4
  %357 = load i32, i32* %16, align 4
  %358 = load i32, i32* %15, align 4
  %359 = icmp sgt i32 %357, %358
  br i1 %359, label %360, label %362

360:                                              ; preds = %351
  %361 = load i32, i32* %16, align 4
  store i32 %361, i32* %15, align 4
  br label %362

362:                                              ; preds = %360, %351
  %363 = load i32, i32* %15, align 4
  %364 = add nsw i32 1, %363
  %365 = load i8*, i8** %10, align 8
  %366 = sext i32 %364 to i64
  %367 = getelementptr inbounds i8, i8* %365, i64 %366
  %368 = load i8*, i8** %18, align 8
  %369 = ptrtoint i8* %367 to i64
  %370 = ptrtoint i8* %368 to i64
  %371 = sub i64 %369, %370
  %372 = load i32, i32* @recsize, align 4
  %373 = call i32 (i8**, i32*, ...) @adjbuf(i8** %18, i32* %19, i64 %371, i32 %372, i8** %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0))
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %379, label %375

375:                                              ; preds = %362
  %376 = load i32, i32* %15, align 4
  %377 = load i8*, i8** %11, align 8
  %378 = call i32 (i8*, ...) @FATAL(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.17, i64 0, i64 0), i32 %376, i8* %377)
  br label %379

379:                                              ; preds = %375, %362
  %380 = load i8*, i8** %10, align 8
  %381 = load i8*, i8** %9, align 8
  %382 = load i8*, i8** %11, align 8
  %383 = call i32 (i8*, i8*, ...) @sprintf(i8* %380, i8* %381, i8* %382)
  br label %415

384:                                              ; preds = %282
  %385 = load i32*, i32** %13, align 8
  %386 = call i32 @isnum(i32* %385)
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %403

388:                                              ; preds = %384
  %389 = load i32*, i32** %13, align 8
  %390 = call i32 @getfval(i32* %389)
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %398

392:                                              ; preds = %388
  %393 = load i8*, i8** %10, align 8
  %394 = load i8*, i8** %9, align 8
  %395 = load i32*, i32** %13, align 8
  %396 = call i32 @getfval(i32* %395)
  %397 = call i32 (i8*, i8*, ...) @sprintf(i8* %393, i8* %394, i32 %396)
  br label %402

398:                                              ; preds = %388
  %399 = load i8*, i8** %10, align 8
  %400 = getelementptr inbounds i8, i8* %399, i32 1
  store i8* %400, i8** %10, align 8
  store i8 0, i8* %399, align 1
  %401 = load i8*, i8** %10, align 8
  store i8 0, i8* %401, align 1
  br label %402

402:                                              ; preds = %398, %392
  br label %411

403:                                              ; preds = %384
  %404 = load i8*, i8** %10, align 8
  %405 = load i8*, i8** %9, align 8
  %406 = load i32*, i32** %13, align 8
  %407 = call i32* @getsval(i32* %406)
  %408 = getelementptr inbounds i32, i32* %407, i64 0
  %409 = load i32, i32* %408, align 4
  %410 = call i32 (i8*, i8*, ...) @sprintf(i8* %404, i8* %405, i32 %409)
  br label %411

411:                                              ; preds = %403, %402
  br label %415

412:                                              ; preds = %282
  %413 = load i32, i32* %14, align 4
  %414 = call i32 (i8*, ...) @FATAL(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i64 0, i64 0), i32 %413)
  br label %415

415:                                              ; preds = %412, %411, %379, %345, %338, %332, %309
  %416 = load i32*, i32** %13, align 8
  %417 = call i32 @tempfree(i32* %416)
  %418 = load i8*, i8** %10, align 8
  %419 = call i32 @strlen(i8* %418)
  %420 = load i8*, i8** %10, align 8
  %421 = sext i32 %419 to i64
  %422 = getelementptr inbounds i8, i8* %420, i64 %421
  store i8* %422, i8** %10, align 8
  %423 = load i8*, i8** %7, align 8
  %424 = getelementptr inbounds i8, i8* %423, i32 1
  store i8* %424, i8** %7, align 8
  br label %45

425:                                              ; preds = %45
  %426 = load i8*, i8** %10, align 8
  store i8 0, i8* %426, align 1
  %427 = load i8*, i8** %9, align 8
  %428 = call i32 @free(i8* %427)
  br label %429

429:                                              ; preds = %435, %425
  %430 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %431 = icmp ne %struct.TYPE_4__* %430, null
  br i1 %431, label %432, label %439

432:                                              ; preds = %429
  %433 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %434 = call i32* @execute(%struct.TYPE_4__* %433)
  br label %435

435:                                              ; preds = %432
  %436 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %437 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %436, i32 0, i32 0
  %438 = load %struct.TYPE_4__*, %struct.TYPE_4__** %437, align 8
  store %struct.TYPE_4__* %438, %struct.TYPE_4__** %8, align 8
  br label %429

439:                                              ; preds = %429
  %440 = load i8*, i8** %18, align 8
  %441 = load i8**, i8*** %5, align 8
  store i8* %440, i8** %441, align 8
  %442 = load i32, i32* %19, align 4
  %443 = load i32*, i32** %6, align 8
  store i32 %442, i32* %443, align 4
  %444 = load i8*, i8** %10, align 8
  %445 = load i8*, i8** %18, align 8
  %446 = ptrtoint i8* %444 to i64
  %447 = ptrtoint i8* %445 to i64
  %448 = sub i64 %446, %447
  %449 = trunc i64 %448 to i32
  ret i32 %449
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @FATAL(i8*, ...) #1

declare dso_local i32 @adjbuf(i8**, i32*, ...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @isalpha(i32) #1

declare dso_local i32* @execute(%struct.TYPE_4__*) #1

declare dso_local i32 @getfval(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @tempfree(i32*) #1

declare dso_local i32 @WARNING(i8*, i8*) #1

declare dso_local i32* @getsval(i32*) #1

declare dso_local i32 @isnum(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
