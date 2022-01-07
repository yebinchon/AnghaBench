; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_value_struct_elt_for_reference.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_value_struct_elt_for_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.type = type { i32 }
%struct.fn_field = type { i32 }
%struct.symbol = type { i32 }

@TYPE_CODE_STRUCT = common dso_local global i64 0, align 8
@TYPE_CODE_UNION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [69 x i8] c"Internal error: non-aggregate type to value_struct_elt_for_reference\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"static field %s has been optimized out\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"pointers to bitfield members not allowed\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"member pointers to destructors not implemented yet\00", align 1
@TYPE_CODE_PTR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"__\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"op\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@DMGL_ANSI = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [51 x i8] c"non-unique member `%s' requires type instantiation\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"no member function matches that type instantiation\00", align 1
@VAR_DOMAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.value* (%struct.type*, i32, %struct.type*, i8*, %struct.type*, i32)* @value_struct_elt_for_reference to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.value* @value_struct_elt_for_reference(%struct.type* %0, i32 %1, %struct.type* %2, i8* %3, %struct.type* %4, i32 %5) #0 {
  %7 = alloca %struct.value*, align 8
  %8 = alloca %struct.type*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.type*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.type*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.type*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.value*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca [64 x i8], align 16
  %20 = alloca i32, align 4
  %21 = alloca %struct.fn_field*, align 8
  %22 = alloca %struct.symbol*, align 8
  %23 = alloca %struct.value*, align 8
  %24 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.type* %2, %struct.type** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.type* %4, %struct.type** %12, align 8
  store i32 %5, i32* %13, align 4
  %25 = load %struct.type*, %struct.type** %10, align 8
  store %struct.type* %25, %struct.type** %14, align 8
  %26 = load %struct.type*, %struct.type** %14, align 8
  %27 = call i64 @TYPE_CODE(%struct.type* %26)
  %28 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %6
  %31 = load %struct.type*, %struct.type** %14, align 8
  %32 = call i64 @TYPE_CODE(%struct.type* %31)
  %33 = load i64, i64* @TYPE_CODE_UNION, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %30, %6
  %38 = load %struct.type*, %struct.type** %14, align 8
  %39 = call i32 @TYPE_NFIELDS(%struct.type* %38)
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* %15, align 4
  br label %41

41:                                               ; preds = %97, %37
  %42 = load i32, i32* %15, align 4
  %43 = load %struct.type*, %struct.type** %14, align 8
  %44 = call i32 @TYPE_N_BASECLASSES(%struct.type* %43)
  %45 = icmp sge i32 %42, %44
  br i1 %45, label %46, label %100

46:                                               ; preds = %41
  %47 = load %struct.type*, %struct.type** %14, align 8
  %48 = load i32, i32* %15, align 4
  %49 = call i8* @TYPE_FIELD_NAME(%struct.type* %47, i32 %48)
  store i8* %49, i8** %17, align 8
  %50 = load i8*, i8** %17, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %96

