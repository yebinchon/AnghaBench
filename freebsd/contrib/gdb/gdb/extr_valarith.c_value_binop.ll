; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valarith.c_value_binop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valarith.c_value_binop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.value = type { i32 }

@TYPE_CODE_FLT = common dso_local global i64 0, align 8
@TYPE_CODE_CHAR = common dso_local global i64 0, align 8
@TYPE_CODE_INT = common dso_local global i64 0, align 8
@TYPE_CODE_BOOL = common dso_local global i64 0, align 8
@TYPE_CODE_RANGE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"Argument to arithmetic operation not a number or boolean.\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Cannot perform exponentiation: %s\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Integer-only operation on floating point number.\00", align 1
@TARGET_DOUBLE_BIT = common dso_local global i32 0, align 4
@builtin_type_long_double = common dso_local global %struct.type* null, align 8
@builtin_type_double = common dso_local global %struct.type* null, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"Invalid operation on booleans.\00", align 1
@builtin_type_int = common dso_local global %struct.type* null, align 8
@HOST_CHAR_BIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Invalid binary operation on numbers.\00", align 1
@TARGET_LONG_BIT = common dso_local global i32 0, align 4
@builtin_type_unsigned_long_long = common dso_local global %struct.type* null, align 8
@builtin_type_unsigned_long = common dso_local global %struct.type* null, align 8
@TRUNCATION_TOWARDS_ZERO = common dso_local global i32 0, align 4
@builtin_type_long_long = common dso_local global %struct.type* null, align 8
@builtin_type_long = common dso_local global %struct.type* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.value* @value_binop(%struct.value* %0, %struct.value* %1, i32 %2) #0 {
  %4 = alloca %struct.value*, align 8
  %5 = alloca %struct.value*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.value*, align 8
  %8 = alloca %struct.type*, align 8
  %9 = alloca %struct.type*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.value* %0, %struct.value** %4, align 8
  store %struct.value* %1, %struct.value** %5, align 8
  store i32 %2, i32* %6, align 4
  %28 = load %struct.value*, %struct.value** %4, align 8
  %29 = call i32 @COERCE_REF(%struct.value* %28)
  %30 = load %struct.value*, %struct.value** %5, align 8
  %31 = call i32 @COERCE_REF(%struct.value* %30)
  %32 = load %struct.value*, %struct.value** %4, align 8
  %33 = call i32 @COERCE_ENUM(%struct.value* %32)
  %34 = load %struct.value*, %struct.value** %5, align 8
  %35 = call i32 @COERCE_ENUM(%struct.value* %34)
  %36 = load %struct.value*, %struct.value** %4, align 8
  %37 = call %struct.type* @VALUE_TYPE(%struct.value* %36)
  %38 = call %struct.type* @check_typedef(%struct.type* %37)
  store %struct.type* %38, %struct.type** %8, align 8
  %39 = load %struct.value*, %struct.value** %5, align 8
  %40 = call %struct.type* @VALUE_TYPE(%struct.value* %39)
  %41 = call %struct.type* @check_typedef(%struct.type* %40)
  store %struct.type* %41, %struct.type** %9, align 8
  %42 = load %struct.type*, %struct.type** %8, align 8
  %43 = call i64 @TYPE_CODE(%struct.type* %42)
  %44 = load i64, i64* @TYPE_CODE_FLT, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %3
  %47 = load %struct.type*, %struct.type** %8, align 8
  %48 = call i64 @TYPE_CODE(%struct.type* %47)
  %49 = load i64, i64* @TYPE_CODE_CHAR, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %46
  %52 = load %struct.type*, %struct.type** %8, align 8
  %53 = call i64 @TYPE_CODE(%struct.type* %52)
  %54 = load i64, i64* @TYPE_CODE_INT, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load %struct.type*, %struct.type** %8, align 8
  %58 = call i64 @TYPE_CODE(%struct.type* %57)
  %59 = load i64, i64* @TYPE_CODE_BOOL, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.type*, %struct.type** %8, align 8
  %63 = call i64 @TYPE_CODE(%struct.type* %62)
  %64 = load i64, i64* @TYPE_CODE_RANGE, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %91, label %66

66:                                               ; preds = %61, %56, %51, %46, %3
  %67 = load %struct.type*, %struct.type** %9, align 8
  %68 = call i64 @TYPE_CODE(%struct.type* %67)
  %69 = load i64, i64* @TYPE_CODE_FLT, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %93

71:                                               ; preds = %66
  %72 = load %struct.type*, %struct.type** %9, align 8
  %73 = call i64 @TYPE_CODE(%struct.type* %72)
  %74 = load i64, i64* @TYPE_CODE_CHAR, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %93

