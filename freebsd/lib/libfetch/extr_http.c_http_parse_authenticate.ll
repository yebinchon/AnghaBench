; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libfetch/extr_http.c_http_parse_authenticate.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libfetch/extr_http.c_http_parse_authenticate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i64, i8*, i8*, i8*, i8*, i8*, i32 }

@HTTPHL_WORD = common dso_local global i8 0, align 1
@MAX_CHALLENGES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"basic\00", align 1
@HTTPAS_BASIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@HTTPAS_DIGEST = common dso_local global i32 0, align 4
@HTTPAS_UNKNOWN = common dso_local global i32 0, align 4
@HTTPHL_STRING = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"realm\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"qop\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"nonce\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"opaque\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"algorithm\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"stale\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@HTTPHL_END = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_4__*)* @http_parse_authenticate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @http_parse_authenticate(i8* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  store i32 -1, i32* %5, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @strlen(i8* %10)
  %12 = add nsw i32 %11, 1
  %13 = call i8* @malloc(i32 %12)
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = add nsw i32 %15, 1
  %17 = call i8* @malloc(i32 %16)
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = add nsw i32 %19, 1
  %21 = call i8* @malloc(i32 %20)
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load i8*, i8** %8, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i8*, i8** %9, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27, %24, %2
  %31 = call i32 (...) @fetch_syserr()
  br label %289

32:                                               ; preds = %27
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call signext i8 @http_header_lex(i8** %3, i8* %35)
  store i8 %36, i8* %6, align 1
  %37 = load i8, i8* %6, align 1
  %38 = sext i8 %37 to i32
  %39 = load i8, i8* @HTTPHL_WORD, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  br label %289

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %283, %43
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MAX_CHALLENGES, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %288

50:                                               ; preds = %44
  %51 = call i8* @malloc(i32 4)
  %52 = bitcast i8* %51 to %struct.TYPE_5__*
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %54, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %55, i64 %58
  store %struct.TYPE_5__* %52, %struct.TYPE_5__** %59, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %61, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %62, i64 %65
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = icmp eq %struct.TYPE_5__* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %50
  %70 = call i32 (...) @fetch_syserr()
  br label %289

71:                                               ; preds = %50
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %73, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %74, i64 %77
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = call i32 @init_http_auth_challenge(%struct.TYPE_5__* %79)
  %81 = load i8*, i8** %7, align 8
  %82 = call i64 @strcasecmp(i8* %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %71
  %85 = load i32, i32* @HTTPAS_BASIC, align 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %87, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %88, i64 %91
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 6
  store i32 %85, i32* %94, align 8
  br label %122

95:                                               ; preds = %71
  %96 = load i8*, i8** %7, align 8
  %97 = call i64 @strcasecmp(i8* %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %95
  %100 = load i32, i32* @HTTPAS_DIGEST, align 4
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %102, align 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %103, i64 %106
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 6
  store i32 %100, i32* %109, align 8
  br label %121

110:                                              ; preds = %95
  %111 = load i32, i32* @HTTPAS_UNKNOWN, align 4
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %113, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %114, i64 %117
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 6
  store i32 %111, i32* %120, align 8
  br label %121

121:                                              ; preds = %110, %99
  br label %122

122:                                              ; preds = %121, %84
  br label %123

123:                                              ; preds = %281, %122
  %124 = load i8*, i8** %7, align 8
  %125 = call signext i8 @http_header_lex(i8** %3, i8* %124)
  store i8 %125, i8* %6, align 1
  %126 = load i8, i8* %6, align 1
  %127 = sext i8 %126 to i32
  %128 = load i8, i8* @HTTPHL_WORD, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %127, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %123
  br label %289

132:                                              ; preds = %123
  %133 = load i8*, i8** %9, align 8
  %134 = call signext i8 @http_header_lex(i8** %3, i8* %133)
  store i8 %134, i8* %6, align 1
  %135 = load i8, i8* %6, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp ne i32 %136, 61
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  br label %289

139:                                              ; preds = %132
  %140 = load i8*, i8** %8, align 8
  %141 = call signext i8 @http_header_lex(i8** %3, i8* %140)
  store i8 %141, i8* %6, align 1
  %142 = load i8, i8* %6, align 1
  %143 = sext i8 %142 to i32
  %144 = load i8, i8* @HTTPHL_WORD, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp ne i32 %143, %145
  br i1 %146, label %147, label %154

147:                                              ; preds = %139
  %148 = load i8, i8* %6, align 1
  %149 = sext i8 %148 to i32
  %150 = load i8, i8* @HTTPHL_STRING, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp ne i32 %149, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %147
  br label %289

154:                                              ; preds = %147, %139
  %155 = load i8*, i8** %7, align 8
  %156 = call i64 @strcasecmp(i8* %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %170

158:                                              ; preds = %154
  %159 = load i8*, i8** %8, align 8
  %160 = call i8* @strdup(i8* %159)
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %162, align 8
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %163, i64 %166
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 5
  store i8* %160, i8** %169, align 8
  br label %256

170:                                              ; preds = %154
  %171 = load i8*, i8** %7, align 8
  %172 = call i64 @strcasecmp(i8* %171, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %186

174:                                              ; preds = %170
  %175 = load i8*, i8** %8, align 8
  %176 = call i8* @strdup(i8* %175)
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 2
  %179 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %178, align 8
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %179, i64 %182
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 4
  store i8* %176, i8** %185, align 8
  br label %255

186:                                              ; preds = %170
  %187 = load i8*, i8** %7, align 8
  %188 = call i64 @strcasecmp(i8* %187, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %202

190:                                              ; preds = %186
  %191 = load i8*, i8** %8, align 8
  %192 = call i8* @strdup(i8* %191)
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 2
  %195 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %194, align 8
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %195, i64 %198
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 3
  store i8* %192, i8** %201, align 8
  br label %254

202:                                              ; preds = %186
  %203 = load i8*, i8** %7, align 8
  %204 = call i64 @strcasecmp(i8* %203, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %206, label %218

206:                                              ; preds = %202
  %207 = load i8*, i8** %8, align 8
  %208 = call i8* @strdup(i8* %207)
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 2
  %211 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %210, align 8
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %211, i64 %214
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 2
  store i8* %208, i8** %217, align 8
  br label %253

218:                                              ; preds = %202
  %219 = load i8*, i8** %7, align 8
  %220 = call i64 @strcasecmp(i8* %219, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %234

222:                                              ; preds = %218
  %223 = load i8*, i8** %8, align 8
  %224 = call i8* @strdup(i8* %223)
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 2
  %227 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %226, align 8
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %227, i64 %230
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 1
  store i8* %224, i8** %233, align 8
  br label %252

234:                                              ; preds = %218
  %235 = load i8*, i8** %7, align 8
  %236 = call i64 @strcasecmp(i8* %235, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %238, label %250

238:                                              ; preds = %234
  %239 = load i8*, i8** %8, align 8
  %240 = call i64 @strcasecmp(i8* %239, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %241 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 2
  %243 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %242, align 8
  %244 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %243, i64 %246
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 0
  store i64 %240, i64* %249, align 8
  br label %251

250:                                              ; preds = %234
  br label %251

251:                                              ; preds = %250, %238
  br label %252

252:                                              ; preds = %251, %222
  br label %253

253:                                              ; preds = %252, %206
  br label %254

254:                                              ; preds = %253, %190
  br label %255

255:                                              ; preds = %254, %174
  br label %256

256:                                              ; preds = %255, %158
  %257 = load i8*, i8** %7, align 8
  %258 = call signext i8 @http_header_lex(i8** %3, i8* %257)
  store i8 %258, i8* %6, align 1
  %259 = load i8, i8* %6, align 1
  %260 = sext i8 %259 to i32
  %261 = load i8, i8* @HTTPHL_WORD, align 1
  %262 = sext i8 %261 to i32
  %263 = icmp eq i32 %260, %262
  br i1 %263, label %264, label %265

264:                                              ; preds = %256
  br label %282

265:                                              ; preds = %256
  %266 = load i8, i8* %6, align 1
  %267 = sext i8 %266 to i32
  %268 = load i8, i8* @HTTPHL_END, align 1
  %269 = sext i8 %268 to i32
  %270 = icmp eq i32 %267, %269
  br i1 %270, label %271, label %276

271:                                              ; preds = %265
  %272 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i32 0, i32 1
  %274 = load i64, i64* %273, align 8
  %275 = add i64 %274, 1
  store i64 %275, i64* %273, align 8
  store i32 0, i32* %5, align 4
  br label %289

276:                                              ; preds = %265
  %277 = load i8, i8* %6, align 1
  %278 = sext i8 %277 to i32
  %279 = icmp ne i32 %278, 44
  br i1 %279, label %280, label %281

280:                                              ; preds = %276
  br label %289

281:                                              ; preds = %276
  br label %123

282:                                              ; preds = %264
  br label %283

283:                                              ; preds = %282
  %284 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = add i64 %286, 1
  store i64 %287, i64* %285, align 8
  br label %44

288:                                              ; preds = %44
  br label %289

289:                                              ; preds = %288, %280, %271, %153, %138, %131, %69, %42, %30
  %290 = load i8*, i8** %7, align 8
  %291 = icmp ne i8* %290, null
  br i1 %291, label %292, label %295

292:                                              ; preds = %289
  %293 = load i8*, i8** %7, align 8
  %294 = call i32 @free(i8* %293)
  br label %295

295:                                              ; preds = %292, %289
  %296 = load i8*, i8** %8, align 8
  %297 = icmp ne i8* %296, null
  br i1 %297, label %298, label %301

298:                                              ; preds = %295
  %299 = load i8*, i8** %8, align 8
  %300 = call i32 @free(i8* %299)
  br label %301

301:                                              ; preds = %298, %295
  %302 = load i8*, i8** %9, align 8
  %303 = icmp ne i8* %302, null
  br i1 %303, label %304, label %307

304:                                              ; preds = %301
  %305 = load i8*, i8** %9, align 8
  %306 = call i32 @free(i8* %305)
  br label %307

307:                                              ; preds = %304, %301
  %308 = load i32, i32* %5, align 4
  ret i32 %308
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fetch_syserr(...) #1

declare dso_local signext i8 @http_header_lex(i8**, i8*) #1

declare dso_local i32 @init_http_auth_challenge(%struct.TYPE_5__*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
