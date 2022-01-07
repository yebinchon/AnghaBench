; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_kremove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_kremove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2_bucket = type { i32* }
%struct.pv_entry = type { i32 }

@kernel_pmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"No L2 Bucket\00", align 1
@L2_TYPE_MASK = common dso_local global i32 0, align 4
@L2_TYPE_L = common dso_local global i32 0, align 4
@L2_L_FRAME = common dso_local global i32 0, align 4
@L2_L_OFFSET = common dso_local global i32 0, align 4
@L2_S_FRAME = common dso_local global i32 0, align 4
@L2_S_OFFSET = common dso_local global i32 0, align 4
@pvh_global_lock = common dso_local global i32 0, align 4
@pvzone = common dso_local global i32* null, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_kremove(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.l2_bucket*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pv_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* @kernel_pmap, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call %struct.l2_bucket* @pmap_get_l2_bucket(i32 %9, i32 %10)
  store %struct.l2_bucket* %11, %struct.l2_bucket** %3, align 8
  %12 = load %struct.l2_bucket*, %struct.l2_bucket** %3, align 8
  %13 = icmp ne %struct.l2_bucket* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %90

15:                                               ; preds = %1
  %16 = load %struct.l2_bucket*, %struct.l2_bucket** %3, align 8
  %17 = icmp ne %struct.l2_bucket* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.l2_bucket*, %struct.l2_bucket** %3, align 8
  %21 = getelementptr inbounds %struct.l2_bucket, %struct.l2_bucket* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %2, align 4
  %24 = call i64 @l2pte_index(i32 %23)
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32* %25, i32** %4, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @l2pte_valid(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %90

31:                                               ; preds = %15
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @L2_TYPE_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @L2_TYPE_L, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @L2_L_FRAME, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* @L2_L_OFFSET, align 4
  %43 = and i32 %41, %42
  %44 = or i32 %40, %43
  store i32 %44, i32* %8, align 4
  br label %53

45:                                               ; preds = %31
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @L2_S_FRAME, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* @L2_S_OFFSET, align 4
  %51 = and i32 %49, %50
  %52 = or i32 %48, %51
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %45, %37
  %54 = call i32 @rw_wlock(i32* @pvh_global_lock)
  %55 = load i32, i32* @kernel_pmap, align 4
  %56 = call i32 @PMAP_LOCK(i32 %55)
  %57 = load i32*, i32** @pvzone, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %72

59:                                               ; preds = %53
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @vm_phys_paddr_to_vm_page(i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @kernel_pmap, align 4
  %66 = load i32, i32* %2, align 4
  %67 = call %struct.pv_entry* @pmap_remove_pv(i32 %64, i32 %65, i32 %66)
  store %struct.pv_entry* %67, %struct.pv_entry** %6, align 8
  %68 = icmp ne %struct.pv_entry* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load %struct.pv_entry*, %struct.pv_entry** %6, align 8
  %71 = call i32 @pmap_free_pv_entry(%struct.pv_entry* %70)
  br label %72

72:                                               ; preds = %69, %63, %59, %53
  %73 = load i32, i32* @kernel_pmap, align 4
  %74 = call i32 @PMAP_UNLOCK(i32 %73)
  %75 = call i32 @rw_wunlock(i32* @pvh_global_lock)
  %76 = load i32, i32* %2, align 4
  %77 = load i32, i32* @PAGE_MASK, align 4
  %78 = xor i32 %77, -1
  %79 = and i32 %76, %78
  store i32 %79, i32* %2, align 4
  %80 = load i32, i32* %2, align 4
  %81 = load i32, i32* @PAGE_SIZE, align 4
  %82 = call i32 @cpu_dcache_wbinv_range(i32 %80, i32 %81)
  %83 = load i32, i32* %2, align 4
  %84 = load i32, i32* @PAGE_SIZE, align 4
  %85 = call i32 @cpu_l2cache_wbinv_range(i32 %83, i32 %84)
  %86 = load i32, i32* %2, align 4
  %87 = call i32 @cpu_tlb_flushD_SE(i32 %86)
  %88 = call i32 (...) @cpu_cpwait()
  %89 = load i32*, i32** %4, align 8
  store i32 0, i32* %89, align 4
  br label %90

90:                                               ; preds = %14, %72, %15
  ret void
}

declare dso_local %struct.l2_bucket* @pmap_get_l2_bucket(i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @l2pte_index(i32) #1

declare dso_local i64 @l2pte_valid(i32) #1

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local i32 @vm_phys_paddr_to_vm_page(i32) #1

declare dso_local %struct.pv_entry* @pmap_remove_pv(i32, i32, i32) #1

declare dso_local i32 @pmap_free_pv_entry(%struct.pv_entry*) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

declare dso_local i32 @rw_wunlock(i32*) #1

declare dso_local i32 @cpu_dcache_wbinv_range(i32, i32) #1

declare dso_local i32 @cpu_l2cache_wbinv_range(i32, i32) #1

declare dso_local i32 @cpu_tlb_flushD_SE(i32) #1

declare dso_local i32 @cpu_cpwait(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
