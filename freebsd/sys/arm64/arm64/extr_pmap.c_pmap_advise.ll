; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_advise.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_advise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rwlock = type { i32 }

@MADV_DONTNEED = common dso_local global i32 0, align 4
@MADV_FREE = common dso_local global i32 0, align 4
@L0_SIZE = common dso_local global i32 0, align 4
@L0_OFFSET = common dso_local global i32 0, align 4
@L1_SIZE = common dso_local global i32 0, align 4
@L1_OFFSET = common dso_local global i32 0, align 4
@L2_SIZE = common dso_local global i32 0, align 4
@L2_OFFSET = common dso_local global i32 0, align 4
@ATTR_DESCR_MASK = common dso_local global i32 0, align 4
@L2_BLOCK = common dso_local global i32 0, align 4
@ATTR_SW_MANAGED = common dso_local global i32 0, align 4
@ATTR_SW_WIRED = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"pmap_advise: no address gap\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"pmap_advise: invalid PTE\00", align 1
@L2_TABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"pmap_advise: invalid L2 entry after demotion\00", align 1
@L3_PAGE = common dso_local global i32 0, align 4
@ATTR_MASK = common dso_local global i32 0, align 4
@ATTR_AF = common dso_local global i32 0, align 4
@ATTR_AP_RO = common dso_local global i32 0, align 4
@L3_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_advise(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rwlock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @MADV_DONTNEED, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @MADV_FREE, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %285

27:                                               ; preds = %22, %4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @PMAP_LOCK(i32 %28)
  br label %30

30:                                               ; preds = %280, %27
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %282

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32* @pmap_l0(i32 %35, i32 %36)
  store i32* %37, i32** %13, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = call i32 @pmap_load(i32* %38)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %34
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @L0_SIZE, align 4
  %44 = add nsw i32 %42, %43
  %45 = load i32, i32* @L0_OFFSET, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %51, %41
  br label %280

54:                                               ; preds = %34
  %55 = load i32*, i32** %13, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32* @pmap_l0_to_l1(i32* %55, i32 %56)
  store i32* %57, i32** %14, align 8
  %58 = load i32*, i32** %14, align 8
  %59 = call i32 @pmap_load(i32* %58)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %54
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @L1_SIZE, align 4
  %64 = add nsw i32 %62, %63
  %65 = load i32, i32* @L1_OFFSET, align 4
  %66 = xor i32 %65, -1
  %67 = and i32 %64, %66
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %71, %61
  br label %280

74:                                               ; preds = %54
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @L2_SIZE, align 4
  %77 = add nsw i32 %75, %76
  %78 = load i32, i32* @L2_OFFSET, align 4
  %79 = xor i32 %78, -1
  %80 = and i32 %77, %79
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %74
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %11, align 4
  br label %86

86:                                               ; preds = %84, %74
  %87 = load i32*, i32** %14, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32* @pmap_l1_to_l2(i32* %87, i32 %88)
  store i32* %89, i32** %15, align 8
  %90 = load i32*, i32** %15, align 8
  %91 = call i32 @pmap_load(i32* %90)
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* %16, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  br label %280

95:                                               ; preds = %86
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* @ATTR_DESCR_MASK, align 4
  %98 = and i32 %96, %97
  %99 = load i32, i32* @L2_BLOCK, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %164

101:                                              ; preds = %95
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* @ATTR_SW_MANAGED, align 4
  %104 = and i32 %102, %103
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %280

107:                                              ; preds = %101
  store %struct.rwlock* null, %struct.rwlock** %9, align 8
  %108 = load i32, i32* %5, align 4
  %109 = load i32*, i32** %15, align 8
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @pmap_demote_l2_locked(i32 %108, i32* %109, i32 %110, %struct.rwlock** %9)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %120, label %113

113:                                              ; preds = %107
  %114 = load %struct.rwlock*, %struct.rwlock** %9, align 8
  %115 = icmp ne %struct.rwlock* %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load %struct.rwlock*, %struct.rwlock** %9, align 8
  %118 = call i32 @rw_wunlock(%struct.rwlock* %117)
  br label %119

119:                                              ; preds = %116, %113
  br label %280

120:                                              ; preds = %107
  %121 = load i32, i32* %16, align 4
  %122 = load i32, i32* @ATTR_SW_WIRED, align 4
  %123 = and i32 %121, %122
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %157

125:                                              ; preds = %120
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp sgt i32 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = load i32, i32* %11, align 4
  store i32 %131, i32* %10, align 4
  br label %132

132:                                              ; preds = %130, %125
  %133 = load i64, i64* @PAGE_SIZE, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = sub nsw i64 %135, %133
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %10, align 4
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* %6, align 4
  %140 = icmp sge i32 %138, %139
  %141 = zext i1 %140 to i32
  %142 = call i32 @KASSERT(i32 %141, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %143 = load i32*, i32** %15, align 8
  %144 = load i32, i32* %10, align 4
  %145 = call i32* @pmap_l2_to_l3(i32* %143, i32 %144)
  store i32* %145, i32** %17, align 8
  %146 = load i32*, i32** %17, align 8
  %147 = call i32 @pmap_load(i32* %146)
  %148 = icmp ne i32 %147, 0
  %149 = zext i1 %148 to i32
  %150 = call i32 @KASSERT(i32 %149, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %151 = load i32, i32* %5, align 4
  %152 = load i32*, i32** %17, align 8
  %153 = load i32, i32* %10, align 4
  %154 = load i32*, i32** %15, align 8
  %155 = call i32 @pmap_load(i32* %154)
  %156 = call i32 @pmap_remove_l3(i32 %151, i32* %152, i32 %153, i32 %155, i32* null, %struct.rwlock** %9)
  br label %157

157:                                              ; preds = %132, %120
  %158 = load %struct.rwlock*, %struct.rwlock** %9, align 8
  %159 = icmp ne %struct.rwlock* %158, null
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load %struct.rwlock*, %struct.rwlock** %9, align 8
  %162 = call i32 @rw_wunlock(%struct.rwlock* %161)
  br label %163

163:                                              ; preds = %160, %157
  br label %164

164:                                              ; preds = %163, %95
  %165 = load i32*, i32** %15, align 8
  %166 = call i32 @pmap_load(i32* %165)
  %167 = load i32, i32* @ATTR_DESCR_MASK, align 4
  %168 = and i32 %166, %167
  %169 = load i32, i32* @L2_TABLE, align 4
  %170 = icmp eq i32 %168, %169
  %171 = zext i1 %170 to i32
  %172 = call i32 @KASSERT(i32 %171, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %173 = load i32, i32* %11, align 4
  %174 = load i32, i32* %7, align 4
  %175 = icmp sgt i32 %173, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %164
  %177 = load i32, i32* %7, align 4
  store i32 %177, i32* %11, align 4
  br label %178

178:                                              ; preds = %176, %164
  %179 = load i32, i32* %11, align 4
  store i32 %179, i32* %10, align 4
  %180 = load i32*, i32** %15, align 8
  %181 = load i32, i32* %6, align 4
  %182 = call i32* @pmap_l2_to_l3(i32* %180, i32 %181)
  store i32* %182, i32** %17, align 8
  br label %183

183:                                              ; preds = %262, %178
  %184 = load i32, i32* %6, align 4
  %185 = load i32, i32* %11, align 4
  %186 = icmp ne i32 %184, %185
  br i1 %186, label %187, label %270

187:                                              ; preds = %183
  %188 = load i32*, i32** %17, align 8
  %189 = call i32 @pmap_load(i32* %188)
  store i32 %189, i32* %18, align 4
  %190 = load i32, i32* %18, align 4
  %191 = load i32, i32* @ATTR_SW_MANAGED, align 4
  %192 = load i32, i32* @ATTR_DESCR_MASK, align 4
  %193 = or i32 %191, %192
  %194 = and i32 %190, %193
  %195 = load i32, i32* @ATTR_SW_MANAGED, align 4
  %196 = load i32, i32* @L3_PAGE, align 4
  %197 = or i32 %195, %196
  %198 = icmp ne i32 %194, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %187
  br label %251

200:                                              ; preds = %187
  %201 = load i32, i32* %18, align 4
  %202 = call i64 @pmap_pte_dirty(i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %232

204:                                              ; preds = %200
  %205 = load i32, i32* %8, align 4
  %206 = load i32, i32* @MADV_DONTNEED, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %216

208:                                              ; preds = %204
  %209 = load i32, i32* %18, align 4
  %210 = load i32, i32* @ATTR_MASK, align 4
  %211 = xor i32 %210, -1
  %212 = and i32 %209, %211
  %213 = call i32 @PHYS_TO_VM_PAGE(i32 %212)
  store i32 %213, i32* %12, align 4
  %214 = load i32, i32* %12, align 4
  %215 = call i32 @vm_page_dirty(i32 %214)
  br label %216

216:                                              ; preds = %208, %204
  br label %217

217:                                              ; preds = %229, %216
  %218 = load i32*, i32** %17, align 8
  %219 = load i32, i32* %18, align 4
  %220 = load i32, i32* @ATTR_AF, align 4
  %221 = xor i32 %220, -1
  %222 = and i32 %219, %221
  %223 = load i32, i32* @ATTR_AP_RO, align 4
  %224 = call i32 @ATTR_AP(i32 %223)
  %225 = or i32 %222, %224
  %226 = call i32 @atomic_fcmpset_long(i32* %218, i32* %18, i32 %225)
  %227 = icmp ne i32 %226, 0
  %228 = xor i1 %227, true
  br i1 %228, label %229, label %231

229:                                              ; preds = %217
  %230 = call i32 (...) @cpu_spinwait()
  br label %217

231:                                              ; preds = %217
  br label %243

232:                                              ; preds = %200
  %233 = load i32, i32* %18, align 4
  %234 = load i32, i32* @ATTR_AF, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %232
  %238 = load i32*, i32** %17, align 8
  %239 = load i32, i32* @ATTR_AF, align 4
  %240 = call i32 @pmap_clear_bits(i32* %238, i32 %239)
  br label %242

241:                                              ; preds = %232
  br label %251

242:                                              ; preds = %237
  br label %243

243:                                              ; preds = %242, %231
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* %10, align 4
  %246 = load i32, i32* %11, align 4
  %247 = icmp eq i32 %245, %246
  br i1 %247, label %248, label %250

248:                                              ; preds = %244
  %249 = load i32, i32* %6, align 4
  store i32 %249, i32* %10, align 4
  br label %250

250:                                              ; preds = %248, %244
  br label %262

251:                                              ; preds = %241, %199
  %252 = load i32, i32* %10, align 4
  %253 = load i32, i32* %11, align 4
  %254 = icmp ne i32 %252, %253
  br i1 %254, label %255, label %261

255:                                              ; preds = %251
  %256 = load i32, i32* %5, align 4
  %257 = load i32, i32* %10, align 4
  %258 = load i32, i32* %6, align 4
  %259 = call i32 @pmap_invalidate_range(i32 %256, i32 %257, i32 %258)
  %260 = load i32, i32* %11, align 4
  store i32 %260, i32* %10, align 4
  br label %261

261:                                              ; preds = %255, %251
  br label %262

262:                                              ; preds = %261, %250
  %263 = load i32*, i32** %17, align 8
  %264 = getelementptr inbounds i32, i32* %263, i32 1
  store i32* %264, i32** %17, align 8
  %265 = load i64, i64* @L3_SIZE, align 8
  %266 = load i32, i32* %6, align 4
  %267 = sext i32 %266 to i64
  %268 = add nsw i64 %267, %265
  %269 = trunc i64 %268 to i32
  store i32 %269, i32* %6, align 4
  br label %183

270:                                              ; preds = %183
  %271 = load i32, i32* %10, align 4
  %272 = load i32, i32* %11, align 4
  %273 = icmp ne i32 %271, %272
  br i1 %273, label %274, label %279

274:                                              ; preds = %270
  %275 = load i32, i32* %5, align 4
  %276 = load i32, i32* %10, align 4
  %277 = load i32, i32* %6, align 4
  %278 = call i32 @pmap_invalidate_range(i32 %275, i32 %276, i32 %277)
  br label %279

279:                                              ; preds = %274, %270
  br label %280

280:                                              ; preds = %279, %119, %106, %94, %73, %53
  %281 = load i32, i32* %11, align 4
  store i32 %281, i32* %6, align 4
  br label %30

282:                                              ; preds = %30
  %283 = load i32, i32* %5, align 4
  %284 = call i32 @PMAP_UNLOCK(i32 %283)
  br label %285

285:                                              ; preds = %282, %26
  ret void
}

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local i32* @pmap_l0(i32, i32) #1

declare dso_local i32 @pmap_load(i32*) #1

declare dso_local i32* @pmap_l0_to_l1(i32*, i32) #1

declare dso_local i32* @pmap_l1_to_l2(i32*, i32) #1

declare dso_local i32 @pmap_demote_l2_locked(i32, i32*, i32, %struct.rwlock**) #1

declare dso_local i32 @rw_wunlock(%struct.rwlock*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @pmap_l2_to_l3(i32*, i32) #1

declare dso_local i32 @pmap_remove_l3(i32, i32*, i32, i32, i32*, %struct.rwlock**) #1

declare dso_local i64 @pmap_pte_dirty(i32) #1

declare dso_local i32 @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @vm_page_dirty(i32) #1

declare dso_local i32 @atomic_fcmpset_long(i32*, i32*, i32) #1

declare dso_local i32 @ATTR_AP(i32) #1

declare dso_local i32 @cpu_spinwait(...) #1

declare dso_local i32 @pmap_clear_bits(i32*, i32) #1

declare dso_local i32 @pmap_invalidate_range(i32, i32, i32) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
