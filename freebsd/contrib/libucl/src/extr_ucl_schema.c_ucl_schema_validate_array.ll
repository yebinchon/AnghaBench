; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_schema.c_ucl_schema_validate_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_schema.c_ucl_schema_validate_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_schema_error = type { i32 }
%struct.TYPE_21__ = type { i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"items\00", align 1
@UCL_ARRAY = common dso_local global i64 0, align 8
@UCL_OBJECT = common dso_local global i64 0, align 8
@UCL_SCHEMA_INVALID_SCHEMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"items attribute is invalid in schema\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"additionalItems\00", align 1
@UCL_BOOLEAN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [47 x i8] c"additionalItems attribute is invalid in schema\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"uniqueItems\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"minItems\00", align 1
@UCL_SCHEMA_CONSTRAINT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"array has not enough items: %u, minimum is: %u\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"maxItems\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"array has too many items: %u, maximum is: %u\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"array has undefined item\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_21__*, %struct.ucl_schema_error*, %struct.TYPE_21__*, %struct.TYPE_21__*)* @ucl_schema_validate_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucl_schema_validate_array(%struct.TYPE_21__* %0, %struct.TYPE_21__* %1, %struct.ucl_schema_error* %2, %struct.TYPE_21__* %3, %struct.TYPE_21__* %4) #0 {
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.ucl_schema_error*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca %struct.TYPE_21__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %7, align 8
  store %struct.ucl_schema_error* %2, %struct.ucl_schema_error** %8, align 8
  store %struct.TYPE_21__* %3, %struct.TYPE_21__** %9, align 8
  store %struct.TYPE_21__* %4, %struct.TYPE_21__** %10, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %14, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  store i32 1, i32* %18, align 4
  store i32 1, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %22, align 4
  br label %23

23:                                               ; preds = %209, %5
  %24 = load i32, i32* %18, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %28 = call %struct.TYPE_21__* @ucl_object_iterate(%struct.TYPE_21__* %27, i32** %16, i32 1)
  store %struct.TYPE_21__* %28, %struct.TYPE_21__** %11, align 8
  %29 = icmp ne %struct.TYPE_21__* %28, null
  br label %30

30:                                               ; preds = %26, %23
  %31 = phi i1 [ false, %23 ], [ %29, %26 ]
  br i1 %31, label %32, label %210

