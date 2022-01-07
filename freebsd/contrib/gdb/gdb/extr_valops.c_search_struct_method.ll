; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_search_struct_method.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valops.c_search_struct_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.type = type { i32 }
%struct.fn_field = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"__\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"op\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@DMGL_ANSI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [61 x i8] c"cannot resolve overloaded method `%s': no arguments supplied\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Virtual base class offset not found in vtable\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"virtual baseclass botch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.value* (i8*, %struct.value**, %struct.value**, i32, i32*, %struct.type*)* @search_struct_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.value* @search_struct_method(i8* %0, %struct.value** %1, %struct.value** %2, i32 %3, i32* %4, %struct.type* %5) #0 {
  %7 = alloca %struct.value*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.value**, align 8
  %10 = alloca %struct.value**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.type*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.value*, align 8
  %16 = alloca i32, align 4
  %17 = alloca [64 x i8], align 16
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.fn_field*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.type*, align 8
  %24 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store %struct.value** %1, %struct.value*** %9, align 8
  store %struct.value** %2, %struct.value*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store %struct.type* %5, %struct.type** %13, align 8
  store i32 0, i32* %16, align 4
  %25 = load %struct.type*, %struct.type** %13, align 8
  %26 = call i32 @CHECK_TYPEDEF(%struct.type* %25)
  %27 = load %struct.type*, %struct.type** %13, align 8
  %28 = call i32 @TYPE_NFN_FIELDS(%struct.type* %27)
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %14, align 4
  br label %30

30:                                               ; preds = %173, %6
  %31 = load i32, i32* %14, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %176

