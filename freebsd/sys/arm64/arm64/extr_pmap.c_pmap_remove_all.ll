; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_remove_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_remove_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_page = type { i32, i32 }
%struct.TYPE_29__ = type { i32, i32, %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_31__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32 }
%struct.rwlock = type { i32 }
%struct.spglist = type { i32 }

@VPO_UNMANAGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"pmap_remove_all: page %p is not managed\00", align 1
@PG_FICTITIOUS = common dso_local global i32 0, align 4
@pv_dummy = common dso_local global %struct.md_page zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"pmap_remove_all: no page table entry found\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"pmap_remove_all: invalid pte level %d\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"pmap_remove_all: no page directory entry found\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"pmap_remove_all: invalid pde level %d\00", align 1
@ATTR_SW_WIRED = common dso_local global i32 0, align 4
@ATTR_AF = common dso_local global i32 0, align 4
@PGA_REFERENCED = common dso_local global i32 0, align 4
@pv_next = common dso_local global i32 0, align 4
@PGA_WRITEABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_remove_all(%struct.TYPE_29__* %0) #0 {
  %2 = alloca %struct.TYPE_29__*, align 8
  %3 = alloca %struct.md_page*, align 8
  %4 = alloca %struct.TYPE_30__*, align 8
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca %struct.rwlock*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.spglist, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %2, align 8
  %16 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @VPO_UNMANAGED, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %24 = bitcast %struct.TYPE_29__* %23 to i8*
  %25 = call i32 @KASSERT(i32 %22, i8* %24)
  %26 = call i32 @SLIST_INIT(%struct.spglist* %12)
  %27 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %28 = call %struct.rwlock* @VM_PAGE_TO_PV_LIST_LOCK(%struct.TYPE_29__* %27)
  store %struct.rwlock* %28, %struct.rwlock** %6, align 8
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PG_FICTITIOUS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %1
  br label %40

36:                                               ; preds = %1
  %37 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %38 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_29__* %37)
  %39 = call %struct.md_page* @pa_to_pvh(i32 %38)
  br label %40

40:                                               ; preds = %36, %35
  %41 = phi %struct.md_page* [ @pv_dummy, %35 ], [ %39, %36 ]
  store %struct.md_page* %41, %struct.md_page** %3, align 8
  br label %42

42:                                               ; preds = %140, %71, %40
  %43 = load %struct.rwlock*, %struct.rwlock** %6, align 8
  %44 = call i32 @rw_wlock(%struct.rwlock* %43)
  br label %45

45:                                               ; preds = %77, %42
  %46 = load %struct.md_page*, %struct.md_page** %3, align 8
  %47 = getelementptr inbounds %struct.md_page, %struct.md_page* %46, i32 0, i32 1
  %48 = call %struct.TYPE_30__* @TAILQ_FIRST(i32* %47)
  store %struct.TYPE_30__* %48, %struct.TYPE_30__** %4, align 8
  %49 = icmp ne %struct.TYPE_30__* %48, null
  br i1 %49, label %50, label %101

