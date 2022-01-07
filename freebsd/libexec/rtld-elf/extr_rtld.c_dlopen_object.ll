; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c_dlopen_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c_dlopen_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, i32, i64, i32 }

@RTLD_LO_EARLY = common dso_local global i32 0, align 4
@rtld_bind_lock = common dso_local global i32 0, align 4
@RT_ADD = common dso_local global i32 0, align 4
@obj_list = common dso_local global i32 0, align 4
@obj_entry_q = common dso_local global i32 0, align 4
@obj_main = common dso_local global %struct.TYPE_23__* null, align 8
@RTLD_GLOBAL = common dso_local global i32 0, align 4
@list_global = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"%s: No space available for static Thread Local Storage\00", align 1
@RTLD_LO_DLOPEN = common dso_local global i32 0, align 4
@ld_tracing = common dso_local global i64 0, align 8
@RTLD_MODEMASK = common dso_local global i32 0, align 4
@RTLD_NOW = common dso_local global i32 0, align 4
@obj_rtld = common dso_local global i32 0, align 4
@SYMLOOK_EARLY = common dso_local global i32 0, align 4
@RTLD_LO_TRACE = common dso_local global i32 0, align 4
@RTLD_LO_NODELETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"obj %s nodelete\00", align 1
@UTRACE_DLOPEN_STOP = common dso_local global i32 0, align 4
@RT_CONSISTENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_23__* (i8*, i32, %struct.TYPE_23__*, i32, i32, i32*)* @dlopen_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_23__* @dlopen_object(i8* %0, i32 %1, %struct.TYPE_23__* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca %struct.TYPE_23__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %19 = call i32 @objlist_init(i32* %16)
  %20 = load i32*, i32** %13, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %6
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @RTLD_LO_EARLY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @rtld_bind_lock, align 4
  %29 = call i32 @wlock_acquire(i32 %28, i32* %17)
  store i32* %17, i32** %13, align 8
  br label %30

30:                                               ; preds = %27, %22, %6
  %31 = load i32, i32* @RT_ADD, align 4
  %32 = call i32 @GDB_STATE(i32 %31, i32* null)
  %33 = load i32, i32* @obj_entry_q, align 4
  %34 = call i32 @TAILQ_LAST(i32* @obj_list, i32 %33)
  %35 = call %struct.TYPE_23__* @globallist_curr(i32 %34)
  store %struct.TYPE_23__* %35, %struct.TYPE_23__** %14, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %15, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %30
  %39 = load i32, i32* %9, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** @obj_main, align 8
  store %struct.TYPE_23__* %42, %struct.TYPE_23__** %15, align 8
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  br label %53

47:                                               ; preds = %38, %30
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call %struct.TYPE_23__* @load_object(i8* %48, i32 %49, %struct.TYPE_23__* %50, i32 %51)
  store %struct.TYPE_23__* %52, %struct.TYPE_23__** %15, align 8
  br label %53

53:                                               ; preds = %47, %41
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %55 = icmp ne %struct.TYPE_23__* %54, null
  br i1 %55, label %56, label %216

56:                                               ; preds = %53
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @RTLD_GLOBAL, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %56
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %67 = call i32* @objlist_find(i32* @list_global, %struct.TYPE_23__* %66)
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %71 = call i32 @objlist_push_tail(i32* @list_global, %struct.TYPE_23__* %70)
  br label %72

72:                                               ; preds = %69, %65, %56
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %74 = call %struct.TYPE_23__* @globallist_next(%struct.TYPE_23__* %73)
  %75 = icmp ne %struct.TYPE_23__* %74, null
  br i1 %75, label %76, label %175

76:                                               ; preds = %72
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %78 = call %struct.TYPE_23__* @globallist_next(%struct.TYPE_23__* %77)
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %80 = icmp eq %struct.TYPE_23__* %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  store i32 0, i32* %18, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @RTLD_LO_EARLY, align 4
  %85 = and i32 %83, %84
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %76
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 6
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %87
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %94 = call i32 @allocate_tls_offset(%struct.TYPE_23__* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %92
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @_rtld_error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %99)
  store i32 -1, i32* %18, align 4
  br label %101

101:                                              ; preds = %96, %92, %87, %76
  %102 = load i32, i32* %18, align 4
  %103 = icmp ne i32 %102, -1
  br i1 %103, label %104, label %112

104:                                              ; preds = %101
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* @RTLD_LO_DLOPEN, align 4
  %108 = load i32, i32* @RTLD_LO_EARLY, align 4
  %109 = or i32 %107, %108
  %110 = and i32 %106, %109
  %111 = call i32 @load_needed_objects(%struct.TYPE_23__* %105, i32 %110)
  store i32 %111, i32* %18, align 4
  br label %112

112:                                              ; preds = %104, %101
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %114 = call i32 @init_dag(%struct.TYPE_23__* %113)
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %116 = call i32 @ref_dag(%struct.TYPE_23__* %115)
  %117 = load i32, i32* %18, align 4
  %118 = icmp ne i32 %117, -1
  br i1 %118, label %119, label %123

119:                                              ; preds = %112
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 5
  %122 = call i32 @rtld_verify_versions(i32* %121)
  store i32 %122, i32* %18, align 4
  br label %123

123:                                              ; preds = %119, %112
  %124 = load i32, i32* %18, align 4
  %125 = icmp ne i32 %124, -1
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load i64, i64* @ld_tracing, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  br label %302

130:                                              ; preds = %126, %123
  %131 = load i32, i32* %18, align 4
  %132 = icmp eq i32 %131, -1
  br i1 %132, label %153, label %133

133:                                              ; preds = %130
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* @RTLD_MODEMASK, align 4
  %137 = and i32 %135, %136
  %138 = load i32, i32* @RTLD_NOW, align 4
  %139 = icmp eq i32 %137, %138
  %140 = zext i1 %139 to i32
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* @RTLD_LO_EARLY, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %133
  %146 = load i32, i32* @SYMLOOK_EARLY, align 4
  br label %148

147:                                              ; preds = %133
  br label %148

148:                                              ; preds = %147, %145
  %149 = phi i32 [ %146, %145 ], [ 0, %147 ]
  %150 = load i32*, i32** %13, align 8
  %151 = call i32 @relocate_object_dag(%struct.TYPE_23__* %134, i32 %140, i32* @obj_rtld, i32 %149, i32* %150)
  %152 = icmp eq i32 %151, -1
  br i1 %152, label %153, label %157

153:                                              ; preds = %148, %130
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %155 = load i32*, i32** %13, align 8
  %156 = call i32 @dlopen_cleanup(%struct.TYPE_23__* %154, i32* %155)
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %15, align 8
  br label %168

157:                                              ; preds = %148
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* @RTLD_LO_EARLY, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  br label %167

163:                                              ; preds = %157
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %166 = call i32 @initlist_add_objects(%struct.TYPE_23__* %164, %struct.TYPE_23__* %165, i32* %16)
  br label %167

167:                                              ; preds = %163, %162
  br label %168

168:                                              ; preds = %167, %153
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %170 = icmp ne %struct.TYPE_23__* %169, null
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %173 = call i32 @process_z(%struct.TYPE_23__* %172)
  br label %174

174:                                              ; preds = %171, %168
  br label %186

175:                                              ; preds = %72
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %177 = call i32 @init_dag(%struct.TYPE_23__* %176)
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %179 = call i32 @ref_dag(%struct.TYPE_23__* %178)
  %180 = load i32, i32* %11, align 4
  %181 = load i32, i32* @RTLD_LO_TRACE, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %175
  br label %302

185:                                              ; preds = %175
  br label %186

186:                                              ; preds = %185, %174
  %187 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %188 = icmp ne %struct.TYPE_23__* %187, null
  br i1 %188, label %189, label %215

189:                                              ; preds = %186
  %190 = load i32, i32* %11, align 4
  %191 = load i32, i32* @RTLD_LO_NODELETE, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %199, label %194

194:                                              ; preds = %189
  %195 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %196 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %215

199:                                              ; preds = %194, %189
  %200 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %201 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %215, label %204

204:                                              ; preds = %199
  %205 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %206 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @dbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %207)
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %210 = call i32 @ref_dag(%struct.TYPE_23__* %209)
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 1
  store i32 1, i32* %212, align 4
  %213 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %214 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %213, i32 0, i32 0
  store i32 1, i32* %214, align 8
  br label %215

