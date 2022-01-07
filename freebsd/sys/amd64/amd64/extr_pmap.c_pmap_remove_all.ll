; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_remove_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_remove_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_page = type { i32, i32 }
%struct.TYPE_32__ = type { i32, i32, %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32, i32 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_34__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32 }
%struct.rwlock = type { i32 }
%struct.spglist = type { i32 }

@VPO_UNMANAGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"pmap_remove_all: page %p is not managed\00", align 1
@PG_FICTITIOUS = common dso_local global i32 0, align 4
@pv_dummy = common dso_local global %struct.md_page zeroinitializer, align 4
@PG_PS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"pmap_remove_all: found a 2mpage in page %p's pv list\00", align 1
@PG_W = common dso_local global i32 0, align 4
@PGA_REFERENCED = common dso_local global i32 0, align 4
@pv_next = common dso_local global i32 0, align 4
@PGA_WRITEABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_remove_all(%struct.TYPE_32__* %0) #0 {
  %2 = alloca %struct.TYPE_32__*, align 8
  %3 = alloca %struct.md_page*, align 8
  %4 = alloca %struct.TYPE_33__*, align 8
  %5 = alloca %struct.TYPE_34__*, align 8
  %6 = alloca %struct.rwlock*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.spglist, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %2, align 8
  %17 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @VPO_UNMANAGED, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %25 = bitcast %struct.TYPE_32__* %24 to i8*
  %26 = call i32 @KASSERT(i32 %23, i8* %25)
  %27 = call i32 @SLIST_INIT(%struct.spglist* %14)
  %28 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %29 = call %struct.rwlock* @VM_PAGE_TO_PV_LIST_LOCK(%struct.TYPE_32__* %28)
  store %struct.rwlock* %29, %struct.rwlock** %6, align 8
  %30 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PG_FICTITIOUS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %1
  br label %41

37:                                               ; preds = %1
  %38 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %39 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_32__* %38)
  %40 = call %struct.md_page* @pa_to_pvh(i32 %39)
  br label %41

41:                                               ; preds = %37, %36
  %42 = phi %struct.md_page* [ @pv_dummy, %36 ], [ %40, %37 ]
  store %struct.md_page* %42, %struct.md_page** %3, align 8
  br label %43

43:                                               ; preds = %130, %72, %41
  %44 = load %struct.rwlock*, %struct.rwlock** %6, align 8
  %45 = call i32 @rw_wlock(%struct.rwlock* %44)
  br label %46

46:                                               ; preds = %78, %43
  %47 = load %struct.md_page*, %struct.md_page** %3, align 8
  %48 = getelementptr inbounds %struct.md_page, %struct.md_page* %47, i32 0, i32 1
  %49 = call %struct.TYPE_33__* @TAILQ_FIRST(i32* %48)
  store %struct.TYPE_33__* %49, %struct.TYPE_33__** %4, align 8
  %50 = icmp ne %struct.TYPE_33__* %49, null
  br i1 %50, label %51, label %91

