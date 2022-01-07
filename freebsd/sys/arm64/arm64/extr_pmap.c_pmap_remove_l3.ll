; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_remove_l3.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_remove_l3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.spglist = type { i32 }
%struct.rwlock = type { i32 }
%struct.md_page = type { i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@ATTR_SW_WIRED = common dso_local global i32 0, align 4
@ATTR_SW_MANAGED = common dso_local global i32 0, align 4
@ATTR_MASK = common dso_local global i32 0, align 4
@ATTR_AF = common dso_local global i32 0, align 4
@PGA_REFERENCED = common dso_local global i32 0, align 4
@PG_FICTITIOUS = common dso_local global i32 0, align 4
@PGA_WRITEABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i32*, i32, i32, %struct.spglist*, %struct.rwlock**)* @pmap_remove_l3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_remove_l3(%struct.TYPE_20__* %0, i32* %1, i32 %2, i32 %3, %struct.spglist* %4, %struct.rwlock** %5) #0 {
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.spglist*, align 8
  %12 = alloca %struct.rwlock**, align 8
  %13 = alloca %struct.md_page*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.spglist* %4, %struct.spglist** %11, align 8
  store %struct.rwlock** %5, %struct.rwlock*** %12, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %17 = load i32, i32* @MA_OWNED, align 4
  %18 = call i32 @PMAP_LOCK_ASSERT(%struct.TYPE_20__* %16, i32 %17)
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @pmap_load_clear(i32* %19)
  store i32 %20, i32* %14, align 4
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @pmap_invalidate_page(%struct.TYPE_20__* %21, i32 %22)
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* @ATTR_SW_WIRED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %6
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %28, %6
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %36 = call i32 @pmap_resident_count_dec(%struct.TYPE_20__* %35, i32 1)
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* @ATTR_SW_MANAGED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %97

41:                                               ; preds = %34
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* @ATTR_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  %46 = call %struct.TYPE_19__* @PHYS_TO_VM_PAGE(i32 %45)
  store %struct.TYPE_19__* %46, %struct.TYPE_19__** %15, align 8
  %47 = load i32, i32* %14, align 4
  %48 = call i64 @pmap_pte_dirty(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %52 = call i32 @vm_page_dirty(%struct.TYPE_19__* %51)
  br label %53

53:                                               ; preds = %50, %41
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* @ATTR_AF, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %60 = load i32, i32* @PGA_REFERENCED, align 4
  %61 = call i32 @vm_page_aflag_set(%struct.TYPE_19__* %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %53
  %63 = load %struct.rwlock**, %struct.rwlock*** %12, align 8
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %65 = call i32 @CHANGE_PV_LIST_LOCK_TO_VM_PAGE(%struct.rwlock** %63, %struct.TYPE_19__* %64)
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @pmap_pvh_free(%struct.TYPE_17__* %67, %struct.TYPE_20__* %68, i32 %69)
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = call i64 @TAILQ_EMPTY(i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %96

76:                                               ; preds = %62
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @PG_FICTITIOUS, align 4
  %81 = and i32 %79, %80
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %76
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %85 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_19__* %84)
  %86 = call %struct.md_page* @pa_to_pvh(i32 %85)
  store %struct.md_page* %86, %struct.md_page** %13, align 8
  %87 = load %struct.md_page*, %struct.md_page** %13, align 8
  %88 = getelementptr inbounds %struct.md_page, %struct.md_page* %87, i32 0, i32 0
  %89 = call i64 @TAILQ_EMPTY(i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %83
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %93 = load i32, i32* @PGA_WRITEABLE, align 4
  %94 = call i32 @vm_page_aflag_clear(%struct.TYPE_19__* %92, i32 %93)
  br label %95

95:                                               ; preds = %91, %83
  br label %96

96:                                               ; preds = %95, %76, %62
  br label %97

97:                                               ; preds = %96, %34
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.spglist*, %struct.spglist** %11, align 8
  %102 = call i32 @pmap_unuse_pt(%struct.TYPE_20__* %98, i32 %99, i32 %100, %struct.spglist* %101)
  ret i32 %102
}

declare dso_local i32 @PMAP_LOCK_ASSERT(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @pmap_load_clear(i32*) #1

declare dso_local i32 @pmap_invalidate_page(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @pmap_resident_count_dec(%struct.TYPE_20__*, i32) #1

declare dso_local %struct.TYPE_19__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i64 @pmap_pte_dirty(i32) #1

declare dso_local i32 @vm_page_dirty(%struct.TYPE_19__*) #1

declare dso_local i32 @vm_page_aflag_set(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @CHANGE_PV_LIST_LOCK_TO_VM_PAGE(%struct.rwlock**, %struct.TYPE_19__*) #1

declare dso_local i32 @pmap_pvh_free(%struct.TYPE_17__*, %struct.TYPE_20__*, i32) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.md_page* @pa_to_pvh(i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_19__*) #1

declare dso_local i32 @vm_page_aflag_clear(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @pmap_unuse_pt(%struct.TYPE_20__*, i32, i32, %struct.spglist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
