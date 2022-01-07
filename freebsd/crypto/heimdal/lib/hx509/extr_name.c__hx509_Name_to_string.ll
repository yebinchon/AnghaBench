; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_name.c__hx509_Name_to_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_name.c__hx509_Name_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i8*, i8*, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_19__ = type { i64, i32* }
%struct.TYPE_18__ = type { i64, i32* }
%struct.TYPE_17__ = type { i8*, i64 }
%struct.TYPE_16__ = type { i8*, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"allocation failure\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"unknown directory type: %d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_hx509_Name_to_string(%struct.TYPE_13__* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* %6, align 8
  %21 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %22 = load i8**, i8*** %5, align 8
  store i8* %21, i8** %22, align 8
  %23 = load i8**, i8*** %5, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOMEM, align 4
  store i32 %27, i32* %3, align 4
  br label %267

28:                                               ; preds = %2
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %9, align 8
  br label %34

34:                                               ; preds = %263, %28
  %35 = load i64, i64* %9, align 8
  %36 = icmp ugt i64 %35, 0
  br i1 %36, label %37, label %266

37:                                               ; preds = %34
  %38 = load i64, i64* %9, align 8
  %39 = sub i64 %38, 1
  store i64 %39, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %40

40:                                               ; preds = %253, %37
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ult i64 %41, %50
  br i1 %51, label %52, label %256

52:                                               ; preds = %40
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 1
  store %struct.TYPE_14__* %64, %struct.TYPE_14__** %12, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %68, align 8
  %70 = load i64, i64* %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %72, align 8
  %74 = load i64, i64* %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = call i8* @oidtostring(i32* %76)
  store i8* %77, i8** %13, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  switch i32 %80, label %203 [
    i32 132, label %81
    i32 131, label %92
    i32 128, label %103
    i32 133, label %111
    i32 130, label %153
    i32 129, label %161
  ]

81:                                               ; preds = %52
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  store i8* %86, i8** %14, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %11, align 8
  br label %209

92:                                               ; preds = %52
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  store i8* %97, i8** %14, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %11, align 8
  br label %209

103:                                              ; preds = %52
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  store i8* %107, i8** %14, align 8
  %108 = load i8*, i8** %14, align 8
  %109 = call i32 @strlen(i8* %108)
  %110 = sext i32 %109 to i64
  store i64 %110, i64* %11, align 8
  br label %209

111:                                              ; preds = %52
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  store i32* %116, i32** %15, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %16, align 8
  %122 = load i32*, i32** %15, align 8
  %123 = load i64, i64* %16, align 8
  %124 = call i32 @wind_ucs2utf8_length(i32* %122, i64 %123, i64* %17)
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %10, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %111
  %128 = load i32, i32* %10, align 4
  store i32 %128, i32* %3, align 4
  br label %267

129:                                              ; preds = %111
  %130 = load i64, i64* %17, align 8
  %131 = add i64 %130, 1
  %132 = call i8* @malloc(i64 %131)
  store i8* %132, i8** %14, align 8
  %133 = load i8*, i8** %14, align 8
  %134 = icmp eq i8* %133, null
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = call i32 (i8*, ...) @_hx509_abort(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %137

137:                                              ; preds = %135, %129
  %138 = load i32*, i32** %15, align 8
  %139 = load i64, i64* %16, align 8
  %140 = load i8*, i8** %14, align 8
  %141 = call i32 @wind_ucs2utf8(i32* %138, i64 %139, i8* %140, i32* null)
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* %10, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %137
  %145 = load i8*, i8** %14, align 8
  %146 = call i32 @free(i8* %145)
  %147 = load i32, i32* %10, align 4
  store i32 %147, i32* %3, align 4
  br label %267

148:                                              ; preds = %137
  %149 = load i8*, i8** %14, align 8
  %150 = load i64, i64* %17, align 8
  %151 = getelementptr inbounds i8, i8* %149, i64 %150
  store i8 0, i8* %151, align 1
  %152 = load i64, i64* %17, align 8
  store i64 %152, i64* %11, align 8
  br label %209

153:                                              ; preds = %52
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  store i8* %157, i8** %14, align 8
  %158 = load i8*, i8** %14, align 8
  %159 = call i32 @strlen(i8* %158)
  %160 = sext i32 %159 to i64
  store i64 %160, i64* %11, align 8
  br label %209

161:                                              ; preds = %52
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  store i32* %166, i32** %18, align 8
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  store i64 %171, i64* %19, align 8
  %172 = load i32*, i32** %18, align 8
  %173 = load i64, i64* %19, align 8
  %174 = call i32 @wind_ucs4utf8_length(i32* %172, i64 %173, i64* %20)
  store i32 %174, i32* %10, align 4
  %175 = load i32, i32* %10, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %161
  %178 = load i32, i32* %10, align 4
  store i32 %178, i32* %3, align 4
  br label %267

179:                                              ; preds = %161
  %180 = load i64, i64* %20, align 8
  %181 = add i64 %180, 1
  %182 = call i8* @malloc(i64 %181)
  store i8* %182, i8** %14, align 8
  %183 = load i8*, i8** %14, align 8
  %184 = icmp eq i8* %183, null
  br i1 %184, label %185, label %187

185:                                              ; preds = %179
  %186 = call i32 (i8*, ...) @_hx509_abort(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %187

187:                                              ; preds = %185, %179
  %188 = load i32*, i32** %18, align 8
  %189 = load i64, i64* %19, align 8
  %190 = load i8*, i8** %14, align 8
  %191 = call i32 @wind_ucs4utf8(i32* %188, i64 %189, i8* %190, i32* null)
  store i32 %191, i32* %10, align 4
  %192 = load i32, i32* %10, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %187
  %195 = load i8*, i8** %14, align 8
  %196 = call i32 @free(i8* %195)
  %197 = load i32, i32* %10, align 4
  store i32 %197, i32* %3, align 4
  br label %267

198:                                              ; preds = %187
  %199 = load i8*, i8** %14, align 8
  %200 = load i64, i64* %20, align 8
  %201 = getelementptr inbounds i8, i8* %199, i64 %200
  store i8 0, i8* %201, align 1
  %202 = load i64, i64* %20, align 8
  store i64 %202, i64* %11, align 8
  br label %209

203:                                              ; preds = %52
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = call i32 (i8*, ...) @_hx509_abort(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %206)
  %208 = call i32 @exit(i32 1) #3
  unreachable

209:                                              ; preds = %198, %153, %148, %103, %92, %81
  %210 = load i8**, i8*** %5, align 8
  %211 = load i8*, i8** %13, align 8
  %212 = load i8*, i8** %13, align 8
  %213 = call i32 @strlen(i8* %212)
  %214 = call i32 @append_string(i8** %210, i64* %6, i8* %211, i32 %213, i32 0)
  %215 = load i8*, i8** %13, align 8
  %216 = call i32 @free(i8* %215)
  %217 = load i8**, i8*** %5, align 8
  %218 = call i32 @append_string(i8** %217, i64* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1, i32 0)
  %219 = load i8**, i8*** %5, align 8
  %220 = load i8*, i8** %14, align 8
  %221 = load i64, i64* %11, align 8
  %222 = trunc i64 %221 to i32
  %223 = call i32 @append_string(i8** %219, i64* %6, i8* %220, i32 %222, i32 1)
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = icmp eq i32 %226, 133
  br i1 %227, label %233, label %228

228:                                              ; preds = %209
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = icmp eq i32 %231, 129
  br i1 %232, label %233, label %236

233:                                              ; preds = %228, %209
  %234 = load i8*, i8** %14, align 8
  %235 = call i32 @free(i8* %234)
  br label %236

236:                                              ; preds = %233, %228
  %237 = load i64, i64* %8, align 8
  %238 = add i64 %237, 1
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %241, i32 0, i32 1
  %243 = load %struct.TYPE_21__*, %struct.TYPE_21__** %242, align 8
  %244 = load i64, i64* %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %243, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = icmp ult i64 %238, %247
  br i1 %248, label %249, label %252

249:                                              ; preds = %236
  %250 = load i8**, i8*** %5, align 8
  %251 = call i32 @append_string(i8** %250, i64* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 1, i32 0)
  br label %252

252:                                              ; preds = %249, %236
  br label %253

253:                                              ; preds = %252
  %254 = load i64, i64* %8, align 8
  %255 = add i64 %254, 1
  store i64 %255, i64* %8, align 8
  br label %40

256:                                              ; preds = %40
  %257 = load i64, i64* %7, align 8
  %258 = icmp ugt i64 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %256
  %260 = load i8**, i8*** %5, align 8
  %261 = call i32 @append_string(i8** %260, i64* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1, i32 0)
  br label %262

262:                                              ; preds = %259, %256
  br label %263

263:                                              ; preds = %262
  %264 = load i64, i64* %9, align 8
  %265 = add i64 %264, -1
  store i64 %265, i64* %9, align 8
  br label %34

266:                                              ; preds = %34
  store i32 0, i32* %3, align 4
  br label %267

267:                                              ; preds = %266, %194, %177, %144, %127, %26
  %268 = load i32, i32* %3, align 4
  ret i32 %268
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @oidtostring(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @wind_ucs2utf8_length(i32*, i64, i64*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @_hx509_abort(i8*, ...) #1

declare dso_local i32 @wind_ucs2utf8(i32*, i64, i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @wind_ucs4utf8_length(i32*, i64, i64*) #1

declare dso_local i32 @wind_ucs4utf8(i32*, i64, i8*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @append_string(i8**, i64*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