51:                                               ; preds = %46
  %52 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %53 = call %struct.TYPE_34__* @PV_PMAP(%struct.TYPE_33__* %52)
  store %struct.TYPE_34__* %53, %struct.TYPE_34__** %5, align 8
  %54 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %55 = call i32 @PMAP_TRYLOCK(%struct.TYPE_34__* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %78, label %57

57:                                               ; preds = %51
  %58 = load %struct.md_page*, %struct.md_page** %3, align 8
  %59 = getelementptr inbounds %struct.md_page, %struct.md_page* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %15, align 4
  %61 = load %struct.rwlock*, %struct.rwlock** %6, align 8
  %62 = call i32 @rw_wunlock(%struct.rwlock* %61)
  %63 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %64 = call i32 @PMAP_LOCK(%struct.TYPE_34__* %63)
  %65 = load %struct.rwlock*, %struct.rwlock** %6, align 8
  %66 = call i32 @rw_wlock(%struct.rwlock* %65)
  %67 = load i32, i32* %15, align 4
  %68 = load %struct.md_page*, %struct.md_page** %3, align 8
  %69 = getelementptr inbounds %struct.md_page, %struct.md_page* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %67, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %57
  %73 = load %struct.rwlock*, %struct.rwlock** %6, align 8
  %74 = call i32 @rw_wunlock(%struct.rwlock* %73)
  %75 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %76 = call i32 @PMAP_UNLOCK(%struct.TYPE_34__* %75)
  br label %43

77:                                               ; preds = %57
  br label %78

78:                                               ; preds = %77, %51
  %79 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %13, align 4
  %82 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %83 = load i32, i32* %13, align 4
  %84 = call i32* @pmap_pde(%struct.TYPE_34__* %82, i32 %83)
  store i32* %84, i32** %12, align 8
  %85 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %86 = load i32*, i32** %12, align 8
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @pmap_demote_pde_locked(%struct.TYPE_34__* %85, i32* %86, i32 %87, %struct.rwlock** %6)
  %89 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %90 = call i32 @PMAP_UNLOCK(%struct.TYPE_34__* %89)
  br label %46

91:                                               ; preds = %46
  br label %92

92:                                               ; preds = %198, %91
  %93 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %94, i32 0, i32 1
  %96 = call %struct.TYPE_33__* @TAILQ_FIRST(i32* %95)
  store %struct.TYPE_33__* %96, %struct.TYPE_33__** %4, align 8
  %97 = icmp ne %struct.TYPE_33__* %96, null
  br i1 %97, label %98, label %227

98:                                               ; preds = %92
  %99 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %100 = call %struct.TYPE_34__* @PV_PMAP(%struct.TYPE_33__* %99)
  store %struct.TYPE_34__* %100, %struct.TYPE_34__** %5, align 8
  %101 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %102 = call i32 @PMAP_TRYLOCK(%struct.TYPE_34__* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %136, label %104

104:                                              ; preds = %98
  %105 = load %struct.md_page*, %struct.md_page** %3, align 8
  %106 = getelementptr inbounds %struct.md_page, %struct.md_page* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %15, align 4
  %108 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %16, align 4
  %112 = load %struct.rwlock*, %struct.rwlock** %6, align 8
  %113 = call i32 @rw_wunlock(%struct.rwlock* %112)
  %114 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %115 = call i32 @PMAP_LOCK(%struct.TYPE_34__* %114)
  %116 = load %struct.rwlock*, %struct.rwlock** %6, align 8
  %117 = call i32 @rw_wlock(%struct.rwlock* %116)
  %118 = load i32, i32* %15, align 4
  %119 = load %struct.md_page*, %struct.md_page** %3, align 8
  %120 = getelementptr inbounds %struct.md_page, %struct.md_page* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %118, %121
  br i1 %122, label %130, label %123

123:                                              ; preds = %104
  %124 = load i32, i32* %16, align 4
  %125 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %124, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %123, %104
  %131 = load %struct.rwlock*, %struct.rwlock** %6, align 8
  %132 = call i32 @rw_wunlock(%struct.rwlock* %131)
  %133 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %134 = call i32 @PMAP_UNLOCK(%struct.TYPE_34__* %133)
  br label %43

135:                                              ; preds = %123
  br label %136

136:                                              ; preds = %135, %98
  %137 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %138 = call i32 @pmap_accessed_bit(%struct.TYPE_34__* %137)
  store i32 %138, i32* %9, align 4
  %139 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %140 = call i32 @pmap_modified_bit(%struct.TYPE_34__* %139)
  store i32 %140, i32* %10, align 4
  %141 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %142 = call i32 @pmap_rw_bit(%struct.TYPE_34__* %141)
  store i32 %142, i32* %11, align 4
  %143 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %144 = call i32 @pmap_resident_count_dec(%struct.TYPE_34__* %143, i32 1)
  %145 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %146 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32* @pmap_pde(%struct.TYPE_34__* %145, i32 %148)
  store i32* %149, i32** %12, align 8
  %150 = load i32*, i32** %12, align 8
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @PG_PS, align 4
  %153 = and i32 %151, %152
  %154 = icmp eq i32 %153, 0
  %155 = zext i1 %154 to i32
  %156 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %157 = bitcast %struct.TYPE_32__* %156 to i8*
  %158 = call i32 @KASSERT(i32 %155, i8* %157)
  %159 = load i32*, i32** %12, align 8
  %160 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32* @pmap_pde_to_pte(i32* %159, i32 %162)
  store i32* %163, i32** %7, align 8
  %164 = load i32*, i32** %7, align 8
  %165 = call i32 @pte_load_clear(i32* %164)
  store i32 %165, i32* %8, align 4
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* @PG_W, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %136
  %171 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* %173, align 4
  br label %176

176:                                              ; preds = %170, %136
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* %9, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %176
  %182 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %183 = load i32, i32* @PGA_REFERENCED, align 4
  %184 = call i32 @vm_page_aflag_set(%struct.TYPE_32__* %182, i32 %183)
  br label %185

185:                                              ; preds = %181, %176
  %186 = load i32, i32* %8, align 4
  %187 = load i32, i32* %10, align 4
  %188 = load i32, i32* %11, align 4
  %189 = or i32 %187, %188
  %190 = and i32 %186, %189
  %191 = load i32, i32* %10, align 4
  %192 = load i32, i32* %11, align 4
  %193 = or i32 %191, %192
  %194 = icmp eq i32 %190, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %185
  %196 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %197 = call i32 @vm_page_dirty(%struct.TYPE_32__* %196)
  br label %198

198:                                              ; preds = %195, %185
  %199 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %200 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32*, i32** %12, align 8
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @pmap_unuse_pt(%struct.TYPE_34__* %199, i32 %202, i32 %204, %struct.spglist* %14)
  %206 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %207 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @pmap_invalidate_page(%struct.TYPE_34__* %206, i32 %209)
  %211 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %212 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %215 = load i32, i32* @pv_next, align 4
  %216 = call i32 @TAILQ_REMOVE(i32* %213, %struct.TYPE_33__* %214, i32 %215)
  %217 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %218 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %219, align 4
  %222 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %223 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %224 = call i32 @free_pv_entry(%struct.TYPE_34__* %222, %struct.TYPE_33__* %223)
  %225 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %226 = call i32 @PMAP_UNLOCK(%struct.TYPE_34__* %225)
  br label %92

227:                                              ; preds = %92
  %228 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %229 = load i32, i32* @PGA_WRITEABLE, align 4
  %230 = call i32 @vm_page_aflag_clear(%struct.TYPE_32__* %228, i32 %229)
  %231 = load %struct.rwlock*, %struct.rwlock** %6, align 8
  %232 = call i32 @rw_wunlock(%struct.rwlock* %231)
  %233 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %234 = call i32 @pmap_delayed_invl_wait(%struct.TYPE_32__* %233)
  %235 = call i32 @vm_page_free_pages_toq(%struct.spglist* %14, i32 1)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @SLIST_INIT(%struct.spglist*) #1

declare dso_local %struct.rwlock* @VM_PAGE_TO_PV_LIST_LOCK(%struct.TYPE_32__*) #1

declare dso_local %struct.md_page* @pa_to_pvh(i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_32__*) #1

declare dso_local i32 @rw_wlock(%struct.rwlock*) #1

declare dso_local %struct.TYPE_33__* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.TYPE_34__* @PV_PMAP(%struct.TYPE_33__*) #1

declare dso_local i32 @PMAP_TRYLOCK(%struct.TYPE_34__*) #1

declare dso_local i32 @rw_wunlock(%struct.rwlock*) #1

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_34__*) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_34__*) #1