76:                                               ; preds = %71
  %77 = load %struct.type*, %struct.type** %9, align 8
  %78 = call i64 @TYPE_CODE(%struct.type* %77)
  %79 = load i64, i64* @TYPE_CODE_INT, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %76
  %82 = load %struct.type*, %struct.type** %9, align 8
  %83 = call i64 @TYPE_CODE(%struct.type* %82)
  %84 = load i64, i64* @TYPE_CODE_BOOL, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load %struct.type*, %struct.type** %9, align 8
  %88 = call i64 @TYPE_CODE(%struct.type* %87)
  %89 = load i64, i64* @TYPE_CODE_RANGE, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %86, %61
  %92 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %86, %81, %76, %71, %66
  %94 = load %struct.type*, %struct.type** %8, align 8
  %95 = call i64 @TYPE_CODE(%struct.type* %94)
  %96 = load i64, i64* @TYPE_CODE_FLT, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %103, label %98

98:                                               ; preds = %93
  %99 = load %struct.type*, %struct.type** %9, align 8
  %100 = call i64 @TYPE_CODE(%struct.type* %99)
  %101 = load i64, i64* @TYPE_CODE_FLT, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %163

103:                                              ; preds = %98, %93
  store i32 0, i32* %12, align 4
  %104 = load %struct.value*, %struct.value** %4, align 8
  %105 = call i32 @value_as_double(%struct.value* %104)
  store i32 %105, i32* %10, align 4
  %106 = load %struct.value*, %struct.value** %5, align 8
  %107 = call i32 @value_as_double(%struct.value* %106)
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %6, align 4
  switch i32 %108, label %136 [
    i32 146, label %109
    i32 128, label %113
    i32 132, label %117
    i32 142, label %121
    i32 140, label %125
  ]

109:                                              ; preds = %103
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %11, align 4
  %112 = add i32 %110, %111
  store i32 %112, i32* %12, align 4
  br label %138

113:                                              ; preds = %103
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %11, align 4
  %116 = sub i32 %114, %115
  store i32 %116, i32* %12, align 4
  br label %138

117:                                              ; preds = %103
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %11, align 4
  %120 = mul i32 %118, %119
  store i32 %120, i32* %12, align 4
  br label %138

121:                                              ; preds = %103
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* %11, align 4
  %124 = udiv i32 %122, %123
  store i32 %124, i32* %12, align 4
  br label %138

125:                                              ; preds = %103
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %11, align 4
  %128 = call i32 @pow(i32 %126, i32 %127)
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* @errno, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %125
  %132 = load i32, i32* @errno, align 4
  %133 = call i32 @safe_strerror(i32 %132)
  %134 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %133)
  br label %135

135:                                              ; preds = %131, %125
  br label %138

136:                                              ; preds = %103
  %137 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136, %135, %121, %117, %113, %109
  %139 = load %struct.type*, %struct.type** %8, align 8
  %140 = call i32 @TYPE_LENGTH(%struct.type* %139)
  %141 = mul i32 %140, 8
  %142 = load i32, i32* @TARGET_DOUBLE_BIT, align 4
  %143 = icmp ugt i32 %141, %142
  br i1 %143, label %150, label %144

144:                                              ; preds = %138
  %145 = load %struct.type*, %struct.type** %9, align 8
  %146 = call i32 @TYPE_LENGTH(%struct.type* %145)
  %147 = mul i32 %146, 8
  %148 = load i32, i32* @TARGET_DOUBLE_BIT, align 4
  %149 = icmp ugt i32 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %144, %138
  %151 = load %struct.type*, %struct.type** @builtin_type_long_double, align 8
  %152 = call %struct.value* @allocate_value(%struct.type* %151)
  store %struct.value* %152, %struct.value** %7, align 8
  br label %156

153:                                              ; preds = %144
  %154 = load %struct.type*, %struct.type** @builtin_type_double, align 8
  %155 = call %struct.value* @allocate_value(%struct.type* %154)
  store %struct.value* %155, %struct.value** %7, align 8
  br label %156

156:                                              ; preds = %153, %150
  %157 = load %struct.value*, %struct.value** %7, align 8
  %158 = call i32 @VALUE_CONTENTS_RAW(%struct.value* %157)
  %159 = load %struct.value*, %struct.value** %7, align 8
  %160 = call %struct.type* @VALUE_TYPE(%struct.value* %159)
  %161 = load i32, i32* %12, align 4
  %162 = call i32 @store_typed_floating(i32 %158, %struct.type* %160, i32 %161)
  br label %588

