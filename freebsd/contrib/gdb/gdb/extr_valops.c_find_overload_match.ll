; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_find_overload_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_find_overload_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.symbol = type { i32 }
%struct.value = type { i32 }
%struct.badness_vector = type opaque
%struct.fn_field = type { i32 }
%struct.cleanup = type { i32 }

@TYPE_CODE_PTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Couldn't find method %s%s%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@xfree = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"Cannot resolve method %s%s%s to any overloaded instance\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Cannot resolve function %s to any overloaded instance\00", align 1
@.str.5 = private unnamed_addr constant [75 x i8] c"Using non-standard conversion to match method %s%s%s to supplied arguments\00", align 1
@.str.6 = private unnamed_addr constant [73 x i8] c"Using non-standard conversion to match function %s to supplied arguments\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_overload_match(%struct.type** %0, i32 %1, i8* %2, i32 %3, i32 %4, %struct.value** %5, %struct.symbol* %6, %struct.value** %7, %struct.symbol** %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.type**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.value**, align 8
  %18 = alloca %struct.symbol*, align 8
  %19 = alloca %struct.value**, align 8
  %20 = alloca %struct.symbol**, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.value*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.badness_vector*, align 8
  %25 = alloca %struct.value*, align 8
  %26 = alloca %struct.fn_field*, align 8
  %27 = alloca %struct.symbol**, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.type*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca %struct.cleanup*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i8*, align 8
  store %struct.type** %0, %struct.type*** %12, align 8
  store i32 %1, i32* %13, align 4
  store i8* %2, i8** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store %struct.value** %5, %struct.value*** %17, align 8
  store %struct.symbol* %6, %struct.symbol** %18, align 8
  store %struct.value** %7, %struct.value*** %19, align 8
  store %struct.symbol** %8, %struct.symbol*** %20, align 8
  store i32* %9, i32** %21, align 8
  %38 = load %struct.value**, %struct.value*** %17, align 8
  %39 = icmp ne %struct.value** %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %10
  %41 = load %struct.value**, %struct.value*** %17, align 8
  %42 = load %struct.value*, %struct.value** %41, align 8
  br label %44

43:                                               ; preds = %10
  br label %44

44:                                               ; preds = %43, %40
  %45 = phi %struct.value* [ %42, %40 ], [ null, %43 ]
  store %struct.value* %45, %struct.value** %22, align 8
  store %struct.badness_vector* null, %struct.badness_vector** %24, align 8
  %46 = load %struct.value*, %struct.value** %22, align 8
  store %struct.value* %46, %struct.value** %25, align 8
  store %struct.fn_field* null, %struct.fn_field** %26, align 8
  store %struct.symbol** null, %struct.symbol*** %27, align 8
  store i32 0, i32* %28, align 4
  store %struct.type* null, %struct.type** %29, align 8
  store %struct.cleanup* null, %struct.cleanup** %33, align 8
  store i8* null, i8** %34, align 8
  store i8* null, i8** %35, align 8
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %110

49:                                               ; preds = %44
  %50 = load %struct.value*, %struct.value** %22, align 8
  %51 = call i32 @VALUE_TYPE(%struct.value* %50)
  %52 = call i8* @TYPE_NAME(i32 %51)
  store i8* %52, i8** %34, align 8
  %53 = load i8*, i8** %34, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i8*, i8** %34, align 8
  %57 = load i8, i8* %56, align 1
  %58 = icmp ne i8 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %55, %49
  %60 = load %struct.value*, %struct.value** %22, align 8
  %61 = call i32 @VALUE_TYPE(%struct.value* %60)
  %62 = call i64 @TYPE_CODE(i32 %61)
  %63 = load i64, i64* @TYPE_CODE_PTR, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load %struct.value*, %struct.value** %22, align 8
  %67 = call i32 @VALUE_TYPE(%struct.value* %66)
  %68 = call i32 @TYPE_TARGET_TYPE(i32 %67)
  %69 = call i8* @TYPE_NAME(i32 %68)
  store i8* %69, i8** %34, align 8
  br label %70

70:                                               ; preds = %65, %59, %55
  %71 = load i8*, i8** %14, align 8
  %72 = call %struct.fn_field* @value_find_oload_method_list(%struct.value** %25, i8* %71, i32 0, i32* %28, %struct.type** %29, i32* %30)
  store %struct.fn_field* %72, %struct.fn_field** %26, align 8
  %73 = load %struct.fn_field*, %struct.fn_field** %26, align 8
  %74 = icmp ne %struct.fn_field* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* %28, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %93, label %78