52:                                               ; preds = %46
  %53 = load i8*, i8** %17, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = call i64 @strcmp(i8* %53, i8* %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %96

57:                                               ; preds = %52
  %58 = load %struct.type*, %struct.type** %14, align 8
  %59 = load i32, i32* %15, align 4
  %60 = call i64 @TYPE_FIELD_STATIC(%struct.type* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %57
  %63 = load %struct.type*, %struct.type** %14, align 8
  %64 = load i32, i32* %15, align 4
  %65 = call %struct.value* @value_static_field(%struct.type* %63, i32 %64)
  store %struct.value* %65, %struct.value** %16, align 8
  %66 = load %struct.value*, %struct.value** %16, align 8
  %67 = icmp eq %struct.value* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i8*, i8** %11, align 8
  %70 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %69)
  br label %71

71:                                               ; preds = %68, %62
  %72 = load %struct.value*, %struct.value** %16, align 8
  store %struct.value* %72, %struct.value** %7, align 8
  br label %287

73:                                               ; preds = %57
  %74 = load %struct.type*, %struct.type** %14, align 8
  %75 = load i32, i32* %15, align 4
  %76 = call i64 @TYPE_FIELD_PACKED(%struct.type* %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %73
  %81 = load %struct.type*, %struct.type** %14, align 8
  %82 = load i32, i32* %15, align 4
  %83 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %81, i32 %82)
  %84 = load %struct.type*, %struct.type** %8, align 8
  %85 = call i32 @lookup_member_type(%struct.type* %83, %struct.type* %84)
  %86 = call i32 @lookup_reference_type(i32 %85)
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = load %struct.type*, %struct.type** %14, align 8
  %90 = load i32, i32* %15, align 4
  %91 = call i32 @TYPE_FIELD_BITPOS(%struct.type* %89, i32 %90)
  %92 = ashr i32 %91, 3
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %88, %93
  %95 = call %struct.value* @value_from_longest(i32 %86, i64 %94)
  store %struct.value* %95, %struct.value** %7, align 8
  br label %287

96:                                               ; preds = %52, %46
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %15, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %15, align 4
  br label %41

100:                                              ; preds = %41
  %101 = load i8*, i8** %11, align 8
  %102 = load %struct.type*, %struct.type** %14, align 8
  %103 = call i64 @destructor_name_p(i8* %101, %struct.type* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %100
  br label %108

108:                                              ; preds = %118, %107
  %109 = load %struct.type*, %struct.type** %12, align 8
  %110 = icmp ne %struct.type* %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load %struct.type*, %struct.type** %12, align 8
  %113 = call i64 @TYPE_CODE(%struct.type* %112)
  %114 = load i64, i64* @TYPE_CODE_PTR, align 8
  %115 = icmp eq i64 %113, %114
  br label %116

116:                                              ; preds = %111, %108
  %117 = phi i1 [ false, %108 ], [ %115, %111 ]
  br i1 %117, label %118, label %121

118:                                              ; preds = %116
  %119 = load %struct.type*, %struct.type** %12, align 8
  %120 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %119)
  store %struct.type* %120, %struct.type** %12, align 8
  br label %108

121:                                              ; preds = %116
  %122 = load %struct.type*, %struct.type** %14, align 8
  %123 = call i32 @TYPE_NFN_FIELDS(%struct.type* %122)
  %124 = sub nsw i32 %123, 1
  store i32 %124, i32* %15, align 4
  br label %125

125:                                              ; preds = %241, %121
  %126 = load i32, i32* %15, align 4
  %127 = icmp sge i32 %126, 0
  br i1 %127, label %128, label %244

128:                                              ; preds = %125
  %129 = load %struct.type*, %struct.type** %14, align 8
  %130 = load i32, i32* %15, align 4
  %131 = call i8* @TYPE_FN_FIELDLIST_NAME(%struct.type* %129, i32 %130)
  store i8* %131, i8** %18, align 8
  %132 = load i8*, i8** %18, align 8
  %133 = call i64 @strncmp(i8* %132, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 2)
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %143, label %135

135:                                              ; preds = %128
  %136 = load i8*, i8** %18, align 8
  %137 = call i64 @strncmp(i8* %136, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 2)
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %135
  %140 = load i8*, i8** %18, align 8
  %141 = call i64 @strncmp(i8* %140, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %160

143:                                              ; preds = %139, %135, %128
  %144 = load i8*, i8** %18, align 8
  %145 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  %146 = load i32, i32* @DMGL_ANSI, align 4
  %147 = call i64 @cplus_demangle_opname(i8* %144, i8* %145, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %143
  %150 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  store i8* %150, i8** %18, align 8
  br label %159

151:                                              ; preds = %143
  %152 = load i8*, i8** %18, align 8
  %153 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  %154 = call i64 @cplus_demangle_opname(i8* %152, i8* %153, i32 0)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %151
  %157 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  store i8* %157, i8** %18, align 8
  br label %158

158:                                              ; preds = %156, %151
  br label %159

159:                                              ; preds = %158, %149
  br label %160

160:                                              ; preds = %159, %139
  %161 = load i8*, i8** %18, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %163, label %240

163:                                              ; preds = %160
  %164 = load i8*, i8** %18, align 8
  %165 = load i8*, i8** %11, align 8
  %166 = call i64 @strcmp(i8* %164, i8* %165)
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %240

168:                                              ; preds = %163
  %169 = load %struct.type*, %struct.type** %14, align 8
  %170 = load i32, i32* %15, align 4
  %171 = call i32 @TYPE_FN_FIELDLIST_LENGTH(%struct.type* %169, i32 %170)
  store i32 %171, i32* %20, align 4
  %172 = load %struct.type*, %struct.type** %14, align 8
  %173 = load i32, i32* %15, align 4
  %174 = call %struct.fn_field* @TYPE_FN_FIELDLIST1(%struct.type* %172, i32 %173)
  store %struct.fn_field* %174, %struct.fn_field** %21, align 8
  %175 = load %struct.type*, %struct.type** %14, align 8
  %176 = load i32, i32* %15, align 4
  %177 = call i32 @check_stub_method_group(%struct.type* %175, i32 %176)
  %178 = load %struct.type*, %struct.type** %12, align 8
  %179 = icmp eq %struct.type* %178, null
  br i1 %179, label %180, label %186

180:                                              ; preds = %168
  %181 = load i32, i32* %20, align 4
  %182 = icmp sgt i32 %181, 1
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load i8*, i8** %11, align 8
  %185 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i8* %184)
  br label %186

186:                                              ; preds = %183, %180, %168
  %187 = load %struct.type*, %struct.type** %12, align 8
  %188 = icmp ne %struct.type* %187, null
  br i1 %188, label %189, label %208

189:                                              ; preds = %186
  br label %190

190:                                              ; preds = %201, %189
  %191 = load i32, i32* %20, align 4
  %192 = add nsw i32 %191, -1
  store i32 %192, i32* %20, align 4
  %193 = icmp ne i32 %191, 0
  br i1 %193, label %194, label %202

194:                                              ; preds = %190
  %195 = load %struct.fn_field*, %struct.fn_field** %21, align 8
  %196 = load i32, i32* %20, align 4
  %197 = call %struct.type* @TYPE_FN_FIELD_TYPE(%struct.fn_field* %195, i32 %196)
  %198 = load %struct.type*, %struct.type** %12, align 8
  %199 = icmp eq %struct.type* %197, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %194
  br label %202

201:                                              ; preds = %194
  br label %190

202:                                              ; preds = %200, %190
  %203 = load i32, i32* %20, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %202
  %206 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0))
  br label %207

