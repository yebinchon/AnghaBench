; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c__pmap_alloc_l3.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c__pmap_alloc_l3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32* }
%struct.rwlock = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@VM_ALLOC_NOOBJ = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@VM_ALLOC_ZERO = common dso_local global i32 0, align 4
@PG_ZERO = common dso_local global i32 0, align 4
@ishst = common dso_local global i32 0, align 4
@NUL2E = common dso_local global i64 0, align 8
@NUL1E = common dso_local global i64 0, align 8
@L0_TABLE = common dso_local global i32 0, align 4
@L0_ENTRIES_SHIFT = common dso_local global i64 0, align 8
@ATTR_MASK = common dso_local global i32 0, align 4
@Ln_ADDR_MASK = common dso_local global i64 0, align 8
@L1_TABLE = common dso_local global i32 0, align 4
@Ln_ENTRIES_SHIFT = common dso_local global i64 0, align 8
@L2_TABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (%struct.TYPE_16__*, i64, %struct.rwlock**)* @_pmap_alloc_l3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @_pmap_alloc_l3(%struct.TYPE_16__* %0, i64 %1, %struct.rwlock** %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rwlock**, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.rwlock** %2, %struct.rwlock*** %7, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %26 = load i32, i32* @MA_OWNED, align 4
  %27 = call i32 @PMAP_LOCK_ASSERT(%struct.TYPE_16__* %25, i32 %26)
  %28 = load i64, i64* %6, align 8
  %29 = load i32, i32* @VM_ALLOC_NOOBJ, align 4
  %30 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @VM_ALLOC_ZERO, align 4
  %33 = or i32 %31, %32
  %34 = call %struct.TYPE_15__* @vm_page_alloc(i32* null, i64 %28, i32 %33)
  store %struct.TYPE_15__* %34, %struct.TYPE_15__** %8, align 8
  %35 = icmp eq %struct.TYPE_15__* %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %3
  %37 = load %struct.rwlock**, %struct.rwlock*** %7, align 8
  %38 = icmp ne %struct.rwlock** %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load %struct.rwlock**, %struct.rwlock*** %7, align 8
  %41 = call i32 @RELEASE_PV_LIST_LOCK(%struct.rwlock** %40)
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %43 = call i32 @PMAP_UNLOCK(%struct.TYPE_16__* %42)
  %44 = call i32 @vm_wait(i32* null)
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %46 = call i32 @PMAP_LOCK(%struct.TYPE_16__* %45)
  br label %47

47:                                               ; preds = %39, %36
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %4, align 8
  br label %256

48:                                               ; preds = %3
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @PG_ZERO, align 4
  %53 = and i32 %51, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %57 = call i32 @pmap_zero_page(%struct.TYPE_15__* %56)
  br label %58

58:                                               ; preds = %55, %48
  %59 = load i32, i32* @ishst, align 4
  %60 = call i32 @dmb(i32 %59)
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* @NUL2E, align 8
  %63 = load i64, i64* @NUL1E, align 8
  %64 = add i64 %62, %63
  %65 = icmp uge i64 %61, %64
  br i1 %65, label %66, label %83

66:                                               ; preds = %58
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* @NUL2E, align 8
  %69 = load i64, i64* @NUL1E, align 8
  %70 = add i64 %68, %69
  %71 = sub i64 %67, %70
  store i64 %71, i64* %12, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* %12, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32* %76, i32** %11, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %79 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_15__* %78)
  %80 = load i32, i32* @L0_TABLE, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @pmap_store(i32* %77, i32 %81)
  br label %252

83:                                               ; preds = %58
  %84 = load i64, i64* %6, align 8
  %85 = load i64, i64* @NUL2E, align 8
  %86 = icmp uge i64 %84, %85
  br i1 %86, label %87, label %148

87:                                               ; preds = %83
  %88 = load i64, i64* %6, align 8
  %89 = load i64, i64* @NUL2E, align 8
  %90 = sub i64 %88, %89
  store i64 %90, i64* %14, align 8
  %91 = load i64, i64* %14, align 8
  %92 = load i64, i64* @L0_ENTRIES_SHIFT, align 8
  %93 = lshr i64 %91, %92
  store i64 %93, i64* %13, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i64, i64* %13, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  store i32* %98, i32** %15, align 8
  %99 = load i32*, i32** %15, align 8
  %100 = call i32 @pmap_load(i32* %99)
  store i32 %100, i32* %17, align 4
  %101 = load i32, i32* %17, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %119

