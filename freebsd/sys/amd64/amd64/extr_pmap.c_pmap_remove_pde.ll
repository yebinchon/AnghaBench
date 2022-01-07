; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_remove_pde.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_remove_pde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.spglist = type { i32 }
%struct.rwlock = type { i32 }
%struct.md_page = type { i32 }
%struct.TYPE_28__ = type { i64, i64, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@PDRMASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"pmap_remove_pde: sva is not 2mpage aligned\00", align 1
@PG_W = common dso_local global i32 0, align 4
@NBPDR = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global %struct.TYPE_29__* null, align 8
@PG_MANAGED = common dso_local global i32 0, align 4
@PG_PS_FRAME = common dso_local global i32 0, align 4
@PGA_REFERENCED = common dso_local global i32 0, align 4
@PGA_WRITEABLE = common dso_local global i32 0, align 4
@VM_PAGE_BITS_ALL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"pmap_remove_pde: pte page not promoted\00", align 1
@NPTEPG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"pmap_remove_pde: pte page ref count error\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_29__*, i32*, i32, %struct.spglist*, %struct.rwlock**)* @pmap_remove_pde to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_remove_pde(%struct.TYPE_29__* %0, i32* %1, i32 %2, %struct.spglist* %3, %struct.rwlock** %4) #0 {
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.spglist*, align 8
  %10 = alloca %struct.rwlock**, align 8
  %11 = alloca %struct.md_page*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_28__*, align 8
  %16 = alloca %struct.TYPE_28__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.spglist* %3, %struct.spglist** %9, align 8
  store %struct.rwlock** %4, %struct.rwlock*** %10, align 8
  %21 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %22 = call i32 @pmap_global_bit(%struct.TYPE_29__* %21)
  store i32 %22, i32* %17, align 4
  %23 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %24 = call i32 @pmap_accessed_bit(%struct.TYPE_29__* %23)
  store i32 %24, i32* %18, align 4
  %25 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %26 = call i32 @pmap_modified_bit(%struct.TYPE_29__* %25)
  store i32 %26, i32* %19, align 4
  %27 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %28 = call i32 @pmap_rw_bit(%struct.TYPE_29__* %27)
  store i32 %28, i32* %20, align 4
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %30 = load i32, i32* @MA_OWNED, align 4
  %31 = call i32 @PMAP_LOCK_ASSERT(%struct.TYPE_29__* %29, i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @PDRMASK, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @KASSERT(i32 %36, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @pte_load_clear(i32* %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @PG_W, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %5
  %45 = load i32, i32* @NBPDR, align 4
  %46 = load i32, i32* @PAGE_SIZE, align 4
  %47 = sdiv i32 %45, %46
  %48 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %51, %47
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %44, %5
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %17, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.TYPE_29__*, %struct.TYPE_29__** @kernel_pmap, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @pmap_invalidate_pde_page(%struct.TYPE_29__* %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %58, %53
  %64 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %65 = load i32, i32* @NBPDR, align 4
  %66 = load i32, i32* @PAGE_SIZE, align 4
  %67 = sdiv i32 %65, %66
  %68 = call i32 @pmap_resident_count_dec(%struct.TYPE_29__* %64, i32 %67)
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @PG_MANAGED, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %146

73:                                               ; preds = %63
  %74 = load %struct.rwlock**, %struct.rwlock*** %10, align 8
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @PG_PS_FRAME, align 4
  %77 = and i32 %75, %76
  %78 = call i32 @CHANGE_PV_LIST_LOCK_TO_PHYS(%struct.rwlock** %74, i32 %77)
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* @PG_PS_FRAME, align 4
  %81 = and i32 %79, %80
  %82 = call %struct.md_page* @pa_to_pvh(i32 %81)
  store %struct.md_page* %82, %struct.md_page** %11, align 8
  %83 = load %struct.md_page*, %struct.md_page** %11, align 8
  %84 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @pmap_pvh_free(%struct.md_page* %83, %struct.TYPE_29__* %84, i32 %85)
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @NBPDR, align 4
  %89 = add nsw i32 %87, %88
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* @PG_PS_FRAME, align 4
  %93 = and i32 %91, %92
  %94 = call %struct.TYPE_28__* @PHYS_TO_VM_PAGE(i32 %93)
  store %struct.TYPE_28__* %94, %struct.TYPE_28__** %15, align 8
  br label %95

95:                                               ; preds = %139, %73
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %145

99:                                               ; preds = %95
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %19, align 4
  %102 = load i32, i32* %20, align 4
  %103 = or i32 %101, %102
  %104 = and i32 %100, %103
  %105 = load i32, i32* %19, align 4
  %106 = load i32, i32* %20, align 4
  %107 = or i32 %105, %106
  %108 = icmp eq i32 %104, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %99
  %110 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %111 = call i32 @vm_page_dirty(%struct.TYPE_28__* %110)
  br label %112

112:                                              ; preds = %109, %99
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %18, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %119 = load i32, i32* @PGA_REFERENCED, align 4
  %120 = call i32 @vm_page_aflag_set(%struct.TYPE_28__* %118, i32 %119)
  br label %121

121:                                              ; preds = %117, %112
  %122 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %123 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %123, i32 0, i32 0
  %125 = call i64 @TAILQ_EMPTY(i32* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %121
  %128 = load %struct.md_page*, %struct.md_page** %11, align 8
  %129 = getelementptr inbounds %struct.md_page, %struct.md_page* %128, i32 0, i32 0
  %130 = call i64 @TAILQ_EMPTY(i32* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %134 = load i32, i32* @PGA_WRITEABLE, align 4
  %135 = call i32 @vm_page_aflag_clear(%struct.TYPE_28__* %133, i32 %134)
  br label %136

136:                                              ; preds = %132, %127, %121
  %137 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %138 = call i32 @pmap_delayed_invl_page(%struct.TYPE_28__* %137)
  br label %139

139:                                              ; preds = %136
  %140 = load i32, i32* @PAGE_SIZE, align 4
  %141 = load i32, i32* %14, align 4
  %142 = add nsw i32 %141, %140
  store i32 %142, i32* %14, align 4
  %143 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %144 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %143, i32 1
  store %struct.TYPE_28__* %144, %struct.TYPE_28__** %15, align 8
  br label %95

145:                                              ; preds = %95
  br label %146

146:                                              ; preds = %145, %63
  %147 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %148 = load %struct.TYPE_29__*, %struct.TYPE_29__** @kernel_pmap, align 8
  %149 = icmp eq %struct.TYPE_29__* %147, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %146
  %151 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %152 = load i32*, i32** %7, align 8
  %153 = load i32, i32* %8, align 4
  %154 = call i32 @pmap_remove_kernel_pde(%struct.TYPE_29__* %151, i32* %152, i32 %153)
  br label %185

155:                                              ; preds = %146
  %156 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %157 = load i32, i32* %8, align 4
  %158 = call %struct.TYPE_28__* @pmap_remove_pt_page(%struct.TYPE_29__* %156, i32 %157)
  store %struct.TYPE_28__* %158, %struct.TYPE_28__** %16, align 8
  %159 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %160 = icmp ne %struct.TYPE_28__* %159, null
  br i1 %160, label %161, label %184

161:                                              ; preds = %155
  %162 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %163 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @VM_PAGE_BITS_ALL, align 8
  %166 = icmp eq i64 %164, %165
  %167 = zext i1 %166 to i32
  %168 = call i32 @KASSERT(i32 %167, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %169 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %170 = call i32 @pmap_resident_count_dec(%struct.TYPE_29__* %169, i32 1)
  %171 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %172 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @NPTEPG, align 8
  %175 = icmp eq i64 %173, %174
  %176 = zext i1 %175 to i32
  %177 = call i32 @KASSERT(i32 %176, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %178 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %179 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %178, i32 0, i32 1
  store i64 0, i64* %179, align 8
  %180 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %181 = load %struct.spglist*, %struct.spglist** %9, align 8
  %182 = load i32, i32* @FALSE, align 4
  %183 = call i32 @pmap_add_delayed_free_list(%struct.TYPE_28__* %180, %struct.spglist* %181, i32 %182)
  br label %184

184:                                              ; preds = %161, %155
  br label %185

185:                                              ; preds = %184, %150
  %186 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %187 = load i32, i32* %8, align 4
  %188 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %189 = load i32, i32* %8, align 4
  %190 = call i32* @pmap_pdpe(%struct.TYPE_29__* %188, i32 %189)
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.spglist*, %struct.spglist** %9, align 8
  %193 = call i32 @pmap_unuse_pt(%struct.TYPE_29__* %186, i32 %187, i32 %191, %struct.spglist* %192)
  ret i32 %193
}

declare dso_local i32 @pmap_global_bit(%struct.TYPE_29__*) #1

declare dso_local i32 @pmap_accessed_bit(%struct.TYPE_29__*) #1

declare dso_local i32 @pmap_modified_bit(%struct.TYPE_29__*) #1

declare dso_local i32 @pmap_rw_bit(%struct.TYPE_29__*) #1

declare dso_local i32 @PMAP_LOCK_ASSERT(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @pte_load_clear(i32*) #1

declare dso_local i32 @pmap_invalidate_pde_page(%struct.TYPE_29__*, i32, i32) #1

declare dso_local i32 @pmap_resident_count_dec(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @CHANGE_PV_LIST_LOCK_TO_PHYS(%struct.rwlock**, i32) #1

declare dso_local %struct.md_page* @pa_to_pvh(i32) #1

declare dso_local i32 @pmap_pvh_free(%struct.md_page*, %struct.TYPE_29__*, i32) #1

declare dso_local %struct.TYPE_28__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @vm_page_dirty(%struct.TYPE_28__*) #1

declare dso_local i32 @vm_page_aflag_set(%struct.TYPE_28__*, i32) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @vm_page_aflag_clear(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @pmap_delayed_invl_page(%struct.TYPE_28__*) #1

declare dso_local i32 @pmap_remove_kernel_pde(%struct.TYPE_29__*, i32*, i32) #1

declare dso_local %struct.TYPE_28__* @pmap_remove_pt_page(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @pmap_add_delayed_free_list(%struct.TYPE_28__*, %struct.spglist*, i32) #1

declare dso_local i32 @pmap_unuse_pt(%struct.TYPE_29__*, i32, i32, %struct.spglist*) #1

declare dso_local i32* @pmap_pdpe(%struct.TYPE_29__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