215:                                              ; preds = %204, %199, %194, %186
  br label %216

216:                                              ; preds = %215, %53
  %217 = load i32, i32* @UTRACE_DLOPEN_STOP, align 4
  %218 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %219 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %220 = icmp ne %struct.TYPE_23__* %219, null
  br i1 %220, label %221, label %225

221:                                              ; preds = %216
  %222 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %223 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  br label %226

225:                                              ; preds = %216
  br label %226

226:                                              ; preds = %225, %221
  %227 = phi i32 [ %224, %221 ], [ 0, %225 ]
  %228 = load i8*, i8** %8, align 8
  %229 = call i32 @LD_UTRACE(i32 %217, %struct.TYPE_23__* %218, i32* null, i32 0, i32 %227, i8* %228)
  %230 = load i32, i32* @RT_CONSISTENT, align 4
  %231 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %232 = icmp ne %struct.TYPE_23__* %231, null
  br i1 %232, label %233, label %236

233:                                              ; preds = %226
  %234 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %235 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %234, i32 0, i32 2
  br label %237

236:                                              ; preds = %226
  br label %237

237:                                              ; preds = %236, %233
  %238 = phi i32* [ %235, %233 ], [ null, %236 ]
  %239 = call i32 @GDB_STATE(i32 %230, i32* %238)
  %240 = load i32, i32* %11, align 4
  %241 = load i32, i32* @RTLD_LO_EARLY, align 4
  %242 = and i32 %240, %241
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %253