163:                                              ; preds = %98
  %164 = load %struct.type*, %struct.type** %8, align 8
  %165 = call i64 @TYPE_CODE(%struct.type* %164)
  %166 = load i64, i64* @TYPE_CODE_BOOL, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %212

168:                                              ; preds = %163
  %169 = load %struct.type*, %struct.type** %9, align 8
  %170 = call i64 @TYPE_CODE(%struct.type* %169)
  %171 = load i64, i64* @TYPE_CODE_BOOL, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %212

173:                                              ; preds = %168
  store i32 0, i32* %15, align 4
  %174 = load %struct.value*, %struct.value** %4, align 8
  %175 = call i32 @value_as_long(%struct.value* %174)
  store i32 %175, i32* %13, align 4
  %176 = load %struct.value*, %struct.value** %5, align 8
  %177 = call i32 @value_as_long(%struct.value* %176)
  store i32 %177, i32* %14, align 4
  %178 = load i32, i32* %6, align 4
  switch i32 %178, label %201 [
    i32 145, label %179
    i32 144, label %183
    i32 143, label %187
    i32 141, label %191
    i32 131, label %196
  ]

179:                                              ; preds = %173
  %180 = load i32, i32* %13, align 4
  %181 = load i32, i32* %14, align 4
  %182 = and i32 %180, %181
  store i32 %182, i32* %15, align 4
  br label %203

183:                                              ; preds = %173
  %184 = load i32, i32* %13, align 4
  %185 = load i32, i32* %14, align 4
  %186 = or i32 %184, %185
  store i32 %186, i32* %15, align 4
  br label %203

187:                                              ; preds = %173
  %188 = load i32, i32* %13, align 4
  %189 = load i32, i32* %14, align 4
  %190 = xor i32 %188, %189
  store i32 %190, i32* %15, align 4
  br label %203

191:                                              ; preds = %173
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* %14, align 4
  %194 = icmp eq i32 %192, %193
  %195 = zext i1 %194 to i32
  store i32 %195, i32* %15, align 4
  br label %203

196:                                              ; preds = %173
  %197 = load i32, i32* %13, align 4
  %198 = load i32, i32* %14, align 4
  %199 = icmp ne i32 %197, %198
  %200 = zext i1 %199 to i32
  store i32 %200, i32* %15, align 4
  br label %203

201:                                              ; preds = %173
  %202 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %203

203:                                              ; preds = %201, %196, %191, %187, %183, %179
  %204 = load %struct.type*, %struct.type** %8, align 8
  %205 = call %struct.value* @allocate_value(%struct.type* %204)
  store %struct.value* %205, %struct.value** %7, align 8
  %206 = load %struct.value*, %struct.value** %7, align 8
  %207 = call i32 @VALUE_CONTENTS_RAW(%struct.value* %206)
  %208 = load %struct.type*, %struct.type** %8, align 8
  %209 = call i32 @TYPE_LENGTH(%struct.type* %208)
  %210 = load i32, i32* %15, align 4
  %211 = call i32 @store_signed_integer(i32 %207, i32 %209, i32 %210)
  br label %587

212:                                              ; preds = %168, %163
  %213 = load %struct.type*, %struct.type** %8, align 8
  %214 = call i32 @TYPE_LENGTH(%struct.type* %213)
  store i32 %214, i32* %16, align 4
  %215 = load %struct.type*, %struct.type** %9, align 8
  %216 = call i32 @TYPE_LENGTH(%struct.type* %215)
  store i32 %216, i32* %17, align 4
  %217 = load %struct.type*, %struct.type** %8, align 8
  %218 = call i32 @TYPE_UNSIGNED(%struct.type* %217)
  store i32 %218, i32* %18, align 4
  %219 = load %struct.type*, %struct.type** %9, align 8
  %220 = call i32 @TYPE_UNSIGNED(%struct.type* %219)
  store i32 %220, i32* %19, align 4
  %221 = load i32, i32* %16, align 4
  %222 = load %struct.type*, %struct.type** @builtin_type_int, align 8
  %223 = call i32 @TYPE_LENGTH(%struct.type* %222)
  %224 = icmp ult i32 %221, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %212
  store i32 0, i32* %18, align 4
  %226 = load %struct.type*, %struct.type** @builtin_type_int, align 8
  %227 = call i32 @TYPE_LENGTH(%struct.type* %226)
  store i32 %227, i32* %16, align 4
  br label %228

228:                                              ; preds = %225, %212
  %229 = load i32, i32* %17, align 4
  %230 = load %struct.type*, %struct.type** @builtin_type_int, align 8
  %231 = call i32 @TYPE_LENGTH(%struct.type* %230)
  %232 = icmp ult i32 %229, %231
  br i1 %232, label %233, label %236