103:                                              ; preds = %87
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %105 = load i64, i64* @NUL2E, align 8
  %106 = load i64, i64* @NUL1E, align 8
  %107 = add i64 %105, %106
  %108 = load i64, i64* %13, align 8
  %109 = add i64 %107, %108
  %110 = load %struct.rwlock**, %struct.rwlock*** %7, align 8
  %111 = call %struct.TYPE_15__* @_pmap_alloc_l3(%struct.TYPE_16__* %104, i64 %109, %struct.rwlock** %110)
  %112 = icmp eq %struct.TYPE_15__* %111, null
  br i1 %112, label %113, label %118

113:                                              ; preds = %103
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %115 = call i32 @vm_page_unwire_noq(%struct.TYPE_15__* %114)
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %117 = call i32 @vm_page_free_zero(%struct.TYPE_15__* %116)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %4, align 8
  br label %256

118:                                              ; preds = %103
  br label %129

119:                                              ; preds = %87
  %120 = load i32, i32* %17, align 4
  %121 = load i32, i32* @ATTR_MASK, align 4
  %122 = xor i32 %121, -1
  %123 = and i32 %120, %122
  %124 = call %struct.TYPE_15__* @PHYS_TO_VM_PAGE(i32 %123)
  store %struct.TYPE_15__* %124, %struct.TYPE_15__** %9, align 8
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %119, %118
  %130 = load i32*, i32** %15, align 8
  %131 = call i32 @pmap_load(i32* %130)
  %132 = load i32, i32* @ATTR_MASK, align 4
  %133 = xor i32 %132, -1
  %134 = and i32 %131, %133
  %135 = call i64 @PHYS_TO_DMAP(i32 %134)
  %136 = inttoptr i64 %135 to i32*
  store i32* %136, i32** %16, align 8
  %137 = load i32*, i32** %16, align 8
  %138 = load i64, i64* %6, align 8
  %139 = load i64, i64* @Ln_ADDR_MASK, align 8
  %140 = and i64 %138, %139
  %141 = getelementptr inbounds i32, i32* %137, i64 %140
  store i32* %141, i32** %16, align 8
  %142 = load i32*, i32** %16, align 8
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %144 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_15__* %143)
  %145 = load i32, i32* @L1_TABLE, align 4
  %146 = or i32 %144, %145
  %147 = call i32 @pmap_store(i32* %142, i32 %146)
  br label %251

148:                                              ; preds = %83
  %149 = load i64, i64* %6, align 8
  %150 = load i64, i64* @Ln_ENTRIES_SHIFT, align 8
  %151 = lshr i64 %149, %150
  store i64 %151, i64* %19, align 8
  %152 = load i64, i64* %19, align 8
  %153 = load i64, i64* @L0_ENTRIES_SHIFT, align 8
  %154 = lshr i64 %152, %153
  store i64 %154, i64* %18, align 8
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = load i64, i64* %18, align 8
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  store i32* %159, i32** %20, align 8
  %160 = load i32*, i32** %20, align 8
  %161 = call i32 @pmap_load(i32* %160)
  store i32 %161, i32* %23, align 4
  %162 = load i32, i32* %23, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %191

164:                                              ; preds = %148
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %166 = load i64, i64* @NUL2E, align 8
  %167 = load i64, i64* %19, align 8
  %168 = add i64 %166, %167
  %169 = load %struct.rwlock**, %struct.rwlock*** %7, align 8
  %170 = call %struct.TYPE_15__* @_pmap_alloc_l3(%struct.TYPE_16__* %165, i64 %168, %struct.rwlock** %169)
  %171 = icmp eq %struct.TYPE_15__* %170, null
  br i1 %171, label %172, label %177

172:                                              ; preds = %164
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %174 = call i32 @vm_page_unwire_noq(%struct.TYPE_15__* %173)
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %176 = call i32 @vm_page_free_zero(%struct.TYPE_15__* %175)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %4, align 8
  br label %256

177:                                              ; preds = %164
  %178 = load i32*, i32** %20, align 8
  %179 = call i32 @pmap_load(i32* %178)
  store i32 %179, i32* %23, align 4
  %180 = load i32, i32* %23, align 4
  %181 = load i32, i32* @ATTR_MASK, align 4
  %182 = xor i32 %181, -1
  %183 = and i32 %180, %182
  %184 = call i64 @PHYS_TO_DMAP(i32 %183)
  %185 = inttoptr i64 %184 to i32*
  store i32* %185, i32** %21, align 8
  %186 = load i32*, i32** %21, align 8
  %187 = load i64, i64* %19, align 8
  %188 = load i64, i64* @Ln_ADDR_MASK, align 8
  %189 = and i64 %187, %188
  %190 = getelementptr inbounds i32, i32* %186, i64 %189
  store i32* %190, i32** %21, align 8
  br label %232

