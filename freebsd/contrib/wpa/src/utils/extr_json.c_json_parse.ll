; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_json.c_json_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_json.c_json_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.json_token = type { i8*, i8*, i8*, i32, i8*, %struct.json_token*, %struct.json_token*, %struct.json_token* }

@JSON_WAITING_VALUE = common dso_local global i8* null, align 8
@JSON_ARRAY = common dso_local global i8* null, align 8
@JSON_STARTED = common dso_local global i8* null, align 8
@JSON_EMPTY = common dso_local global i8* null, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"JSON: Invalid state for start array/object\00", align 1
@JSON_MAX_DEPTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"JSON: Max depth exceeded\00", align 1
@JSON_OBJECT = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"JSON: Invalid state for end array/object\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"JSON: Array/Object mismatch\00", align 1
@JSON_COMPLETED = common dso_local global i8* null, align 8
@JSON_STRING = common dso_local global i8* null, align 8
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"JSON: String value: '%s'\00", align 1
@JSON_VALUE = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"JSON: String value: '%s' = '%s'\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"JSON: Invalid state for a string\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"JSON: Invalid literal name\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"JSON: Literal name: '%s' = %c\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"JSON: Literal name: %c\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"JSON: Invalid state for a literal name\00", align 1
@JSON_BOOLEAN = common dso_local global i8* null, align 8
@JSON_NULL = common dso_local global i8* null, align 8
@JSON_NUMBER = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [32 x i8] c"JSON: Number value: '%s' = '%d'\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"JSON: Number value: %d\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"JSON: Invalid state for a number\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"JSON: Unexpected JSON character: %c\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"JSON: Incomplete token in the tree\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"JSON: Parsing failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.json_token* @json_parse(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.json_token*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.json_token*, align 8
  %7 = alloca %struct.json_token*, align 8
  %8 = alloca %struct.json_token*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.json_token* null, %struct.json_token** %6, align 8
  store %struct.json_token* null, %struct.json_token** %7, align 8
  store %struct.json_token* null, %struct.json_token** %8, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load i8*, i8** %4, align 8
  store i8* %15, i8** %9, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  store i8* %18, i8** %10, align 8
  br label %19

19:                                               ; preds = %612, %2
  %20 = load i8*, i8** %9, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = icmp ult i8* %20, %21
  br i1 %22, label %23, label %615

23:                                               ; preds = %19
  %24 = load i8*, i8** %9, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  switch i32 %26, label %595 [
    i32 91, label %27
    i32 123, label %27
    i32 93, label %128
    i32 125, label %128
    i32 34, label %210
    i32 32, label %326
    i32 9, label %326
    i32 13, label %326
    i32 10, label %326
    i32 58, label %327
    i32 44, label %341
    i32 116, label %369
    i32 102, label %369
    i32 110, label %369
    i32 45, label %499
    i32 48, label %499
    i32 49, label %499
    i32 50, label %499
    i32 51, label %499
    i32 52, label %499
    i32 53, label %499
    i32 54, label %499
    i32 55, label %499
    i32 56, label %499
    i32 57, label %499
  ]

27:                                               ; preds = %23, %23
  %28 = load %struct.json_token*, %struct.json_token** %7, align 8
  %29 = icmp ne %struct.json_token* %28, null
  br i1 %29, label %42, label %30

30:                                               ; preds = %27
  %31 = call i8* @json_alloc_token(i32* %14)
  %32 = bitcast i8* %31 to %struct.json_token*
  store %struct.json_token* %32, %struct.json_token** %8, align 8
  %33 = load %struct.json_token*, %struct.json_token** %8, align 8
  %34 = icmp ne %struct.json_token* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %624

36:                                               ; preds = %30
  %37 = load %struct.json_token*, %struct.json_token** %6, align 8
  %38 = icmp ne %struct.json_token* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = load %struct.json_token*, %struct.json_token** %8, align 8
  store %struct.json_token* %40, %struct.json_token** %6, align 8
  br label %41

41:                                               ; preds = %39, %36
  br label %84

42:                                               ; preds = %27
  %43 = load %struct.json_token*, %struct.json_token** %7, align 8
  %44 = getelementptr inbounds %struct.json_token, %struct.json_token* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i8*, i8** @JSON_WAITING_VALUE, align 8
  %47 = icmp eq i8* %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load %struct.json_token*, %struct.json_token** %7, align 8
  store %struct.json_token* %49, %struct.json_token** %8, align 8
  br label %83

50:                                               ; preds = %42
  %51 = load %struct.json_token*, %struct.json_token** %7, align 8
  %52 = getelementptr inbounds %struct.json_token, %struct.json_token* %51, i32 0, i32 5
  %53 = load %struct.json_token*, %struct.json_token** %52, align 8
  %54 = icmp ne %struct.json_token* %53, null
  br i1 %54, label %55, label %79

55:                                               ; preds = %50
  %56 = load %struct.json_token*, %struct.json_token** %7, align 8
  %57 = getelementptr inbounds %struct.json_token, %struct.json_token* %56, i32 0, i32 5
  %58 = load %struct.json_token*, %struct.json_token** %57, align 8
  %59 = getelementptr inbounds %struct.json_token, %struct.json_token* %58, i32 0, i32 4
  %60 = load i8*, i8** %59, align 8
  %61 = load i8*, i8** @JSON_ARRAY, align 8
  %62 = icmp eq i8* %60, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %55
  %64 = load %struct.json_token*, %struct.json_token** %7, align 8
  %65 = getelementptr inbounds %struct.json_token, %struct.json_token* %64, i32 0, i32 5
  %66 = load %struct.json_token*, %struct.json_token** %65, align 8
  %67 = getelementptr inbounds %struct.json_token, %struct.json_token* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i8*, i8** @JSON_STARTED, align 8
  %70 = icmp eq i8* %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %63
  %72 = load %struct.json_token*, %struct.json_token** %7, align 8
  %73 = getelementptr inbounds %struct.json_token, %struct.json_token* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i8*, i8** @JSON_EMPTY, align 8
  %76 = icmp eq i8* %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load %struct.json_token*, %struct.json_token** %7, align 8
  store %struct.json_token* %78, %struct.json_token** %8, align 8
  br label %82

79:                                               ; preds = %71, %63, %55, %50
  %80 = load i32, i32* @MSG_DEBUG, align 4
  %81 = call i32 (i32, i8*, ...) @wpa_printf(i32 %80, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %624

82:                                               ; preds = %77
  br label %83

83:                                               ; preds = %82, %48
  br label %84

84:                                               ; preds = %83, %41
  %85 = load i32, i32* %13, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @JSON_MAX_DEPTH, align 4
  %89 = icmp ugt i32 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i32, i32* @MSG_DEBUG, align 4
  %92 = call i32 (i32, i8*, ...) @wpa_printf(i32 %91, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %624

93:                                               ; preds = %84
  %94 = load i8*, i8** %9, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 91
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i8*, i8** @JSON_ARRAY, align 8
  br label %102

100:                                              ; preds = %93
  %101 = load i8*, i8** @JSON_OBJECT, align 8
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i8* [ %99, %98 ], [ %101, %100 ]
  %104 = load %struct.json_token*, %struct.json_token** %8, align 8
  %105 = getelementptr inbounds %struct.json_token, %struct.json_token* %104, i32 0, i32 4
  store i8* %103, i8** %105, align 8
  %106 = load i8*, i8** @JSON_STARTED, align 8
  %107 = load %struct.json_token*, %struct.json_token** %8, align 8
  %108 = getelementptr inbounds %struct.json_token, %struct.json_token* %107, i32 0, i32 0
  store i8* %106, i8** %108, align 8
  %109 = call i8* @json_alloc_token(i32* %14)
  %110 = bitcast i8* %109 to %struct.json_token*
  %111 = load %struct.json_token*, %struct.json_token** %8, align 8
  %112 = getelementptr inbounds %struct.json_token, %struct.json_token* %111, i32 0, i32 7
  store %struct.json_token* %110, %struct.json_token** %112, align 8
  %113 = load %struct.json_token*, %struct.json_token** %8, align 8
  %114 = getelementptr inbounds %struct.json_token, %struct.json_token* %113, i32 0, i32 7
  %115 = load %struct.json_token*, %struct.json_token** %114, align 8
  %116 = icmp ne %struct.json_token* %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %102
  br label %624

118:                                              ; preds = %102
  %119 = load %struct.json_token*, %struct.json_token** %8, align 8
  %120 = getelementptr inbounds %struct.json_token, %struct.json_token* %119, i32 0, i32 7
  %121 = load %struct.json_token*, %struct.json_token** %120, align 8
  store %struct.json_token* %121, %struct.json_token** %7, align 8
  %122 = load %struct.json_token*, %struct.json_token** %8, align 8
  %123 = load %struct.json_token*, %struct.json_token** %7, align 8
  %124 = getelementptr inbounds %struct.json_token, %struct.json_token* %123, i32 0, i32 5
  store %struct.json_token* %122, %struct.json_token** %124, align 8
  %125 = load i8*, i8** @JSON_EMPTY, align 8
  %126 = load %struct.json_token*, %struct.json_token** %7, align 8
  %127 = getelementptr inbounds %struct.json_token, %struct.json_token* %126, i32 0, i32 0
  store i8* %125, i8** %127, align 8
  br label %601

128:                                              ; preds = %23, %23
  %129 = load %struct.json_token*, %struct.json_token** %7, align 8
  %130 = icmp ne %struct.json_token* %129, null
  br i1 %130, label %131, label %144

131:                                              ; preds = %128
  %132 = load %struct.json_token*, %struct.json_token** %7, align 8
  %133 = getelementptr inbounds %struct.json_token, %struct.json_token* %132, i32 0, i32 5
  %134 = load %struct.json_token*, %struct.json_token** %133, align 8
  %135 = icmp ne %struct.json_token* %134, null
  br i1 %135, label %136, label %144

136:                                              ; preds = %131
  %137 = load %struct.json_token*, %struct.json_token** %7, align 8
  %138 = getelementptr inbounds %struct.json_token, %struct.json_token* %137, i32 0, i32 5
  %139 = load %struct.json_token*, %struct.json_token** %138, align 8
  %140 = getelementptr inbounds %struct.json_token, %struct.json_token* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = load i8*, i8** @JSON_STARTED, align 8
  %143 = icmp ne i8* %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %136, %131, %128
  %145 = load i32, i32* @MSG_DEBUG, align 4
  %146 = call i32 (i32, i8*, ...) @wpa_printf(i32 %145, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %624

147:                                              ; preds = %136
  %148 = load i32, i32* %13, align 4
  %149 = add i32 %148, -1
  store i32 %149, i32* %13, align 4
  %150 = load %struct.json_token*, %struct.json_token** %7, align 8
  %151 = getelementptr inbounds %struct.json_token, %struct.json_token* %150, i32 0, i32 5
  %152 = load %struct.json_token*, %struct.json_token** %151, align 8
  store %struct.json_token* %152, %struct.json_token** %7, align 8
  %153 = load i8*, i8** %9, align 8
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 93
  br i1 %156, label %157, label %163

157:                                              ; preds = %147
  %158 = load %struct.json_token*, %struct.json_token** %7, align 8
  %159 = getelementptr inbounds %struct.json_token, %struct.json_token* %158, i32 0, i32 4
  %160 = load i8*, i8** %159, align 8
  %161 = load i8*, i8** @JSON_ARRAY, align 8
  %162 = icmp ne i8* %160, %161
  br i1 %162, label %174, label %163

163:                                              ; preds = %157, %147
  %164 = load i8*, i8** %9, align 8
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp eq i32 %166, 125
  br i1 %167, label %168, label %177

168:                                              ; preds = %163
  %169 = load %struct.json_token*, %struct.json_token** %7, align 8
  %170 = getelementptr inbounds %struct.json_token, %struct.json_token* %169, i32 0, i32 4
  %171 = load i8*, i8** %170, align 8
  %172 = load i8*, i8** @JSON_OBJECT, align 8
  %173 = icmp ne i8* %171, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %168, %157
  %175 = load i32, i32* @MSG_DEBUG, align 4
  %176 = call i32 (i32, i8*, ...) @wpa_printf(i32 %175, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %624

177:                                              ; preds = %168, %163
  %178 = load %struct.json_token*, %struct.json_token** %7, align 8
  %179 = getelementptr inbounds %struct.json_token, %struct.json_token* %178, i32 0, i32 7
  %180 = load %struct.json_token*, %struct.json_token** %179, align 8
  %181 = getelementptr inbounds %struct.json_token, %struct.json_token* %180, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  %183 = load i8*, i8** @JSON_EMPTY, align 8
  %184 = icmp eq i8* %182, %183
  br i1 %184, label %185, label %206

185:                                              ; preds = %177
  %186 = load %struct.json_token*, %struct.json_token** %7, align 8
  %187 = getelementptr inbounds %struct.json_token, %struct.json_token* %186, i32 0, i32 7
  %188 = load %struct.json_token*, %struct.json_token** %187, align 8
  %189 = getelementptr inbounds %struct.json_token, %struct.json_token* %188, i32 0, i32 7
  %190 = load %struct.json_token*, %struct.json_token** %189, align 8
  %191 = icmp ne %struct.json_token* %190, null
  br i1 %191, label %206, label %192

192:                                              ; preds = %185
  %193 = load %struct.json_token*, %struct.json_token** %7, align 8
  %194 = getelementptr inbounds %struct.json_token, %struct.json_token* %193, i32 0, i32 7
  %195 = load %struct.json_token*, %struct.json_token** %194, align 8
  %196 = getelementptr inbounds %struct.json_token, %struct.json_token* %195, i32 0, i32 6
  %197 = load %struct.json_token*, %struct.json_token** %196, align 8
  %198 = icmp ne %struct.json_token* %197, null
  br i1 %198, label %206, label %199

199:                                              ; preds = %192
  %200 = load %struct.json_token*, %struct.json_token** %7, align 8
  %201 = getelementptr inbounds %struct.json_token, %struct.json_token* %200, i32 0, i32 7
  %202 = load %struct.json_token*, %struct.json_token** %201, align 8
  %203 = call i32 @json_free(%struct.json_token* %202)
  %204 = load %struct.json_token*, %struct.json_token** %7, align 8
  %205 = getelementptr inbounds %struct.json_token, %struct.json_token* %204, i32 0, i32 7
  store %struct.json_token* null, %struct.json_token** %205, align 8
  br label %206

206:                                              ; preds = %199, %192, %185, %177
  %207 = load i8*, i8** @JSON_COMPLETED, align 8
  %208 = load %struct.json_token*, %struct.json_token** %7, align 8
  %209 = getelementptr inbounds %struct.json_token, %struct.json_token* %208, i32 0, i32 0
  store i8* %207, i8** %209, align 8
  br label %601

210:                                              ; preds = %23
  %211 = load i8*, i8** %10, align 8
  %212 = call i8* @json_parse_string(i8** %9, i8* %211)
  store i8* %212, i8** %11, align 8
  %213 = load i8*, i8** %11, align 8
  %214 = icmp ne i8* %213, null
  br i1 %214, label %216, label %215

215:                                              ; preds = %210
  br label %624

216:                                              ; preds = %210
  %217 = load %struct.json_token*, %struct.json_token** %7, align 8
  %218 = icmp ne %struct.json_token* %217, null
  br i1 %218, label %235, label %219

219:                                              ; preds = %216
  %220 = call i8* @json_alloc_token(i32* %14)
  %221 = bitcast i8* %220 to %struct.json_token*
  store %struct.json_token* %221, %struct.json_token** %8, align 8
  %222 = load %struct.json_token*, %struct.json_token** %8, align 8
  %223 = icmp ne %struct.json_token* %222, null
  br i1 %223, label %225, label %224

224:                                              ; preds = %219
  br label %624

225:                                              ; preds = %219
  %226 = load i8*, i8** @JSON_STRING, align 8
  %227 = load %struct.json_token*, %struct.json_token** %8, align 8
  %228 = getelementptr inbounds %struct.json_token, %struct.json_token* %227, i32 0, i32 4
  store i8* %226, i8** %228, align 8
  %229 = load i8*, i8** %11, align 8
  %230 = load %struct.json_token*, %struct.json_token** %8, align 8
  %231 = getelementptr inbounds %struct.json_token, %struct.json_token* %230, i32 0, i32 1
  store i8* %229, i8** %231, align 8
  %232 = load i8*, i8** @JSON_COMPLETED, align 8
  %233 = load %struct.json_token*, %struct.json_token** %8, align 8
  %234 = getelementptr inbounds %struct.json_token, %struct.json_token* %233, i32 0, i32 0
  store i8* %232, i8** %234, align 8
  br label %325

235:                                              ; preds = %216
  %236 = load %struct.json_token*, %struct.json_token** %7, align 8
  %237 = getelementptr inbounds %struct.json_token, %struct.json_token* %236, i32 0, i32 5
  %238 = load %struct.json_token*, %struct.json_token** %237, align 8
  %239 = icmp ne %struct.json_token* %238, null
  br i1 %239, label %240, label %277

240:                                              ; preds = %235
  %241 = load %struct.json_token*, %struct.json_token** %7, align 8
  %242 = getelementptr inbounds %struct.json_token, %struct.json_token* %241, i32 0, i32 5
  %243 = load %struct.json_token*, %struct.json_token** %242, align 8
  %244 = getelementptr inbounds %struct.json_token, %struct.json_token* %243, i32 0, i32 4
  %245 = load i8*, i8** %244, align 8
  %246 = load i8*, i8** @JSON_ARRAY, align 8
  %247 = icmp eq i8* %245, %246
  br i1 %247, label %248, label %277

248:                                              ; preds = %240
  %249 = load %struct.json_token*, %struct.json_token** %7, align 8
  %250 = getelementptr inbounds %struct.json_token, %struct.json_token* %249, i32 0, i32 5
  %251 = load %struct.json_token*, %struct.json_token** %250, align 8
  %252 = getelementptr inbounds %struct.json_token, %struct.json_token* %251, i32 0, i32 0
  %253 = load i8*, i8** %252, align 8
  %254 = load i8*, i8** @JSON_STARTED, align 8
  %255 = icmp eq i8* %253, %254
  br i1 %255, label %256, label %277

256:                                              ; preds = %248
  %257 = load %struct.json_token*, %struct.json_token** %7, align 8
  %258 = getelementptr inbounds %struct.json_token, %struct.json_token* %257, i32 0, i32 0
  %259 = load i8*, i8** %258, align 8
  %260 = load i8*, i8** @JSON_EMPTY, align 8
  %261 = icmp eq i8* %259, %260
  br i1 %261, label %262, label %277

262:                                              ; preds = %256
  %263 = load i8*, i8** %11, align 8
  %264 = load %struct.json_token*, %struct.json_token** %7, align 8
  %265 = getelementptr inbounds %struct.json_token, %struct.json_token* %264, i32 0, i32 1
  store i8* %263, i8** %265, align 8
  %266 = load i8*, i8** @JSON_COMPLETED, align 8
  %267 = load %struct.json_token*, %struct.json_token** %7, align 8
  %268 = getelementptr inbounds %struct.json_token, %struct.json_token* %267, i32 0, i32 0
  store i8* %266, i8** %268, align 8
  %269 = load i8*, i8** @JSON_STRING, align 8
  %270 = load %struct.json_token*, %struct.json_token** %7, align 8
  %271 = getelementptr inbounds %struct.json_token, %struct.json_token* %270, i32 0, i32 4
  store i8* %269, i8** %271, align 8
  %272 = load i32, i32* @MSG_MSGDUMP, align 4
  %273 = load %struct.json_token*, %struct.json_token** %7, align 8
  %274 = getelementptr inbounds %struct.json_token, %struct.json_token* %273, i32 0, i32 1
  %275 = load i8*, i8** %274, align 8
  %276 = call i32 (i32, i8*, ...) @wpa_printf(i32 %272, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %275)
  br label %324

277:                                              ; preds = %256, %248, %240, %235
  %278 = load %struct.json_token*, %struct.json_token** %7, align 8
  %279 = getelementptr inbounds %struct.json_token, %struct.json_token* %278, i32 0, i32 0
  %280 = load i8*, i8** %279, align 8
  %281 = load i8*, i8** @JSON_EMPTY, align 8
  %282 = icmp eq i8* %280, %281
  br i1 %282, label %283, label %293

283:                                              ; preds = %277
  %284 = load i8*, i8** @JSON_VALUE, align 8
  %285 = load %struct.json_token*, %struct.json_token** %7, align 8
  %286 = getelementptr inbounds %struct.json_token, %struct.json_token* %285, i32 0, i32 4
  store i8* %284, i8** %286, align 8
  %287 = load i8*, i8** %11, align 8
  %288 = load %struct.json_token*, %struct.json_token** %7, align 8
  %289 = getelementptr inbounds %struct.json_token, %struct.json_token* %288, i32 0, i32 2
  store i8* %287, i8** %289, align 8
  %290 = load i8*, i8** @JSON_STARTED, align 8
  %291 = load %struct.json_token*, %struct.json_token** %7, align 8
  %292 = getelementptr inbounds %struct.json_token, %struct.json_token* %291, i32 0, i32 0
  store i8* %290, i8** %292, align 8
  br label %323

293:                                              ; preds = %277
  %294 = load %struct.json_token*, %struct.json_token** %7, align 8
  %295 = getelementptr inbounds %struct.json_token, %struct.json_token* %294, i32 0, i32 0
  %296 = load i8*, i8** %295, align 8
  %297 = load i8*, i8** @JSON_WAITING_VALUE, align 8
  %298 = icmp eq i8* %296, %297
  br i1 %298, label %299, label %317

299:                                              ; preds = %293
  %300 = load i8*, i8** %11, align 8
  %301 = load %struct.json_token*, %struct.json_token** %7, align 8
  %302 = getelementptr inbounds %struct.json_token, %struct.json_token* %301, i32 0, i32 1
  store i8* %300, i8** %302, align 8
  %303 = load i8*, i8** @JSON_COMPLETED, align 8
  %304 = load %struct.json_token*, %struct.json_token** %7, align 8
  %305 = getelementptr inbounds %struct.json_token, %struct.json_token* %304, i32 0, i32 0
  store i8* %303, i8** %305, align 8
  %306 = load i8*, i8** @JSON_STRING, align 8
  %307 = load %struct.json_token*, %struct.json_token** %7, align 8
  %308 = getelementptr inbounds %struct.json_token, %struct.json_token* %307, i32 0, i32 4
  store i8* %306, i8** %308, align 8
  %309 = load i32, i32* @MSG_MSGDUMP, align 4
  %310 = load %struct.json_token*, %struct.json_token** %7, align 8
  %311 = getelementptr inbounds %struct.json_token, %struct.json_token* %310, i32 0, i32 2
  %312 = load i8*, i8** %311, align 8
  %313 = load %struct.json_token*, %struct.json_token** %7, align 8
  %314 = getelementptr inbounds %struct.json_token, %struct.json_token* %313, i32 0, i32 1
  %315 = load i8*, i8** %314, align 8
  %316 = call i32 (i32, i8*, ...) @wpa_printf(i32 %309, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %312, i8* %315)
  br label %322

317:                                              ; preds = %293
  %318 = load i32, i32* @MSG_DEBUG, align 4
  %319 = call i32 (i32, i8*, ...) @wpa_printf(i32 %318, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %320 = load i8*, i8** %11, align 8
  %321 = call i32 @os_free(i8* %320)
  br label %624

322:                                              ; preds = %299
  br label %323

323:                                              ; preds = %322, %283
  br label %324

324:                                              ; preds = %323, %262
  br label %325

325:                                              ; preds = %324, %225
  br label %601

326:                                              ; preds = %23, %23, %23, %23
  br label %601

327:                                              ; preds = %23
  %328 = load %struct.json_token*, %struct.json_token** %7, align 8
  %329 = icmp ne %struct.json_token* %328, null
  br i1 %329, label %330, label %336

330:                                              ; preds = %327
  %331 = load %struct.json_token*, %struct.json_token** %7, align 8
  %332 = getelementptr inbounds %struct.json_token, %struct.json_token* %331, i32 0, i32 0
  %333 = load i8*, i8** %332, align 8
  %334 = load i8*, i8** @JSON_STARTED, align 8
  %335 = icmp ne i8* %333, %334
  br i1 %335, label %336, label %337

336:                                              ; preds = %330, %327
  br label %624

337:                                              ; preds = %330
  %338 = load i8*, i8** @JSON_WAITING_VALUE, align 8
  %339 = load %struct.json_token*, %struct.json_token** %7, align 8
  %340 = getelementptr inbounds %struct.json_token, %struct.json_token* %339, i32 0, i32 0
  store i8* %338, i8** %340, align 8
  br label %601

341:                                              ; preds = %23
  %342 = load %struct.json_token*, %struct.json_token** %7, align 8
  %343 = icmp ne %struct.json_token* %342, null
  br i1 %343, label %345, label %344

344:                                              ; preds = %341
  br label %624

345:                                              ; preds = %341
  %346 = call i8* @json_alloc_token(i32* %14)
  %347 = bitcast i8* %346 to %struct.json_token*
  %348 = load %struct.json_token*, %struct.json_token** %7, align 8
  %349 = getelementptr inbounds %struct.json_token, %struct.json_token* %348, i32 0, i32 6
  store %struct.json_token* %347, %struct.json_token** %349, align 8
  %350 = load %struct.json_token*, %struct.json_token** %7, align 8
  %351 = getelementptr inbounds %struct.json_token, %struct.json_token* %350, i32 0, i32 6
  %352 = load %struct.json_token*, %struct.json_token** %351, align 8
  %353 = icmp ne %struct.json_token* %352, null
  br i1 %353, label %355, label %354

354:                                              ; preds = %345
  br label %624

355:                                              ; preds = %345
  %356 = load %struct.json_token*, %struct.json_token** %7, align 8
  %357 = getelementptr inbounds %struct.json_token, %struct.json_token* %356, i32 0, i32 5
  %358 = load %struct.json_token*, %struct.json_token** %357, align 8
  %359 = load %struct.json_token*, %struct.json_token** %7, align 8
  %360 = getelementptr inbounds %struct.json_token, %struct.json_token* %359, i32 0, i32 6
  %361 = load %struct.json_token*, %struct.json_token** %360, align 8
  %362 = getelementptr inbounds %struct.json_token, %struct.json_token* %361, i32 0, i32 5
  store %struct.json_token* %358, %struct.json_token** %362, align 8
  %363 = load %struct.json_token*, %struct.json_token** %7, align 8
  %364 = getelementptr inbounds %struct.json_token, %struct.json_token* %363, i32 0, i32 6
  %365 = load %struct.json_token*, %struct.json_token** %364, align 8
  store %struct.json_token* %365, %struct.json_token** %7, align 8
  %366 = load i8*, i8** @JSON_EMPTY, align 8
  %367 = load %struct.json_token*, %struct.json_token** %7, align 8
  %368 = getelementptr inbounds %struct.json_token, %struct.json_token* %367, i32 0, i32 0
  store i8* %366, i8** %368, align 8
  br label %601

369:                                              ; preds = %23, %23, %23
  %370 = load i8*, i8** %10, align 8
  %371 = load i8*, i8** %9, align 8
  %372 = ptrtoint i8* %370 to i64
  %373 = ptrtoint i8* %371 to i64
  %374 = sub i64 %372, %373
  %375 = icmp sge i64 %374, 4
  br i1 %375, label %376, label %380

376:                                              ; preds = %369
  %377 = load i8*, i8** %9, align 8
  %378 = call i32 @os_strncmp(i8* %377, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 4)
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %405, label %380

380:                                              ; preds = %376, %369
  %381 = load i8*, i8** %10, align 8
  %382 = load i8*, i8** %9, align 8
  %383 = ptrtoint i8* %381 to i64
  %384 = ptrtoint i8* %382 to i64
  %385 = sub i64 %383, %384
  %386 = icmp sge i64 %385, 5
  br i1 %386, label %387, label %391

387:                                              ; preds = %380
  %388 = load i8*, i8** %9, align 8
  %389 = call i32 @os_strncmp(i8* %388, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 5)
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %405, label %391

391:                                              ; preds = %387, %380
  %392 = load i8*, i8** %10, align 8
  %393 = load i8*, i8** %9, align 8
  %394 = ptrtoint i8* %392 to i64
  %395 = ptrtoint i8* %393 to i64
  %396 = sub i64 %394, %395
  %397 = icmp sge i64 %396, 4
  br i1 %397, label %398, label %402

398:                                              ; preds = %391
  %399 = load i8*, i8** %9, align 8
  %400 = call i32 @os_strncmp(i8* %399, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 4)
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %405, label %402

402:                                              ; preds = %398, %391
  %403 = load i32, i32* @MSG_DEBUG, align 4
  %404 = call i32 (i32, i8*, ...) @wpa_printf(i32 %403, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  br label %624

405:                                              ; preds = %398, %387, %376
  %406 = load %struct.json_token*, %struct.json_token** %7, align 8
  %407 = icmp ne %struct.json_token* %406, null
  br i1 %407, label %416, label %408

408:                                              ; preds = %405
  %409 = call i8* @json_alloc_token(i32* %14)
  %410 = bitcast i8* %409 to %struct.json_token*
  store %struct.json_token* %410, %struct.json_token** %8, align 8
  %411 = load %struct.json_token*, %struct.json_token** %8, align 8
  %412 = icmp ne %struct.json_token* %411, null
  br i1 %412, label %414, label %413

413:                                              ; preds = %408
  br label %624

414:                                              ; preds = %408
  %415 = load %struct.json_token*, %struct.json_token** %8, align 8
  store %struct.json_token* %415, %struct.json_token** %7, align 8
  br label %469

416:                                              ; preds = %405
  %417 = load %struct.json_token*, %struct.json_token** %7, align 8
  %418 = getelementptr inbounds %struct.json_token, %struct.json_token* %417, i32 0, i32 0
  %419 = load i8*, i8** %418, align 8
  %420 = load i8*, i8** @JSON_WAITING_VALUE, align 8
  %421 = icmp eq i8* %419, %420
  br i1 %421, label %422, label %431

422:                                              ; preds = %416
  %423 = load i32, i32* @MSG_MSGDUMP, align 4
  %424 = load %struct.json_token*, %struct.json_token** %7, align 8
  %425 = getelementptr inbounds %struct.json_token, %struct.json_token* %424, i32 0, i32 2
  %426 = load i8*, i8** %425, align 8
  %427 = load i8*, i8** %9, align 8
  %428 = load i8, i8* %427, align 1
  %429 = sext i8 %428 to i32
  %430 = call i32 (i32, i8*, ...) @wpa_printf(i32 %423, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i8* %426, i32 %429)
  br label %468

431:                                              ; preds = %416
  %432 = load %struct.json_token*, %struct.json_token** %7, align 8
  %433 = getelementptr inbounds %struct.json_token, %struct.json_token* %432, i32 0, i32 5
  %434 = load %struct.json_token*, %struct.json_token** %433, align 8
  %435 = icmp ne %struct.json_token* %434, null
  br i1 %435, label %436, label %464

436:                                              ; preds = %431
  %437 = load %struct.json_token*, %struct.json_token** %7, align 8
  %438 = getelementptr inbounds %struct.json_token, %struct.json_token* %437, i32 0, i32 5
  %439 = load %struct.json_token*, %struct.json_token** %438, align 8
  %440 = getelementptr inbounds %struct.json_token, %struct.json_token* %439, i32 0, i32 4
  %441 = load i8*, i8** %440, align 8
  %442 = load i8*, i8** @JSON_ARRAY, align 8
  %443 = icmp eq i8* %441, %442
  br i1 %443, label %444, label %464

444:                                              ; preds = %436
  %445 = load %struct.json_token*, %struct.json_token** %7, align 8
  %446 = getelementptr inbounds %struct.json_token, %struct.json_token* %445, i32 0, i32 5
  %447 = load %struct.json_token*, %struct.json_token** %446, align 8
  %448 = getelementptr inbounds %struct.json_token, %struct.json_token* %447, i32 0, i32 0
  %449 = load i8*, i8** %448, align 8
  %450 = load i8*, i8** @JSON_STARTED, align 8
  %451 = icmp eq i8* %449, %450
  br i1 %451, label %452, label %464

452:                                              ; preds = %444
  %453 = load %struct.json_token*, %struct.json_token** %7, align 8
  %454 = getelementptr inbounds %struct.json_token, %struct.json_token* %453, i32 0, i32 0
  %455 = load i8*, i8** %454, align 8
  %456 = load i8*, i8** @JSON_EMPTY, align 8
  %457 = icmp eq i8* %455, %456
  br i1 %457, label %458, label %464

458:                                              ; preds = %452
  %459 = load i32, i32* @MSG_MSGDUMP, align 4
  %460 = load i8*, i8** %9, align 8
  %461 = load i8, i8* %460, align 1
  %462 = sext i8 %461 to i32
  %463 = call i32 (i32, i8*, ...) @wpa_printf(i32 %459, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 %462)
  br label %467

464:                                              ; preds = %452, %444, %436, %431
  %465 = load i32, i32* @MSG_DEBUG, align 4
  %466 = call i32 (i32, i8*, ...) @wpa_printf(i32 %465, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0))
  br label %624

467:                                              ; preds = %458
  br label %468

468:                                              ; preds = %467, %422
  br label %469

469:                                              ; preds = %468, %414
  %470 = load i8*, i8** %9, align 8
  %471 = load i8, i8* %470, align 1
  %472 = sext i8 %471 to i32
  switch i32 %472, label %495 [
    i32 116, label %473
    i32 102, label %481
    i32 110, label %489
  ]

473:                                              ; preds = %469
  %474 = load i8*, i8** @JSON_BOOLEAN, align 8
  %475 = load %struct.json_token*, %struct.json_token** %7, align 8
  %476 = getelementptr inbounds %struct.json_token, %struct.json_token* %475, i32 0, i32 4
  store i8* %474, i8** %476, align 8
  %477 = load %struct.json_token*, %struct.json_token** %7, align 8
  %478 = getelementptr inbounds %struct.json_token, %struct.json_token* %477, i32 0, i32 3
  store i32 1, i32* %478, align 8
  %479 = load i8*, i8** %9, align 8
  %480 = getelementptr inbounds i8, i8* %479, i64 3
  store i8* %480, i8** %9, align 8
  br label %495

481:                                              ; preds = %469
  %482 = load i8*, i8** @JSON_BOOLEAN, align 8
  %483 = load %struct.json_token*, %struct.json_token** %7, align 8
  %484 = getelementptr inbounds %struct.json_token, %struct.json_token* %483, i32 0, i32 4
  store i8* %482, i8** %484, align 8
  %485 = load %struct.json_token*, %struct.json_token** %7, align 8
  %486 = getelementptr inbounds %struct.json_token, %struct.json_token* %485, i32 0, i32 3
  store i32 0, i32* %486, align 8
  %487 = load i8*, i8** %9, align 8
  %488 = getelementptr inbounds i8, i8* %487, i64 4
  store i8* %488, i8** %9, align 8
  br label %495

489:                                              ; preds = %469
  %490 = load i8*, i8** @JSON_NULL, align 8
  %491 = load %struct.json_token*, %struct.json_token** %7, align 8
  %492 = getelementptr inbounds %struct.json_token, %struct.json_token* %491, i32 0, i32 4
  store i8* %490, i8** %492, align 8
  %493 = load i8*, i8** %9, align 8
  %494 = getelementptr inbounds i8, i8* %493, i64 3
  store i8* %494, i8** %9, align 8
  br label %495

495:                                              ; preds = %469, %489, %481, %473
  %496 = load i8*, i8** @JSON_COMPLETED, align 8
  %497 = load %struct.json_token*, %struct.json_token** %7, align 8
  %498 = getelementptr inbounds %struct.json_token, %struct.json_token* %497, i32 0, i32 0
  store i8* %496, i8** %498, align 8
  br label %601

499:                                              ; preds = %23, %23, %23, %23, %23, %23, %23, %23, %23, %23, %23
  %500 = load i8*, i8** %10, align 8
  %501 = call i32 @json_parse_number(i8** %9, i8* %500, i32* %12)
  %502 = icmp slt i32 %501, 0
  br i1 %502, label %503, label %504

503:                                              ; preds = %499
  br label %624

504:                                              ; preds = %499
  %505 = load %struct.json_token*, %struct.json_token** %7, align 8
  %506 = icmp ne %struct.json_token* %505, null
  br i1 %506, label %523, label %507

507:                                              ; preds = %504
  %508 = call i8* @json_alloc_token(i32* %14)
  %509 = bitcast i8* %508 to %struct.json_token*
  store %struct.json_token* %509, %struct.json_token** %8, align 8
  %510 = load %struct.json_token*, %struct.json_token** %8, align 8
  %511 = icmp ne %struct.json_token* %510, null
  br i1 %511, label %513, label %512

512:                                              ; preds = %507
  br label %624

513:                                              ; preds = %507
  %514 = load i8*, i8** @JSON_NUMBER, align 8
  %515 = load %struct.json_token*, %struct.json_token** %8, align 8
  %516 = getelementptr inbounds %struct.json_token, %struct.json_token* %515, i32 0, i32 4
  store i8* %514, i8** %516, align 8
  %517 = load i32, i32* %12, align 4
  %518 = load %struct.json_token*, %struct.json_token** %8, align 8
  %519 = getelementptr inbounds %struct.json_token, %struct.json_token* %518, i32 0, i32 3
  store i32 %517, i32* %519, align 8
  %520 = load i8*, i8** @JSON_COMPLETED, align 8
  %521 = load %struct.json_token*, %struct.json_token** %8, align 8
  %522 = getelementptr inbounds %struct.json_token, %struct.json_token* %521, i32 0, i32 0
  store i8* %520, i8** %522, align 8
  br label %594

523:                                              ; preds = %504
  %524 = load %struct.json_token*, %struct.json_token** %7, align 8
  %525 = getelementptr inbounds %struct.json_token, %struct.json_token* %524, i32 0, i32 0
  %526 = load i8*, i8** %525, align 8
  %527 = load i8*, i8** @JSON_WAITING_VALUE, align 8
  %528 = icmp eq i8* %526, %527
  br i1 %528, label %529, label %547

529:                                              ; preds = %523
  %530 = load i32, i32* %12, align 4
  %531 = load %struct.json_token*, %struct.json_token** %7, align 8
  %532 = getelementptr inbounds %struct.json_token, %struct.json_token* %531, i32 0, i32 3
  store i32 %530, i32* %532, align 8
  %533 = load i8*, i8** @JSON_COMPLETED, align 8
  %534 = load %struct.json_token*, %struct.json_token** %7, align 8
  %535 = getelementptr inbounds %struct.json_token, %struct.json_token* %534, i32 0, i32 0
  store i8* %533, i8** %535, align 8
  %536 = load i8*, i8** @JSON_NUMBER, align 8
  %537 = load %struct.json_token*, %struct.json_token** %7, align 8
  %538 = getelementptr inbounds %struct.json_token, %struct.json_token* %537, i32 0, i32 4
  store i8* %536, i8** %538, align 8
  %539 = load i32, i32* @MSG_MSGDUMP, align 4
  %540 = load %struct.json_token*, %struct.json_token** %7, align 8
  %541 = getelementptr inbounds %struct.json_token, %struct.json_token* %540, i32 0, i32 2
  %542 = load i8*, i8** %541, align 8
  %543 = load %struct.json_token*, %struct.json_token** %7, align 8
  %544 = getelementptr inbounds %struct.json_token, %struct.json_token* %543, i32 0, i32 3
  %545 = load i32, i32* %544, align 8
  %546 = call i32 (i32, i8*, ...) @wpa_printf(i32 %539, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i8* %542, i32 %545)
  br label %593

547:                                              ; preds = %523
  %548 = load %struct.json_token*, %struct.json_token** %7, align 8
  %549 = getelementptr inbounds %struct.json_token, %struct.json_token* %548, i32 0, i32 5
  %550 = load %struct.json_token*, %struct.json_token** %549, align 8
  %551 = icmp ne %struct.json_token* %550, null
  br i1 %551, label %552, label %589

552:                                              ; preds = %547
  %553 = load %struct.json_token*, %struct.json_token** %7, align 8
  %554 = getelementptr inbounds %struct.json_token, %struct.json_token* %553, i32 0, i32 5
  %555 = load %struct.json_token*, %struct.json_token** %554, align 8
  %556 = getelementptr inbounds %struct.json_token, %struct.json_token* %555, i32 0, i32 4
  %557 = load i8*, i8** %556, align 8
  %558 = load i8*, i8** @JSON_ARRAY, align 8
  %559 = icmp eq i8* %557, %558
  br i1 %559, label %560, label %589

560:                                              ; preds = %552
  %561 = load %struct.json_token*, %struct.json_token** %7, align 8
  %562 = getelementptr inbounds %struct.json_token, %struct.json_token* %561, i32 0, i32 5
  %563 = load %struct.json_token*, %struct.json_token** %562, align 8
  %564 = getelementptr inbounds %struct.json_token, %struct.json_token* %563, i32 0, i32 0
  %565 = load i8*, i8** %564, align 8
  %566 = load i8*, i8** @JSON_STARTED, align 8
  %567 = icmp eq i8* %565, %566
  br i1 %567, label %568, label %589

568:                                              ; preds = %560
  %569 = load %struct.json_token*, %struct.json_token** %7, align 8
  %570 = getelementptr inbounds %struct.json_token, %struct.json_token* %569, i32 0, i32 0
  %571 = load i8*, i8** %570, align 8
  %572 = load i8*, i8** @JSON_EMPTY, align 8
  %573 = icmp eq i8* %571, %572
  br i1 %573, label %574, label %589

574:                                              ; preds = %568
  %575 = load i32, i32* %12, align 4
  %576 = load %struct.json_token*, %struct.json_token** %7, align 8
  %577 = getelementptr inbounds %struct.json_token, %struct.json_token* %576, i32 0, i32 3
  store i32 %575, i32* %577, align 8
  %578 = load i8*, i8** @JSON_COMPLETED, align 8
  %579 = load %struct.json_token*, %struct.json_token** %7, align 8
  %580 = getelementptr inbounds %struct.json_token, %struct.json_token* %579, i32 0, i32 0
  store i8* %578, i8** %580, align 8
  %581 = load i8*, i8** @JSON_NUMBER, align 8
  %582 = load %struct.json_token*, %struct.json_token** %7, align 8
  %583 = getelementptr inbounds %struct.json_token, %struct.json_token* %582, i32 0, i32 4
  store i8* %581, i8** %583, align 8
  %584 = load i32, i32* @MSG_MSGDUMP, align 4
  %585 = load %struct.json_token*, %struct.json_token** %7, align 8
  %586 = getelementptr inbounds %struct.json_token, %struct.json_token* %585, i32 0, i32 3
  %587 = load i32, i32* %586, align 8
  %588 = call i32 (i32, i8*, ...) @wpa_printf(i32 %584, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 %587)
  br label %592

589:                                              ; preds = %568, %560, %552, %547
  %590 = load i32, i32* @MSG_DEBUG, align 4
  %591 = call i32 (i32, i8*, ...) @wpa_printf(i32 %590, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0))
  br label %624

592:                                              ; preds = %574
  br label %593

593:                                              ; preds = %592, %529
  br label %594

594:                                              ; preds = %593, %513
  br label %601

595:                                              ; preds = %23
  %596 = load i32, i32* @MSG_DEBUG, align 4
  %597 = load i8*, i8** %9, align 8
  %598 = load i8, i8* %597, align 1
  %599 = sext i8 %598 to i32
  %600 = call i32 (i32, i8*, ...) @wpa_printf(i32 %596, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i64 0, i64 0), i32 %599)
  br label %624

601:                                              ; preds = %594, %495, %355, %337, %326, %325, %206, %118
  %602 = load %struct.json_token*, %struct.json_token** %6, align 8
  %603 = icmp ne %struct.json_token* %602, null
  br i1 %603, label %606, label %604

604:                                              ; preds = %601
  %605 = load %struct.json_token*, %struct.json_token** %8, align 8
  store %struct.json_token* %605, %struct.json_token** %6, align 8
  br label %606

606:                                              ; preds = %604, %601
  %607 = load %struct.json_token*, %struct.json_token** %7, align 8
  %608 = icmp ne %struct.json_token* %607, null
  br i1 %608, label %611, label %609

609:                                              ; preds = %606
  %610 = load %struct.json_token*, %struct.json_token** %8, align 8
  store %struct.json_token* %610, %struct.json_token** %7, align 8
  br label %611

611:                                              ; preds = %609, %606
  br label %612

612:                                              ; preds = %611
  %613 = load i8*, i8** %9, align 8
  %614 = getelementptr inbounds i8, i8* %613, i32 1
  store i8* %614, i8** %9, align 8
  br label %19

615:                                              ; preds = %19
  %616 = load %struct.json_token*, %struct.json_token** %6, align 8
  %617 = call i64 @json_check_tree_state(%struct.json_token* %616)
  %618 = icmp slt i64 %617, 0
  br i1 %618, label %619, label %622

619:                                              ; preds = %615
  %620 = load i32, i32* @MSG_DEBUG, align 4
  %621 = call i32 (i32, i8*, ...) @wpa_printf(i32 %620, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i64 0, i64 0))
  br label %624

622:                                              ; preds = %615
  %623 = load %struct.json_token*, %struct.json_token** %6, align 8
  store %struct.json_token* %623, %struct.json_token** %3, align 8
  br label %629

624:                                              ; preds = %619, %595, %589, %512, %503, %464, %413, %402, %354, %344, %336, %317, %224, %215, %174, %144, %117, %90, %79, %35
  %625 = load i32, i32* @MSG_DEBUG, align 4
  %626 = call i32 (i32, i8*, ...) @wpa_printf(i32 %625, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0))
  %627 = load %struct.json_token*, %struct.json_token** %6, align 8
  %628 = call i32 @json_free(%struct.json_token* %627)
  store %struct.json_token* null, %struct.json_token** %3, align 8
  br label %629

629:                                              ; preds = %624, %622
  %630 = load %struct.json_token*, %struct.json_token** %3, align 8
  ret %struct.json_token* %630
}

declare dso_local i8* @json_alloc_token(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @json_free(%struct.json_token*) #1

declare dso_local i8* @json_parse_string(i8**, i8*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @os_strncmp(i8*, i8*, i32) #1

declare dso_local i32 @json_parse_number(i8**, i8*, i32*) #1

declare dso_local i64 @json_check_tree_state(%struct.json_token*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