244:                                              ; preds = %237
  %245 = load i32*, i32** %13, align 8
  %246 = call i32 @map_stacks_exec(i32* %245)
  %247 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %248 = icmp ne %struct.TYPE_23__* %247, null
  br i1 %248, label %249, label %252

249:                                              ; preds = %244
  %250 = load i32*, i32** %13, align 8
  %251 = call i32 @distribute_static_tls(i32* %16, i32* %250)
  br label %252

252:                                              ; preds = %249, %244
  br label %253

253:                                              ; preds = %252, %237
  %254 = load i32, i32* %12, align 4
  %255 = load i32, i32* @RTLD_MODEMASK, align 4
  %256 = and i32 %254, %255
  %257 = load i32, i32* @RTLD_NOW, align 4
  %258 = icmp eq i32 %256, %257
  %259 = zext i1 %258 to i32
  %260 = load i32, i32* %11, align 4
  %261 = load i32, i32* @RTLD_LO_EARLY, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %253
  %265 = load i32, i32* @SYMLOOK_EARLY, align 4
  br label %267

266:                                              ; preds = %253
  br label %267

267:                                              ; preds = %266, %264
  %268 = phi i32 [ %265, %264 ], [ 0, %266 ]
  %269 = load i32*, i32** %13, align 8
  %270 = call i32 @initlist_objects_ifunc(i32* %16, i32 %259, i32 %268, i32* %269)
  %271 = icmp eq i32 %270, -1
  br i1 %271, label %272, label %284

272:                                              ; preds = %267
  %273 = call i32 @objlist_clear(i32* %16)
  %274 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %275 = load i32*, i32** %13, align 8
  %276 = call i32 @dlopen_cleanup(%struct.TYPE_23__* %274, i32* %275)
  %277 = load i32*, i32** %13, align 8
  %278 = icmp eq i32* %277, %17
  br i1 %278, label %279, label %283

279:                                              ; preds = %272
  %280 = load i32, i32* @rtld_bind_lock, align 4
  %281 = load i32*, i32** %13, align 8
  %282 = call i32 @lock_release(i32 %280, i32* %281)
  br label %283

