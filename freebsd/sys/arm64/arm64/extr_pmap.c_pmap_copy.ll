; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rwlock = type { i32 }
%struct.spglist = type { i32 }
%struct.TYPE_8__ = type { i64, i64 }

@L0_SIZE = common dso_local global i64 0, align 8
@L0_OFFSET = common dso_local global i64 0, align 8
@L1_SIZE = common dso_local global i64 0, align 8
@L1_OFFSET = common dso_local global i64 0, align 8
@L2_SIZE = common dso_local global i64 0, align 8
@L2_OFFSET = common dso_local global i64 0, align 8
@ATTR_DESCR_MASK = common dso_local global i32 0, align 4
@L2_BLOCK = common dso_local global i32 0, align 4
@ATTR_SW_MANAGED = common dso_local global i32 0, align 4
@PMAP_ENTER_NORECLAIM = common dso_local global i32 0, align 4
@ATTR_AF = common dso_local global i32 0, align 4
@ATTR_SW_WIRED = common dso_local global i32 0, align 4
@ATTR_SW_DBM = common dso_local global i32 0, align 4
@ATTR_AP_RW_BIT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@pmap_l2_mappings = common dso_local global i32 0, align 4
@L2_TABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"pmap_copy: invalid L2 entry\00", align 1
@ATTR_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"pmap_copy: source page table page is unused\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"dstmpte pindex/addr mismatch\00", align 1
@ishst = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_copy(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.rwlock*, align 8
  %12 = alloca %struct.spglist, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_8__*, align 8
  %26 = alloca %struct.TYPE_8__*, align 8
  %27 = alloca %struct.TYPE_8__*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %10, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %5
  br label %360

32:                                               ; preds = %5
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %9, align 8
  %35 = add nsw i64 %33, %34
  store i64 %35, i64* %23, align 8
  store %struct.rwlock* null, %struct.rwlock** %11, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @PMAP_LOCK(i64 %40)
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @PMAP_LOCK(i64 %42)
  br label %49

44:                                               ; preds = %32
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @PMAP_LOCK(i64 %45)
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @PMAP_LOCK(i64 %47)
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i64, i64* %10, align 8
  store i64 %50, i64* %22, align 8
  br label %51

51:                                               ; preds = %344, %49
  %52 = load i64, i64* %22, align 8
  %53 = load i64, i64* %23, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %346

55:                                               ; preds = %51
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* %22, align 8
  %58 = call i32* @pmap_l0(i64 %56, i64 %57)
  store i32* %58, i32** %13, align 8
  %59 = load i32*, i32** %13, align 8
  %60 = call i64 @pmap_load(i32* %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %55
  %63 = load i64, i64* %22, align 8
  %64 = load i64, i64* @L0_SIZE, align 8
  %65 = add nsw i64 %63, %64
  %66 = load i64, i64* @L0_OFFSET, align 8
  %67 = xor i64 %66, -1
  %68 = and i64 %65, %67
  store i64 %68, i64* %24, align 8
  %69 = load i64, i64* %24, align 8
  %70 = load i64, i64* %22, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %62
  %73 = load i64, i64* %23, align 8
  store i64 %73, i64* %24, align 8
  br label %74

74:                                               ; preds = %72, %62
  br label %344

75:                                               ; preds = %55
  %76 = load i32*, i32** %13, align 8
  %77 = load i64, i64* %22, align 8
  %78 = call i32* @pmap_l0_to_l1(i32* %76, i64 %77)
  store i32* %78, i32** %14, align 8
  %79 = load i32*, i32** %14, align 8
  %80 = call i64 @pmap_load(i32* %79)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %75
  %83 = load i64, i64* %22, align 8
  %84 = load i64, i64* @L1_SIZE, align 8
  %85 = add nsw i64 %83, %84
  %86 = load i64, i64* @L1_OFFSET, align 8
  %87 = xor i64 %86, -1
  %88 = and i64 %85, %87
  store i64 %88, i64* %24, align 8
  %89 = load i64, i64* %24, align 8
  %90 = load i64, i64* %22, align 8
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %82
  %93 = load i64, i64* %23, align 8
  store i64 %93, i64* %24, align 8
  br label %94

94:                                               ; preds = %92, %82
  br label %344

95:                                               ; preds = %75
  %96 = load i64, i64* %22, align 8
  %97 = load i64, i64* @L2_SIZE, align 8
  %98 = add nsw i64 %96, %97
  %99 = load i64, i64* @L2_OFFSET, align 8
  %100 = xor i64 %99, -1
  %101 = and i64 %98, %100
  store i64 %101, i64* %24, align 8
  %102 = load i64, i64* %24, align 8
  %103 = load i64, i64* %22, align 8
  %104 = icmp slt i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %95
  %106 = load i64, i64* %23, align 8
  store i64 %106, i64* %24, align 8
  br label %107

107:                                              ; preds = %105, %95
  %108 = load i32*, i32** %14, align 8
  %109 = load i64, i64* %22, align 8
  %110 = call i32* @pmap_l1_to_l2(i32* %108, i64 %109)
  store i32* %110, i32** %15, align 8
  %111 = load i32*, i32** %15, align 8
  %112 = call i64 @pmap_load(i32* %111)
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %16, align 4
  %114 = load i32, i32* %16, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %107
  br label %344

117:                                              ; preds = %107
  %118 = load i32, i32* %16, align 4
  %119 = load i32, i32* @ATTR_DESCR_MASK, align 4
  %120 = and i32 %118, %119
  %121 = load i32, i32* @L2_BLOCK, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %200

123:                                              ; preds = %117
  %124 = load i64, i64* %22, align 8
  %125 = load i64, i64* @L2_OFFSET, align 8
  %126 = and i64 %124, %125
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %134, label %128

128:                                              ; preds = %123
  %129 = load i64, i64* %22, align 8
  %130 = load i64, i64* @L2_SIZE, align 8
  %131 = add nsw i64 %129, %130
  %132 = load i64, i64* %23, align 8
  %133 = icmp sgt i64 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %128, %123
  br label %344

135:                                              ; preds = %128
  %136 = load i64, i64* %6, align 8
  %137 = load i64, i64* %22, align 8
  %138 = call %struct.TYPE_8__* @pmap_alloc_l2(i64 %136, i64 %137, i32* null)
  store %struct.TYPE_8__* %138, %struct.TYPE_8__** %25, align 8
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %140 = icmp eq %struct.TYPE_8__* %139, null
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  br label %346

142:                                              ; preds = %135
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %144 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_8__* %143)
  %145 = call i64 @PHYS_TO_DMAP(i32 %144)
  %146 = inttoptr i64 %145 to i32*
  store i32* %146, i32** %15, align 8
  %147 = load i32*, i32** %15, align 8
  %148 = load i64, i64* %22, align 8
  %149 = call i64 @pmap_l2_index(i64 %148)
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  store i32* %150, i32** %15, align 8
  %151 = load i32*, i32** %15, align 8
  %152 = call i64 @pmap_load(i32* %151)
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %194

154:                                              ; preds = %142
  %155 = load i32, i32* %16, align 4
  %156 = load i32, i32* @ATTR_SW_MANAGED, align 4
  %157 = and i32 %155, %156
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %166, label %159

159:                                              ; preds = %154
  %160 = load i64, i64* %6, align 8
  %161 = load i64, i64* %22, align 8
  %162 = load i32, i32* %16, align 4
  %163 = load i32, i32* @PMAP_ENTER_NORECLAIM, align 4
  %164 = call i64 @pmap_pv_insert_l2(i64 %160, i64 %161, i32 %162, i32 %163, %struct.rwlock** %11)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %194

166:                                              ; preds = %159, %154
  %167 = load i32, i32* @ATTR_AF, align 4
  %168 = load i32, i32* @ATTR_SW_WIRED, align 4
  %169 = or i32 %167, %168
  store i32 %169, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %170 = load i32, i32* %16, align 4
  %171 = load i32, i32* @ATTR_SW_DBM, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %166
  %175 = load i32, i32* @ATTR_AP_RW_BIT, align 4
  %176 = load i32, i32* %19, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %19, align 4
  br label %178

178:                                              ; preds = %174, %166
  %179 = load i32*, i32** %15, align 8
  %180 = load i32, i32* %16, align 4
  %181 = load i32, i32* %18, align 4
  %182 = xor i32 %181, -1
  %183 = and i32 %180, %182
  %184 = load i32, i32* %19, align 4
  %185 = or i32 %183, %184
  %186 = call i32 @pmap_store(i32* %179, i32 %185)
  %187 = load i64, i64* %6, align 8
  %188 = load i64, i64* @L2_SIZE, align 8
  %189 = load i64, i64* @PAGE_SIZE, align 8
  %190 = sdiv i64 %188, %189
  %191 = trunc i64 %190 to i32
  %192 = call i32 @pmap_resident_count_inc(i64 %187, i32 %191)
  %193 = call i32 @atomic_add_long(i32* @pmap_l2_mappings, i32 1)
  br label %199

194:                                              ; preds = %159, %142
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = add nsw i64 %197, -1
  store i64 %198, i64* %196, align 8
  br label %199

199:                                              ; preds = %194, %178
  br label %344

200:                                              ; preds = %117
  %201 = load i32, i32* %16, align 4
  %202 = load i32, i32* @ATTR_DESCR_MASK, align 4
  %203 = and i32 %201, %202
  %204 = load i32, i32* @L2_TABLE, align 4
  %205 = icmp eq i32 %203, %204
  %206 = zext i1 %205 to i32
  %207 = call i32 @KASSERT(i32 %206, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %208 = load i32, i32* @ATTR_MASK, align 4
  %209 = xor i32 %208, -1
  %210 = load i32, i32* %16, align 4
  %211 = and i32 %210, %209
  store i32 %211, i32* %16, align 4
  %212 = load i32, i32* %16, align 4
  %213 = call %struct.TYPE_8__* @PHYS_TO_VM_PAGE(i32 %212)
  store %struct.TYPE_8__* %213, %struct.TYPE_8__** %27, align 8
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = icmp sgt i64 %216, 0
  %218 = zext i1 %217 to i32
  %219 = call i32 @KASSERT(i32 %218, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %220 = load i64, i64* %24, align 8
  %221 = load i64, i64* %23, align 8
  %222 = icmp sgt i64 %220, %221
  br i1 %222, label %223, label %225

223:                                              ; preds = %200
  %224 = load i64, i64* %23, align 8
  store i64 %224, i64* %24, align 8
  br label %225

225:                                              ; preds = %223, %200
  %226 = load i32, i32* %16, align 4
  %227 = call i64 @PHYS_TO_DMAP(i32 %226)
  %228 = inttoptr i64 %227 to i32*
  store i32* %228, i32** %21, align 8
  %229 = load i32*, i32** %21, align 8
  %230 = load i64, i64* %22, align 8
  %231 = call i64 @pmap_l3_index(i64 %230)
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  store i32* %232, i32** %21, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %26, align 8
  br label %233

233:                                              ; preds = %337, %225
  %234 = load i64, i64* %22, align 8
  %235 = load i64, i64* %24, align 8
  %236 = icmp slt i64 %234, %235
  br i1 %236, label %237, label %343

237:                                              ; preds = %233
  %238 = load i32*, i32** %21, align 8
  %239 = call i64 @pmap_load(i32* %238)
  %240 = trunc i64 %239 to i32
  store i32 %240, i32* %20, align 4
  %241 = load i32, i32* %20, align 4
  %242 = load i32, i32* @ATTR_SW_MANAGED, align 4
  %243 = and i32 %241, %242
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %237
  br label %337

246:                                              ; preds = %237
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %248 = icmp ne %struct.TYPE_8__* %247, null
  br i1 %248, label %249, label %262

249:                                              ; preds = %246
  %250 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* %22, align 8
  %254 = call i64 @pmap_l2_pindex(i64 %253)
  %255 = icmp eq i64 %252, %254
  %256 = zext i1 %255 to i32
  %257 = call i32 @KASSERT(i32 %256, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = add nsw i64 %260, 1
  store i64 %261, i64* %259, align 8
  br label %269

262:                                              ; preds = %246
  %263 = load i64, i64* %6, align 8
  %264 = load i64, i64* %22, align 8
  %265 = call %struct.TYPE_8__* @pmap_alloc_l3(i64 %263, i64 %264, i32* null)
  store %struct.TYPE_8__* %265, %struct.TYPE_8__** %26, align 8
  %266 = icmp eq %struct.TYPE_8__* %265, null
  br i1 %266, label %267, label %268

267:                                              ; preds = %262
  br label %347

268:                                              ; preds = %262
  br label %269

269:                                              ; preds = %268, %249
  %270 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %271 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_8__* %270)
  %272 = call i64 @PHYS_TO_DMAP(i32 %271)
  %273 = inttoptr i64 %272 to i32*
  store i32* %273, i32** %17, align 8
  %274 = load i32*, i32** %17, align 8
  %275 = load i64, i64* %22, align 8
  %276 = call i64 @pmap_l3_index(i64 %275)
  %277 = getelementptr inbounds i32, i32* %274, i64 %276
  store i32* %277, i32** %17, align 8
  %278 = load i32*, i32** %17, align 8
  %279 = call i64 @pmap_load(i32* %278)
  %280 = icmp eq i64 %279, 0
  br i1 %280, label %281, label %314

281:                                              ; preds = %269
  %282 = load i64, i64* %6, align 8
  %283 = load i64, i64* %22, align 8
  %284 = load i32, i32* %20, align 4
  %285 = load i32, i32* @ATTR_MASK, align 4
  %286 = xor i32 %285, -1
  %287 = and i32 %284, %286
  %288 = call %struct.TYPE_8__* @PHYS_TO_VM_PAGE(i32 %287)
  %289 = call i64 @pmap_try_insert_pv_entry(i64 %282, i64 %283, %struct.TYPE_8__* %288, %struct.rwlock** %11)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %314

291:                                              ; preds = %281
  %292 = load i32, i32* @ATTR_AF, align 4
  %293 = load i32, i32* @ATTR_SW_WIRED, align 4
  %294 = or i32 %292, %293
  store i32 %294, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %295 = load i32, i32* %20, align 4
  %296 = load i32, i32* @ATTR_SW_DBM, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %303

299:                                              ; preds = %291
  %300 = load i32, i32* @ATTR_AP_RW_BIT, align 4
  %301 = load i32, i32* %19, align 4
  %302 = or i32 %301, %300
  store i32 %302, i32* %19, align 4
  br label %303

303:                                              ; preds = %299, %291
  %304 = load i32*, i32** %17, align 8
  %305 = load i32, i32* %20, align 4
  %306 = load i32, i32* %18, align 4
  %307 = xor i32 %306, -1
  %308 = and i32 %305, %307
  %309 = load i32, i32* %19, align 4
  %310 = or i32 %308, %309
  %311 = call i32 @pmap_store(i32* %304, i32 %310)
  %312 = load i64, i64* %6, align 8
  %313 = call i32 @pmap_resident_count_inc(i64 %312, i32 1)
  br label %327

314:                                              ; preds = %281, %269
  %315 = call i32 @SLIST_INIT(%struct.spglist* %12)
  %316 = load i64, i64* %6, align 8
  %317 = load i64, i64* %22, align 8
  %318 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %319 = call i64 @pmap_unwire_l3(i64 %316, i64 %317, %struct.TYPE_8__* %318, %struct.spglist* %12)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %326

321:                                              ; preds = %314
  %322 = load i64, i64* %6, align 8
  %323 = load i64, i64* %22, align 8
  %324 = call i32 @pmap_invalidate_page(i64 %322, i64 %323)
  %325 = call i32 @vm_page_free_pages_toq(%struct.spglist* %12, i32 1)
  br label %326

326:                                              ; preds = %321, %314
  br label %347

327:                                              ; preds = %303
  %328 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %329 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %332 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = icmp sge i64 %330, %333
  br i1 %334, label %335, label %336

335:                                              ; preds = %327
  br label %343

336:                                              ; preds = %327
  br label %337

337:                                              ; preds = %336, %245
  %338 = load i64, i64* @PAGE_SIZE, align 8
  %339 = load i64, i64* %22, align 8
  %340 = add nsw i64 %339, %338
  store i64 %340, i64* %22, align 8
  %341 = load i32*, i32** %21, align 8
  %342 = getelementptr inbounds i32, i32* %341, i32 1
  store i32* %342, i32** %21, align 8
  br label %233

343:                                              ; preds = %335, %233
  br label %344

344:                                              ; preds = %343, %199, %134, %116, %94, %74
  %345 = load i64, i64* %24, align 8
  store i64 %345, i64* %22, align 8
  br label %51

346:                                              ; preds = %141, %51
  br label %347

347:                                              ; preds = %346, %326, %267
  %348 = load i32, i32* @ishst, align 4
  %349 = call i32 @dsb(i32 %348)
  %350 = load %struct.rwlock*, %struct.rwlock** %11, align 8
  %351 = icmp ne %struct.rwlock* %350, null
  br i1 %351, label %352, label %355

352:                                              ; preds = %347
  %353 = load %struct.rwlock*, %struct.rwlock** %11, align 8
  %354 = call i32 @rw_wunlock(%struct.rwlock* %353)
  br label %355

355:                                              ; preds = %352, %347
  %356 = load i64, i64* %7, align 8
  %357 = call i32 @PMAP_UNLOCK(i64 %356)
  %358 = load i64, i64* %6, align 8
  %359 = call i32 @PMAP_UNLOCK(i64 %358)
  br label %360

360:                                              ; preds = %355, %31
  ret void
}

declare dso_local i32 @PMAP_LOCK(i64) #1

declare dso_local i32* @pmap_l0(i64, i64) #1

declare dso_local i64 @pmap_load(i32*) #1

declare dso_local i32* @pmap_l0_to_l1(i32*, i64) #1

declare dso_local i32* @pmap_l1_to_l2(i32*, i64) #1

declare dso_local %struct.TYPE_8__* @pmap_alloc_l2(i64, i64, i32*) #1

declare dso_local i64 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_8__*) #1

declare dso_local i64 @pmap_l2_index(i64) #1

declare dso_local i64 @pmap_pv_insert_l2(i64, i64, i32, i32, %struct.rwlock**) #1

declare dso_local i32 @pmap_store(i32*, i32) #1

declare dso_local i32 @pmap_resident_count_inc(i64, i32) #1

declare dso_local i32 @atomic_add_long(i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.TYPE_8__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i64 @pmap_l3_index(i64) #1

declare dso_local i64 @pmap_l2_pindex(i64) #1

declare dso_local %struct.TYPE_8__* @pmap_alloc_l3(i64, i64, i32*) #1

declare dso_local i64 @pmap_try_insert_pv_entry(i64, i64, %struct.TYPE_8__*, %struct.rwlock**) #1

declare dso_local i32 @SLIST_INIT(%struct.spglist*) #1

declare dso_local i64 @pmap_unwire_l3(i64, i64, %struct.TYPE_8__*, %struct.spglist*) #1

declare dso_local i32 @pmap_invalidate_page(i64, i64) #1

declare dso_local i32 @vm_page_free_pages_toq(%struct.spglist*, i32) #1

declare dso_local i32 @dsb(i32) #1

declare dso_local i32 @rw_wunlock(%struct.rwlock*) #1

declare dso_local i32 @PMAP_UNLOCK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
