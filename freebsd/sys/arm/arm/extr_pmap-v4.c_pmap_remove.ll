; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.l2_bucket = type { i64* }
%struct.vm_page = type { i32 }
%struct.pv_entry = type { i32 }

@pvh_global_lock = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@PMAP_REMOVE_CLEAN_LIST_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_remove(%struct.TYPE_11__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.l2_bucket*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.vm_page*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.pv_entry*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %14, align 4
  %19 = call i32 @rw_wlock(i32* @pvh_global_lock)
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = call i32 @PMAP_LOCK(%struct.TYPE_11__* %20)
  store i64 0, i64* %10, align 8
  br label %22

22:                                               ; preds = %156, %40, %3
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %161

26:                                               ; preds = %22
  %27 = load i64, i64* %5, align 8
  %28 = call i64 @L2_NEXT_BUCKET(i64 %27)
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i64, i64* %6, align 8
  store i64 %33, i64* %8, align 8
  br label %34

34:                                               ; preds = %32, %26
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call %struct.l2_bucket* @pmap_get_l2_bucket(%struct.TYPE_11__* %35, i64 %36)
  store %struct.l2_bucket* %37, %struct.l2_bucket** %7, align 8
  %38 = load %struct.l2_bucket*, %struct.l2_bucket** %7, align 8
  %39 = icmp eq %struct.l2_bucket* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i64, i64* %8, align 8
  store i64 %41, i64* %5, align 8
  br label %22

42:                                               ; preds = %34
  %43 = load %struct.l2_bucket*, %struct.l2_bucket** %7, align 8
  %44 = getelementptr inbounds %struct.l2_bucket, %struct.l2_bucket* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i64 @l2pte_index(i64 %46)
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  store i64* %48, i64** %9, align 8
  store i64 0, i64* %11, align 8
  br label %49

49:                                               ; preds = %145, %58, %42
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* %8, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %156

53:                                               ; preds = %49
  %54 = load i64*, i64** %9, align 8
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %16, align 8
  %56 = load i64, i64* %16, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i64, i64* @PAGE_SIZE, align 8
  %60 = load i64, i64* %5, align 8
  %61 = add nsw i64 %60, %59
  store i64 %61, i64* %5, align 8
  %62 = load i64*, i64** %9, align 8
  %63 = getelementptr inbounds i64, i64* %62, i32 1
  store i64* %63, i64** %9, align 8
  br label %49

64:                                               ; preds = %53
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %67, align 4
  %70 = load i64, i64* %16, align 8
  %71 = call i32 @l2pte_pa(i64 %70)
  store i32 %71, i32* %17, align 4
  store i64 0, i64* %12, align 8
  store i64 1, i64* %13, align 8
  %72 = load i32, i32* %17, align 4
  %73 = call %struct.vm_page* @PHYS_TO_VM_PAGE(i32 %72)
  store %struct.vm_page* %73, %struct.vm_page** %15, align 8
  %74 = icmp ne %struct.vm_page* %73, null
  br i1 %74, label %75, label %94

75:                                               ; preds = %64
  %76 = load %struct.vm_page*, %struct.vm_page** %15, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %78 = load i64, i64* %5, align 8
  %79 = call %struct.pv_entry* @pmap_remove_pv(%struct.vm_page* %76, %struct.TYPE_11__* %77, i64 %78)
  store %struct.pv_entry* %79, %struct.pv_entry** %18, align 8
  %80 = load %struct.pv_entry*, %struct.pv_entry** %18, align 8
  %81 = icmp ne %struct.pv_entry* %80, null
  br i1 %81, label %82, label %93

82:                                               ; preds = %75
  %83 = load %struct.pv_entry*, %struct.pv_entry** %18, align 8
  %84 = getelementptr inbounds %struct.pv_entry, %struct.pv_entry* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @PV_BEEN_EXECD(i32 %85)
  store i64 %86, i64* %12, align 8
  %87 = load %struct.pv_entry*, %struct.pv_entry** %18, align 8
  %88 = getelementptr inbounds %struct.pv_entry, %struct.pv_entry* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @PV_BEEN_REFD(i32 %89)
  store i64 %90, i64* %13, align 8
  %91 = load %struct.pv_entry*, %struct.pv_entry** %18, align 8
  %92 = call i32 @pmap_free_pv_entry(%struct.pv_entry* %91)
  br label %93

93:                                               ; preds = %82, %75
  br label %94

94:                                               ; preds = %93, %64
  %95 = load i64, i64* %16, align 8
  %96 = call i64 @l2pte_valid(i64 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %145

98:                                               ; preds = %94
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %100 = call i64 @pmap_is_current(%struct.TYPE_11__* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %145

102:                                              ; preds = %98
  %103 = load i64, i64* %10, align 8
  %104 = load i64, i64* @PMAP_REMOVE_CLEAN_LIST_SIZE, align 8
  %105 = icmp slt i64 %103, %104
  br i1 %105, label %106, label %134

106:                                              ; preds = %102
  %107 = load i64, i64* %10, align 8
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* %10, align 8
  %109 = load i64, i64* %12, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %106
  %112 = load i64, i64* %5, align 8
  %113 = load i64, i64* @PAGE_SIZE, align 8
  %114 = call i32 @cpu_idcache_wbinv_range(i64 %112, i64 %113)
  %115 = load i64, i64* %5, align 8
  %116 = load i64, i64* @PAGE_SIZE, align 8
  %117 = call i32 @cpu_l2cache_wbinv_range(i64 %115, i64 %116)
  %118 = load i64, i64* %5, align 8
  %119 = call i32 @cpu_tlb_flushID_SE(i64 %118)
  br label %133

120:                                              ; preds = %106
  %121 = load i64, i64* %13, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %120
  %124 = load i64, i64* %5, align 8
  %125 = load i64, i64* @PAGE_SIZE, align 8
  %126 = call i32 @cpu_dcache_wbinv_range(i64 %124, i64 %125)
  %127 = load i64, i64* %5, align 8
  %128 = load i64, i64* @PAGE_SIZE, align 8
  %129 = call i32 @cpu_l2cache_wbinv_range(i64 %127, i64 %128)
  %130 = load i64, i64* %5, align 8
  %131 = call i32 @cpu_tlb_flushD_SE(i64 %130)
  br label %132

132:                                              ; preds = %123, %120
  br label %133

133:                                              ; preds = %132, %111
  br label %144

134:                                              ; preds = %102
  %135 = load i64, i64* %10, align 8
  %136 = load i64, i64* @PMAP_REMOVE_CLEAN_LIST_SIZE, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %134
  %139 = call i32 (...) @cpu_idcache_wbinv_all()
  %140 = call i32 (...) @cpu_l2cache_wbinv_all()
  store i32 1, i32* %14, align 4
  %141 = load i64, i64* %10, align 8
  %142 = add nsw i64 %141, 1
  store i64 %142, i64* %10, align 8
  br label %143

143:                                              ; preds = %138, %134
  br label %144

144:                                              ; preds = %143, %133
  br label %145

145:                                              ; preds = %144, %98, %94
  %146 = load i64*, i64** %9, align 8
  store i64 0, i64* %146, align 8
  %147 = load i64*, i64** %9, align 8
  %148 = call i32 @PTE_SYNC(i64* %147)
  %149 = load i64, i64* @PAGE_SIZE, align 8
  %150 = load i64, i64* %5, align 8
  %151 = add nsw i64 %150, %149
  store i64 %151, i64* %5, align 8
  %152 = load i64*, i64** %9, align 8
  %153 = getelementptr inbounds i64, i64* %152, i32 1
  store i64* %153, i64** %9, align 8
  %154 = load i64, i64* %11, align 8
  %155 = add nsw i64 %154, 1
  store i64 %155, i64* %11, align 8
  br label %49

156:                                              ; preds = %49
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %158 = load %struct.l2_bucket*, %struct.l2_bucket** %7, align 8
  %159 = load i64, i64* %11, align 8
  %160 = call i32 @pmap_free_l2_bucket(%struct.TYPE_11__* %157, %struct.l2_bucket* %158, i64 %159)
  br label %22

161:                                              ; preds = %22
  %162 = call i32 @rw_wunlock(i32* @pvh_global_lock)
  %163 = load i32, i32* %14, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %161
  %166 = call i32 (...) @cpu_tlb_flushID()
  br label %167

167:                                              ; preds = %165, %161
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %169 = call i32 @PMAP_UNLOCK(%struct.TYPE_11__* %168)
  ret void
}

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_11__*) #1

declare dso_local i64 @L2_NEXT_BUCKET(i64) #1

declare dso_local %struct.l2_bucket* @pmap_get_l2_bucket(%struct.TYPE_11__*, i64) #1

declare dso_local i64 @l2pte_index(i64) #1

declare dso_local i32 @l2pte_pa(i64) #1

declare dso_local %struct.vm_page* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local %struct.pv_entry* @pmap_remove_pv(%struct.vm_page*, %struct.TYPE_11__*, i64) #1

declare dso_local i64 @PV_BEEN_EXECD(i32) #1

declare dso_local i64 @PV_BEEN_REFD(i32) #1

declare dso_local i32 @pmap_free_pv_entry(%struct.pv_entry*) #1

declare dso_local i64 @l2pte_valid(i64) #1

declare dso_local i64 @pmap_is_current(%struct.TYPE_11__*) #1

declare dso_local i32 @cpu_idcache_wbinv_range(i64, i64) #1

declare dso_local i32 @cpu_l2cache_wbinv_range(i64, i64) #1

declare dso_local i32 @cpu_tlb_flushID_SE(i64) #1

declare dso_local i32 @cpu_dcache_wbinv_range(i64, i64) #1

declare dso_local i32 @cpu_tlb_flushD_SE(i64) #1

declare dso_local i32 @cpu_idcache_wbinv_all(...) #1

declare dso_local i32 @cpu_l2cache_wbinv_all(...) #1

declare dso_local i32 @PTE_SYNC(i64*) #1

declare dso_local i32 @pmap_free_l2_bucket(%struct.TYPE_11__*, %struct.l2_bucket*, i64) #1

declare dso_local i32 @rw_wunlock(i32*) #1

declare dso_local i32 @cpu_tlb_flushID(...) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