233:                                              ; preds = %228
  store i32 0, i32* %19, align 4
  %234 = load %struct.type*, %struct.type** @builtin_type_int, align 8
  %235 = call i32 @TYPE_LENGTH(%struct.type* %234)
  store i32 %235, i32* %17, align 4
  br label %236

236:                                              ; preds = %233, %228
  %237 = load i32, i32* %16, align 4
  %238 = load i32, i32* %17, align 4
  %239 = icmp ugt i32 %237, %238
  br i1 %239, label %240, label %243

240:                                              ; preds = %236
  %241 = load i32, i32* %18, align 4
  store i32 %241, i32* %21, align 4
  %242 = load i32, i32* %16, align 4
  store i32 %242, i32* %20, align 4
  br label %261

243:                                              ; preds = %236
  %244 = load i32, i32* %17, align 4
  %245 = load i32, i32* %16, align 4
  %246 = icmp ugt i32 %244, %245
  br i1 %246, label %247, label %250

247:                                              ; preds = %243
  %248 = load i32, i32* %19, align 4
  store i32 %248, i32* %21, align 4
  %249 = load i32, i32* %17, align 4
  store i32 %249, i32* %20, align 4
  br label %260

250:                                              ; preds = %243
  %251 = load i32, i32* %18, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %256, label %253

253:                                              ; preds = %250
  %254 = load i32, i32* %19, align 4
  %255 = icmp ne i32 %254, 0
  br label %256

256:                                              ; preds = %253, %250
  %257 = phi i1 [ true, %250 ], [ %255, %253 ]
  %258 = zext i1 %257 to i32
  store i32 %258, i32* %21, align 4
  %259 = load i32, i32* %16, align 4
  store i32 %259, i32* %20, align 4
  br label %260

260:                                              ; preds = %256, %247
  br label %261

261:                                              ; preds = %260, %240
  %262 = load i32, i32* %21, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %430

264:                                              ; preds = %261
  store i32 0, i32* %24, align 4
  %265 = load %struct.value*, %struct.value** %4, align 8
  %266 = call i32 @value_as_long(%struct.value* %265)
  store i32 %266, i32* %22, align 4
  %267 = load %struct.value*, %struct.value** %5, align 8
  %268 = call i32 @value_as_long(%struct.value* %267)
  store i32 %268, i32* %23, align 4
  %269 = load i32, i32* %20, align 4
  %270 = zext i32 %269 to i64
  %271 = icmp ult i64 %270, 4
  br i1 %271, label %272, label %287

272:                                              ; preds = %264
  %273 = load i32, i32* @HOST_CHAR_BIT, align 4
  %274 = load i32, i32* %20, align 4
  %275 = mul i32 %273, %274
  %276 = shl i32 1, %275
  %277 = sub i32 %276, 1
  %278 = load i32, i32* %22, align 4
  %279 = and i32 %278, %277
  store i32 %279, i32* %22, align 4
  %280 = load i32, i32* @HOST_CHAR_BIT, align 4
  %281 = load i32, i32* %20, align 4
  %282 = mul i32 %280, %281
  %283 = shl i32 1, %282
  %284 = sub i32 %283, 1
  %285 = load i32, i32* %23, align 4
  %286 = and i32 %285, %284
  store i32 %286, i32* %23, align 4
  br label %287

287:                                              ; preds = %272, %264
  %288 = load i32, i32* %6, align 4
  switch i32 %288, label %408 [
    i32 146, label %289
    i32 128, label %293
    i32 132, label %297
    i32 142, label %301
    i32 140, label %305
    i32 130, label %316
    i32 133, label %320
    i32 136, label %335
    i32 129, label %339
    i32 145, label %343
    i32 144, label %347
    i32 143, label %351
    i32 138, label %355
    i32 137, label %364
    i32 134, label %373
    i32 135, label %383
    i32 141, label %393
    i32 131, label %398
    i32 139, label %403
  ]

289:                                              ; preds = %287
  %290 = load i32, i32* %22, align 4
  %291 = load i32, i32* %23, align 4
  %292 = add i32 %290, %291
  store i32 %292, i32* %24, align 4
  br label %410

293:                                              ; preds = %287
  %294 = load i32, i32* %22, align 4
  %295 = load i32, i32* %23, align 4
  %296 = sub i32 %294, %295
  store i32 %296, i32* %24, align 4
  br label %410

