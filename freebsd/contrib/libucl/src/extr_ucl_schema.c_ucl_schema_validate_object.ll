; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_schema.c_ucl_schema_validate_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_schema.c_ucl_schema_validate_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_schema_error = type { i32 }
%struct.TYPE_25__ = type { i64, i64 }

@UCL_OBJECT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"properties\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"additionalProperties\00", align 1
@UCL_BOOLEAN = common dso_local global i64 0, align 8
@UCL_SCHEMA_INVALID_SCHEMA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"additionalProperties attribute is invalid in schema\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"required\00", align 1
@UCL_ARRAY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"required attribute is invalid in schema\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"minProperties\00", align 1
@UCL_SCHEMA_CONSTRAINT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [53 x i8] c"object has not enough properties: %u, minimum is: %u\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"maxProperties\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"object has too many properties: %u, maximum is: %u\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"patternProperties\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"dependencies\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"object has non-allowed property %s\00", align 1
@UCL_SCHEMA_MISSING_PROPERTY = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [31 x i8] c"object has missing property %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_25__*, %struct.ucl_schema_error*, %struct.TYPE_25__*, %struct.TYPE_25__*)* @ucl_schema_validate_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucl_schema_validate_object(%struct.TYPE_25__* %0, %struct.TYPE_25__* %1, %struct.ucl_schema_error* %2, %struct.TYPE_25__* %3, %struct.TYPE_25__* %4) #0 {
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.ucl_schema_error*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca %struct.TYPE_25__*, align 8
  %15 = alloca %struct.TYPE_25__*, align 8
  %16 = alloca %struct.TYPE_25__*, align 8
  %17 = alloca %struct.TYPE_25__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_25__*, align 8
  %24 = alloca i32*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %6, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %7, align 8
  store %struct.ucl_schema_error* %2, %struct.ucl_schema_error** %8, align 8
  store %struct.TYPE_25__* %3, %struct.TYPE_25__** %9, align 8
  store %struct.TYPE_25__* %4, %struct.TYPE_25__** %10, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %14, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %15, align 8
  store i32* null, i32** %18, align 8
  store i32* null, i32** %19, align 8
  store i32 1, i32* %20, align 4
  store i32 1, i32* %21, align 4
  br label %25

25:                                               ; preds = %240, %5
  %26 = load i32, i32* %20, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %30 = call %struct.TYPE_25__* @ucl_object_iterate(%struct.TYPE_25__* %29, i32** %18, i32 1)
  store %struct.TYPE_25__* %30, %struct.TYPE_25__** %11, align 8
  %31 = icmp ne %struct.TYPE_25__* %30, null
  br label %32

32:                                               ; preds = %28, %25
  %33 = phi i1 [ false, %25 ], [ %31, %28 ]
  br i1 %33, label %34, label %241

34:                                               ; preds = %32
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @UCL_OBJECT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %71

40:                                               ; preds = %34
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %42 = call i8* @ucl_object_key(%struct.TYPE_25__* %41)
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %71

45:                                               ; preds = %40
  store i32* null, i32** %19, align 8
  br label %46

46:                                               ; preds = %69, %45
  %47 = load i32, i32* %20, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %51 = call %struct.TYPE_25__* @ucl_object_iterate(%struct.TYPE_25__* %50, i32** %19, i32 1)
  store %struct.TYPE_25__* %51, %struct.TYPE_25__** %12, align 8
  %52 = icmp ne %struct.TYPE_25__* %51, null
  br label %53

53:                                               ; preds = %49, %46
  %54 = phi i1 [ false, %46 ], [ %52, %49 ]
  br i1 %54, label %55, label %70

55:                                               ; preds = %53
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %58 = call i8* @ucl_object_key(%struct.TYPE_25__* %57)
  %59 = call %struct.TYPE_25__* @ucl_object_lookup(%struct.TYPE_25__* %56, i8* %58)
  store %struct.TYPE_25__* %59, %struct.TYPE_25__** %13, align 8
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %61 = icmp ne %struct.TYPE_25__* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %55
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %65 = load %struct.ucl_schema_error*, %struct.ucl_schema_error** %8, align 8
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %68 = call i32 @ucl_schema_validate(%struct.TYPE_25__* %63, %struct.TYPE_25__* %64, i32 1, %struct.ucl_schema_error* %65, %struct.TYPE_25__* %66, %struct.TYPE_25__* %67)
  store i32 %68, i32* %20, align 4
  br label %69