32:                                               ; preds = %30
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %34 = call i32 @ucl_object_key(%struct.TYPE_21__* %33)
  %35 = call i64 @strcmp(i32 %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %107

37:                                               ; preds = %32
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @UCL_ARRAY, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %76

43:                                               ; preds = %37
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %45 = call %struct.TYPE_21__* @ucl_array_head(%struct.TYPE_21__* %44)
  store %struct.TYPE_21__* %45, %struct.TYPE_21__** %13, align 8
  br label %46

46:                                               ; preds = %69, %43
  %47 = load i32, i32* %18, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %51 = call %struct.TYPE_21__* @ucl_object_iterate(%struct.TYPE_21__* %50, i32** %17, i32 1)
  store %struct.TYPE_21__* %51, %struct.TYPE_21__** %12, align 8
  %52 = icmp ne %struct.TYPE_21__* %51, null
  br label %53

53:                                               ; preds = %49, %46
  %54 = phi i1 [ false, %46 ], [ %52, %49 ]
  br i1 %54, label %55, label %70

55:                                               ; preds = %53
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %57 = icmp ne %struct.TYPE_21__* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %55
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %61 = load %struct.ucl_schema_error*, %struct.ucl_schema_error** %8, align 8
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %64 = call i32 @ucl_schema_validate(%struct.TYPE_21__* %59, %struct.TYPE_21__* %60, i32 0, %struct.ucl_schema_error* %61, %struct.TYPE_21__* %62, %struct.TYPE_21__* %63)
  store i32 %64, i32* %18, align 4
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %66 = load i32, i32* %22, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %22, align 4
  %68 = call %struct.TYPE_21__* @ucl_array_find_index(%struct.TYPE_21__* %65, i32 %67)
  store %struct.TYPE_21__* %68, %struct.TYPE_21__** %13, align 8
  br label %69

69:                                               ; preds = %58, %55
  br label %46

70:                                               ; preds = %53
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %72 = icmp ne %struct.TYPE_21__* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  store %struct.TYPE_21__* %74, %struct.TYPE_21__** %15, align 8
  br label %75

75:                                               ; preds = %73, %70
  br label %106

76:                                               ; preds = %37
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @UCL_OBJECT, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %100

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %92, %82
  %84 = load i32, i32* %18, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %88 = call %struct.TYPE_21__* @ucl_object_iterate(%struct.TYPE_21__* %87, i32** %17, i32 1)
  store %struct.TYPE_21__* %88, %struct.TYPE_21__** %12, align 8
  %89 = icmp ne %struct.TYPE_21__* %88, null
  br label %90

90:                                               ; preds = %86, %83
  %91 = phi i1 [ false, %83 ], [ %89, %86 ]
  br i1 %91, label %92, label %99

92:                                               ; preds = %90
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %95 = load %struct.ucl_schema_error*, %struct.ucl_schema_error** %8, align 8
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %98 = call i32 @ucl_schema_validate(%struct.TYPE_21__* %93, %struct.TYPE_21__* %94, i32 0, %struct.ucl_schema_error* %95, %struct.TYPE_21__* %96, %struct.TYPE_21__* %97)
  store i32 %98, i32* %18, align 4
  br label %83

99:                                               ; preds = %90
  br label %105

100:                                              ; preds = %76
  %101 = load %struct.ucl_schema_error*, %struct.ucl_schema_error** %8, align 8
  %102 = load i32, i32* @UCL_SCHEMA_INVALID_SCHEMA, align 4
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %104 = call i32 (%struct.ucl_schema_error*, i32, %struct.TYPE_21__*, i8*, ...) @ucl_schema_create_error(%struct.ucl_schema_error* %101, i32 %102, %struct.TYPE_21__* %103, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %18, align 4
  br label %210

105:                                              ; preds = %99
  br label %106

106:                                              ; preds = %105, %75
  br label %209

107:                                              ; preds = %32
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %109 = call i32 @ucl_object_key(%struct.TYPE_21__* %108)
  %110 = call i64 @strcmp(i32 %109, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %139

112:                                              ; preds = %107
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @UCL_BOOLEAN, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %112
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %120 = call i32 @ucl_object_toboolean(%struct.TYPE_21__* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %118
  store i32 0, i32* %19, align 4
  br label %123

123:                                              ; preds = %122, %118
  br label %138

124:                                              ; preds = %112
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @UCL_OBJECT, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  store %struct.TYPE_21__* %131, %struct.TYPE_21__** %14, align 8
  br label %137

132:                                              ; preds = %124
  %133 = load %struct.ucl_schema_error*, %struct.ucl_schema_error** %8, align 8
  %134 = load i32, i32* @UCL_SCHEMA_INVALID_SCHEMA, align 4
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %136 = call i32 (%struct.ucl_schema_error*, i32, %struct.TYPE_21__*, i8*, ...) @ucl_schema_create_error(%struct.ucl_schema_error* %133, i32 %134, %struct.TYPE_21__* %135, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %18, align 4
  br label %210

137:                                              ; preds = %130
  br label %138

138:                                              ; preds = %137, %123
  br label %208

139:                                              ; preds = %107
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @UCL_BOOLEAN, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %153

145:                                              ; preds = %139
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %147 = call i32 @ucl_object_key(%struct.TYPE_21__* %146)
  %148 = call i64 @strcmp(i32 %147, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %152 = call i32 @ucl_object_toboolean(%struct.TYPE_21__* %151)
  store i32 %152, i32* %20, align 4
  br label %207

153:                                              ; preds = %145, %139
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %155 = call i32 @ucl_object_key(%struct.TYPE_21__* %154)
  %156 = call i64 @strcmp(i32 %155, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %179

158:                                              ; preds = %153
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %160 = call i64 @ucl_object_toint_safe(%struct.TYPE_21__* %159, i64* %21)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %179

162:                                              ; preds = %158
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* %21, align 8
  %167 = icmp slt i64 %165, %166
  br i1 %167, label %168, label %178

168:                                              ; preds = %162
  %169 = load %struct.ucl_schema_error*, %struct.ucl_schema_error** %8, align 8
  %170 = load i32, i32* @UCL_SCHEMA_CONSTRAINT, align 4
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* %21, align 8
  %176 = trunc i64 %175 to i32
  %177 = call i32 (%struct.ucl_schema_error*, i32, %struct.TYPE_21__*, i8*, ...) @ucl_schema_create_error(%struct.ucl_schema_error* %169, i32 %170, %struct.TYPE_21__* %171, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i64 %174, i32 %176)
  store i32 0, i32* %18, align 4
  br label %210

178:                                              ; preds = %162
  br label %206

179:                                              ; preds = %158, %153
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %181 = call i32 @ucl_object_key(%struct.TYPE_21__* %180)
  %182 = call i64 @strcmp(i32 %181, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %205

184:                                              ; preds = %179
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %186 = call i64 @ucl_object_toint_safe(%struct.TYPE_21__* %185, i64* %21)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %205

188:                                              ; preds = %184
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* %21, align 8
  %193 = icmp sgt i64 %191, %192
  br i1 %193, label %194, label %204

194:                                              ; preds = %188
  %195 = load %struct.ucl_schema_error*, %struct.ucl_schema_error** %8, align 8
  %196 = load i32, i32* @UCL_SCHEMA_CONSTRAINT, align 4
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* %21, align 8
  %202 = trunc i64 %201 to i32
  %203 = call i32 (%struct.ucl_schema_error*, i32, %struct.TYPE_21__*, i8*, ...) @ucl_schema_create_error(%struct.ucl_schema_error* %195, i32 %196, %struct.TYPE_21__* %197, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i64 %200, i32 %202)
  store i32 0, i32* %18, align 4
  br label %210

204:                                              ; preds = %188
  br label %205

205:                                              ; preds = %204, %184, %179
  br label %206

206:                                              ; preds = %205, %178
  br label %207

207:                                              ; preds = %206, %150
  br label %208

208:                                              ; preds = %207, %138
  br label %209

209:                                              ; preds = %208, %106
  br label %23

210:                                              ; preds = %194, %168, %132, %100, %30
  %211 = load i32, i32* %18, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %269

213:                                              ; preds = %210
  %214 = load i32, i32* %19, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %213
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %218 = icmp ne %struct.TYPE_21__* %217, null
  br i1 %218, label %219, label %258

219:                                              ; preds = %216, %213
  %220 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %221 = icmp ne %struct.TYPE_21__* %220, null
  br i1 %221, label %222, label %257

222:                                              ; preds = %219
  %223 = load i32, i32* %19, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %230, label %225

225:                                              ; preds = %222
  %226 = load %struct.ucl_schema_error*, %struct.ucl_schema_error** %8, align 8
  %227 = load i32, i32* @UCL_SCHEMA_CONSTRAINT, align 4
  %228 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %229 = call i32 (%struct.ucl_schema_error*, i32, %struct.TYPE_21__*, i8*, ...) @ucl_schema_create_error(%struct.ucl_schema_error* %226, i32 %227, %struct.TYPE_21__* %228, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %18, align 4
  br label %256

230:                                              ; preds = %222
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %232 = icmp ne %struct.TYPE_21__* %231, null
  br i1 %232, label %233, label %255

233:                                              ; preds = %230
  %234 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %235 = load i32, i32* %22, align 4
  %236 = call %struct.TYPE_21__* @ucl_array_find_index(%struct.TYPE_21__* %234, i32 %235)
  store %struct.TYPE_21__* %236, %struct.TYPE_21__** %11, align 8
  br label %237

237:                                              ; preds = %249, %233
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %239 = icmp ne %struct.TYPE_21__* %238, null
  br i1 %239, label %240, label %254

240:                                              ; preds = %237
  %241 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %242 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %243 = load %struct.ucl_schema_error*, %struct.ucl_schema_error** %8, align 8
  %244 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %245 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %246 = call i32 @ucl_schema_validate(%struct.TYPE_21__* %241, %struct.TYPE_21__* %242, i32 0, %struct.ucl_schema_error* %243, %struct.TYPE_21__* %244, %struct.TYPE_21__* %245)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %249, label %248

248:                                              ; preds = %240
  store i32 0, i32* %18, align 4
  br label %254

249:                                              ; preds = %240
  %250 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %251 = load i32, i32* %22, align 4
  %252 = add i32 %251, 1
  store i32 %252, i32* %22, align 4
  %253 = call %struct.TYPE_21__* @ucl_array_find_index(%struct.TYPE_21__* %250, i32 %251)
  store %struct.TYPE_21__* %253, %struct.TYPE_21__** %11, align 8
  br label %237

254:                                              ; preds = %248, %237
  br label %255

255:                                              ; preds = %254, %230
  br label %256

256:                                              ; preds = %255, %225
  br label %257

257:                                              ; preds = %256, %219
  br label %258

258:                                              ; preds = %257, %216
  %259 = load i32, i32* %18, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %268

261:                                              ; preds = %258
  %262 = load i32, i32* %20, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %261
  %265 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %266 = load %struct.ucl_schema_error*, %struct.ucl_schema_error** %8, align 8
  %267 = call i32 @ucl_schema_array_is_unique(%struct.TYPE_21__* %265, %struct.ucl_schema_error* %266)
  store i32 %267, i32* %18, align 4
  br label %268

268:                                              ; preds = %264, %261, %258
  br label %269

269:                                              ; preds = %268, %210
  %270 = load i32, i32* %18, align 4
  ret i32 %270
}

declare dso_local %struct.TYPE_21__* @ucl_object_iterate(%struct.TYPE_21__*, i32**, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @ucl_object_key(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @ucl_array_head(%struct.TYPE_21__*) #1

declare dso_local i32 @ucl_schema_validate(%struct.TYPE_21__*, %struct.TYPE_21__*, i32, %struct.ucl_schema_error*, %struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @ucl_array_find_index(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ucl_schema_create_error(%struct.ucl_schema_error*, i32, %struct.TYPE_21__*, i8*, ...) #1

declare dso_local i32 @ucl_object_toboolean(%struct.TYPE_21__*) #1

declare dso_local i64 @ucl_object_toint_safe(%struct.TYPE_21__*, i64*) #1

declare dso_local i32 @ucl_schema_array_is_unique(%struct.TYPE_21__*, %struct.ucl_schema_error*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