297:                                              ; preds = %287
  %298 = load i32, i32* %22, align 4
  %299 = load i32, i32* %23, align 4
  %300 = mul i32 %298, %299
  store i32 %300, i32* %24, align 4
  br label %410

301:                                              ; preds = %287
  %302 = load i32, i32* %22, align 4
  %303 = load i32, i32* %23, align 4
  %304 = udiv i32 %302, %303
  store i32 %304, i32* %24, align 4
  br label %410

305:                                              ; preds = %287
  %306 = load i32, i32* %22, align 4
  %307 = load i32, i32* %23, align 4
  %308 = call i32 @pow(i32 %306, i32 %307)
  store i32 %308, i32* %24, align 4
  %309 = load i32, i32* @errno, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %315

311:                                              ; preds = %305
  %312 = load i32, i32* @errno, align 4
  %313 = call i32 @safe_strerror(i32 %312)
  %314 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %313)
  br label %315

315:                                              ; preds = %311, %305
  br label %410

316:                                              ; preds = %287
  %317 = load i32, i32* %22, align 4
  %318 = load i32, i32* %23, align 4
  %319 = urem i32 %317, %318
  store i32 %319, i32* %24, align 4
  br label %410

320:                                              ; preds = %287
  %321 = load i32, i32* %23, align 4
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %325

323:                                              ; preds = %320
  %324 = load i32, i32* %22, align 4
  store i32 %324, i32* %24, align 4
  br label %334

325:                                              ; preds = %320
  %326 = load i32, i32* %22, align 4
  %327 = load i32, i32* %23, align 4
  %328 = udiv i32 %326, %327
  store i32 %328, i32* %24, align 4
  %329 = load i32, i32* %22, align 4
  %330 = load i32, i32* %23, align 4
  %331 = load i32, i32* %24, align 4
  %332 = mul i32 %330, %331
  %333 = sub i32 %329, %332
  store i32 %333, i32* %24, align 4
  br label %334

334:                                              ; preds = %325, %323
  br label %410

335:                                              ; preds = %287
  %336 = load i32, i32* %22, align 4
  %337 = load i32, i32* %23, align 4
  %338 = shl i32 %336, %337
  store i32 %338, i32* %24, align 4
  br label %410

339:                                              ; preds = %287
  %340 = load i32, i32* %22, align 4
  %341 = load i32, i32* %23, align 4
  %342 = lshr i32 %340, %341
  store i32 %342, i32* %24, align 4
  br label %410

343:                                              ; preds = %287
  %344 = load i32, i32* %22, align 4
  %345 = load i32, i32* %23, align 4
  %346 = and i32 %344, %345
  store i32 %346, i32* %24, align 4
  br label %410

347:                                              ; preds = %287
  %348 = load i32, i32* %22, align 4
  %349 = load i32, i32* %23, align 4
  %350 = or i32 %348, %349
  store i32 %350, i32* %24, align 4
  br label %410

351:                                              ; preds = %287
  %352 = load i32, i32* %22, align 4
  %353 = load i32, i32* %23, align 4
  %354 = xor i32 %352, %353
  store i32 %354, i32* %24, align 4
  br label %410

355:                                              ; preds = %287
  %356 = load i32, i32* %22, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %361

358:                                              ; preds = %355
  %359 = load i32, i32* %23, align 4
  %360 = icmp ne i32 %359, 0
  br label %361

361:                                              ; preds = %358, %355
  %362 = phi i1 [ false, %355 ], [ %360, %358 ]
  %363 = zext i1 %362 to i32
  store i32 %363, i32* %24, align 4
  br label %410

364:                                              ; preds = %287
  %365 = load i32, i32* %22, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %370, label %367

367:                                              ; preds = %364
  %368 = load i32, i32* %23, align 4
  %369 = icmp ne i32 %368, 0
  br label %370

370:                                              ; preds = %367, %364
  %371 = phi i1 [ true, %364 ], [ %369, %367 ]
  %372 = zext i1 %371 to i32
  store i32 %372, i32* %24, align 4
  br label %410

373:                                              ; preds = %287
  %374 = load i32, i32* %22, align 4
  %375 = load i32, i32* %23, align 4
  %376 = icmp ult i32 %374, %375
  br i1 %376, label %377, label %379

377:                                              ; preds = %373
  %378 = load i32, i32* %22, align 4
  br label %381

379:                                              ; preds = %373
  %380 = load i32, i32* %23, align 4
  br label %381

381:                                              ; preds = %379, %377
  %382 = phi i32 [ %378, %377 ], [ %380, %379 ]
  store i32 %382, i32* %24, align 4
  br label %410

