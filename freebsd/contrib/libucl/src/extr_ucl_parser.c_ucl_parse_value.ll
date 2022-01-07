; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_parse_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_parse_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_parser = type { i8*, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.ucl_chunk = type { i8*, i32, i8*, i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__, i32*, i8*, i32 }
%struct.TYPE_12__ = type { i32 }

@UCL_CHARACTER_WHITESPACE_UNSAFE = common dso_local global i32 0, align 4
@UCL_STRING = common dso_local global i8* null, align 8
@UCL_TRASH_VALUE = common dso_local global i64 0, align 8
@UCL_STATE_AFTER_VALUE = common dso_local global i8* null, align 8
@UCL_ARRAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@UCL_ESYNTAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"unterminated multiline value\00", align 1
@UCL_OBJECT_MULTILINE = common dso_local global i32 0, align 4
@UCL_CHARACTER_VALUE_DIGIT_START = common dso_local global i32 0, align 4
@UCL_STATE_ERROR = common dso_local global i8* null, align 8
@UCL_CHARACTER_WHITESPACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"string value must not be empty\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@UCL_NULL = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucl_parser*, %struct.ucl_chunk*)* @ucl_parse_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucl_parse_value(%struct.ucl_parser* %0, %struct.ucl_chunk* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucl_parser*, align 8
  %5 = alloca %struct.ucl_chunk*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ucl_parser* %0, %struct.ucl_parser** %4, align 8
  store %struct.ucl_chunk* %1, %struct.ucl_chunk** %5, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %15 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %6, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i8, i8* %17, align 1
  %19 = load i32, i32* @UCL_CHARACTER_WHITESPACE_UNSAFE, align 4
  %20 = call i64 @ucl_test_character(i8 zeroext %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %2
  %23 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %24 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp sge i32 %25, 2
  br i1 %26, label %27, label %64

27:                                               ; preds = %22
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = call i64 @ucl_lex_is_comment(i8 zeroext %30, i8 zeroext %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %64

36:                                               ; preds = %27, %2
  br label %37

37:                                               ; preds = %51, %36
  %38 = load i8*, i8** %6, align 8
  %39 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %40 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ult i8* %38, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load i8*, i8** %6, align 8
  %45 = load i8, i8* %44, align 1
  %46 = load i32, i32* @UCL_CHARACTER_WHITESPACE_UNSAFE, align 4
  %47 = call i64 @ucl_test_character(i8 zeroext %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %43, %37
  %50 = phi i1 [ false, %37 ], [ %48, %43 ]
  br i1 %50, label %51, label %55

51:                                               ; preds = %49
  %52 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %52, i8* %53)
  br label %37

55:                                               ; preds = %49
  %56 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %57 = call i32 @ucl_skip_comments(%struct.ucl_parser* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %435

60:                                               ; preds = %55
  %61 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %62 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %6, align 8
  br label %64

64:                                               ; preds = %60, %27, %22
  br label %65

65:                                               ; preds = %64
  %66 = load i8*, i8** %6, align 8
  %67 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %68 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %67, i32 0, i32 2
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ult i8* %66, %69
  br i1 %70, label %71, label %434

71:                                               ; preds = %65
  %72 = load i8*, i8** %6, align 8
  store i8* %72, i8** %7, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  switch i32 %75, label %307 [
    i32 34, label %76
    i32 123, label %131
    i32 91, label %149
    i32 93, label %167
    i32 60, label %187
  ]

76:                                               ; preds = %71
  %77 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %77, i8* %78)
  %80 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %81 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %82 = call i32 @ucl_lex_json_string(%struct.ucl_parser* %80, %struct.ucl_chunk* %81, i32* %11, i32* %12, i32* %13)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %76
  store i32 0, i32* %3, align 4
  br label %435

85:                                               ; preds = %76
  %86 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %87 = call %struct.TYPE_13__* @ucl_parser_get_container(%struct.ucl_parser* %86)
  store %struct.TYPE_13__* %87, %struct.TYPE_13__** %8, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %89 = icmp ne %struct.TYPE_13__* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  store i32 0, i32* %3, align 4
  br label %435

91:                                               ; preds = %85
  %92 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %93 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = ptrtoint i8* %94 to i64
  %97 = ptrtoint i8* %95 to i64
  %98 = sub i64 %96, %97
  %99 = sub nsw i64 %98, 2
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %10, align 4
  %101 = load i8*, i8** @UCL_STRING, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 3
  store i8* %101, i8** %103, align 8
  %104 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* @UCL_TRASH_VALUE, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @ucl_copy_or_store_ptr(%struct.ucl_parser* %104, i8* %106, i32* %111, i32* %114, i32 %115, i32 %116, i32 0, i32 %117)
  store i32 %118, i32* %10, align 4
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %120, label %121

120:                                              ; preds = %91
  store i32 0, i32* %3, align 4
  br label %435

121:                                              ; preds = %91
  %122 = load i32, i32* %10, align 4
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load i8*, i8** @UCL_STATE_AFTER_VALUE, align 8
  %126 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %127 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %126, i32 0, i32 0
  store i8* %125, i8** %127, align 8
  %128 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %129 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  store i8* %130, i8** %6, align 8
  store i32 1, i32* %3, align 4
  br label %435

131:                                              ; preds = %71
  %132 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %133 = call %struct.TYPE_13__* @ucl_parser_get_container(%struct.ucl_parser* %132)
  store %struct.TYPE_13__* %133, %struct.TYPE_13__** %8, align 8
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %135 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %136 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %137 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %136, i32 0, i32 2
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call %struct.TYPE_13__* @ucl_parser_add_container(%struct.TYPE_13__* %134, %struct.ucl_parser* %135, i32 0, i32 %140)
  store %struct.TYPE_13__* %141, %struct.TYPE_13__** %8, align 8
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %143 = icmp eq %struct.TYPE_13__* %142, null
  br i1 %143, label %144, label %145

144:                                              ; preds = %131
  store i32 0, i32* %3, align 4
  br label %435

145:                                              ; preds = %131
  %146 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %147 = load i8*, i8** %6, align 8
  %148 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %146, i8* %147)
  store i32 1, i32* %3, align 4
  br label %435

149:                                              ; preds = %71
  %150 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %151 = call %struct.TYPE_13__* @ucl_parser_get_container(%struct.ucl_parser* %150)
  store %struct.TYPE_13__* %151, %struct.TYPE_13__** %8, align 8
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %153 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %154 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %155 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %154, i32 0, i32 2
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = call %struct.TYPE_13__* @ucl_parser_add_container(%struct.TYPE_13__* %152, %struct.ucl_parser* %153, i32 1, i32 %158)
  store %struct.TYPE_13__* %159, %struct.TYPE_13__** %8, align 8
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %161 = icmp eq %struct.TYPE_13__* %160, null
  br i1 %161, label %162, label %163

162:                                              ; preds = %149
  store i32 0, i32* %3, align 4
  br label %435

163:                                              ; preds = %149
  %164 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %165 = load i8*, i8** %6, align 8
  %166 = call i32 @ucl_chunk_skipc(%struct.ucl_chunk* %164, i8* %165)
  store i32 1, i32* %3, align 4
  br label %435

167:                                              ; preds = %71
  %168 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %169 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %168, i32 0, i32 2
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %169, align 8
  %171 = icmp ne %struct.TYPE_11__* %170, null
  br i1 %171, label %172, label %186

172:                                              ; preds = %167
  %173 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %174 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %173, i32 0, i32 2
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @UCL_ARRAY, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %186

182:                                              ; preds = %172
  %183 = load i8*, i8** @UCL_STATE_AFTER_VALUE, align 8
  %184 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %185 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %184, i32 0, i32 0
  store i8* %183, i8** %185, align 8
  store i32 1, i32* %3, align 4
  br label %435

186:                                              ; preds = %172, %167
  br label %308

187:                                              ; preds = %71
  %188 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %189 = call %struct.TYPE_13__* @ucl_parser_get_container(%struct.ucl_parser* %188)
  store %struct.TYPE_13__* %189, %struct.TYPE_13__** %8, align 8
  %190 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %191 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %190, i32 0, i32 2
  %192 = load i8*, i8** %191, align 8
  %193 = load i8*, i8** %6, align 8
  %194 = ptrtoint i8* %192 to i64
  %195 = ptrtoint i8* %193 to i64
  %196 = sub i64 %194, %195
  %197 = icmp sgt i64 %196, 3
  br i1 %197, label %198, label %306

198:                                              ; preds = %187
  %199 = load i8*, i8** %6, align 8
  %200 = call i32 @memcmp(i8* %199, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %305

202:                                              ; preds = %198
  %203 = load i8*, i8** %6, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 2
  store i8* %204, i8** %6, align 8
  br label %205

205:                                              ; preds = %223, %202
  %206 = load i8*, i8** %6, align 8
  %207 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %208 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %207, i32 0, i32 2
  %209 = load i8*, i8** %208, align 8
  %210 = icmp ult i8* %206, %209
  br i1 %210, label %211, label %221

211:                                              ; preds = %205
  %212 = load i8*, i8** %6, align 8
  %213 = load i8, i8* %212, align 1
  %214 = zext i8 %213 to i32
  %215 = icmp sge i32 %214, 65
  br i1 %215, label %216, label %221

216:                                              ; preds = %211
  %217 = load i8*, i8** %6, align 8
  %218 = load i8, i8* %217, align 1
  %219 = zext i8 %218 to i32
  %220 = icmp sle i32 %219, 90
  br label %221

221:                                              ; preds = %216, %211, %205
  %222 = phi i1 [ false, %211 ], [ false, %205 ], [ %220, %216 ]
  br i1 %222, label %223, label %226

223:                                              ; preds = %221
  %224 = load i8*, i8** %6, align 8
  %225 = getelementptr inbounds i8, i8* %224, i32 1
  store i8* %225, i8** %6, align 8
  br label %205

226:                                              ; preds = %221
  %227 = load i8*, i8** %6, align 8
  %228 = load i8, i8* %227, align 1
  %229 = zext i8 %228 to i32
  %230 = icmp eq i32 %229, 10
  br i1 %230, label %231, label %304

231:                                              ; preds = %226
  %232 = load i8*, i8** %7, align 8
  %233 = getelementptr inbounds i8, i8* %232, i64 2
  store i8* %233, i8** %7, align 8
  %234 = load i8*, i8** %6, align 8
  %235 = load i8*, i8** %7, align 8
  %236 = ptrtoint i8* %234 to i64
  %237 = ptrtoint i8* %235 to i64
  %238 = sub i64 %236, %237
  %239 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %240 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = sext i32 %241 to i64
  %243 = sub nsw i64 %242, %238
  %244 = trunc i64 %243 to i32
  store i32 %244, i32* %240, align 8
  %245 = load i8*, i8** %6, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 1
  %247 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %248 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %247, i32 0, i32 0
  store i8* %246, i8** %248, align 8
  %249 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %250 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %249, i32 0, i32 4
  store i32 0, i32* %250, align 4
  %251 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %252 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 8
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %252, align 8
  %255 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %256 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %257 = load i8*, i8** %7, align 8
  %258 = load i8*, i8** %6, align 8
  %259 = load i8*, i8** %7, align 8
  %260 = ptrtoint i8* %258 to i64
  %261 = ptrtoint i8* %259 to i64
  %262 = sub i64 %260, %261
  %263 = trunc i64 %262 to i32
  %264 = call i32 @ucl_parse_multiline_string(%struct.ucl_parser* %255, %struct.ucl_chunk* %256, i8* %257, i32 %263, i8** %7, i32* %13)
  store i32 %264, i32* %10, align 4
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %272

266:                                              ; preds = %231
  %267 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %268 = load i32, i32* @UCL_ESYNTAX, align 4
  %269 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %270 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %269, i32 0, i32 1
  %271 = call i32 @ucl_set_err(%struct.ucl_parser* %267, i32 %268, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32* %270)
  store i32 0, i32* %3, align 4
  br label %435

272:                                              ; preds = %231
  %273 = load i8*, i8** @UCL_STRING, align 8
  %274 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 3
  store i8* %273, i8** %275, align 8
  %276 = load i32, i32* @UCL_OBJECT_MULTILINE, align 4
  %277 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %278 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i32 0, i32 4
  %279 = load i32, i32* %278, align 8
  %280 = or i32 %279, %276
  store i32 %280, i32* %278, align 8
  %281 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %282 = load i8*, i8** %7, align 8
  %283 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %284 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %283, i32 0, i32 2
  %285 = load i32*, i32** %284, align 8
  %286 = load i64, i64* @UCL_TRASH_VALUE, align 8
  %287 = getelementptr inbounds i32, i32* %285, i64 %286
  %288 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 0
  %291 = load i32, i32* %10, align 4
  %292 = sub nsw i32 %291, 1
  %293 = load i32, i32* %13, align 4
  %294 = call i32 @ucl_copy_or_store_ptr(%struct.ucl_parser* %281, i8* %282, i32* %287, i32* %290, i32 %292, i32 0, i32 0, i32 %293)
  store i32 %294, i32* %10, align 4
  %295 = icmp eq i32 %294, -1
  br i1 %295, label %296, label %297

296:                                              ; preds = %272
  store i32 0, i32* %3, align 4
  br label %435

297:                                              ; preds = %272
  %298 = load i32, i32* %10, align 4
  %299 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %300 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %299, i32 0, i32 0
  store i32 %298, i32* %300, align 8
  %301 = load i8*, i8** @UCL_STATE_AFTER_VALUE, align 8
  %302 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %303 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %302, i32 0, i32 0
  store i8* %301, i8** %303, align 8
  store i32 1, i32* %3, align 4
  br label %435

304:                                              ; preds = %226
  br label %305

305:                                              ; preds = %304, %198
  br label %306

306:                                              ; preds = %305, %187
  br label %307

307:                                              ; preds = %71, %306
  br label %308

308:                                              ; preds = %307, %186
  %309 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %310 = icmp eq %struct.TYPE_13__* %309, null
  br i1 %310, label %311, label %314

311:                                              ; preds = %308
  %312 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %313 = call %struct.TYPE_13__* @ucl_parser_get_container(%struct.ucl_parser* %312)
  store %struct.TYPE_13__* %313, %struct.TYPE_13__** %8, align 8
  br label %314

314:                                              ; preds = %311, %308
  %315 = load i8*, i8** %6, align 8
  %316 = load i8, i8* %315, align 1
  %317 = load i32, i32* @UCL_CHARACTER_VALUE_DIGIT_START, align 4
  %318 = call i64 @ucl_test_character(i8 zeroext %316, i32 %317)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %339

320:                                              ; preds = %314
  %321 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %322 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %323 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %324 = call i32 @ucl_lex_number(%struct.ucl_parser* %321, %struct.ucl_chunk* %322, %struct.TYPE_13__* %323)
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %334, label %326

326:                                              ; preds = %320
  %327 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %328 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %327, i32 0, i32 0
  %329 = load i8*, i8** %328, align 8
  %330 = load i8*, i8** @UCL_STATE_ERROR, align 8
  %331 = icmp eq i8* %329, %330
  br i1 %331, label %332, label %333

332:                                              ; preds = %326
  store i32 0, i32* %3, align 4
  br label %435

333:                                              ; preds = %326
  br label %338

334:                                              ; preds = %320
  %335 = load i8*, i8** @UCL_STATE_AFTER_VALUE, align 8
  %336 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %337 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %336, i32 0, i32 0
  store i8* %335, i8** %337, align 8
  store i32 1, i32* %3, align 4
  br label %435

338:                                              ; preds = %333
  br label %339

339:                                              ; preds = %338, %314
  %340 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %341 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %342 = call i32 @ucl_parse_string_value(%struct.ucl_parser* %340, %struct.ucl_chunk* %341, i32* %13, i32* %11)
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %345, label %344

344:                                              ; preds = %339
  store i32 0, i32* %3, align 4
  br label %435

345:                                              ; preds = %339
  store i32 0, i32* %9, align 4
  br label %346

346:                                              ; preds = %359, %345
  %347 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %348 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %347, i32 0, i32 0
  %349 = load i8*, i8** %348, align 8
  %350 = getelementptr inbounds i8, i8* %349, i64 -1
  %351 = load i32, i32* %9, align 4
  %352 = zext i32 %351 to i64
  %353 = sub i64 0, %352
  %354 = getelementptr inbounds i8, i8* %350, i64 %353
  %355 = load i8, i8* %354, align 1
  %356 = load i32, i32* @UCL_CHARACTER_WHITESPACE, align 4
  %357 = call i64 @ucl_test_character(i8 zeroext %355, i32 %356)
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %362

359:                                              ; preds = %346
  %360 = load i32, i32* %9, align 4
  %361 = add i32 %360, 1
  store i32 %361, i32* %9, align 4
  br label %346

362:                                              ; preds = %346
  %363 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %364 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %363, i32 0, i32 0
  %365 = load i8*, i8** %364, align 8
  %366 = load i8*, i8** %7, align 8
  %367 = ptrtoint i8* %365 to i64
  %368 = ptrtoint i8* %366 to i64
  %369 = sub i64 %367, %368
  %370 = load i32, i32* %9, align 4
  %371 = zext i32 %370 to i64
  %372 = sub nsw i64 %369, %371
  %373 = trunc i64 %372 to i32
  store i32 %373, i32* %10, align 4
  %374 = load i32, i32* %10, align 4
  %375 = icmp sle i32 %374, 0
  br i1 %375, label %376, label %382

376:                                              ; preds = %362
  %377 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %378 = load i32, i32* @UCL_ESYNTAX, align 4
  %379 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %380 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %379, i32 0, i32 1
  %381 = call i32 @ucl_set_err(%struct.ucl_parser* %377, i32 %378, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32* %380)
  store i32 0, i32* %3, align 4
  br label %435

382:                                              ; preds = %362
  %383 = load i32, i32* %10, align 4
  %384 = icmp eq i32 %383, 4
  br i1 %384, label %385, label %395

385:                                              ; preds = %382
  %386 = load i8*, i8** %7, align 8
  %387 = call i32 @memcmp(i8* %386, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %389, label %395

389:                                              ; preds = %385
  %390 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %391 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %390, i32 0, i32 0
  store i32 0, i32* %391, align 8
  %392 = load i8*, i8** @UCL_NULL, align 8
  %393 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %394 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %393, i32 0, i32 3
  store i8* %392, i8** %394, align 8
  br label %426

395:                                              ; preds = %385, %382
  %396 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %397 = load i8*, i8** %7, align 8
  %398 = load i32, i32* %10, align 4
  %399 = call i32 @ucl_maybe_parse_boolean(%struct.TYPE_13__* %396, i8* %397, i32 %398)
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %425, label %401

401:                                              ; preds = %395
  %402 = load i8*, i8** @UCL_STRING, align 8
  %403 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %404 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %403, i32 0, i32 3
  store i8* %402, i8** %404, align 8
  %405 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %406 = load i8*, i8** %7, align 8
  %407 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %408 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %407, i32 0, i32 2
  %409 = load i32*, i32** %408, align 8
  %410 = load i64, i64* @UCL_TRASH_VALUE, align 8
  %411 = getelementptr inbounds i32, i32* %409, i64 %410
  %412 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %413 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %412, i32 0, i32 1
  %414 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %413, i32 0, i32 0
  %415 = load i32, i32* %10, align 4
  %416 = load i32, i32* %11, align 4
  %417 = load i32, i32* %13, align 4
  %418 = call i32 @ucl_copy_or_store_ptr(%struct.ucl_parser* %405, i8* %406, i32* %411, i32* %414, i32 %415, i32 %416, i32 0, i32 %417)
  store i32 %418, i32* %10, align 4
  %419 = icmp eq i32 %418, -1
  br i1 %419, label %420, label %421

420:                                              ; preds = %401
  store i32 0, i32* %3, align 4
  br label %435

421:                                              ; preds = %401
  %422 = load i32, i32* %10, align 4
  %423 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %424 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %423, i32 0, i32 0
  store i32 %422, i32* %424, align 8
  br label %425

425:                                              ; preds = %421, %395
  br label %426

426:                                              ; preds = %425, %389
  br label %427

427:                                              ; preds = %426
  %428 = load i8*, i8** @UCL_STATE_AFTER_VALUE, align 8
  %429 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %430 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %429, i32 0, i32 0
  store i8* %428, i8** %430, align 8
  %431 = load %struct.ucl_chunk*, %struct.ucl_chunk** %5, align 8
  %432 = getelementptr inbounds %struct.ucl_chunk, %struct.ucl_chunk* %431, i32 0, i32 0
  %433 = load i8*, i8** %432, align 8
  store i8* %433, i8** %6, align 8
  store i32 1, i32* %3, align 4
  br label %435

434:                                              ; preds = %65
  store i32 1, i32* %3, align 4
  br label %435

435:                                              ; preds = %434, %427, %420, %376, %344, %334, %332, %297, %296, %266, %182, %163, %162, %145, %144, %121, %120, %90, %84, %59
  %436 = load i32, i32* %3, align 4
  ret i32 %436
}

declare dso_local i64 @ucl_test_character(i8 zeroext, i32) #1

declare dso_local i64 @ucl_lex_is_comment(i8 zeroext, i8 zeroext) #1

declare dso_local i32 @ucl_chunk_skipc(%struct.ucl_chunk*, i8*) #1

declare dso_local i32 @ucl_skip_comments(%struct.ucl_parser*) #1

declare dso_local i32 @ucl_lex_json_string(%struct.ucl_parser*, %struct.ucl_chunk*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_13__* @ucl_parser_get_container(%struct.ucl_parser*) #1

declare dso_local i32 @ucl_copy_or_store_ptr(%struct.ucl_parser*, i8*, i32*, i32*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_13__* @ucl_parser_add_container(%struct.TYPE_13__*, %struct.ucl_parser*, i32, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @ucl_parse_multiline_string(%struct.ucl_parser*, %struct.ucl_chunk*, i8*, i32, i8**, i32*) #1

declare dso_local i32 @ucl_set_err(%struct.ucl_parser*, i32, i8*, i32*) #1

declare dso_local i32 @ucl_lex_number(%struct.ucl_parser*, %struct.ucl_chunk*, %struct.TYPE_13__*) #1

declare dso_local i32 @ucl_parse_string_value(%struct.ucl_parser*, %struct.ucl_chunk*, i32*, i32*) #1

declare dso_local i32 @ucl_maybe_parse_boolean(%struct.TYPE_13__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