207:                                              ; preds = %205, %202
  br label %209

208:                                              ; preds = %186
  store i32 0, i32* %20, align 4
  br label %209

209:                                              ; preds = %208, %207
  %210 = load %struct.fn_field*, %struct.fn_field** %21, align 8
  %211 = load i32, i32* %20, align 4
  %212 = call i64 @TYPE_FN_FIELD_VIRTUAL_P(%struct.fn_field* %210, i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %226

214:                                              ; preds = %209
  %215 = load %struct.fn_field*, %struct.fn_field** %21, align 8
  %216 = load i32, i32* %20, align 4
  %217 = call %struct.type* @TYPE_FN_FIELD_TYPE(%struct.fn_field* %215, i32 %216)
  %218 = load %struct.type*, %struct.type** %8, align 8
  %219 = call i32 @lookup_member_type(%struct.type* %217, %struct.type* %218)
  %220 = call i32 @lookup_reference_type(i32 %219)
  %221 = load %struct.fn_field*, %struct.fn_field** %21, align 8
  %222 = load i32, i32* %20, align 4
  %223 = call i32 @TYPE_FN_FIELD_VOFFSET(%struct.fn_field* %221, i32 %222)
  %224 = call i64 @METHOD_PTR_FROM_VOFFSET(i32 %223)
  %225 = call %struct.value* @value_from_longest(i32 %220, i64 %224)
  store %struct.value* %225, %struct.value** %7, align 8
  br label %287

226:                                              ; preds = %209
  %227 = load %struct.fn_field*, %struct.fn_field** %21, align 8
  %228 = load i32, i32* %20, align 4
  %229 = call i32 @TYPE_FN_FIELD_PHYSNAME(%struct.fn_field* %227, i32 %228)
  %230 = load i32, i32* @VAR_DOMAIN, align 4
  %231 = call %struct.symbol* @lookup_symbol(i32 %229, i32 0, i32 %230, i32 0, i32* null)
  store %struct.symbol* %231, %struct.symbol** %22, align 8
  %232 = load %struct.symbol*, %struct.symbol** %22, align 8
  %233 = icmp eq %struct.symbol* %232, null
  br i1 %233, label %234, label %235

234:                                              ; preds = %226
  store %struct.value* null, %struct.value** %16, align 8
  br label %238

235:                                              ; preds = %226
  %236 = load %struct.symbol*, %struct.symbol** %22, align 8
  %237 = call %struct.value* @read_var_value(%struct.symbol* %236, i32 0)
  store %struct.value* %237, %struct.value** %16, align 8
  br label %238

238:                                              ; preds = %235, %234
  %239 = load %struct.value*, %struct.value** %16, align 8
  store %struct.value* %239, %struct.value** %7, align 8
  br label %287

240:                                              ; preds = %163, %160
  br label %241

241:                                              ; preds = %240
  %242 = load i32, i32* %15, align 4
  %243 = add nsw i32 %242, -1
  store i32 %243, i32* %15, align 4
  br label %125

244:                                              ; preds = %125
  %245 = load %struct.type*, %struct.type** %14, align 8
  %246 = call i32 @TYPE_N_BASECLASSES(%struct.type* %245)
  %247 = sub nsw i32 %246, 1
  store i32 %247, i32* %15, align 4
  br label %248

248:                                              ; preds = %279, %244
  %249 = load i32, i32* %15, align 4
  %250 = icmp sge i32 %249, 0
  br i1 %250, label %251, label %282

251:                                              ; preds = %248
  %252 = load %struct.type*, %struct.type** %14, align 8
  %253 = load i32, i32* %15, align 4
  %254 = call i64 @BASETYPE_VIA_VIRTUAL(%struct.type* %252, i32 %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %251
  store i32 0, i32* %24, align 4
  br label %262

257:                                              ; preds = %251
  %258 = load %struct.type*, %struct.type** %14, align 8
  %259 = load i32, i32* %15, align 4
  %260 = call i32 @TYPE_BASECLASS_BITPOS(%struct.type* %258, i32 %259)
  %261 = sdiv i32 %260, 8
  store i32 %261, i32* %24, align 4
  br label %262

262:                                              ; preds = %257, %256
  %263 = load %struct.type*, %struct.type** %8, align 8
  %264 = load i32, i32* %9, align 4
  %265 = load i32, i32* %24, align 4
  %266 = add nsw i32 %264, %265
  %267 = load %struct.type*, %struct.type** %14, align 8
  %268 = load i32, i32* %15, align 4
  %269 = call %struct.type* @TYPE_BASECLASS(%struct.type* %267, i32 %268)
  %270 = load i8*, i8** %11, align 8
  %271 = load %struct.type*, %struct.type** %12, align 8
  %272 = load i32, i32* %13, align 4
  %273 = call %struct.value* @value_struct_elt_for_reference(%struct.type* %263, i32 %266, %struct.type* %269, i8* %270, %struct.type* %271, i32 %272)
  store %struct.value* %273, %struct.value** %23, align 8
  %274 = load %struct.value*, %struct.value** %23, align 8
  %275 = icmp ne %struct.value* %274, null
  br i1 %275, label %276, label %278

276:                                              ; preds = %262
  %277 = load %struct.value*, %struct.value** %23, align 8
  store %struct.value* %277, %struct.value** %7, align 8
  br label %287

278:                                              ; preds = %262
  br label %279

279:                                              ; preds = %278
  %280 = load i32, i32* %15, align 4
  %281 = add nsw i32 %280, -1
  store i32 %281, i32* %15, align 4
  br label %248

282:                                              ; preds = %248
  %283 = load %struct.type*, %struct.type** %10, align 8
  %284 = load i8*, i8** %11, align 8
  %285 = load i32, i32* %13, align 4
  %286 = call %struct.value* @value_maybe_namespace_elt(%struct.type* %283, i8* %284, i32 %285)
  store %struct.value* %286, %struct.value** %7, align 8
  br label %287

287:                                              ; preds = %282, %276, %238, %214, %80, %71
  %288 = load %struct.value*, %struct.value** %7, align 8
  ret %struct.value* %288
}

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local i32 @TYPE_N_BASECLASSES(%struct.type*) #1

declare dso_local i8* @TYPE_FIELD_NAME(%struct.type*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @TYPE_FIELD_STATIC(%struct.type*, i32) #1

declare dso_local %struct.value* @value_static_field(%struct.type*, i32) #1

declare dso_local i64 @TYPE_FIELD_PACKED(%struct.type*, i32) #1

declare dso_local %struct.value* @value_from_longest(i32, i64) #1

declare dso_local i32 @lookup_reference_type(i32) #1

declare dso_local i32 @lookup_member_type(%struct.type*, %struct.type*) #1

declare dso_local %struct.type* @TYPE_FIELD_TYPE(%struct.type*, i32) #1

declare dso_local i32 @TYPE_FIELD_BITPOS(%struct.type*, i32) #1

declare dso_local i64 @destructor_name_p(i8*, %struct.type*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i32 @TYPE_NFN_FIELDS(%struct.type*) #1

declare dso_local i8* @TYPE_FN_FIELDLIST_NAME(%struct.type*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @cplus_demangle_opname(i8*, i8*, i32) #1

declare dso_local i32 @TYPE_FN_FIELDLIST_LENGTH(%struct.type*, i32) #1

declare dso_local %struct.fn_field* @TYPE_FN_FIELDLIST1(%struct.type*, i32) #1

declare dso_local i32 @check_stub_method_group(%struct.type*, i32) #1

declare dso_local %struct.type* @TYPE_FN_FIELD_TYPE(%struct.fn_field*, i32) #1

declare dso_local i64 @TYPE_FN_FIELD_VIRTUAL_P(%struct.fn_field*, i32) #1

declare dso_local i64 @METHOD_PTR_FROM_VOFFSET(i32) #1

declare dso_local i32 @TYPE_FN_FIELD_VOFFSET(%struct.fn_field*, i32) #1

declare dso_local %struct.symbol* @lookup_symbol(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @TYPE_FN_FIELD_PHYSNAME(%struct.fn_field*, i32) #1

declare dso_local %struct.value* @read_var_value(%struct.symbol*, i32) #1

declare dso_local i64 @BASETYPE_VIA_VIRTUAL(%struct.type*, i32) #1

declare dso_local i32 @TYPE_BASECLASS_BITPOS(%struct.type*, i32) #1

declare dso_local %struct.type* @TYPE_BASECLASS(%struct.type*, i32) #1

declare dso_local %struct.value* @value_maybe_namespace_elt(%struct.type*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