383:                                              ; preds = %287
  %384 = load i32, i32* %22, align 4
  %385 = load i32, i32* %23, align 4
  %386 = icmp ugt i32 %384, %385
  br i1 %386, label %387, label %389

387:                                              ; preds = %383
  %388 = load i32, i32* %22, align 4
  br label %391

389:                                              ; preds = %383
  %390 = load i32, i32* %23, align 4
  br label %391

391:                                              ; preds = %389, %387
  %392 = phi i32 [ %388, %387 ], [ %390, %389 ]
  store i32 %392, i32* %24, align 4
  br label %410

393:                                              ; preds = %287
  %394 = load i32, i32* %22, align 4
  %395 = load i32, i32* %23, align 4
  %396 = icmp eq i32 %394, %395
  %397 = zext i1 %396 to i32
  store i32 %397, i32* %24, align 4
  br label %410

398:                                              ; preds = %287
  %399 = load i32, i32* %22, align 4
  %400 = load i32, i32* %23, align 4
  %401 = icmp ne i32 %399, %400
  %402 = zext i1 %401 to i32
  store i32 %402, i32* %24, align 4
  br label %410

403:                                              ; preds = %287
  %404 = load i32, i32* %22, align 4
  %405 = load i32, i32* %23, align 4
  %406 = icmp ult i32 %404, %405
  %407 = zext i1 %406 to i32
  store i32 %407, i32* %24, align 4
  br label %410

408:                                              ; preds = %287
  %409 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %410

410:                                              ; preds = %408, %403, %398, %393, %391, %381, %370, %361, %351, %347, %343, %339, %335, %334, %316, %315, %301, %297, %293, %289
  %411 = load i32, i32* %20, align 4
  %412 = load i32, i32* @TARGET_LONG_BIT, align 4
  %413 = load i32, i32* @HOST_CHAR_BIT, align 4
  %414 = udiv i32 %412, %413
  %415 = icmp ugt i32 %411, %414
  br i1 %415, label %416, label %418

416:                                              ; preds = %410
  %417 = load %struct.type*, %struct.type** @builtin_type_unsigned_long_long, align 8
  br label %420

418:                                              ; preds = %410
  %419 = load %struct.type*, %struct.type** @builtin_type_unsigned_long, align 8
  br label %420

420:                                              ; preds = %418, %416
  %421 = phi %struct.type* [ %417, %416 ], [ %419, %418 ]
  %422 = call %struct.value* @allocate_value(%struct.type* %421)
  store %struct.value* %422, %struct.value** %7, align 8
  %423 = load %struct.value*, %struct.value** %7, align 8
  %424 = call i32 @VALUE_CONTENTS_RAW(%struct.value* %423)
  %425 = load %struct.value*, %struct.value** %7, align 8
  %426 = call %struct.type* @VALUE_TYPE(%struct.value* %425)
  %427 = call i32 @TYPE_LENGTH(%struct.type* %426)
  %428 = load i32, i32* %24, align 4
  %429 = call i32 @store_unsigned_integer(i32 %424, i32 %427, i32 %428)
  br label %586

430:                                              ; preds = %261
  store i32 0, i32* %27, align 4
  %431 = load %struct.value*, %struct.value** %4, align 8
  %432 = call i32 @value_as_long(%struct.value* %431)
  store i32 %432, i32* %25, align 4
  %433 = load %struct.value*, %struct.value** %5, align 8
  %434 = call i32 @value_as_long(%struct.value* %433)
  store i32 %434, i32* %26, align 4
  %435 = load i32, i32* %6, align 4
  switch i32 %435, label %564 [
    i32 146, label %436
    i32 128, label %440
    i32 132, label %444
    i32 142, label %448
    i32 140, label %452
    i32 130, label %463
    i32 133, label %467
    i32 136, label %496
    i32 129, label %500
    i32 145, label %504
    i32 144, label %508
    i32 143, label %512
    i32 138, label %516
    i32 137, label %525
    i32 134, label %534
    i32 135, label %544
    i32 141, label %554
    i32 139, label %559
  ]

436:                                              ; preds = %430
  %437 = load i32, i32* %25, align 4
  %438 = load i32, i32* %26, align 4
  %439 = add i32 %437, %438
  store i32 %439, i32* %27, align 4
  br label %566

440:                                              ; preds = %430
  %441 = load i32, i32* %25, align 4
  %442 = load i32, i32* %26, align 4
  %443 = sub i32 %441, %442
  store i32 %443, i32* %27, align 4
  br label %566

444:                                              ; preds = %430
  %445 = load i32, i32* %25, align 4
  %446 = load i32, i32* %26, align 4
  %447 = mul i32 %445, %446
  store i32 %447, i32* %27, align 4
  br label %566