69:                                               ; preds = %62, %55
  br label %46

70:                                               ; preds = %53
  br label %240

71:                                               ; preds = %40, %34
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %73 = call i8* @ucl_object_key(%struct.TYPE_25__* %72)
  %74 = call i64 @strcmp(i8* %73, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %103

76:                                               ; preds = %71
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @UCL_BOOLEAN, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %84 = call i32 @ucl_object_toboolean(%struct.TYPE_25__* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  store i32 0, i32* %21, align 4
  br label %87

87:                                               ; preds = %86, %82
  br label %102

88:                                               ; preds = %76
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @UCL_OBJECT, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  store %struct.TYPE_25__* %95, %struct.TYPE_25__** %14, align 8
  br label %101

96:                                               ; preds = %88
  %97 = load %struct.ucl_schema_error*, %struct.ucl_schema_error** %8, align 8
  %98 = load i32, i32* @UCL_SCHEMA_INVALID_SCHEMA, align 4
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %100 = call i32 (%struct.ucl_schema_error*, i32, %struct.TYPE_25__*, i8*, ...) @ucl_schema_create_error(%struct.ucl_schema_error* %97, i32 %98, %struct.TYPE_25__* %99, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %20, align 4
  br label %241

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %101, %87
  br label %239

103:                                              ; preds = %71
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %105 = call i8* @ucl_object_key(%struct.TYPE_25__* %104)
  %106 = call i64 @strcmp(i8* %105, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %103
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @UCL_ARRAY, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %108
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  store %struct.TYPE_25__* %115, %struct.TYPE_25__** %15, align 8
  br label %121

116:                                              ; preds = %108
  %117 = load %struct.ucl_schema_error*, %struct.ucl_schema_error** %8, align 8
  %118 = load i32, i32* @UCL_SCHEMA_INVALID_SCHEMA, align 4
  %119 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %120 = call i32 (%struct.ucl_schema_error*, i32, %struct.TYPE_25__*, i8*, ...) @ucl_schema_create_error(%struct.ucl_schema_error* %117, i32 %118, %struct.TYPE_25__* %119, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %20, align 4
  br label %241

121:                                              ; preds = %114
  br label %238

122:                                              ; preds = %103
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %124 = call i8* @ucl_object_key(%struct.TYPE_25__* %123)
  %125 = call i64 @strcmp(i8* %124, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %148

127:                                              ; preds = %122
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %129 = call i64 @ucl_object_toint_safe(%struct.TYPE_25__* %128, i64* %22)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %148

131:                                              ; preds = %127
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %22, align 8
  %136 = icmp slt i64 %134, %135
  br i1 %136, label %137, label %147

137:                                              ; preds = %131
  %138 = load %struct.ucl_schema_error*, %struct.ucl_schema_error** %8, align 8
  %139 = load i32, i32* @UCL_SCHEMA_CONSTRAINT, align 4
  %140 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* %22, align 8
  %145 = trunc i64 %144 to i32
  %146 = call i32 (%struct.ucl_schema_error*, i32, %struct.TYPE_25__*, i8*, ...) @ucl_schema_create_error(%struct.ucl_schema_error* %138, i32 %139, %struct.TYPE_25__* %140, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i64 %143, i32 %145)
  store i32 0, i32* %20, align 4
  br label %241

147:                                              ; preds = %131
  br label %237

148:                                              ; preds = %127, %122
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %150 = call i8* @ucl_object_key(%struct.TYPE_25__* %149)
  %151 = call i64 @strcmp(i8* %150, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %174

153:                                              ; preds = %148
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %155 = call i64 @ucl_object_toint_safe(%struct.TYPE_25__* %154, i64* %22)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %174

157:                                              ; preds = %153
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* %22, align 8
  %162 = icmp sgt i64 %160, %161
  br i1 %162, label %163, label %173

163:                                              ; preds = %157
  %164 = load %struct.ucl_schema_error*, %struct.ucl_schema_error** %8, align 8
  %165 = load i32, i32* @UCL_SCHEMA_CONSTRAINT, align 4
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %167 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* %22, align 8
  %171 = trunc i64 %170 to i32
  %172 = call i32 (%struct.ucl_schema_error*, i32, %struct.TYPE_25__*, i8*, ...) @ucl_schema_create_error(%struct.ucl_schema_error* %164, i32 %165, %struct.TYPE_25__* %166, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i64 %169, i32 %171)
  store i32 0, i32* %20, align 4
  br label %241

173:                                              ; preds = %157
  br label %236

174:                                              ; preds = %153, %148
  %175 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %176 = call i8* @ucl_object_key(%struct.TYPE_25__* %175)
  %177 = call i64 @strcmp(i8* %176, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %216

179:                                              ; preds = %174
  store i32* null, i32** %19, align 8
  br label %180

180:                                              ; preds = %214, %179
  %181 = load i32, i32* %20, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %180
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %185 = call %struct.TYPE_25__* @ucl_object_iterate(%struct.TYPE_25__* %184, i32** %19, i32 1)
  store %struct.TYPE_25__* %185, %struct.TYPE_25__** %12, align 8
  %186 = icmp ne %struct.TYPE_25__* %185, null
  br label %187

187:                                              ; preds = %183, %180
  %188 = phi i1 [ false, %180 ], [ %186, %183 ]
  br i1 %188, label %189, label %215

189:                                              ; preds = %187
  store i32* null, i32** %24, align 8
  br label %190

190:                                              ; preds = %213, %189
  %191 = load i32, i32* %20, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %190
  %194 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %195 = call %struct.TYPE_25__* @ucl_object_iterate(%struct.TYPE_25__* %194, i32** %24, i32 1)
  store %struct.TYPE_25__* %195, %struct.TYPE_25__** %23, align 8
  %196 = icmp ne %struct.TYPE_25__* %195, null
  br label %197

197:                                              ; preds = %193, %190
  %198 = phi i1 [ false, %190 ], [ %196, %193 ]
  br i1 %198, label %199, label %214

199:                                              ; preds = %197
  %200 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %201 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %202 = call i8* @ucl_object_key(%struct.TYPE_25__* %201)
  %203 = call %struct.TYPE_25__* @ucl_schema_test_pattern(%struct.TYPE_25__* %200, i8* %202, i32 0)
  store %struct.TYPE_25__* %203, %struct.TYPE_25__** %13, align 8
  %204 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %205 = icmp ne %struct.TYPE_25__* %204, null
  br i1 %205, label %206, label %213

206:                                              ; preds = %199
  %207 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %208 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %209 = load %struct.ucl_schema_error*, %struct.ucl_schema_error** %8, align 8
  %210 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %211 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %212 = call i32 @ucl_schema_validate(%struct.TYPE_25__* %207, %struct.TYPE_25__* %208, i32 1, %struct.ucl_schema_error* %209, %struct.TYPE_25__* %210, %struct.TYPE_25__* %211)
  store i32 %212, i32* %20, align 4
  br label %213

213:                                              ; preds = %206, %199
  br label %190

214:                                              ; preds = %197
  br label %180

215:                                              ; preds = %187
  br label %235

216:                                              ; preds = %174
  %217 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %218 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @UCL_OBJECT, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %234

222:                                              ; preds = %216
  %223 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %224 = call i8* @ucl_object_key(%struct.TYPE_25__* %223)
  %225 = call i64 @strcmp(i8* %224, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %227, label %234

227:                                              ; preds = %222
  %228 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %229 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %230 = load %struct.ucl_schema_error*, %struct.ucl_schema_error** %8, align 8
  %231 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %232 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %233 = call i32 @ucl_schema_validate_dependencies(%struct.TYPE_25__* %228, %struct.TYPE_25__* %229, %struct.ucl_schema_error* %230, %struct.TYPE_25__* %231, %struct.TYPE_25__* %232)
  store i32 %233, i32* %20, align 4
  br label %234

234:                                              ; preds = %227, %222, %216
  br label %235

235:                                              ; preds = %234, %215
  br label %236

236:                                              ; preds = %235, %173
  br label %237

237:                                              ; preds = %236, %147
  br label %238

238:                                              ; preds = %237, %121
  br label %239

239:                                              ; preds = %238, %102
  br label %240

240:                                              ; preds = %239, %70
  br label %25

241:                                              ; preds = %163, %137, %116, %96, %32
  %242 = load i32, i32* %20, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %335

244:                                              ; preds = %241
  %245 = load i32, i32* %21, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %244
  %248 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %249 = icmp ne %struct.TYPE_25__* %248, null
  br i1 %249, label %250, label %311

250:                                              ; preds = %247, %244
  store i32* null, i32** %18, align 8
  %251 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %252 = call %struct.TYPE_25__* @ucl_object_lookup(%struct.TYPE_25__* %251, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_25__* %252, %struct.TYPE_25__** %12, align 8
  br label %253

253:                                              ; preds = %309, %250
  %254 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %255 = call %struct.TYPE_25__* @ucl_object_iterate(%struct.TYPE_25__* %254, i32** %18, i32 1)
  store %struct.TYPE_25__* %255, %struct.TYPE_25__** %11, align 8
  %256 = icmp ne %struct.TYPE_25__* %255, null
  br i1 %256, label %257, label %310

257:                                              ; preds = %253
  %258 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %259 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %260 = call i8* @ucl_object_key(%struct.TYPE_25__* %259)
  %261 = call %struct.TYPE_25__* @ucl_object_lookup(%struct.TYPE_25__* %258, i8* %260)
  store %struct.TYPE_25__* %261, %struct.TYPE_25__** %13, align 8
  %262 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %263 = icmp eq %struct.TYPE_25__* %262, null
  br i1 %263, label %264, label %281

264:                                              ; preds = %257
  store i32* null, i32** %19, align 8
  %265 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %266 = call %struct.TYPE_25__* @ucl_object_lookup(%struct.TYPE_25__* %265, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  store %struct.TYPE_25__* %266, %struct.TYPE_25__** %16, align 8
  br label %267

267:                                              ; preds = %279, %264
  %268 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %269 = call %struct.TYPE_25__* @ucl_object_iterate(%struct.TYPE_25__* %268, i32** %19, i32 1)
  store %struct.TYPE_25__* %269, %struct.TYPE_25__** %17, align 8
  %270 = icmp ne %struct.TYPE_25__* %269, null
  br i1 %270, label %271, label %280

271:                                              ; preds = %267
  %272 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %273 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %274 = call i8* @ucl_object_key(%struct.TYPE_25__* %273)
  %275 = call %struct.TYPE_25__* @ucl_schema_test_pattern(%struct.TYPE_25__* %272, i8* %274, i32 1)
  store %struct.TYPE_25__* %275, %struct.TYPE_25__** %13, align 8
  %276 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %277 = icmp ne %struct.TYPE_25__* %276, null
  br i1 %277, label %278, label %279

278:                                              ; preds = %271
  br label %280

279:                                              ; preds = %271
  br label %267

280:                                              ; preds = %278, %267
  br label %281

281:                                              ; preds = %280, %257
  %282 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %283 = icmp eq %struct.TYPE_25__* %282, null
  br i1 %283, label %284, label %309

284:                                              ; preds = %281
  %285 = load i32, i32* %21, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %294, label %287

287:                                              ; preds = %284
  %288 = load %struct.ucl_schema_error*, %struct.ucl_schema_error** %8, align 8
  %289 = load i32, i32* @UCL_SCHEMA_CONSTRAINT, align 4
  %290 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %291 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %292 = call i8* @ucl_object_key(%struct.TYPE_25__* %291)
  %293 = call i32 (%struct.ucl_schema_error*, i32, %struct.TYPE_25__*, i8*, ...) @ucl_schema_create_error(%struct.ucl_schema_error* %288, i32 %289, %struct.TYPE_25__* %290, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i8* %292)
  store i32 0, i32* %20, align 4
  br label %310

294:                                              ; preds = %284
  %295 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %296 = icmp ne %struct.TYPE_25__* %295, null
  br i1 %296, label %297, label %307

297:                                              ; preds = %294
  %298 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %299 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %300 = load %struct.ucl_schema_error*, %struct.ucl_schema_error** %8, align 8
  %301 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %302 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %303 = call i32 @ucl_schema_validate(%struct.TYPE_25__* %298, %struct.TYPE_25__* %299, i32 1, %struct.ucl_schema_error* %300, %struct.TYPE_25__* %301, %struct.TYPE_25__* %302)
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %306, label %305

305:                                              ; preds = %297
  store i32 0, i32* %20, align 4
  br label %310

306:                                              ; preds = %297
  br label %307

307:                                              ; preds = %306, %294
  br label %308

308:                                              ; preds = %307
  br label %309

309:                                              ; preds = %308, %281
  br label %253

310:                                              ; preds = %305, %287, %253
  br label %311

311:                                              ; preds = %310, %247
  %312 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %313 = icmp ne %struct.TYPE_25__* %312, null
  br i1 %313, label %314, label %334

314:                                              ; preds = %311
  store i32* null, i32** %18, align 8
  br label %315

315:                                              ; preds = %332, %314
  %316 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %317 = call %struct.TYPE_25__* @ucl_object_iterate(%struct.TYPE_25__* %316, i32** %18, i32 1)
  store %struct.TYPE_25__* %317, %struct.TYPE_25__** %11, align 8
  %318 = icmp ne %struct.TYPE_25__* %317, null
  br i1 %318, label %319, label %333

319:                                              ; preds = %315
  %320 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %321 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %322 = call i8* @ucl_object_tostring(%struct.TYPE_25__* %321)
  %323 = call %struct.TYPE_25__* @ucl_object_lookup(%struct.TYPE_25__* %320, i8* %322)
  %324 = icmp eq %struct.TYPE_25__* %323, null
  br i1 %324, label %325, label %332

325:                                              ; preds = %319
  %326 = load %struct.ucl_schema_error*, %struct.ucl_schema_error** %8, align 8
  %327 = load i32, i32* @UCL_SCHEMA_MISSING_PROPERTY, align 4
  %328 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %329 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %330 = call i8* @ucl_object_tostring(%struct.TYPE_25__* %329)
  %331 = call i32 (%struct.ucl_schema_error*, i32, %struct.TYPE_25__*, i8*, ...) @ucl_schema_create_error(%struct.ucl_schema_error* %326, i32 %327, %struct.TYPE_25__* %328, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i8* %330)
  store i32 0, i32* %20, align 4
  br label %333

332:                                              ; preds = %319
  br label %315

333:                                              ; preds = %325, %315
  br label %334

334:                                              ; preds = %333, %311
  br label %335

335:                                              ; preds = %334, %241
  %336 = load i32, i32* %20, align 4
  ret i32 %336
}

declare dso_local %struct.TYPE_25__* @ucl_object_iterate(%struct.TYPE_25__*, i32**, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @ucl_object_key(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_25__* @ucl_object_lookup(%struct.TYPE_25__*, i8*) #1

declare dso_local i32 @ucl_schema_validate(%struct.TYPE_25__*, %struct.TYPE_25__*, i32, %struct.ucl_schema_error*, %struct.TYPE_25__*, %struct.TYPE_25__*) #1

declare dso_local i32 @ucl_object_toboolean(%struct.TYPE_25__*) #1

declare dso_local i32 @ucl_schema_create_error(%struct.ucl_schema_error*, i32, %struct.TYPE_25__*, i8*, ...) #1

declare dso_local i64 @ucl_object_toint_safe(%struct.TYPE_25__*, i64*) #1

declare dso_local %struct.TYPE_25__* @ucl_schema_test_pattern(%struct.TYPE_25__*, i8*, i32) #1

declare dso_local i32 @ucl_schema_validate_dependencies(%struct.TYPE_25__*, %struct.TYPE_25__*, %struct.ucl_schema_error*, %struct.TYPE_25__*, %struct.TYPE_25__*) #1

declare dso_local i8* @ucl_object_tostring(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