50:                                               ; preds = %45
  %51 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %52 = call %struct.TYPE_31__* @PV_PMAP(%struct.TYPE_30__* %51)
  store %struct.TYPE_31__* %52, %struct.TYPE_31__** %5, align 8
  %53 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %54 = call i32 @PMAP_TRYLOCK(%struct.TYPE_31__* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %77, label %56

56:                                               ; preds = %50
  %57 = load %struct.md_page*, %struct.md_page** %3, align 8
  %58 = getelementptr inbounds %struct.md_page, %struct.md_page* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %14, align 4
  %60 = load %struct.rwlock*, %struct.rwlock** %6, align 8
  %61 = call i32 @rw_wunlock(%struct.rwlock* %60)
  %62 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %63 = call i32 @PMAP_LOCK(%struct.TYPE_31__* %62)
  %64 = load %struct.rwlock*, %struct.rwlock** %6, align 8
  %65 = call i32 @rw_wlock(%struct.rwlock* %64)
  %66 = load i32, i32* %14, align 4
  %67 = load %struct.md_page*, %struct.md_page** %3, align 8
  %68 = getelementptr inbounds %struct.md_page, %struct.md_page* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %66, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %56
  %72 = load %struct.rwlock*, %struct.rwlock** %6, align 8
  %73 = call i32 @rw_wunlock(%struct.rwlock* %72)
  %74 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %75 = call i32 @PMAP_UNLOCK(%struct.TYPE_31__* %74)
  br label %42

76:                                               ; preds = %56
  br label %77

77:                                               ; preds = %76, %50
  %78 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %11, align 4
  %81 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32* @pmap_pte(%struct.TYPE_31__* %81, i32 %82, i32* %13)
  store i32* %83, i32** %9, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = icmp ne i32* %84, null
  %86 = zext i1 %85 to i32
  %87 = call i32 @KASSERT(i32 %86, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i32, i32* %13, align 4
  %89 = icmp eq i32 %88, 2
  %90 = zext i1 %89 to i32
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i8*
  %94 = call i32 @KASSERT(i32 %90, i8* %93)
  %95 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %96 = load i32*, i32** %9, align 8
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @pmap_demote_l2_locked(%struct.TYPE_31__* %95, i32* %96, i32 %97, %struct.rwlock** %6)
  %99 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %100 = call i32 @PMAP_UNLOCK(%struct.TYPE_31__* %99)
  br label %45

101:                                              ; preds = %45
  br label %102

102:                                              ; preds = %205, %101
  %103 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %104, i32 0, i32 1
  %106 = call %struct.TYPE_30__* @TAILQ_FIRST(i32* %105)
  store %struct.TYPE_30__* %106, %struct.TYPE_30__** %4, align 8
  %107 = icmp ne %struct.TYPE_30__* %106, null
  br i1 %107, label %108, label %228

108:                                              ; preds = %102
  %109 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %110 = call %struct.TYPE_31__* @PV_PMAP(%struct.TYPE_30__* %109)
  store %struct.TYPE_31__* %110, %struct.TYPE_31__** %5, align 8
  %111 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %112 = call i32 @PMAP_TRYLOCK(%struct.TYPE_31__* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %146, label %114

114:                                              ; preds = %108
  %115 = load %struct.md_page*, %struct.md_page** %3, align 8
  %116 = getelementptr inbounds %struct.md_page, %struct.md_page* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %14, align 4
  %118 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %15, align 4
  %122 = load %struct.rwlock*, %struct.rwlock** %6, align 8
  %123 = call i32 @rw_wunlock(%struct.rwlock* %122)
  %124 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %125 = call i32 @PMAP_LOCK(%struct.TYPE_31__* %124)
  %126 = load %struct.rwlock*, %struct.rwlock** %6, align 8
  %127 = call i32 @rw_wlock(%struct.rwlock* %126)
  %128 = load i32, i32* %14, align 4
  %129 = load %struct.md_page*, %struct.md_page** %3, align 8
  %130 = getelementptr inbounds %struct.md_page, %struct.md_page* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %128, %131
  br i1 %132, label %140, label %133

133:                                              ; preds = %114
  %134 = load i32, i32* %15, align 4
  %135 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %134, %138
  br i1 %139, label %140, label %145

140:                                              ; preds = %133, %114
  %141 = load %struct.rwlock*, %struct.rwlock** %6, align 8
  %142 = call i32 @rw_wunlock(%struct.rwlock* %141)
  %143 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %144 = call i32 @PMAP_UNLOCK(%struct.TYPE_31__* %143)
  br label %42

145:                                              ; preds = %133
  br label %146

146:                                              ; preds = %145, %108
  %147 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %148 = call i32 @pmap_resident_count_dec(%struct.TYPE_31__* %147, i32 1)
  %149 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %150 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32* @pmap_pde(%struct.TYPE_31__* %149, i32 %152, i32* %13)
  store i32* %153, i32** %7, align 8
  %154 = load i32*, i32** %7, align 8
  %155 = icmp ne i32* %154, null
  %156 = zext i1 %155 to i32
  %157 = call i32 @KASSERT(i32 %156, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %158 = load i32, i32* %13, align 4
  %159 = icmp eq i32 %158, 2
  %160 = zext i1 %159 to i32
  %161 = load i32, i32* %13, align 4
  %162 = sext i32 %161 to i64
  %163 = inttoptr i64 %162 to i8*
  %164 = call i32 @KASSERT(i32 %160, i8* %163)
  %165 = load i32*, i32** %7, align 8
  %166 = call i32 @pmap_load(i32* %165)
  store i32 %166, i32* %8, align 4
  %167 = load i32*, i32** %7, align 8
  %168 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32* @pmap_l2_to_l3(i32* %167, i32 %170)
  store i32* %171, i32** %9, align 8
  %172 = load i32*, i32** %9, align 8
  %173 = call i32 @pmap_load_clear(i32* %172)
  store i32 %173, i32* %10, align 4
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* @ATTR_SW_WIRED, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %146
  %179 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, -1
  store i32 %183, i32* %181, align 4
  br label %184

184:                                              ; preds = %178, %146
  %185 = load i32, i32* %10, align 4
  %186 = load i32, i32* @ATTR_AF, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %198

189:                                              ; preds = %184
  %190 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %191 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @pmap_invalidate_page(%struct.TYPE_31__* %190, i32 %193)
  %195 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %196 = load i32, i32* @PGA_REFERENCED, align 4
  %197 = call i32 @vm_page_aflag_set(%struct.TYPE_29__* %195, i32 %196)
  br label %198

198:                                              ; preds = %189, %184
  %199 = load i32, i32* %10, align 4
  %200 = call i64 @pmap_pte_dirty(i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %198
  %203 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %204 = call i32 @vm_page_dirty(%struct.TYPE_29__* %203)
  br label %205

205:                                              ; preds = %202, %198
  %206 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %207 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %8, align 4
  %211 = call i32 @pmap_unuse_pt(%struct.TYPE_31__* %206, i32 %209, i32 %210, %struct.spglist* %12)
  %212 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %213 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %216 = load i32, i32* @pv_next, align 4
  %217 = call i32 @TAILQ_REMOVE(i32* %214, %struct.TYPE_30__* %215, i32 %216)
  %218 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %219 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %220, align 4
  %223 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %224 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %225 = call i32 @free_pv_entry(%struct.TYPE_31__* %223, %struct.TYPE_30__* %224)
  %226 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %227 = call i32 @PMAP_UNLOCK(%struct.TYPE_31__* %226)
  br label %102

228:                                              ; preds = %102
  %229 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %230 = load i32, i32* @PGA_WRITEABLE, align 4
  %231 = call i32 @vm_page_aflag_clear(%struct.TYPE_29__* %229, i32 %230)
  %232 = load %struct.rwlock*, %struct.rwlock** %6, align 8
  %233 = call i32 @rw_wunlock(%struct.rwlock* %232)
  %234 = call i32 @vm_page_free_pages_toq(%struct.spglist* %12, i32 1)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @SLIST_INIT(%struct.spglist*) #1

declare dso_local %struct.rwlock* @VM_PAGE_TO_PV_LIST_LOCK(%struct.TYPE_29__*) #1

declare dso_local %struct.md_page* @pa_to_pvh(i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_29__*) #1

declare dso_local i32 @rw_wlock(%struct.rwlock*) #1

declare dso_local %struct.TYPE_30__* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.TYPE_31__* @PV_PMAP(%struct.TYPE_30__*) #1

declare dso_local i32 @PMAP_TRYLOCK(%struct.TYPE_31__*) #1

declare dso_local i32 @rw_wunlock(%struct.rwlock*) #1

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_31__*) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_31__*) #1

declare dso_local i32* @pmap_pte(%struct.TYPE_31__*, i32, i32*) #1

declare dso_local i32 @pmap_demote_l2_locked(%struct.TYPE_31__*, i32*, i32, %struct.rwlock**) #1

declare dso_local i32 @pmap_resident_count_dec(%struct.TYPE_31__*, i32) #1

declare dso_local i32* @pmap_pde(%struct.TYPE_31__*, i32, i32*) #1

declare dso_local i32 @pmap_load(i32*) #1

declare dso_local i32* @pmap_l2_to_l3(i32*, i32) #1

declare dso_local i32 @pmap_load_clear(i32*) #1

declare dso_local i32 @pmap_invalidate_page(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @vm_page_aflag_set(%struct.TYPE_29__*, i32) #1

declare dso_local i64 @pmap_pte_dirty(i32) #1

declare dso_local i32 @vm_page_dirty(%struct.TYPE_29__*) #1

declare dso_local i32 @pmap_unuse_pt(%struct.TYPE_31__*, i32, i32, %struct.spglist*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_30__*, i32) #1

declare dso_local i32 @free_pv_entry(%struct.TYPE_31__*, %struct.TYPE_30__*) #1

declare dso_local i32 @vm_page_aflag_clear(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @vm_page_free_pages_toq(%struct.spglist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