448:                                              ; preds = %430
  %449 = load i32, i32* %25, align 4
  %450 = load i32, i32* %26, align 4
  %451 = udiv i32 %449, %450
  store i32 %451, i32* %27, align 4
  br label %566

452:                                              ; preds = %430
  %453 = load i32, i32* %25, align 4
  %454 = load i32, i32* %26, align 4
  %455 = call i32 @pow(i32 %453, i32 %454)
  store i32 %455, i32* %27, align 4
  %456 = load i32, i32* @errno, align 4
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %462

458:                                              ; preds = %452
  %459 = load i32, i32* @errno, align 4
  %460 = call i32 @safe_strerror(i32 %459)
  %461 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %460)
  br label %462

462:                                              ; preds = %458, %452
  br label %566

463:                                              ; preds = %430
  %464 = load i32, i32* %25, align 4
  %465 = load i32, i32* %26, align 4
  %466 = urem i32 %464, %465
  store i32 %466, i32* %27, align 4
  br label %566

467:                                              ; preds = %430
  %468 = load i32, i32* %26, align 4
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %470, label %472

470:                                              ; preds = %467
  %471 = load i32, i32* %25, align 4
  store i32 %471, i32* %27, align 4
  br label %495

472:                                              ; preds = %467
  %473 = load i32, i32* %25, align 4
  %474 = load i32, i32* %26, align 4
  %475 = udiv i32 %473, %474
  store i32 %475, i32* %27, align 4
  %476 = load i32, i32* @TRUNCATION_TOWARDS_ZERO, align 4
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %489

478:                                              ; preds = %472
  %479 = load i32, i32* %27, align 4
  %480 = icmp ult i32 %479, 0
  br i1 %480, label %481, label %489

481:                                              ; preds = %478
  %482 = load i32, i32* %25, align 4
  %483 = load i32, i32* %26, align 4
  %484 = urem i32 %482, %483
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %486, label %489

486:                                              ; preds = %481
  %487 = load i32, i32* %27, align 4
  %488 = add i32 %487, -1
  store i32 %488, i32* %27, align 4
  br label %489

489:                                              ; preds = %486, %481, %478, %472
  %490 = load i32, i32* %25, align 4
  %491 = load i32, i32* %26, align 4
  %492 = load i32, i32* %27, align 4
  %493 = mul i32 %491, %492
  %494 = sub i32 %490, %493
  store i32 %494, i32* %27, align 4
  br label %495

495:                                              ; preds = %489, %470
  br label %566

496:                                              ; preds = %430
  %497 = load i32, i32* %25, align 4
  %498 = load i32, i32* %26, align 4
  %499 = shl i32 %497, %498
  store i32 %499, i32* %27, align 4
  br label %566

500:                                              ; preds = %430
  %501 = load i32, i32* %25, align 4
  %502 = load i32, i32* %26, align 4
  %503 = lshr i32 %501, %502
  store i32 %503, i32* %27, align 4
  br label %566

504:                                              ; preds = %430
  %505 = load i32, i32* %25, align 4
  %506 = load i32, i32* %26, align 4
  %507 = and i32 %505, %506
  store i32 %507, i32* %27, align 4
  br label %566

508:                                              ; preds = %430
  %509 = load i32, i32* %25, align 4
  %510 = load i32, i32* %26, align 4
  %511 = or i32 %509, %510
  store i32 %511, i32* %27, align 4
  br label %566

512:                                              ; preds = %430
  %513 = load i32, i32* %25, align 4
  %514 = load i32, i32* %26, align 4
  %515 = xor i32 %513, %514
  store i32 %515, i32* %27, align 4
  br label %566

516:                                              ; preds = %430
  %517 = load i32, i32* %25, align 4
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %519, label %522

519:                                              ; preds = %516
  %520 = load i32, i32* %26, align 4
  %521 = icmp ne i32 %520, 0
  br label %522

522:                                              ; preds = %519, %516
  %523 = phi i1 [ false, %516 ], [ %521, %519 ]
  %524 = zext i1 %523 to i32
  store i32 %524, i32* %27, align 4
  br label %566

525:                                              ; preds = %430
  %526 = load i32, i32* %25, align 4
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %531, label %528

528:                                              ; preds = %525
  %529 = load i32, i32* %26, align 4
  %530 = icmp ne i32 %529, 0
  br label %531

531:                                              ; preds = %528, %525
  %532 = phi i1 [ true, %525 ], [ %530, %528 ]
  %533 = zext i1 %532 to i32
  store i32 %533, i32* %27, align 4
  br label %566