191:                                              ; preds = %148
  %192 = load i32, i32* %23, align 4
  %193 = load i32, i32* @ATTR_MASK, align 4
  %194 = xor i32 %193, -1
  %195 = and i32 %192, %194
  %196 = call i64 @PHYS_TO_DMAP(i32 %195)
  %197 = inttoptr i64 %196 to i32*
  store i32* %197, i32** %21, align 8
  %198 = load i32*, i32** %21, align 8
  %199 = load i64, i64* %19, align 8
  %200 = load i64, i64* @Ln_ADDR_MASK, align 8
  %201 = and i64 %199, %200
  %202 = getelementptr inbounds i32, i32* %198, i64 %201
  store i32* %202, i32** %21, align 8
  %203 = load i32*, i32** %21, align 8
  %204 = call i32 @pmap_load(i32* %203)
  store i32 %204, i32* %24, align 4
  %205 = load i32, i32* %24, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %221

207:                                              ; preds = %191
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %209 = load i64, i64* @NUL2E, align 8
  %210 = load i64, i64* %19, align 8
  %211 = add i64 %209, %210
  %212 = load %struct.rwlock**, %struct.rwlock*** %7, align 8
  %213 = call %struct.TYPE_15__* @_pmap_alloc_l3(%struct.TYPE_16__* %208, i64 %211, %struct.rwlock** %212)
  %214 = icmp eq %struct.TYPE_15__* %213, null
  br i1 %214, label %215, label %220

215:                                              ; preds = %207
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %217 = call i32 @vm_page_unwire_noq(%struct.TYPE_15__* %216)
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %219 = call i32 @vm_page_free_zero(%struct.TYPE_15__* %218)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %4, align 8
  br label %256

220:                                              ; preds = %207
  br label %231

221:                                              ; preds = %191
  %222 = load i32, i32* %24, align 4
  %223 = load i32, i32* @ATTR_MASK, align 4
  %224 = xor i32 %223, -1
  %225 = and i32 %222, %224
  %226 = call %struct.TYPE_15__* @PHYS_TO_VM_PAGE(i32 %225)
  store %struct.TYPE_15__* %226, %struct.TYPE_15__** %10, align 8
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %228, align 4
  br label %231

231:                                              ; preds = %221, %220
  br label %232

232:                                              ; preds = %231, %177
  %233 = load i32*, i32** %21, align 8
  %234 = call i32 @pmap_load(i32* %233)
  %235 = load i32, i32* @ATTR_MASK, align 4
  %236 = xor i32 %235, -1
  %237 = and i32 %234, %236
  %238 = call i64 @PHYS_TO_DMAP(i32 %237)
  %239 = inttoptr i64 %238 to i32*
  store i32* %239, i32** %22, align 8
  %240 = load i32*, i32** %22, align 8
  %241 = load i64, i64* %6, align 8
  %242 = load i64, i64* @Ln_ADDR_MASK, align 8
  %243 = and i64 %241, %242
  %244 = getelementptr inbounds i32, i32* %240, i64 %243
  store i32* %244, i32** %22, align 8
  %245 = load i32*, i32** %22, align 8
  %246 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %247 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_15__* %246)
  %248 = load i32, i32* @L2_TABLE, align 4
  %249 = or i32 %247, %248
  %250 = call i32 @pmap_store(i32* %245, i32 %249)
  br label %251

251:                                              ; preds = %232, %129
  br label %252

252:                                              ; preds = %251, %66
  %253 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %254 = call i32 @pmap_resident_count_inc(%struct.TYPE_16__* %253, i32 1)
  %255 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_15__* %255, %struct.TYPE_15__** %4, align 8
  br label %256

256:                                              ; preds = %252, %215, %172, %113, %47
  %257 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  ret %struct.TYPE_15__* %257
}

declare dso_local i32 @PMAP_LOCK_ASSERT(%struct.TYPE_16__*, i32) #1

declare dso_local %struct.TYPE_15__* @vm_page_alloc(i32*, i64, i32) #1

declare dso_local i32 @RELEASE_PV_LIST_LOCK(%struct.rwlock**) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_16__*) #1

declare dso_local i32 @vm_wait(i32*) #1

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_16__*) #1

declare dso_local i32 @pmap_zero_page(%struct.TYPE_15__*) #1

declare dso_local i32 @dmb(i32) #1

declare dso_local i32 @pmap_store(i32*, i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_15__*) #1

declare dso_local i32 @pmap_load(i32*) #1

declare dso_local i32 @vm_page_unwire_noq(%struct.TYPE_15__*) #1

declare dso_local i32 @vm_page_free_zero(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i64 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @pmap_resident_count_inc(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
