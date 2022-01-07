; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_varobj_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_varobj.c_varobj_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varobj = type { i32, %struct.value*, i64, i32, i32, %struct.varobj_child*, %struct.TYPE_2__* }
%struct.value = type { i32 }
%struct.varobj_child = type { %struct.varobj*, %struct.varobj_child* }
%struct.TYPE_2__ = type { %struct.varobj* }
%struct.vstack = type { i32 }
%struct.frame_id = type { i32 }
%struct.frame_info = type { i32 }

@deprecated_selected_frame = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"varobj_update: assertion failed - vleft <> 0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @varobj_update(%struct.varobj** %0, %struct.varobj*** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.varobj**, align 8
  %5 = alloca %struct.varobj***, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.varobj*, align 8
  %12 = alloca %struct.varobj**, align 8
  %13 = alloca %struct.varobj**, align 8
  %14 = alloca %struct.value*, align 8
  %15 = alloca %struct.vstack*, align 8
  %16 = alloca %struct.vstack*, align 8
  %17 = alloca %struct.frame_id, align 4
  %18 = alloca %struct.frame_info*, align 8
  %19 = alloca %struct.frame_id, align 4
  %20 = alloca %struct.varobj_child*, align 8
  %21 = alloca %struct.varobj_child*, align 8
  store %struct.varobj** %0, %struct.varobj*** %4, align 8
  store %struct.varobj*** %1, %struct.varobj**** %5, align 8
  store i32 0, i32* %6, align 4
  store %struct.varobj** null, %struct.varobj*** %13, align 8
  store %struct.vstack* null, %struct.vstack** %15, align 8
  store %struct.vstack* null, %struct.vstack** %16, align 8
  %22 = load %struct.varobj***, %struct.varobj**** %5, align 8
  %23 = icmp eq %struct.varobj*** %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %296

25:                                               ; preds = %2
  %26 = load %struct.varobj**, %struct.varobj*** %4, align 8
  %27 = load %struct.varobj*, %struct.varobj** %26, align 8
  %28 = getelementptr inbounds %struct.varobj, %struct.varobj* %27, i32 0, i32 6
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.varobj*, %struct.varobj** %30, align 8
  %32 = load %struct.varobj**, %struct.varobj*** %4, align 8
  %33 = load %struct.varobj*, %struct.varobj** %32, align 8
  %34 = icmp ne %struct.varobj* %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %296

36:                                               ; preds = %25
  %37 = load i32, i32* @deprecated_selected_frame, align 4
  %38 = call i32 @get_frame_id(i32 %37)
  %39 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %19, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = bitcast %struct.frame_id* %17 to i8*
  %41 = bitcast %struct.frame_id* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 4, i1 false)
  store i32 1, i32* %7, align 4
  %42 = load %struct.varobj**, %struct.varobj*** %4, align 8
  %43 = call %struct.value* @value_of_root(%struct.varobj** %42, i32* %7)
  store %struct.value* %43, %struct.value** %14, align 8
  %44 = load %struct.value*, %struct.value** %14, align 8
  %45 = icmp eq %struct.value* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %36
  %47 = load %struct.varobj**, %struct.varobj*** %4, align 8
  %48 = load %struct.varobj*, %struct.varobj** %47, align 8
  %49 = getelementptr inbounds %struct.varobj, %struct.varobj* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  store i32 -1, i32* %3, align 4
  br label %296

50:                                               ; preds = %36
  %51 = call i32 @vpush(%struct.vstack** %16, %struct.varobj* null)
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load %struct.varobj**, %struct.varobj*** %4, align 8
  %56 = load %struct.varobj*, %struct.varobj** %55, align 8
  %57 = call i32 @vpush(%struct.vstack** %16, %struct.varobj* %56)
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %93