534:                                              ; preds = %430
  %535 = load i32, i32* %25, align 4
  %536 = load i32, i32* %26, align 4
  %537 = icmp ult i32 %535, %536
  br i1 %537, label %538, label %540

538:                                              ; preds = %534
  %539 = load i32, i32* %25, align 4
  br label %542

540:                                              ; preds = %534
  %541 = load i32, i32* %26, align 4
  br label %542

542:                                              ; preds = %540, %538
  %543 = phi i32 [ %539, %538 ], [ %541, %540 ]
  store i32 %543, i32* %27, align 4
  br label %566

544:                                              ; preds = %430
  %545 = load i32, i32* %25, align 4
  %546 = load i32, i32* %26, align 4
  %547 = icmp ugt i32 %545, %546
  br i1 %547, label %548, label %550

548:                                              ; preds = %544
  %549 = load i32, i32* %25, align 4
  br label %552

550:                                              ; preds = %544
  %551 = load i32, i32* %26, align 4
  br label %552

552:                                              ; preds = %550, %548
  %553 = phi i32 [ %549, %548 ], [ %551, %550 ]
  store i32 %553, i32* %27, align 4
  br label %566

554:                                              ; preds = %430
  %555 = load i32, i32* %25, align 4
  %556 = load i32, i32* %26, align 4
  %557 = icmp eq i32 %555, %556
  %558 = zext i1 %557 to i32
  store i32 %558, i32* %27, align 4
  br label %566

559:                                              ; preds = %430
  %560 = load i32, i32* %25, align 4
  %561 = load i32, i32* %26, align 4
  %562 = icmp ult i32 %560, %561
  %563 = zext i1 %562 to i32
  store i32 %563, i32* %27, align 4
  br label %566

564:                                              ; preds = %430
  %565 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %566

566:                                              ; preds = %564, %559, %554, %552, %542, %531, %522, %512, %508, %504, %500, %496, %495, %463, %462, %448, %444, %440, %436
  %567 = load i32, i32* %20, align 4
  %568 = load i32, i32* @TARGET_LONG_BIT, align 4
  %569 = load i32, i32* @HOST_CHAR_BIT, align 4
  %570 = udiv i32 %568, %569
  %571 = icmp ugt i32 %567, %570
  br i1 %571, label %572, label %574

572:                                              ; preds = %566
  %573 = load %struct.type*, %struct.type** @builtin_type_long_long, align 8
  br label %576

574:                                              ; preds = %566
  %575 = load %struct.type*, %struct.type** @builtin_type_long, align 8
  br label %576

576:                                              ; preds = %574, %572
  %577 = phi %struct.type* [ %573, %572 ], [ %575, %574 ]
  %578 = call %struct.value* @allocate_value(%struct.type* %577)
  store %struct.value* %578, %struct.value** %7, align 8
  %579 = load %struct.value*, %struct.value** %7, align 8
  %580 = call i32 @VALUE_CONTENTS_RAW(%struct.value* %579)
  %581 = load %struct.value*, %struct.value** %7, align 8
  %582 = call %struct.type* @VALUE_TYPE(%struct.value* %581)
  %583 = call i32 @TYPE_LENGTH(%struct.type* %582)
  %584 = load i32, i32* %27, align 4
  %585 = call i32 @store_signed_integer(i32 %580, i32 %583, i32 %584)
  br label %586

586:                                              ; preds = %576, %420
  br label %587

587:                                              ; preds = %586, %203
  br label %588

588:                                              ; preds = %587, %156
  %589 = load %struct.value*, %struct.value** %7, align 8
  ret %struct.value* %589
}

declare dso_local i32 @COERCE_REF(%struct.value*) #1

declare dso_local i32 @COERCE_ENUM(%struct.value*) #1

declare dso_local %struct.type* @check_typedef(%struct.type*) #1

declare dso_local %struct.type* @VALUE_TYPE(%struct.value*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @value_as_double(%struct.value*) #1

declare dso_local i32 @pow(i32, i32) #1

declare dso_local i32 @safe_strerror(i32) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local %struct.value* @allocate_value(%struct.type*) #1

declare dso_local i32 @store_typed_floating(i32, %struct.type*, i32) #1

declare dso_local i32 @VALUE_CONTENTS_RAW(%struct.value*) #1

declare dso_local i32 @value_as_long(%struct.value*) #1

declare dso_local i32 @store_signed_integer(i32, i32, i32) #1

declare dso_local i32 @TYPE_UNSIGNED(%struct.type*) #1

declare dso_local i32 @store_unsigned_integer(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