declare dso_local i32* @pmap_pde(%struct.TYPE_34__*, i32) #1

declare dso_local i32 @pmap_demote_pde_locked(%struct.TYPE_34__*, i32*, i32, %struct.rwlock**) #1

declare dso_local i32 @pmap_accessed_bit(%struct.TYPE_34__*) #1

declare dso_local i32 @pmap_modified_bit(%struct.TYPE_34__*) #1

declare dso_local i32 @pmap_rw_bit(%struct.TYPE_34__*) #1

declare dso_local i32 @pmap_resident_count_dec(%struct.TYPE_34__*, i32) #1

declare dso_local i32* @pmap_pde_to_pte(i32*, i32) #1

declare dso_local i32 @pte_load_clear(i32*) #1

declare dso_local i32 @vm_page_aflag_set(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @vm_page_dirty(%struct.TYPE_32__*) #1

declare dso_local i32 @pmap_unuse_pt(%struct.TYPE_34__*, i32, i32, %struct.spglist*) #1

declare dso_local i32 @pmap_invalidate_page(%struct.TYPE_34__*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_33__*, i32) #1

declare dso_local i32 @free_pv_entry(%struct.TYPE_34__*, %struct.TYPE_33__*) #1

declare dso_local i32 @vm_page_aflag_clear(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @pmap_delayed_invl_wait(%struct.TYPE_32__*) #1

declare dso_local i32 @vm_page_free_pages_toq(%struct.spglist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