60:                                               ; preds = %50
  %61 = load %struct.varobj**, %struct.varobj*** %4, align 8
  %62 = load %struct.varobj*, %struct.varobj** %61, align 8
  %63 = call i64 @type_changeable(%struct.varobj* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %92

65:                                               ; preds = %60
  %66 = load %struct.varobj**, %struct.varobj*** %4, align 8
  %67 = load %struct.varobj*, %struct.varobj** %66, align 8
  %68 = getelementptr inbounds %struct.varobj, %struct.varobj* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %65
  %72 = load %struct.varobj**, %struct.varobj*** %4, align 8
  %73 = load %struct.varobj*, %struct.varobj** %72, align 8
  %74 = getelementptr inbounds %struct.varobj, %struct.varobj* %73, i32 0, i32 1
  %75 = load %struct.value*, %struct.value** %74, align 8
  %76 = load %struct.value*, %struct.value** %14, align 8
  %77 = call i32 @my_value_equal(%struct.value* %75, %struct.value* %76, i32* %10)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %92, label %79

79:                                               ; preds = %71, %65
  %80 = load %struct.varobj**, %struct.varobj*** %4, align 8
  %81 = load %struct.varobj*, %struct.varobj** %80, align 8
  %82 = call i32 @vpush(%struct.vstack** %16, %struct.varobj* %81)
  %83 = load %struct.varobj**, %struct.varobj*** %4, align 8
  %84 = load %struct.varobj*, %struct.varobj** %83, align 8
  %85 = getelementptr inbounds %struct.varobj, %struct.varobj* %84, i32 0, i32 2
  store i64 0, i64* %85, align 8
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.varobj**, %struct.varobj*** %4, align 8
  %90 = load %struct.varobj*, %struct.varobj** %89, align 8
  %91 = getelementptr inbounds %struct.varobj, %struct.varobj* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 8
  br label %92

92:                                               ; preds = %79, %71, %60
  br label %93

93:                                               ; preds = %92, %54
  %94 = load %struct.varobj**, %struct.varobj*** %4, align 8
  %95 = load %struct.varobj*, %struct.varobj** %94, align 8
  %96 = getelementptr inbounds %struct.varobj, %struct.varobj* %95, i32 0, i32 1
  %97 = load %struct.value*, %struct.value** %96, align 8
  %98 = call i32 @value_free(%struct.value* %97)
  %99 = load %struct.value*, %struct.value** %14, align 8
  %100 = load %struct.varobj**, %struct.varobj*** %4, align 8
  %101 = load %struct.varobj*, %struct.varobj** %100, align 8
  %102 = getelementptr inbounds %struct.varobj, %struct.varobj* %101, i32 0, i32 1
  store %struct.value* %99, %struct.value** %102, align 8
  %103 = call i32 @vpush(%struct.vstack** %15, %struct.varobj* null)
  %104 = load %struct.varobj**, %struct.varobj*** %4, align 8
  %105 = load %struct.varobj*, %struct.varobj** %104, align 8
  %106 = getelementptr inbounds %struct.varobj, %struct.varobj* %105, i32 0, i32 5
  %107 = load %struct.varobj_child*, %struct.varobj_child** %106, align 8
  %108 = icmp ne %struct.varobj_child* %107, null
  br i1 %108, label %109, label %127

109:                                              ; preds = %93
  %110 = load %struct.varobj**, %struct.varobj*** %4, align 8
  %111 = load %struct.varobj*, %struct.varobj** %110, align 8
  %112 = getelementptr inbounds %struct.varobj, %struct.varobj* %111, i32 0, i32 5
  %113 = load %struct.varobj_child*, %struct.varobj_child** %112, align 8
  store %struct.varobj_child* %113, %struct.varobj_child** %20, align 8
  br label %114

114:                                              ; preds = %122, %109
  %115 = load %struct.varobj_child*, %struct.varobj_child** %20, align 8
  %116 = icmp ne %struct.varobj_child* %115, null
  br i1 %116, label %117, label %126

117:                                              ; preds = %114
  %118 = load %struct.varobj_child*, %struct.varobj_child** %20, align 8
  %119 = getelementptr inbounds %struct.varobj_child, %struct.varobj_child* %118, i32 0, i32 0
  %120 = load %struct.varobj*, %struct.varobj** %119, align 8
  %121 = call i32 @vpush(%struct.vstack** %15, %struct.varobj* %120)
  br label %122

122:                                              ; preds = %117
  %123 = load %struct.varobj_child*, %struct.varobj_child** %20, align 8
  %124 = getelementptr inbounds %struct.varobj_child, %struct.varobj_child* %123, i32 0, i32 1
  %125 = load %struct.varobj_child*, %struct.varobj_child** %124, align 8
  store %struct.varobj_child* %125, %struct.varobj_child** %20, align 8
  br label %114

126:                                              ; preds = %114
  br label %127

127:                                              ; preds = %126, %93
  %128 = call %struct.varobj* @vpop(%struct.vstack** %15)
  store %struct.varobj* %128, %struct.varobj** %11, align 8
  br label %129

129:                                              ; preds = %197, %127
  %130 = load %struct.varobj*, %struct.varobj** %11, align 8
  %131 = icmp ne %struct.varobj* %130, null
  br i1 %131, label %132, label %202

132:                                              ; preds = %129
  %133 = load %struct.varobj*, %struct.varobj** %11, align 8
  %134 = getelementptr inbounds %struct.varobj, %struct.varobj* %133, i32 0, i32 5
  %135 = load %struct.varobj_child*, %struct.varobj_child** %134, align 8
  %136 = icmp ne %struct.varobj_child* %135, null
  br i1 %136, label %137, label %154

137:                                              ; preds = %132
  %138 = load %struct.varobj*, %struct.varobj** %11, align 8
  %139 = getelementptr inbounds %struct.varobj, %struct.varobj* %138, i32 0, i32 5
  %140 = load %struct.varobj_child*, %struct.varobj_child** %139, align 8
  store %struct.varobj_child* %140, %struct.varobj_child** %21, align 8
  br label %141

141:                                              ; preds = %149, %137
  %142 = load %struct.varobj_child*, %struct.varobj_child** %21, align 8
  %143 = icmp ne %struct.varobj_child* %142, null
  br i1 %143, label %144, label %153

144:                                              ; preds = %141
  %145 = load %struct.varobj_child*, %struct.varobj_child** %21, align 8
  %146 = getelementptr inbounds %struct.varobj_child, %struct.varobj_child* %145, i32 0, i32 0
  %147 = load %struct.varobj*, %struct.varobj** %146, align 8
  %148 = call i32 @vpush(%struct.vstack** %15, %struct.varobj* %147)
  br label %149

149:                                              ; preds = %144
  %150 = load %struct.varobj_child*, %struct.varobj_child** %21, align 8
  %151 = getelementptr inbounds %struct.varobj_child, %struct.varobj_child* %150, i32 0, i32 1
  %152 = load %struct.varobj_child*, %struct.varobj_child** %151, align 8
  store %struct.varobj_child* %152, %struct.varobj_child** %21, align 8
  br label %141

153:                                              ; preds = %141
  br label %154

154:                                              ; preds = %153, %132
  %155 = load %struct.varobj*, %struct.varobj** %11, align 8
  %156 = getelementptr inbounds %struct.varobj, %struct.varobj* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.varobj*, %struct.varobj** %11, align 8
  %159 = getelementptr inbounds %struct.varobj, %struct.varobj* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = call %struct.value* @value_of_child(i32 %157, i32 %160)
  store %struct.value* %161, %struct.value** %14, align 8
  %162 = load %struct.varobj*, %struct.varobj** %11, align 8
  %163 = call i64 @type_changeable(%struct.varobj* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %184

165:                                              ; preds = %154
  %166 = load %struct.varobj*, %struct.varobj** %11, align 8
  %167 = getelementptr inbounds %struct.varobj, %struct.varobj* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %177, label %170

170:                                              ; preds = %165
  %171 = load %struct.varobj*, %struct.varobj** %11, align 8
  %172 = getelementptr inbounds %struct.varobj, %struct.varobj* %171, i32 0, i32 1
  %173 = load %struct.value*, %struct.value** %172, align 8
  %174 = load %struct.value*, %struct.value** %14, align 8
  %175 = call i32 @my_value_equal(%struct.value* %173, %struct.value* %174, i32* %10)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %184, label %177

177:                                              ; preds = %170, %165
  %178 = load %struct.varobj*, %struct.varobj** %11, align 8
  %179 = call i32 @vpush(%struct.vstack** %16, %struct.varobj* %178)
  %180 = load %struct.varobj*, %struct.varobj** %11, align 8
  %181 = getelementptr inbounds %struct.varobj, %struct.varobj* %180, i32 0, i32 2
  store i64 0, i64* %181, align 8
  %182 = load i32, i32* %6, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %6, align 4
  br label %184

184:                                              ; preds = %177, %170, %154
  %185 = load i32, i32* %10, align 4
  %186 = load %struct.varobj*, %struct.varobj** %11, align 8
  %187 = getelementptr inbounds %struct.varobj, %struct.varobj* %186, i32 0, i32 0
  store i32 %185, i32* %187, align 8
  %188 = load %struct.varobj*, %struct.varobj** %11, align 8
  %189 = getelementptr inbounds %struct.varobj, %struct.varobj* %188, i32 0, i32 1
  %190 = load %struct.value*, %struct.value** %189, align 8
  %191 = icmp ne %struct.value* %190, null
  br i1 %191, label %192, label %197

192:                                              ; preds = %184
  %193 = load %struct.varobj*, %struct.varobj** %11, align 8
  %194 = getelementptr inbounds %struct.varobj, %struct.varobj* %193, i32 0, i32 1
  %195 = load %struct.value*, %struct.value** %194, align 8
  %196 = call i32 @value_free(%struct.value* %195)
  br label %197

197:                                              ; preds = %192, %184
  %198 = load %struct.value*, %struct.value** %14, align 8
  %199 = load %struct.varobj*, %struct.varobj** %11, align 8
  %200 = getelementptr inbounds %struct.varobj, %struct.varobj* %199, i32 0, i32 1
  store %struct.value* %198, %struct.value** %200, align 8
  %201 = call %struct.varobj* @vpop(%struct.vstack** %15)
  store %struct.varobj* %201, %struct.varobj** %11, align 8
  br label %129

202:                                              ; preds = %129
  %203 = load i32, i32* %6, align 4
  %204 = add nsw i32 %203, 1
  %205 = sext i32 %204 to i64
  %206 = mul i64 %205, 8
  %207 = trunc i64 %206 to i32
  %208 = call %struct.varobj** @xmalloc(i32 %207)
  %209 = load %struct.varobj***, %struct.varobj**** %5, align 8
  store %struct.varobj** %208, %struct.varobj*** %209, align 8
  %210 = load i32, i32* %6, align 4
  %211 = icmp sgt i32 %210, 1
  br i1 %211, label %212, label %220

212:                                              ; preds = %202
  %213 = load i32, i32* %6, align 4
  %214 = add nsw i32 %213, 1
  %215 = sext i32 %214 to i64
  %216 = mul i64 %215, 8
  %217 = trunc i64 %216 to i32
  %218 = call %struct.varobj** @xmalloc(i32 %217)
  store %struct.varobj** %218, %struct.varobj*** %13, align 8
  %219 = load %struct.varobj**, %struct.varobj*** %13, align 8
  store %struct.varobj** %219, %struct.varobj*** %12, align 8
  br label %223

220:                                              ; preds = %202
  %221 = load %struct.varobj***, %struct.varobj**** %5, align 8
  %222 = load %struct.varobj**, %struct.varobj*** %221, align 8
  store %struct.varobj** %222, %struct.varobj*** %12, align 8
  br label %223

223:                                              ; preds = %220, %212
  %224 = load i32, i32* %6, align 4
  store i32 %224, i32* %9, align 4
  %225 = call %struct.varobj* @vpop(%struct.vstack** %16)
  %226 = load %struct.varobj**, %struct.varobj*** %12, align 8
  store %struct.varobj* %225, %struct.varobj** %226, align 8
  br label %227

227:                                              ; preds = %236, %223
  %228 = load %struct.varobj**, %struct.varobj*** %12, align 8
  %229 = load %struct.varobj*, %struct.varobj** %228, align 8
  %230 = icmp ne %struct.varobj* %229, null
  br i1 %230, label %231, label %234

231:                                              ; preds = %227
  %232 = load i32, i32* %9, align 4
  %233 = icmp sgt i32 %232, 0
  br label %234

234:                                              ; preds = %231, %227
  %235 = phi i1 [ false, %227 ], [ %233, %231 ]
  br i1 %235, label %236, label %243

236:                                              ; preds = %234
  %237 = load i32, i32* %9, align 4
  %238 = add nsw i32 %237, -1
  store i32 %238, i32* %9, align 4
  %239 = load %struct.varobj**, %struct.varobj*** %12, align 8
  %240 = getelementptr inbounds %struct.varobj*, %struct.varobj** %239, i32 1
  store %struct.varobj** %240, %struct.varobj*** %12, align 8
  %241 = call %struct.varobj* @vpop(%struct.vstack** %16)
  %242 = load %struct.varobj**, %struct.varobj*** %12, align 8
  store %struct.varobj* %241, %struct.varobj** %242, align 8
  br label %227

243:                                              ; preds = %234
  %244 = load i32, i32* %9, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %243
  %247 = call i32 @warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %248

248:                                              ; preds = %246, %243
  %249 = load i32, i32* %6, align 4
  %250 = icmp sgt i32 %249, 1
  br i1 %250, label %251, label %281

251:                                              ; preds = %248
  store i32 0, i32* %8, align 4
  br label %252

252:                                              ; preds = %272, %251
  %253 = load i32, i32* %8, align 4
  %254 = load i32, i32* %6, align 4
  %255 = icmp slt i32 %253, %254
  br i1 %255, label %256, label %275

256:                                              ; preds = %252
  %257 = load %struct.varobj**, %struct.varobj*** %13, align 8
  %258 = load i32, i32* %6, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.varobj*, %struct.varobj** %257, i64 %259
  %261 = getelementptr inbounds %struct.varobj*, %struct.varobj** %260, i64 -1
  %262 = load i32, i32* %8, align 4
  %263 = sext i32 %262 to i64
  %264 = sub i64 0, %263
  %265 = getelementptr inbounds %struct.varobj*, %struct.varobj** %261, i64 %264
  %266 = load %struct.varobj*, %struct.varobj** %265, align 8
  %267 = load %struct.varobj***, %struct.varobj**** %5, align 8
  %268 = load %struct.varobj**, %struct.varobj*** %267, align 8
  %269 = load i32, i32* %8, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.varobj*, %struct.varobj** %268, i64 %270
  store %struct.varobj* %266, %struct.varobj** %271, align 8
  br label %272

272:                                              ; preds = %256
  %273 = load i32, i32* %8, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %8, align 4
  br label %252

275:                                              ; preds = %252
  %276 = load %struct.varobj***, %struct.varobj**** %5, align 8
  %277 = load %struct.varobj**, %struct.varobj*** %276, align 8
  %278 = load i32, i32* %6, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.varobj*, %struct.varobj** %277, i64 %279
  store %struct.varobj* null, %struct.varobj** %280, align 8
  br label %281

281:                                              ; preds = %275, %248
  %282 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %17, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = call %struct.frame_info* @frame_find_by_id(i32 %283)
  store %struct.frame_info* %284, %struct.frame_info** %18, align 8
  %285 = load %struct.frame_info*, %struct.frame_info** %18, align 8
  %286 = icmp ne %struct.frame_info* %285, null
  br i1 %286, label %287, label %290

287:                                              ; preds = %281
  %288 = load %struct.frame_info*, %struct.frame_info** %18, align 8
  %289 = call i32 @select_frame(%struct.frame_info* %288)
  br label %290

290:                                              ; preds = %287, %281
  %291 = load i32, i32* %7, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %294

293:                                              ; preds = %290
  store i32 -2, i32* %3, align 4
  br label %296

294:                                              ; preds = %290
  %295 = load i32, i32* %6, align 4
  store i32 %295, i32* %3, align 4
  br label %296

296:                                              ; preds = %294, %293, %46, %35, %24
  %297 = load i32, i32* %3, align 4
  ret i32 %297
}

declare dso_local i32 @get_frame_id(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.value* @value_of_root(%struct.varobj**, i32*) #1

declare dso_local i32 @vpush(%struct.vstack**, %struct.varobj*) #1

declare dso_local i64 @type_changeable(%struct.varobj*) #1

declare dso_local i32 @my_value_equal(%struct.value*, %struct.value*, i32*) #1

declare dso_local i32 @value_free(%struct.value*) #1

declare dso_local %struct.varobj* @vpop(%struct.vstack**) #1

declare dso_local %struct.value* @value_of_child(i32, i32) #1

declare dso_local %struct.varobj** @xmalloc(i32) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local %struct.frame_info* @frame_find_by_id(i32) #1

declare dso_local i32 @select_frame(%struct.frame_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
