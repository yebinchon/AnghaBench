; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_remove_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_remove_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32 }
%struct.TYPE_31__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_29__ = type { i32, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_30__ = type { i32, %struct.TYPE_31__*, i32 }
%struct.l2_bucket = type { i64* }

@FALSE = common dso_local global i64 0, align 8
@VPO_UNMANAGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"pmap_remove_all: page %p is not managed\00", align 1
@pvh_global_lock = common dso_local global i32 0, align 4
@PVF_WRITE = common dso_local global i32 0, align 4
@curproc = common dso_local global %struct.TYPE_27__* null, align 8
@kernel_pmap = common dso_local global %struct.TYPE_31__* null, align 8
@TRUE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@PVF_UNMAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"No l2 bucket\00", align 1
@PGA_WRITEABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_remove_all(%struct.TYPE_29__* %0) #0 {
  %2 = alloca %struct.TYPE_29__*, align 8
  %3 = alloca %struct.TYPE_30__*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.l2_bucket*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %2, align 8
  %9 = load i64, i64* @FALSE, align 8
  store i64 %9, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @VPO_UNMANAGED, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %18 = bitcast %struct.TYPE_29__* %17 to i8*
  %19 = call i32 @KASSERT(i32 %16, i8* %18)
  %20 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 1
  %23 = call i64 @TAILQ_EMPTY(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %179

26:                                               ; preds = %1
  %27 = call i32 @rw_wlock(i32* @pvh_global_lock)
  %28 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %29 = load i32, i32* @PVF_WRITE, align 4
  %30 = call i32 @pmap_clearbit(%struct.TYPE_29__* %28, i32 %29)
  %31 = load %struct.TYPE_27__*, %struct.TYPE_27__** @curproc, align 8
  %32 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.TYPE_31__* @vmspace_pmap(i32 %33)
  store %struct.TYPE_31__* %34, %struct.TYPE_31__** %7, align 8
  br label %35

35:                                               ; preds = %147, %26
  %36 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %37, i32 0, i32 1
  %39 = call %struct.TYPE_30__* @TAILQ_FIRST(i32* %38)
  store %struct.TYPE_30__* %39, %struct.TYPE_30__** %3, align 8
  %40 = icmp ne %struct.TYPE_30__* %39, null
  br i1 %40, label %41, label %160

41:                                               ; preds = %35
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @FALSE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_31__*, %struct.TYPE_31__** %47, align 8
  %49 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %50 = icmp eq %struct.TYPE_31__* %48, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_31__*, %struct.TYPE_31__** %53, align 8
  %55 = load %struct.TYPE_31__*, %struct.TYPE_31__** @kernel_pmap, align 8
  %56 = icmp eq %struct.TYPE_31__* %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51, %45
  %58 = load i64, i64* @TRUE, align 8
  store i64 %58, i64* %6, align 8
  br label %59

59:                                               ; preds = %57, %51, %41
  %60 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_31__*, %struct.TYPE_31__** %61, align 8
  %63 = call i32 @PMAP_LOCK(%struct.TYPE_31__* %62)
  %64 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_31__*, %struct.TYPE_31__** %65, align 8
  %67 = call i64 @pmap_is_current(%struct.TYPE_31__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %90

69:                                               ; preds = %59
  %70 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @PAGE_SIZE, align 4
  %74 = call i32 @cpu_dcache_inv_range(i32 %72, i32 %73)
  %75 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_31__*, %struct.TYPE_31__** %76, align 8
  %78 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @pmap_has_valid_mapping(%struct.TYPE_31__* %77, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %69
  %84 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @PAGE_SIZE, align 4
  %88 = call i32 @cpu_l2cache_inv_range(i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %83, %69
  br label %90

90:                                               ; preds = %89, %59
  %91 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @PVF_UNMAN, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %90
  %98 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 4
  br label %147

104:                                              ; preds = %90
  %105 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_31__*, %struct.TYPE_31__** %106, align 8
  %108 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call %struct.l2_bucket* @pmap_get_l2_bucket(%struct.TYPE_31__* %107, i32 %110)
  store %struct.l2_bucket* %111, %struct.l2_bucket** %5, align 8
  %112 = load %struct.l2_bucket*, %struct.l2_bucket** %5, align 8
  %113 = icmp ne %struct.l2_bucket* %112, null
  %114 = zext i1 %113 to i32
  %115 = call i32 @KASSERT(i32 %114, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %116 = load %struct.l2_bucket*, %struct.l2_bucket** %5, align 8
  %117 = getelementptr inbounds %struct.l2_bucket, %struct.l2_bucket* %116, i32 0, i32 0
  %118 = load i64*, i64** %117, align 8
  %119 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @l2pte_index(i32 %121)
  %123 = getelementptr inbounds i64, i64* %118, i64 %122
  store i64* %123, i64** %4, align 8
  %124 = load i64*, i64** %4, align 8
  store i64 0, i64* %124, align 8
  %125 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_31__*, %struct.TYPE_31__** %126, align 8
  %128 = load i64*, i64** %4, align 8
  %129 = call i32 @PTE_SYNC_CURRENT(%struct.TYPE_31__* %127, i64* %128)
  %130 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_31__*, %struct.TYPE_31__** %131, align 8
  %133 = load %struct.l2_bucket*, %struct.l2_bucket** %5, align 8
  %134 = call i32 @pmap_free_l2_bucket(%struct.TYPE_31__* %132, %struct.l2_bucket* %133, i32 1)
  %135 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_31__*, %struct.TYPE_31__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %139, align 4
  %142 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %8, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %8, align 4
  br label %147

147:                                              ; preds = %104, %97
  %148 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %149 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_31__*, %struct.TYPE_31__** %150, align 8
  %152 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %153 = call i32 @pmap_nuke_pv(%struct.TYPE_29__* %148, %struct.TYPE_31__* %151, %struct.TYPE_30__* %152)
  %154 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_31__*, %struct.TYPE_31__** %155, align 8
  %157 = call i32 @PMAP_UNLOCK(%struct.TYPE_31__* %156)
  %158 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %159 = call i32 @pmap_free_pv_entry(%struct.TYPE_30__* %158)
  br label %35

160:                                              ; preds = %35
  %161 = load i64, i64* %6, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %174

163:                                              ; preds = %160
  %164 = load i32, i32* %8, align 4
  %165 = call i64 @PV_BEEN_EXECD(i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %163
  %168 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %169 = call i32 @pmap_tlb_flushID(%struct.TYPE_31__* %168)
  br label %173

170:                                              ; preds = %163
  %171 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %172 = call i32 @pmap_tlb_flushD(%struct.TYPE_31__* %171)
  br label %173

173:                                              ; preds = %170, %167
  br label %174

174:                                              ; preds = %173, %160
  %175 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  %176 = load i32, i32* @PGA_WRITEABLE, align 4
  %177 = call i32 @vm_page_aflag_clear(%struct.TYPE_29__* %175, i32 %176)
  %178 = call i32 @rw_wunlock(i32* @pvh_global_lock)
  br label %179

179:                                              ; preds = %174, %25
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local i32 @pmap_clearbit(%struct.TYPE_29__*, i32) #1

declare dso_local %struct.TYPE_31__* @vmspace_pmap(i32) #1

declare dso_local %struct.TYPE_30__* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_31__*) #1

declare dso_local i64 @pmap_is_current(%struct.TYPE_31__*) #1

declare dso_local i32 @cpu_dcache_inv_range(i32, i32) #1

declare dso_local i64 @pmap_has_valid_mapping(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @cpu_l2cache_inv_range(i32, i32) #1

declare dso_local %struct.l2_bucket* @pmap_get_l2_bucket(%struct.TYPE_31__*, i32) #1

declare dso_local i64 @l2pte_index(i32) #1

declare dso_local i32 @PTE_SYNC_CURRENT(%struct.TYPE_31__*, i64*) #1

declare dso_local i32 @pmap_free_l2_bucket(%struct.TYPE_31__*, %struct.l2_bucket*, i32) #1

declare dso_local i32 @pmap_nuke_pv(%struct.TYPE_29__*, %struct.TYPE_31__*, %struct.TYPE_30__*) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_31__*) #1

declare dso_local i32 @pmap_free_pv_entry(%struct.TYPE_30__*) #1

declare dso_local i64 @PV_BEEN_EXECD(i32) #1

declare dso_local i32 @pmap_tlb_flushID(%struct.TYPE_31__*) #1

declare dso_local i32 @pmap_tlb_flushD(%struct.TYPE_31__*) #1

declare dso_local i32 @vm_page_aflag_clear(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @rw_wunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