78:                                               ; preds = %75, %70
  %79 = load i8*, i8** %34, align 8
  %80 = load i8*, i8** %34, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load i8*, i8** %34, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 0
  br label %87

87:                                               ; preds = %82, %78
  %88 = phi i1 [ false, %78 ], [ %86, %82 ]
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %91 = load i8*, i8** %14, align 8
  %92 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %79, i8* %90, i8* %91)
  br label %93

93:                                               ; preds = %87, %75
  %94 = load %struct.fn_field*, %struct.fn_field** %26, align 8
  %95 = getelementptr inbounds %struct.fn_field, %struct.fn_field* %94, i64 0
  %96 = getelementptr inbounds %struct.fn_field, %struct.fn_field* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32* @TYPE_DOMAIN_TYPE(i32 %97)
  %99 = icmp ne i32* %98, null
  %100 = zext i1 %99 to i32
  %101 = call i32 @gdb_assert(i32 %100)
  %102 = load %struct.type**, %struct.type*** %12, align 8
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %28, align 4
  %106 = load %struct.fn_field*, %struct.fn_field** %26, align 8
  %107 = load %struct.symbol**, %struct.symbol*** %27, align 8
  %108 = bitcast %struct.badness_vector** %24 to %struct.symbol***
  %109 = call i32 @find_oload_champ(%struct.type** %102, i32 %103, i32 %104, i32 %105, %struct.fn_field* %106, %struct.symbol** %107, %struct.symbol*** %108)
  store i32 %109, i32* %23, align 4
  br label %138

110:                                              ; preds = %44
  %111 = load %struct.symbol*, %struct.symbol** %18, align 8
  %112 = call i8* @SYMBOL_CPLUS_DEMANGLED_NAME(%struct.symbol* %111)
  store i8* %112, i8** %37, align 8
  %113 = load i8*, i8** %37, align 8
  %114 = call i8* @cp_func_name(i8* %113)
  store i8* %114, i8** %35, align 8
  %115 = load i8*, i8** %35, align 8
  %116 = icmp eq i8* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %110
  %118 = load %struct.symbol*, %struct.symbol** %18, align 8
  %119 = load %struct.symbol**, %struct.symbol*** %20, align 8
  store %struct.symbol* %118, %struct.symbol** %119, align 8
  store i32 0, i32* %11, align 4
  br label %269

120:                                              ; preds = %110
  %121 = load i32, i32* @xfree, align 4
  %122 = load i8*, i8** %35, align 8
  %123 = call %struct.cleanup* @make_cleanup(i32 %121, i8* %122)
  store %struct.cleanup* %123, %struct.cleanup** %33, align 8
  %124 = load i32, i32* @xfree, align 4
  %125 = load %struct.symbol**, %struct.symbol*** %27, align 8
  %126 = bitcast %struct.symbol** %125 to i8*
  %127 = call %struct.cleanup* @make_cleanup(i32 %124, i8* %126)
  %128 = load i32, i32* @xfree, align 4
  %129 = load %struct.badness_vector*, %struct.badness_vector** %24, align 8
  %130 = bitcast %struct.badness_vector* %129 to i8*
  %131 = call %struct.cleanup* @make_cleanup(i32 %128, i8* %130)
  %132 = load %struct.type**, %struct.type*** %12, align 8
  %133 = load i32, i32* %13, align 4
  %134 = load i8*, i8** %35, align 8
  %135 = load i8*, i8** %37, align 8
  %136 = bitcast %struct.badness_vector** %24 to %struct.symbol***
  %137 = call i32 @find_oload_champ_namespace(%struct.type** %132, i32 %133, i8* %134, i8* %135, %struct.symbol*** %27, %struct.symbol*** %136)
  store i32 %137, i32* %23, align 4
  br label %138

138:                                              ; preds = %120, %93
  %139 = load %struct.badness_vector*, %struct.badness_vector** %24, align 8
  %140 = bitcast %struct.badness_vector* %139 to %struct.symbol**
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* %15, align 4
  %143 = load %struct.fn_field*, %struct.fn_field** %26, align 8
  %144 = load i32, i32* %23, align 4
  %145 = call i32 @oload_method_static(i32 %142, %struct.fn_field* %143, i32 %144)
  %146 = call i32 @classify_oload_match(%struct.symbol** %140, i32 %141, i32 %145)
  store i32 %146, i32* %36, align 4
  %147 = load i32, i32* %36, align 4
  %148 = icmp eq i32 %147, 129
  br i1 %148, label %149, label %171