283:                                              ; preds = %279, %272
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %7, align 8
  br label %313

284:                                              ; preds = %267
  %285 = load i32, i32* %11, align 4
  %286 = load i32, i32* @RTLD_LO_EARLY, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %292, label %289

289:                                              ; preds = %284
  %290 = load i32*, i32** %13, align 8
  %291 = call i32 @objlist_call_init(i32* %16, i32* %290)
  br label %292

292:                                              ; preds = %289, %284
  %293 = call i32 @objlist_clear(i32* %16)
  %294 = load i32*, i32** %13, align 8
  %295 = icmp eq i32* %294, %17
  br i1 %295, label %296, label %300

296:                                              ; preds = %292
  %297 = load i32, i32* @rtld_bind_lock, align 4
  %298 = load i32*, i32** %13, align 8
  %299 = call i32 @lock_release(i32 %297, i32* %298)
  br label %300

300:                                              ; preds = %296, %292
  %301 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  store %struct.TYPE_23__* %301, %struct.TYPE_23__** %7, align 8
  br label %313

302:                                              ; preds = %184, %129
  %303 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %304 = call i32 @trace_loaded_objects(%struct.TYPE_23__* %303)
  %305 = load i32*, i32** %13, align 8
  %306 = icmp eq i32* %305, %17
  br i1 %306, label %307, label %311

307:                                              ; preds = %302
  %308 = load i32, i32* @rtld_bind_lock, align 4
  %309 = load i32*, i32** %13, align 8
  %310 = call i32 @lock_release(i32 %308, i32* %309)
  br label %311

311:                                              ; preds = %307, %302
  %312 = call i32 @exit(i32 0) #3
  unreachable

313:                                              ; preds = %300, %283
  %314 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  ret %struct.TYPE_23__* %314
}

declare dso_local i32 @objlist_init(i32*) #1

declare dso_local i32 @wlock_acquire(i32, i32*) #1

declare dso_local i32 @GDB_STATE(i32, i32*) #1

declare dso_local %struct.TYPE_23__* @globallist_curr(i32) #1

declare dso_local i32 @TAILQ_LAST(i32*, i32) #1

declare dso_local %struct.TYPE_23__* @load_object(i8*, i32, %struct.TYPE_23__*, i32) #1

declare dso_local i32* @objlist_find(i32*, %struct.TYPE_23__*) #1

declare dso_local i32 @objlist_push_tail(i32*, %struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_23__* @globallist_next(%struct.TYPE_23__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @allocate_tls_offset(%struct.TYPE_23__*) #1

declare dso_local i32 @_rtld_error(i8*, i32) #1

declare dso_local i32 @load_needed_objects(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @init_dag(%struct.TYPE_23__*) #1

declare dso_local i32 @ref_dag(%struct.TYPE_23__*) #1

declare dso_local i32 @rtld_verify_versions(i32*) #1

declare dso_local i32 @relocate_object_dag(%struct.TYPE_23__*, i32, i32*, i32, i32*) #1

declare dso_local i32 @dlopen_cleanup(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @initlist_add_objects(%struct.TYPE_23__*, %struct.TYPE_23__*, i32*) #1

declare dso_local i32 @process_z(%struct.TYPE_23__*) #1

declare dso_local i32 @dbg(i8*, i32) #1

declare dso_local i32 @LD_UTRACE(i32, %struct.TYPE_23__*, i32*, i32, i32, i8*) #1

declare dso_local i32 @map_stacks_exec(i32*) #1

declare dso_local i32 @distribute_static_tls(i32*, i32*) #1

declare dso_local i32 @initlist_objects_ifunc(i32*, i32, i32, i32*) #1

declare dso_local i32 @objlist_clear(i32*) #1

declare dso_local i32 @lock_release(i32, i32*) #1

declare dso_local i32 @objlist_call_init(i32*, i32*) #1

declare dso_local i32 @trace_loaded_objects(%struct.TYPE_23__*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
