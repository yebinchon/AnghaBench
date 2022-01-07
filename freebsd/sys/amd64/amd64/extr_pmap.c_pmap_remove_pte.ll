; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_remove_pte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_remove_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.spglist = type { i32 }
%struct.rwlock = type { i32 }
%struct.md_page = type { i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@PG_W = common dso_local global i32 0, align 4
@PG_MANAGED = common dso_local global i32 0, align 4
@PG_FRAME = common dso_local global i32 0, align 4
@PGA_REFERENCED = common dso_local global i32 0, align 4
@PG_FICTITIOUS = common dso_local global i32 0, align 4
@PGA_WRITEABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, i32*, i32, i32, %struct.spglist*, %struct.rwlock**)* @pmap_remove_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_remove_pte(%struct.TYPE_23__* %0, i32* %1, i32 %2, i32 %3, %struct.spglist* %4, %struct.rwlock** %5) #0 {
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.spglist*, align 8
  %12 = alloca %struct.rwlock**, align 8
  %13 = alloca %struct.md_page*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.spglist* %4, %struct.spglist** %11, align 8
  store %struct.rwlock** %5, %struct.rwlock*** %12, align 8
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %20 = call i32 @pmap_accessed_bit(%struct.TYPE_23__* %19)
  store i32 %20, i32* %15, align 4
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %22 = call i32 @pmap_modified_bit(%struct.TYPE_23__* %21)
  store i32 %22, i32* %16, align 4
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %24 = call i32 @pmap_rw_bit(%struct.TYPE_23__* %23)
  store i32 %24, i32* %17, align 4
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %26 = load i32, i32* @MA_OWNED, align 4
  %27 = call i32 @PMAP_LOCK_ASSERT(%struct.TYPE_23__* %25, i32 %26)
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @pte_load_clear(i32* %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* @PG_W, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %6
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %34, %6
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %42 = call i32 @pmap_resident_count_dec(%struct.TYPE_23__* %41, i32 1)
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* @PG_MANAGED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %110

47:                                               ; preds = %40
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* @PG_FRAME, align 4
  %50 = and i32 %48, %49
  %51 = call %struct.TYPE_22__* @PHYS_TO_VM_PAGE(i32 %50)
  store %struct.TYPE_22__* %51, %struct.TYPE_22__** %18, align 8
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %17, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %52, %55
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* %17, align 4
  %59 = or i32 %57, %58
  %60 = icmp eq i32 %56, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %47
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %63 = call i32 @vm_page_dirty(%struct.TYPE_22__* %62)
  br label %64

64:                                               ; preds = %61, %47
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %15, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %71 = load i32, i32* @PGA_REFERENCED, align 4
  %72 = call i32 @vm_page_aflag_set(%struct.TYPE_22__* %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %64
  %74 = load %struct.rwlock**, %struct.rwlock*** %12, align 8
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %76 = call i32 @CHANGE_PV_LIST_LOCK_TO_VM_PAGE(%struct.rwlock** %74, %struct.TYPE_22__* %75)
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @pmap_pvh_free(%struct.TYPE_20__* %78, %struct.TYPE_23__* %79, i32 %80)
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 0
  %85 = call i64 @TAILQ_EMPTY(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %107

87:                                               ; preds = %73
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @PG_FICTITIOUS, align 4
  %92 = and i32 %90, %91
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %87
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %96 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_22__* %95)
  %97 = call %struct.md_page* @pa_to_pvh(i32 %96)
  store %struct.md_page* %97, %struct.md_page** %13, align 8
  %98 = load %struct.md_page*, %struct.md_page** %13, align 8
  %99 = getelementptr inbounds %struct.md_page, %struct.md_page* %98, i32 0, i32 0
  %100 = call i64 @TAILQ_EMPTY(i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %94
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %104 = load i32, i32* @PGA_WRITEABLE, align 4
  %105 = call i32 @vm_page_aflag_clear(%struct.TYPE_22__* %103, i32 %104)
  br label %106

106:                                              ; preds = %102, %94
  br label %107

107:                                              ; preds = %106, %87, %73
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %109 = call i32 @pmap_delayed_invl_page(%struct.TYPE_22__* %108)
  br label %110

110:                                              ; preds = %107, %40
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.spglist*, %struct.spglist** %11, align 8
  %115 = call i32 @pmap_unuse_pt(%struct.TYPE_23__* %111, i32 %112, i32 %113, %struct.spglist* %114)
  ret i32 %115
}

declare dso_local i32 @pmap_accessed_bit(%struct.TYPE_23__*) #1

declare dso_local i32 @pmap_modified_bit(%struct.TYPE_23__*) #1

declare dso_local i32 @pmap_rw_bit(%struct.TYPE_23__*) #1

declare dso_local i32 @PMAP_LOCK_ASSERT(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @pte_load_clear(i32*) #1

declare dso_local i32 @pmap_resident_count_dec(%struct.TYPE_23__*, i32) #1

declare dso_local %struct.TYPE_22__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @vm_page_dirty(%struct.TYPE_22__*) #1

declare dso_local i32 @vm_page_aflag_set(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @CHANGE_PV_LIST_LOCK_TO_VM_PAGE(%struct.rwlock**, %struct.TYPE_22__*) #1

declare dso_local i32 @pmap_pvh_free(%struct.TYPE_20__*, %struct.TYPE_23__*, i32) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.md_page* @pa_to_pvh(i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_22__*) #1

declare dso_local i32 @vm_page_aflag_clear(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @pmap_delayed_invl_page(%struct.TYPE_22__*) #1

declare dso_local i32 @pmap_unuse_pt(%struct.TYPE_23__*, i32, i32, %struct.spglist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