149:                                              ; preds = %138
  %150 = load i32, i32* %15, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %167

152:                                              ; preds = %149
  %153 = load i8*, i8** %34, align 8
  %154 = load i8*, i8** %34, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %161

156:                                              ; preds = %152
  %157 = load i8*, i8** %34, align 8
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp ne i32 %159, 0
  br label %161

161:                                              ; preds = %156, %152
  %162 = phi i1 [ false, %152 ], [ %160, %156 ]
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %165 = load i8*, i8** %14, align 8
  %166 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i8* %153, i8* %164, i8* %165)
  br label %170

167:                                              ; preds = %149
  %168 = load i8*, i8** %35, align 8
  %169 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i8* %168)
  br label %170

170:                                              ; preds = %167, %161
  br label %197

171:                                              ; preds = %138
  %172 = load i32, i32* %36, align 4
  %173 = icmp eq i32 %172, 128
  br i1 %173, label %174, label %196

174:                                              ; preds = %171
  %175 = load i32, i32* %15, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %192

177:                                              ; preds = %174
  %178 = load i8*, i8** %34, align 8
  %179 = load i8*, i8** %34, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %186

181:                                              ; preds = %177
  %182 = load i8*, i8** %34, align 8
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp ne i32 %184, 0
  br label %186

186:                                              ; preds = %181, %177
  %187 = phi i1 [ false, %177 ], [ %185, %181 ]
  %188 = zext i1 %187 to i64
  %189 = select i1 %187, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %190 = load i8*, i8** %14, align 8
  %191 = call i32 (i8*, i8*, ...) @warning(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i64 0, i64 0), i8* %178, i8* %189, i8* %190)
  br label %195

192:                                              ; preds = %174
  %193 = load i8*, i8** %35, align 8
  %194 = call i32 (i8*, i8*, ...) @warning(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.6, i64 0, i64 0), i8* %193)
  br label %195

195:                                              ; preds = %192, %186
  br label %196

196:                                              ; preds = %195, %171
  br label %197

197:                                              ; preds = %196, %170
  %198 = load i32, i32* %15, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %229

200:                                              ; preds = %197
  %201 = load i32*, i32** %21, align 8
  %202 = icmp ne i32* %201, null
  br i1 %202, label %203, label %209

203:                                              ; preds = %200
  %204 = load i32, i32* %15, align 4
  %205 = load %struct.fn_field*, %struct.fn_field** %26, align 8
  %206 = load i32, i32* %23, align 4
  %207 = call i32 @oload_method_static(i32 %204, %struct.fn_field* %205, i32 %206)
  %208 = load i32*, i32** %21, align 8
  store i32 %207, i32* %208, align 4
  br label %209

