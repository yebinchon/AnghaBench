; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_remove_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_remove_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.pv_entry = type { i32, i32 }
%struct.l2_bucket = type { i32* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }

@pvh_global_lock = common dso_local global i32 0, align 4
@PVF_WIRED = common dso_local global i32 0, align 4
@PVF_UNMAN = common dso_local global i32 0, align 4
@pv_plist = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"No L2 bucket in pmap_remove_pages\00", align 1
@L2_S_FRAME = common dso_local global i32 0, align 4
@KERNBASE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"Trying to access non-existent page va %x pte %x\00", align 1
@PGA_WRITEABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_remove_pages(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.pv_entry*, align 8
  %4 = alloca %struct.pv_entry*, align 8
  %5 = alloca %struct.l2_bucket*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  store %struct.l2_bucket* null, %struct.l2_bucket** %5, align 8
  %8 = call i32 @rw_wlock(i32* @pvh_global_lock)
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %10 = call i32 @PMAP_LOCK(%struct.TYPE_17__* %9)
  %11 = call i32 (...) @cpu_idcache_wbinv_all()
  %12 = call i32 (...) @cpu_l2cache_wbinv_all()
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  %15 = call %struct.pv_entry* @TAILQ_FIRST(i32* %14)
  store %struct.pv_entry* %15, %struct.pv_entry** %3, align 8
  br label %16

16:                                               ; preds = %103, %1
  %17 = load %struct.pv_entry*, %struct.pv_entry** %3, align 8
  %18 = icmp ne %struct.pv_entry* %17, null
  br i1 %18, label %19, label %105

19:                                               ; preds = %16
  %20 = load %struct.pv_entry*, %struct.pv_entry** %3, align 8
  %21 = getelementptr inbounds %struct.pv_entry, %struct.pv_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PVF_WIRED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %19
  %27 = load %struct.pv_entry*, %struct.pv_entry** %3, align 8
  %28 = getelementptr inbounds %struct.pv_entry, %struct.pv_entry* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @PVF_UNMAN, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26, %19
  %34 = load %struct.pv_entry*, %struct.pv_entry** %3, align 8
  %35 = load i32, i32* @pv_plist, align 4
  %36 = call %struct.pv_entry* @TAILQ_NEXT(%struct.pv_entry* %34, i32 %35)
  store %struct.pv_entry* %36, %struct.pv_entry** %4, align 8
  br label %103

37:                                               ; preds = %26
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %40, align 4
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %44 = load %struct.pv_entry*, %struct.pv_entry** %3, align 8
  %45 = getelementptr inbounds %struct.pv_entry, %struct.pv_entry* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.l2_bucket* @pmap_get_l2_bucket(%struct.TYPE_17__* %43, i32 %46)
  store %struct.l2_bucket* %47, %struct.l2_bucket** %5, align 8
  %48 = load %struct.l2_bucket*, %struct.l2_bucket** %5, align 8
  %49 = icmp ne %struct.l2_bucket* %48, null
  %50 = zext i1 %49 to i32
  %51 = call i32 @KASSERT(i32 %50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.l2_bucket*, %struct.l2_bucket** %5, align 8
  %53 = getelementptr inbounds %struct.l2_bucket, %struct.l2_bucket* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.pv_entry*, %struct.pv_entry** %3, align 8
  %56 = getelementptr inbounds %struct.pv_entry, %struct.pv_entry* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @l2pte_index(i32 %57)
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  store i32* %59, i32** %7, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @L2_S_FRAME, align 4
  %63 = and i32 %61, %62
  %64 = call %struct.TYPE_16__* @PHYS_TO_VM_PAGE(i32 %63)
  store %struct.TYPE_16__* %64, %struct.TYPE_16__** %6, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %66 = ptrtoint %struct.TYPE_16__* %65 to i64
  %67 = load i64, i64* @KERNBASE, align 8
  %68 = icmp sge i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load %struct.pv_entry*, %struct.pv_entry** %3, align 8
  %71 = getelementptr inbounds %struct.pv_entry, %struct.pv_entry* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  %77 = call i32 @KASSERT(i32 %69, i8* %76)
  %78 = load i32*, i32** %7, align 8
  store i32 0, i32* %78, align 4
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 @PTE_SYNC(i32* %79)
  %81 = load %struct.pv_entry*, %struct.pv_entry** %3, align 8
  %82 = load i32, i32* @pv_plist, align 4
  %83 = call %struct.pv_entry* @TAILQ_NEXT(%struct.pv_entry* %81, i32 %82)
  store %struct.pv_entry* %83, %struct.pv_entry** %4, align 8
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %86 = load %struct.pv_entry*, %struct.pv_entry** %3, align 8
  %87 = call i32 @pmap_nuke_pv(%struct.TYPE_16__* %84, %struct.TYPE_17__* %85, %struct.pv_entry* %86)
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = call i64 @TAILQ_EMPTY(i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %37
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %95 = load i32, i32* @PGA_WRITEABLE, align 4
  %96 = call i32 @vm_page_aflag_clear(%struct.TYPE_16__* %94, i32 %95)
  br label %97

97:                                               ; preds = %93, %37
  %98 = load %struct.pv_entry*, %struct.pv_entry** %3, align 8
  %99 = call i32 @pmap_free_pv_entry(%struct.pv_entry* %98)
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %101 = load %struct.l2_bucket*, %struct.l2_bucket** %5, align 8
  %102 = call i32 @pmap_free_l2_bucket(%struct.TYPE_17__* %100, %struct.l2_bucket* %101, i32 1)
  br label %103

103:                                              ; preds = %97, %33
  %104 = load %struct.pv_entry*, %struct.pv_entry** %4, align 8
  store %struct.pv_entry* %104, %struct.pv_entry** %3, align 8
  br label %16

105:                                              ; preds = %16
  %106 = call i32 @rw_wunlock(i32* @pvh_global_lock)
  %107 = call i32 (...) @cpu_tlb_flushID()
  %108 = call i32 (...) @cpu_cpwait()
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %110 = call i32 @PMAP_UNLOCK(%struct.TYPE_17__* %109)
  ret void
}

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_17__*) #1

declare dso_local i32 @cpu_idcache_wbinv_all(...) #1

declare dso_local i32 @cpu_l2cache_wbinv_all(...) #1

declare dso_local %struct.pv_entry* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.pv_entry* @TAILQ_NEXT(%struct.pv_entry*, i32) #1

declare dso_local %struct.l2_bucket* @pmap_get_l2_bucket(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @l2pte_index(i32) #1

declare dso_local %struct.TYPE_16__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @PTE_SYNC(i32*) #1

declare dso_local i32 @pmap_nuke_pv(%struct.TYPE_16__*, %struct.TYPE_17__*, %struct.pv_entry*) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @vm_page_aflag_clear(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @pmap_free_pv_entry(%struct.pv_entry*) #1

declare dso_local i32 @pmap_free_l2_bucket(%struct.TYPE_17__*, %struct.l2_bucket*, i32) #1

declare dso_local i32 @rw_wunlock(i32*) #1

declare dso_local i32 @cpu_tlb_flushID(...) #1

declare dso_local i32 @cpu_cpwait(...) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
