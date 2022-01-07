; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_util.c_ucl_object_fromstring_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_util.c_ucl_object_fromstring_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8**, i64, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i8* }

@UCL_STRING_TRIM = common dso_local global i32 0, align 4
@UCL_CHARACTER_WHITESPACE_UNSAFE = common dso_local global i32 0, align 4
@UCL_STRING = common dso_local global i32 0, align 4
@UCL_STRING_ESCAPE = common dso_local global i32 0, align 4
@UCL_CHARACTER_JSON_UNSAFE = common dso_local global i32 0, align 4
@UCL_TRASH_VALUE = common dso_local global i64 0, align 8
@UCL_STRING_PARSE = common dso_local global i32 0, align 4
@UCL_STRING_PARSE_BOOLEAN = common dso_local global i32 0, align 4
@UCL_STRING_PARSE_NUMBER = common dso_local global i32 0, align 4
@UCL_STRING_PARSE_DOUBLE = common dso_local global i32 0, align 4
@UCL_STRING_PARSE_BYTES = common dso_local global i32 0, align 4
@UCL_STRING_PARSE_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @ucl_object_fromstring_common(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %299

19:                                               ; preds = %3
  %20 = call %struct.TYPE_8__* (...) @ucl_object_new()
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %8, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %22 = icmp ne %struct.TYPE_8__* %21, null
  br i1 %22, label %23, label %297

23:                                               ; preds = %19
  %24 = load i64, i64* %6, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i8*, i8** %5, align 8
  %28 = call i64 @strlen(i8* %27)
  store i64 %28, i64* %6, align 8
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @UCL_STRING_TRIM, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %78

34:                                               ; preds = %29
  %35 = load i8*, i8** %5, align 8
  store i8* %35, i8** %9, align 8
  br label %36

36:                                               ; preds = %52, %34
  %37 = load i8*, i8** %9, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = ptrtoint i8* %37 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = load i64, i64* %6, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %36
  %45 = load i8*, i8** %9, align 8
  %46 = load i8, i8* %45, align 1
  %47 = load i32, i32* @UCL_CHARACTER_WHITESPACE_UNSAFE, align 4
  %48 = call i64 @ucl_test_character(i8 signext %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  br label %55

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51
  %53 = load i8*, i8** %9, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %9, align 8
  br label %36

55:                                               ; preds = %50, %36
  %56 = load i8*, i8** %5, align 8
  %57 = load i64, i64* %6, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = getelementptr inbounds i8, i8* %58, i64 -1
  store i8* %59, i8** %10, align 8
  br label %60

60:                                               ; preds = %72, %55
  %61 = load i8*, i8** %10, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = icmp ugt i8* %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %60
  %65 = load i8*, i8** %10, align 8
  %66 = load i8, i8* %65, align 1
  %67 = load i32, i32* @UCL_CHARACTER_WHITESPACE_UNSAFE, align 4
  %68 = call i64 @ucl_test_character(i8 signext %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %64
  br label %75

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71
  %73 = load i8*, i8** %10, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 -1
  store i8* %74, i8** %10, align 8
  br label %60

75:                                               ; preds = %70, %60
  %76 = load i8*, i8** %10, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %10, align 8
  br label %83

78:                                               ; preds = %29
  %79 = load i8*, i8** %5, align 8
  store i8* %79, i8** %9, align 8
  %80 = load i8*, i8** %5, align 8
  %81 = load i64, i64* %6, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  store i8* %82, i8** %10, align 8
  br label %83

83:                                               ; preds = %78, %75
  %84 = load i32, i32* @UCL_STRING, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @UCL_STRING_ESCAPE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %191

91:                                               ; preds = %83
  %92 = load i8*, i8** %9, align 8
  store i8* %92, i8** %11, align 8
  store i64 0, i64* %15, align 8
  br label %93

93:                                               ; preds = %107, %91
  %94 = load i8*, i8** %11, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = icmp ult i8* %94, %95
  br i1 %96, label %97, label %112

97:                                               ; preds = %93
  %98 = load i8*, i8** %11, align 8
  %99 = load i8, i8* %98, align 1
  %100 = load i32, i32* @UCL_CHARACTER_JSON_UNSAFE, align 4
  %101 = call i64 @ucl_test_character(i8 signext %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load i64, i64* %15, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %15, align 8
  br label %106

106:                                              ; preds = %103, %97
  br label %107

107:                                              ; preds = %106
  %108 = load i8*, i8** %11, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %11, align 8
  %110 = load i64, i64* %15, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %15, align 8
  br label %93

112:                                              ; preds = %93
  %113 = load i64, i64* %15, align 8
  %114 = add i64 %113, 1
  %115 = trunc i64 %114 to i32
  %116 = call i8* @malloc(i32 %115)
  store i8* %116, i8** %13, align 8
  %117 = load i8*, i8** %13, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %190

119:                                              ; preds = %112
  %120 = load i8*, i8** %9, align 8
  store i8* %120, i8** %11, align 8
  %121 = load i8*, i8** %13, align 8
  store i8* %121, i8** %14, align 8
  br label %122

122:                                              ; preds = %170, %119
  %123 = load i8*, i8** %11, align 8
  %124 = load i8*, i8** %10, align 8
  %125 = icmp ult i8* %123, %124
  br i1 %125, label %126, label %175

126:                                              ; preds = %122
  %127 = load i8*, i8** %11, align 8
  %128 = load i8, i8* %127, align 1
  %129 = load i32, i32* @UCL_CHARACTER_JSON_UNSAFE, align 4
  %130 = call i64 @ucl_test_character(i8 signext %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %165

132:                                              ; preds = %126
  %133 = load i8*, i8** %11, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  switch i32 %135, label %164 [
    i32 10, label %136
    i32 13, label %140
    i32 8, label %144
    i32 9, label %148
    i32 12, label %152
    i32 92, label %156
    i32 34, label %160
  ]

136:                                              ; preds = %132
  %137 = load i8*, i8** %14, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %14, align 8
  store i8 92, i8* %137, align 1
  %139 = load i8*, i8** %14, align 8
  store i8 110, i8* %139, align 1
  br label %164

140:                                              ; preds = %132
  %141 = load i8*, i8** %14, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %14, align 8
  store i8 92, i8* %141, align 1
  %143 = load i8*, i8** %14, align 8
  store i8 114, i8* %143, align 1
  br label %164

144:                                              ; preds = %132
  %145 = load i8*, i8** %14, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %14, align 8
  store i8 92, i8* %145, align 1
  %147 = load i8*, i8** %14, align 8
  store i8 98, i8* %147, align 1
  br label %164

148:                                              ; preds = %132
  %149 = load i8*, i8** %14, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %14, align 8
  store i8 92, i8* %149, align 1
  %151 = load i8*, i8** %14, align 8
  store i8 116, i8* %151, align 1
  br label %164

152:                                              ; preds = %132
  %153 = load i8*, i8** %14, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %14, align 8
  store i8 92, i8* %153, align 1
  %155 = load i8*, i8** %14, align 8
  store i8 102, i8* %155, align 1
  br label %164

156:                                              ; preds = %132
  %157 = load i8*, i8** %14, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %14, align 8
  store i8 92, i8* %157, align 1
  %159 = load i8*, i8** %14, align 8
  store i8 92, i8* %159, align 1
  br label %164

160:                                              ; preds = %132
  %161 = load i8*, i8** %14, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %14, align 8
  store i8 92, i8* %161, align 1
  %163 = load i8*, i8** %14, align 8
  store i8 34, i8* %163, align 1
  br label %164

164:                                              ; preds = %132, %160, %156, %152, %148, %144, %140, %136
  br label %169

165:                                              ; preds = %126
  %166 = load i8*, i8** %11, align 8
  %167 = load i8, i8* %166, align 1
  %168 = load i8*, i8** %14, align 8
  store i8 %167, i8* %168, align 1
  br label %169

169:                                              ; preds = %165, %164
  br label %170

170:                                              ; preds = %169
  %171 = load i8*, i8** %11, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %172, i8** %11, align 8
  %173 = load i8*, i8** %14, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %14, align 8
  br label %122

175:                                              ; preds = %122
  %176 = load i8*, i8** %14, align 8
  store i8 0, i8* %176, align 1
  %177 = load i8*, i8** %13, align 8
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 0
  store i8* %177, i8** %180, align 8
  %181 = load i8*, i8** %13, align 8
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = load i8**, i8*** %183, align 8
  %185 = load i64, i64* @UCL_TRASH_VALUE, align 8
  %186 = getelementptr inbounds i8*, i8** %184, i64 %185
  store i8* %181, i8** %186, align 8
  %187 = load i64, i64* %15, align 8
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 1
  store i64 %187, i64* %189, align 8
  br label %190

190:                                              ; preds = %175, %112
  br label %231

191:                                              ; preds = %83
  %192 = load i8*, i8** %10, align 8
  %193 = load i8*, i8** %9, align 8
  %194 = ptrtoint i8* %192 to i64
  %195 = ptrtoint i8* %193 to i64
  %196 = sub i64 %194, %195
  %197 = add nsw i64 %196, 1
  %198 = trunc i64 %197 to i32
  %199 = call i8* @malloc(i32 %198)
  store i8* %199, i8** %13, align 8
  %200 = load i8*, i8** %13, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %230

202:                                              ; preds = %191
  %203 = load i8*, i8** %13, align 8
  %204 = load i8*, i8** %9, align 8
  %205 = load i8*, i8** %10, align 8
  %206 = load i8*, i8** %9, align 8
  %207 = ptrtoint i8* %205 to i64
  %208 = ptrtoint i8* %206 to i64
  %209 = sub i64 %207, %208
  %210 = add nsw i64 %209, 1
  %211 = trunc i64 %210 to i32
  %212 = call i32 @ucl_strlcpy_unsafe(i8* %203, i8* %204, i32 %211)
  %213 = load i8*, i8** %13, align 8
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 0
  store i8* %213, i8** %216, align 8
  %217 = load i8*, i8** %13, align 8
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 0
  %220 = load i8**, i8*** %219, align 8
  %221 = load i64, i64* @UCL_TRASH_VALUE, align 8
  %222 = getelementptr inbounds i8*, i8** %220, i64 %221
  store i8* %217, i8** %222, align 8
  %223 = load i8*, i8** %10, align 8
  %224 = load i8*, i8** %9, align 8
  %225 = ptrtoint i8* %223 to i64
  %226 = ptrtoint i8* %224 to i64
  %227 = sub i64 %225, %226
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 1
  store i64 %227, i64* %229, align 8
  br label %230

230:                                              ; preds = %202, %191
  br label %231

231:                                              ; preds = %230, %190
  %232 = load i32, i32* %7, align 4
  %233 = load i32, i32* @UCL_STRING_PARSE, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %296

236:                                              ; preds = %231
  %237 = load i8*, i8** %13, align 8
  %238 = icmp ne i8* %237, null
  br i1 %238, label %239, label %296

239:                                              ; preds = %236
  %240 = load i32, i32* %7, align 4
  %241 = load i32, i32* @UCL_STRING_PARSE_BOOLEAN, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %277

244:                                              ; preds = %239
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %246 = load i8*, i8** %13, align 8
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = trunc i64 %249 to i32
  %251 = call i32 @ucl_maybe_parse_boolean(%struct.TYPE_8__* %245, i8* %246, i32 %250)
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %276, label %253

253:                                              ; preds = %244
  %254 = load i32, i32* %7, align 4
  %255 = load i32, i32* @UCL_STRING_PARSE_NUMBER, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %276

258:                                              ; preds = %253
  %259 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %260 = load i8*, i8** %13, align 8
  %261 = load i8*, i8** %13, align 8
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = getelementptr inbounds i8, i8* %261, i64 %264
  %266 = load i32, i32* %7, align 4
  %267 = load i32, i32* @UCL_STRING_PARSE_DOUBLE, align 4
  %268 = and i32 %266, %267
  %269 = load i32, i32* %7, align 4
  %270 = load i32, i32* @UCL_STRING_PARSE_BYTES, align 4
  %271 = and i32 %269, %270
  %272 = load i32, i32* %7, align 4
  %273 = load i32, i32* @UCL_STRING_PARSE_TIME, align 4
  %274 = and i32 %272, %273
  %275 = call i32 @ucl_maybe_parse_number(%struct.TYPE_8__* %259, i8* %260, i8* %265, i8** %12, i32 %268, i32 %271, i32 %274)
  br label %276

276:                                              ; preds = %258, %253, %244
  br label %295

277:                                              ; preds = %239
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %279 = load i8*, i8** %13, align 8
  %280 = load i8*, i8** %13, align 8
  %281 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  %284 = getelementptr inbounds i8, i8* %280, i64 %283
  %285 = load i32, i32* %7, align 4
  %286 = load i32, i32* @UCL_STRING_PARSE_DOUBLE, align 4
  %287 = and i32 %285, %286
  %288 = load i32, i32* %7, align 4
  %289 = load i32, i32* @UCL_STRING_PARSE_BYTES, align 4
  %290 = and i32 %288, %289
  %291 = load i32, i32* %7, align 4
  %292 = load i32, i32* @UCL_STRING_PARSE_TIME, align 4
  %293 = and i32 %291, %292
  %294 = call i32 @ucl_maybe_parse_number(%struct.TYPE_8__* %278, i8* %279, i8* %284, i8** %12, i32 %287, i32 %290, i32 %293)
  br label %295

295:                                              ; preds = %277, %276
  br label %296

296:                                              ; preds = %295, %236, %231
  br label %297

297:                                              ; preds = %296, %19
  %298 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %298, %struct.TYPE_8__** %4, align 8
  br label %299

299:                                              ; preds = %297, %18
  %300 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %300
}

declare dso_local %struct.TYPE_8__* @ucl_object_new(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @ucl_test_character(i8 signext, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @ucl_strlcpy_unsafe(i8*, i8*, i32) #1

declare dso_local i32 @ucl_maybe_parse_boolean(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @ucl_maybe_parse_number(%struct.TYPE_8__*, i8*, i8*, i8**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