209:                                              ; preds = %203, %200
  %210 = load %struct.fn_field*, %struct.fn_field** %26, align 8
  %211 = load i32, i32* %23, align 4
  %212 = call i64 @TYPE_FN_FIELD_VIRTUAL_P(%struct.fn_field* %210, i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %221

214:                                              ; preds = %209
  %215 = load %struct.fn_field*, %struct.fn_field** %26, align 8
  %216 = load i32, i32* %23, align 4
  %217 = load %struct.type*, %struct.type** %29, align 8
  %218 = load i32, i32* %30, align 4
  %219 = call %struct.value* @value_virtual_fn_field(%struct.value** %25, %struct.fn_field* %215, i32 %216, %struct.type* %217, i32 %218)
  %220 = load %struct.value**, %struct.value*** %19, align 8
  store %struct.value* %219, %struct.value** %220, align 8
  br label %228

221:                                              ; preds = %209
  %222 = load %struct.fn_field*, %struct.fn_field** %26, align 8
  %223 = load i32, i32* %23, align 4
  %224 = load %struct.type*, %struct.type** %29, align 8
  %225 = load i32, i32* %30, align 4
  %226 = call %struct.value* @value_fn_field(%struct.value** %25, %struct.fn_field* %222, i32 %223, %struct.type* %224, i32 %225)
  %227 = load %struct.value**, %struct.value*** %19, align 8
  store %struct.value* %226, %struct.value** %227, align 8
  br label %228

228:                                              ; preds = %221, %214
  br label %236

229:                                              ; preds = %197
  %230 = load %struct.symbol**, %struct.symbol*** %27, align 8
  %231 = load i32, i32* %23, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.symbol*, %struct.symbol** %230, i64 %232
  %234 = load %struct.symbol*, %struct.symbol** %233, align 8
  %235 = load %struct.symbol**, %struct.symbol*** %20, align 8
  store %struct.symbol* %234, %struct.symbol** %235, align 8
  br label %236

236:                                              ; preds = %229, %228
  %237 = load %struct.value**, %struct.value*** %17, align 8
  %238 = icmp ne %struct.value** %237, null
  br i1 %238, label %239, label %258

239:                                              ; preds = %236
  %240 = load %struct.value*, %struct.value** %25, align 8
  %241 = call i32 @VALUE_TYPE(%struct.value* %240)
  %242 = call i64 @TYPE_CODE(i32 %241)
  %243 = load i64, i64* @TYPE_CODE_PTR, align 8
  %244 = icmp ne i64 %242, %243
  br i1 %244, label %245, label %255

245:                                              ; preds = %239
  %246 = load %struct.value**, %struct.value*** %17, align 8
  %247 = load %struct.value*, %struct.value** %246, align 8
  %248 = call i32 @VALUE_TYPE(%struct.value* %247)
  %249 = call i64 @TYPE_CODE(i32 %248)
  %250 = load i64, i64* @TYPE_CODE_PTR, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %252, label %255

252:                                              ; preds = %245
  %253 = load %struct.value*, %struct.value** %25, align 8
  %254 = call %struct.value* @value_addr(%struct.value* %253)
  store %struct.value* %254, %struct.value** %25, align 8
  br label %255

255:                                              ; preds = %252, %245, %239
  %256 = load %struct.value*, %struct.value** %25, align 8
  %257 = load %struct.value**, %struct.value*** %17, align 8
  store %struct.value* %256, %struct.value** %257, align 8
  br label %258

258:                                              ; preds = %255, %236
  %259 = load %struct.cleanup*, %struct.cleanup** %33, align 8
  %260 = icmp ne %struct.cleanup* %259, null
  br i1 %260, label %261, label %264

261:                                              ; preds = %258
  %262 = load %struct.cleanup*, %struct.cleanup** %33, align 8
  %263 = call i32 @do_cleanups(%struct.cleanup* %262)
  br label %264

264:                                              ; preds = %261, %258
  %265 = load i32, i32* %36, align 4
  switch i32 %265, label %268 [
    i32 129, label %266
    i32 128, label %267
  ]

266:                                              ; preds = %264
  store i32 100, i32* %11, align 4
  br label %269

267:                                              ; preds = %264
  store i32 10, i32* %11, align 4
  br label %269

268:                                              ; preds = %264
  store i32 0, i32* %11, align 4
  br label %269

269:                                              ; preds = %268, %267, %266, %117
  %270 = load i32, i32* %11, align 4
  ret i32 %270
}

declare dso_local i8* @TYPE_NAME(i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local i64 @TYPE_CODE(i32) #1

declare dso_local i32 @TYPE_TARGET_TYPE(i32) #1

declare dso_local %struct.fn_field* @value_find_oload_method_list(%struct.value**, i8*, i32, i32*, %struct.type**, i32*) #1

declare dso_local i32 @error(i8*, i8*, ...) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i32* @TYPE_DOMAIN_TYPE(i32) #1

declare dso_local i32 @find_oload_champ(%struct.type**, i32, i32, i32, %struct.fn_field*, %struct.symbol**, %struct.symbol***) #1

declare dso_local i8* @SYMBOL_CPLUS_DEMANGLED_NAME(%struct.symbol*) #1

declare dso_local i8* @cp_func_name(i8*) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i8*) #1

declare dso_local i32 @find_oload_champ_namespace(%struct.type**, i32, i8*, i8*, %struct.symbol***, %struct.symbol***) #1

declare dso_local i32 @classify_oload_match(%struct.symbol**, i32, i32) #1

declare dso_local i32 @oload_method_static(i32, %struct.fn_field*, i32) #1

declare dso_local i32 @warning(i8*, i8*, ...) #1

declare dso_local i64 @TYPE_FN_FIELD_VIRTUAL_P(%struct.fn_field*, i32) #1

declare dso_local %struct.value* @value_virtual_fn_field(%struct.value**, %struct.fn_field*, i32, %struct.type*, i32) #1

declare dso_local %struct.value* @value_fn_field(%struct.value**, %struct.fn_field*, i32, %struct.type*, i32) #1

declare dso_local %struct.value* @value_addr(%struct.value*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