33:                                               ; preds = %30
  %34 = load %struct.type*, %struct.type** %13, align 8
  %35 = load i32, i32* %14, align 4
  %36 = call i8* @TYPE_FN_FIELDLIST_NAME(%struct.type* %34, i32 %35)
  store i8* %36, i8** %18, align 8
  %37 = load i8*, i8** %18, align 8
  %38 = call i64 @strncmp(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %33
  %41 = load i8*, i8** %18, align 8
  %42 = call i64 @strncmp(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i8*, i8** %18, align 8
  %46 = call i64 @strncmp(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %44, %40, %33
  %49 = load i8*, i8** %18, align 8
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %51 = load i32, i32* @DMGL_ANSI, align 4
  %52 = call i64 @cplus_demangle_opname(i8* %49, i8* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  store i8* %55, i8** %18, align 8
  br label %64

56:                                               ; preds = %48
  %57 = load i8*, i8** %18, align 8
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %59 = call i64 @cplus_demangle_opname(i8* %57, i8* %58, i32 0)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  store i8* %62, i8** %18, align 8
  br label %63

63:                                               ; preds = %61, %56
  br label %64

64:                                               ; preds = %63, %54
  br label %65

65:                                               ; preds = %64, %44
  %66 = load i8*, i8** %18, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %172

68:                                               ; preds = %65
  %69 = load i8*, i8** %18, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = call i64 @strcmp_iw(i8* %69, i8* %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %172

73:                                               ; preds = %68
  %74 = load %struct.type*, %struct.type** %13, align 8
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @TYPE_FN_FIELDLIST_LENGTH(%struct.type* %74, i32 %75)
  %77 = sub nsw i32 %76, 1
  store i32 %77, i32* %19, align 4
  %78 = load %struct.type*, %struct.type** %13, align 8
  %79 = load i32, i32* %14, align 4
  %80 = call %struct.fn_field* @TYPE_FN_FIELDLIST1(%struct.type* %78, i32 %79)
  store %struct.fn_field* %80, %struct.fn_field** %20, align 8
  store i32 1, i32* %16, align 4
  %81 = load %struct.type*, %struct.type** %13, align 8
  %82 = load i32, i32* %14, align 4
  %83 = call i32 @check_stub_method_group(%struct.type* %81, i32 %82)
  %84 = load i32, i32* %19, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %73
  %87 = load %struct.value**, %struct.value*** %10, align 8
  %88 = icmp eq %struct.value** %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i8*, i8** %8, align 8
  %91 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i8* %90)
  br label %171

92:                                               ; preds = %86, %73
  %93 = load i32, i32* %19, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %110

95:                                               ; preds = %92
  %96 = load %struct.value**, %struct.value*** %10, align 8
  %97 = icmp eq %struct.value** %96, null
  br i1 %97, label %98, label %110

98:                                               ; preds = %95
  %99 = load %struct.value**, %struct.value*** %9, align 8
  %100 = load %struct.fn_field*, %struct.fn_field** %20, align 8
  %101 = load i32, i32* %19, align 4
  %102 = load %struct.type*, %struct.type** %13, align 8
  %103 = load i32, i32* %11, align 4
  %104 = call %struct.value* @value_fn_field(%struct.value** %99, %struct.fn_field* %100, i32 %101, %struct.type* %102, i32 %103)
  store %struct.value* %104, %struct.value** %15, align 8
  %105 = load %struct.value*, %struct.value** %15, align 8
  %106 = icmp ne %struct.value* %105, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %98
  %108 = load %struct.value*, %struct.value** %15, align 8
  store %struct.value* %108, %struct.value** %7, align 8
  br label %310

109:                                              ; preds = %98
  br label %170

110:                                              ; preds = %95, %92
  br label %111

111:                                              ; preds = %166, %110
  %112 = load i32, i32* %19, align 4
  %113 = icmp sge i32 %112, 0
  br i1 %113, label %114, label %169

114:                                              ; preds = %111
  %115 = load %struct.fn_field*, %struct.fn_field** %20, align 8
  %116 = load i32, i32* %19, align 4
  %117 = call i64 @TYPE_FN_FIELD_STATIC_P(%struct.fn_field* %115, i32 %116)
  %118 = load %struct.fn_field*, %struct.fn_field** %20, align 8
  %119 = load i32, i32* %19, align 4
  %120 = call i32 @TYPE_FN_FIELD_TYPE(%struct.fn_field* %118, i32 %119)
  %121 = call i32 @TYPE_VARARGS(i32 %120)
  %122 = load %struct.fn_field*, %struct.fn_field** %20, align 8
  %123 = load i32, i32* %19, align 4
  %124 = call i32 @TYPE_FN_FIELD_TYPE(%struct.fn_field* %122, i32 %123)
  %125 = call i32 @TYPE_NFIELDS(i32 %124)
  %126 = load %struct.fn_field*, %struct.fn_field** %20, align 8
  %127 = load i32, i32* %19, align 4
  %128 = call i32 @TYPE_FN_FIELD_ARGS(%struct.fn_field* %126, i32 %127)
  %129 = load %struct.value**, %struct.value*** %10, align 8
  %130 = call i32 @typecmp(i64 %117, i32 %121, i32 %125, i32 %128, %struct.value** %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %166, label %132

132:                                              ; preds = %114
  %133 = load %struct.fn_field*, %struct.fn_field** %20, align 8
  %134 = load i32, i32* %19, align 4
  %135 = call i64 @TYPE_FN_FIELD_VIRTUAL_P(%struct.fn_field* %133, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %132
  %138 = load %struct.value**, %struct.value*** %9, align 8
  %139 = load %struct.fn_field*, %struct.fn_field** %20, align 8
  %140 = load i32, i32* %19, align 4
  %141 = load %struct.type*, %struct.type** %13, align 8
  %142 = load i32, i32* %11, align 4
  %143 = call %struct.value* @value_virtual_fn_field(%struct.value** %138, %struct.fn_field* %139, i32 %140, %struct.type* %141, i32 %142)
  store %struct.value* %143, %struct.value** %7, align 8
  br label %310

144:                                              ; preds = %132
  %145 = load %struct.fn_field*, %struct.fn_field** %20, align 8
  %146 = load i32, i32* %19, align 4
  %147 = call i64 @TYPE_FN_FIELD_STATIC_P(%struct.fn_field* %145, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %144
  %150 = load i32*, i32** %12, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  %153 = load i32*, i32** %12, align 8
  store i32 1, i32* %153, align 4
  br label %154

154:                                              ; preds = %152, %149, %144
  %155 = load %struct.value**, %struct.value*** %9, align 8
  %156 = load %struct.fn_field*, %struct.fn_field** %20, align 8
  %157 = load i32, i32* %19, align 4
  %158 = load %struct.type*, %struct.type** %13, align 8
  %159 = load i32, i32* %11, align 4
  %160 = call %struct.value* @value_fn_field(%struct.value** %155, %struct.fn_field* %156, i32 %157, %struct.type* %158, i32 %159)
  store %struct.value* %160, %struct.value** %15, align 8
  %161 = load %struct.value*, %struct.value** %15, align 8
  %162 = icmp ne %struct.value* %161, null
  br i1 %162, label %163, label %165

163:                                              ; preds = %154
  %164 = load %struct.value*, %struct.value** %15, align 8
  store %struct.value* %164, %struct.value** %7, align 8
  br label %310

165:                                              ; preds = %154
  br label %166

166:                                              ; preds = %165, %114
  %167 = load i32, i32* %19, align 4
  %168 = add nsw i32 %167, -1
  store i32 %168, i32* %19, align 4
  br label %111

169:                                              ; preds = %111
  br label %170

170:                                              ; preds = %169, %109
  br label %171

171:                                              ; preds = %170, %89
  br label %172

172:                                              ; preds = %171, %68, %65
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %14, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* %14, align 4
  br label %30

176:                                              ; preds = %30
  %177 = load %struct.type*, %struct.type** %13, align 8
  %178 = call i32 @TYPE_N_BASECLASSES(%struct.type* %177)
  %179 = sub nsw i32 %178, 1
  store i32 %179, i32* %14, align 4
  br label %180

180:                                              ; preds = %302, %176
  %181 = load i32, i32* %14, align 4
  %182 = icmp sge i32 %181, 0
  br i1 %182, label %183, label %305

183:                                              ; preds = %180
  %184 = load %struct.type*, %struct.type** %13, align 8
  %185 = load i32, i32* %14, align 4
  %186 = call i64 @BASETYPE_VIA_VIRTUAL(%struct.type* %184, i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %275

188:                                              ; preds = %183
  %189 = load %struct.type*, %struct.type** %13, align 8
  %190 = call i64 @TYPE_HAS_VTABLE(%struct.type* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %212

192:                                              ; preds = %188
  %193 = load %struct.type*, %struct.type** %13, align 8
  %194 = load %struct.type*, %struct.type** %13, align 8
  %195 = load i32, i32* %14, align 4
  %196 = call %struct.type* @TYPE_BASECLASS(%struct.type* %194, i32 %195)
  %197 = load %struct.value**, %struct.value*** %9, align 8
  %198 = load %struct.value*, %struct.value** %197, align 8
  %199 = call i32 @VALUE_CONTENTS_ALL(%struct.value* %198)
  %200 = load i32, i32* %11, align 4
  %201 = sext i32 %200 to i64
  %202 = load %struct.value**, %struct.value*** %9, align 8
  %203 = load %struct.value*, %struct.value** %202, align 8
  %204 = call i64 @VALUE_EMBEDDED_OFFSET(%struct.value* %203)
  %205 = add nsw i64 %201, %204
  %206 = call i32 @find_rt_vbase_offset(%struct.type* %193, %struct.type* %196, i32 %199, i64 %205, i32* %21, i32* %22)
  %207 = load i32, i32* %22, align 4
  %208 = icmp sge i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %192
  %210 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  br label %211

211:                                              ; preds = %209, %192
  br label %274

212:                                              ; preds = %188
  %213 = load %struct.type*, %struct.type** %13, align 8
  %214 = load i32, i32* %14, align 4
  %215 = call %struct.type* @TYPE_BASECLASS(%struct.type* %213, i32 %214)
  %216 = call %struct.type* @check_typedef(%struct.type* %215)
  store %struct.type* %216, %struct.type** %23, align 8
  %217 = load i32, i32* %11, align 4
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %224, label %219

219:                                              ; preds = %212
  %220 = load i32, i32* %11, align 4
  %221 = load %struct.type*, %struct.type** %13, align 8
  %222 = call i32 @TYPE_LENGTH(%struct.type* %221)
  %223 = icmp sge i32 %220, %222
  br i1 %223, label %224, label %247

224:                                              ; preds = %219, %212
  %225 = load %struct.type*, %struct.type** %23, align 8
  %226 = call i32 @TYPE_LENGTH(%struct.type* %225)
  %227 = call i64 @alloca(i32 %226)
  %228 = inttoptr i64 %227 to i8*
  store i8* %228, i8** %24, align 8
  %229 = load %struct.value**, %struct.value*** %9, align 8
  %230 = load %struct.value*, %struct.value** %229, align 8
  %231 = call i64 @VALUE_ADDRESS(%struct.value* %230)
  %232 = load %struct.value**, %struct.value*** %9, align 8
  %233 = load %struct.value*, %struct.value** %232, align 8
  %234 = call i64 @VALUE_OFFSET(%struct.value* %233)
  %235 = add nsw i64 %231, %234
  %236 = load i32, i32* %11, align 4
  %237 = sext i32 %236 to i64
  %238 = add nsw i64 %235, %237
  %239 = load i8*, i8** %24, align 8
  %240 = load %struct.type*, %struct.type** %23, align 8
  %241 = call i32 @TYPE_LENGTH(%struct.type* %240)
  %242 = call i64 @target_read_memory(i64 %238, i8* %239, i32 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %224
  %245 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %246

246:                                              ; preds = %244, %224
  br label %254

247:                                              ; preds = %219
  %248 = load %struct.value**, %struct.value*** %9, align 8
  %249 = load %struct.value*, %struct.value** %248, align 8
  %250 = call i8* @VALUE_CONTENTS(%struct.value* %249)
  %251 = load i32, i32* %11, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8, i8* %250, i64 %252
  store i8* %253, i8** %24, align 8
  br label %254

254:                                              ; preds = %247, %246
  %255 = load %struct.type*, %struct.type** %13, align 8
  %256 = load i32, i32* %14, align 4
  %257 = load i8*, i8** %24, align 8
  %258 = load %struct.value**, %struct.value*** %9, align 8
  %259 = load %struct.value*, %struct.value** %258, align 8
  %260 = call i64 @VALUE_ADDRESS(%struct.value* %259)
  %261 = load %struct.value**, %struct.value*** %9, align 8
  %262 = load %struct.value*, %struct.value** %261, align 8
  %263 = call i64 @VALUE_OFFSET(%struct.value* %262)
  %264 = add nsw i64 %260, %263
  %265 = load i32, i32* %11, align 4
  %266 = sext i32 %265 to i64
  %267 = add nsw i64 %264, %266
  %268 = call i32 @baseclass_offset(%struct.type* %255, i32 %256, i8* %257, i64 %267)
  store i32 %268, i32* %21, align 4
  %269 = load i32, i32* %21, align 4
  %270 = icmp eq i32 %269, -1
  br i1 %270, label %271, label %273

271:                                              ; preds = %254
  %272 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %273

273:                                              ; preds = %271, %254
  br label %274

274:                                              ; preds = %273, %211
  br label %280

275:                                              ; preds = %183
  %276 = load %struct.type*, %struct.type** %13, align 8
  %277 = load i32, i32* %14, align 4
  %278 = call i32 @TYPE_BASECLASS_BITPOS(%struct.type* %276, i32 %277)
  %279 = sdiv i32 %278, 8
  store i32 %279, i32* %21, align 4
  br label %280

280:                                              ; preds = %275, %274
  %281 = load i8*, i8** %8, align 8
  %282 = load %struct.value**, %struct.value*** %9, align 8
  %283 = load %struct.value**, %struct.value*** %10, align 8
  %284 = load i32, i32* %21, align 4
  %285 = load i32, i32* %11, align 4
  %286 = add nsw i32 %284, %285
  %287 = load i32*, i32** %12, align 8
  %288 = load %struct.type*, %struct.type** %13, align 8
  %289 = load i32, i32* %14, align 4
  %290 = call %struct.type* @TYPE_BASECLASS(%struct.type* %288, i32 %289)
  %291 = call %struct.value* @search_struct_method(i8* %281, %struct.value** %282, %struct.value** %283, i32 %286, i32* %287, %struct.type* %290)
  store %struct.value* %291, %struct.value** %15, align 8
  %292 = load %struct.value*, %struct.value** %15, align 8
  %293 = icmp eq %struct.value* %292, inttoptr (i64 -1 to %struct.value*)
  br i1 %293, label %294, label %295

294:                                              ; preds = %280
  store i32 1, i32* %16, align 4
  br label %301

295:                                              ; preds = %280
  %296 = load %struct.value*, %struct.value** %15, align 8
  %297 = icmp ne %struct.value* %296, null
  br i1 %297, label %298, label %300

298:                                              ; preds = %295
  %299 = load %struct.value*, %struct.value** %15, align 8
  store %struct.value* %299, %struct.value** %7, align 8
  br label %310

300:                                              ; preds = %295
  br label %301

301:                                              ; preds = %300, %294
  br label %302

302:                                              ; preds = %301
  %303 = load i32, i32* %14, align 4
  %304 = add nsw i32 %303, -1
  store i32 %304, i32* %14, align 4
  br label %180

305:                                              ; preds = %180
  %306 = load i32, i32* %16, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %309

308:                                              ; preds = %305
  store %struct.value* inttoptr (i64 -1 to %struct.value*), %struct.value** %7, align 8
  br label %310

309:                                              ; preds = %305
  store %struct.value* null, %struct.value** %7, align 8
  br label %310

310:                                              ; preds = %309, %308, %298, %163, %137, %107
  %311 = load %struct.value*, %struct.value** %7, align 8
  ret %struct.value* %311
}

declare dso_local i32 @CHECK_TYPEDEF(%struct.type*) #1

declare dso_local i32 @TYPE_NFN_FIELDS(%struct.type*) #1

declare dso_local i8* @TYPE_FN_FIELDLIST_NAME(%struct.type*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @cplus_demangle_opname(i8*, i8*, i32) #1

declare dso_local i64 @strcmp_iw(i8*, i8*) #1

declare dso_local i32 @TYPE_FN_FIELDLIST_LENGTH(%struct.type*, i32) #1

declare dso_local %struct.fn_field* @TYPE_FN_FIELDLIST1(%struct.type*, i32) #1

declare dso_local i32 @check_stub_method_group(%struct.type*, i32) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local %struct.value* @value_fn_field(%struct.value**, %struct.fn_field*, i32, %struct.type*, i32) #1

declare dso_local i32 @typecmp(i64, i32, i32, i32, %struct.value**) #1

declare dso_local i64 @TYPE_FN_FIELD_STATIC_P(%struct.fn_field*, i32) #1

declare dso_local i32 @TYPE_VARARGS(i32) #1

declare dso_local i32 @TYPE_FN_FIELD_TYPE(%struct.fn_field*, i32) #1

declare dso_local i32 @TYPE_NFIELDS(i32) #1

declare dso_local i32 @TYPE_FN_FIELD_ARGS(%struct.fn_field*, i32) #1

declare dso_local i64 @TYPE_FN_FIELD_VIRTUAL_P(%struct.fn_field*, i32) #1

declare dso_local %struct.value* @value_virtual_fn_field(%struct.value**, %struct.fn_field*, i32, %struct.type*, i32) #1

declare dso_local i32 @TYPE_N_BASECLASSES(%struct.type*) #1

declare dso_local i64 @BASETYPE_VIA_VIRTUAL(%struct.type*, i32) #1

declare dso_local i64 @TYPE_HAS_VTABLE(%struct.type*) #1

declare dso_local i32 @find_rt_vbase_offset(%struct.type*, %struct.type*, i32, i64, i32*, i32*) #1

declare dso_local %struct.type* @TYPE_BASECLASS(%struct.type*, i32) #1

declare dso_local i32 @VALUE_CONTENTS_ALL(%struct.value*) #1

declare dso_local i64 @VALUE_EMBEDDED_OFFSET(%struct.value*) #1

declare dso_local %struct.type* @check_typedef(%struct.type*) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i64 @target_read_memory(i64, i8*, i32) #1

declare dso_local i64 @VALUE_ADDRESS(%struct.value*) #1

declare dso_local i64 @VALUE_OFFSET(%struct.value*) #1

declare dso_local i8* @VALUE_CONTENTS(%struct.value*) #1

declare dso_local i32 @baseclass_offset(%struct.type*, i32, i8*, i64) #1

declare dso_local i32 @TYPE_BASECLASS_BITPOS(%struct.type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
