; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_remove_l3_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_remove_l3_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.spglist = type { i32 }
%struct.rwlock = type { i32 }
%struct.md_page = type { i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@L2_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"pmap_remove_l3_range: range crosses an L3 page table boundary\00", align 1
@ATTR_SW_WIRED = common dso_local global i32 0, align 4
@ATTR_SW_MANAGED = common dso_local global i32 0, align 4
@ATTR_MASK = common dso_local global i32 0, align 4
@ATTR_AF = common dso_local global i32 0, align 4
@PGA_REFERENCED = common dso_local global i32 0, align 4
@PG_FICTITIOUS = common dso_local global i32 0, align 4
@PGA_WRITEABLE = common dso_local global i32 0, align 4
@L3_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, i32, i64, i64, %struct.spglist*, %struct.rwlock**)* @pmap_remove_l3_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_remove_l3_range(%struct.TYPE_19__* %0, i32 %1, i64 %2, i64 %3, %struct.spglist* %4, %struct.rwlock** %5) #0 {
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.spglist*, align 8
  %12 = alloca %struct.rwlock**, align 8
  %13 = alloca %struct.md_page*, align 8
  %14 = alloca %struct.rwlock*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.spglist* %4, %struct.spglist** %11, align 8
  store %struct.rwlock** %5, %struct.rwlock*** %12, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %20 = load i32, i32* @MA_OWNED, align 4
  %21 = call i32 @PMAP_LOCK_ASSERT(%struct.TYPE_19__* %19, i32 %20)
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @L2_SIZE, align 8
  %24 = call i64 @rounddown2(i64 %22, i64 %23)
  %25 = load i64, i64* @L2_SIZE, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* @L2_SIZE, align 8
  %29 = call i64 @roundup2(i64 %27, i64 %28)
  %30 = icmp eq i64 %26, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @KASSERT(i32 %31, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %33 = load i64, i64* %10, align 8
  store i64 %33, i64* %17, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call i32* @pmap_l2_to_l3(i32* %8, i64 %34)
  store i32* %35, i32** %15, align 8
  br label %36

36:                                               ; preds = %179, %6
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %185

40:                                               ; preds = %36
  %41 = load i32*, i32** %15, align 8
  %42 = call i32 @pmap_load(i32* %41)
  %43 = call i32 @pmap_l3_valid(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %40
  %46 = load i64, i64* %17, align 8
  %47 = load i64, i64* %10, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %51 = load i64, i64* %17, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @pmap_invalidate_range(%struct.TYPE_19__* %50, i64 %51, i64 %52)
  %54 = load i64, i64* %10, align 8
  store i64 %54, i64* %17, align 8
  br label %55

55:                                               ; preds = %49, %45
  br label %179

56:                                               ; preds = %40
  %57 = load i32*, i32** %15, align 8
  %58 = call i32 @pmap_load_clear(i32* %57)
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* @ATTR_SW_WIRED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %63, %56
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %71 = call i32 @pmap_resident_count_dec(%struct.TYPE_19__* %70, i32 1)
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* @ATTR_SW_MANAGED, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %161

76:                                               ; preds = %69
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* @ATTR_MASK, align 4
  %79 = xor i32 %78, -1
  %80 = and i32 %77, %79
  %81 = call %struct.TYPE_18__* @PHYS_TO_VM_PAGE(i32 %80)
  store %struct.TYPE_18__* %81, %struct.TYPE_18__** %18, align 8
  %82 = load i32, i32* %16, align 4
  %83 = call i64 @pmap_pte_dirty(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %76
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %87 = call i32 @vm_page_dirty(%struct.TYPE_18__* %86)
  br label %88

88:                                               ; preds = %85, %76
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* @ATTR_AF, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %95 = load i32, i32* @PGA_REFERENCED, align 4
  %96 = call i32 @vm_page_aflag_set(%struct.TYPE_18__* %94, i32 %95)
  br label %97

97:                                               ; preds = %93, %88
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %99 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_18__* %98)
  %100 = call %struct.rwlock* @PHYS_TO_PV_LIST_LOCK(i32 %99)
  store %struct.rwlock* %100, %struct.rwlock** %14, align 8
  %101 = load %struct.rwlock*, %struct.rwlock** %14, align 8
  %102 = load %struct.rwlock**, %struct.rwlock*** %12, align 8
  %103 = load %struct.rwlock*, %struct.rwlock** %102, align 8
  %104 = icmp ne %struct.rwlock* %101, %103
  br i1 %104, label %105, label %129

105:                                              ; preds = %97
  %106 = load %struct.rwlock**, %struct.rwlock*** %12, align 8
  %107 = load %struct.rwlock*, %struct.rwlock** %106, align 8
  %108 = icmp ne %struct.rwlock* %107, null
  br i1 %108, label %109, label %123

109:                                              ; preds = %105
  %110 = load i64, i64* %17, align 8
  %111 = load i64, i64* %10, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %109
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %115 = load i64, i64* %17, align 8
  %116 = load i64, i64* %9, align 8
  %117 = call i32 @pmap_invalidate_range(%struct.TYPE_19__* %114, i64 %115, i64 %116)
  %118 = load i64, i64* %10, align 8
  store i64 %118, i64* %17, align 8
  br label %119

119:                                              ; preds = %113, %109
  %120 = load %struct.rwlock**, %struct.rwlock*** %12, align 8
  %121 = load %struct.rwlock*, %struct.rwlock** %120, align 8
  %122 = call i32 @rw_wunlock(%struct.rwlock* %121)
  br label %123

123:                                              ; preds = %119, %105
  %124 = load %struct.rwlock*, %struct.rwlock** %14, align 8
  %125 = load %struct.rwlock**, %struct.rwlock*** %12, align 8
  store %struct.rwlock* %124, %struct.rwlock** %125, align 8
  %126 = load %struct.rwlock**, %struct.rwlock*** %12, align 8
  %127 = load %struct.rwlock*, %struct.rwlock** %126, align 8
  %128 = call i32 @rw_wlock(%struct.rwlock* %127)
  br label %129

129:                                              ; preds = %123, %97
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %133 = load i64, i64* %9, align 8
  %134 = call i32 @pmap_pvh_free(%struct.TYPE_16__* %131, %struct.TYPE_19__* %132, i64 %133)
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = call i64 @TAILQ_EMPTY(i32* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %160

140:                                              ; preds = %129
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @PG_FICTITIOUS, align 4
  %145 = and i32 %143, %144
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %160

147:                                              ; preds = %140
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %149 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_18__* %148)
  %150 = call %struct.md_page* @pa_to_pvh(i32 %149)
  store %struct.md_page* %150, %struct.md_page** %13, align 8
  %151 = load %struct.md_page*, %struct.md_page** %13, align 8
  %152 = getelementptr inbounds %struct.md_page, %struct.md_page* %151, i32 0, i32 0
  %153 = call i64 @TAILQ_EMPTY(i32* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %147
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %157 = load i32, i32* @PGA_WRITEABLE, align 4
  %158 = call i32 @vm_page_aflag_clear(%struct.TYPE_18__* %156, i32 %157)
  br label %159

159:                                              ; preds = %155, %147
  br label %160

160:                                              ; preds = %159, %140, %129
  br label %161

161:                                              ; preds = %160, %69
  %162 = load i64, i64* %17, align 8
  %163 = load i64, i64* %10, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %161
  %166 = load i64, i64* %9, align 8
  store i64 %166, i64* %17, align 8
  br label %167

167:                                              ; preds = %165, %161
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %169 = load i64, i64* %9, align 8
  %170 = load i32, i32* %8, align 4
  %171 = load %struct.spglist*, %struct.spglist** %11, align 8
  %172 = call i64 @pmap_unuse_pt(%struct.TYPE_19__* %168, i64 %169, i32 %170, %struct.spglist* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %167
  %175 = load i64, i64* @L3_SIZE, align 8
  %176 = load i64, i64* %9, align 8
  %177 = add nsw i64 %176, %175
  store i64 %177, i64* %9, align 8
  br label %185

178:                                              ; preds = %167
  br label %179

179:                                              ; preds = %178, %55
  %180 = load i32*, i32** %15, align 8
  %181 = getelementptr inbounds i32, i32* %180, i32 1
  store i32* %181, i32** %15, align 8
  %182 = load i64, i64* @L3_SIZE, align 8
  %183 = load i64, i64* %9, align 8
  %184 = add nsw i64 %183, %182
  store i64 %184, i64* %9, align 8
  br label %36

185:                                              ; preds = %174, %36
  %186 = load i64, i64* %17, align 8
  %187 = load i64, i64* %10, align 8
  %188 = icmp ne i64 %186, %187
  br i1 %188, label %189, label %194

189:                                              ; preds = %185
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %191 = load i64, i64* %17, align 8
  %192 = load i64, i64* %9, align 8
  %193 = call i32 @pmap_invalidate_range(%struct.TYPE_19__* %190, i64 %191, i64 %192)
  br label %194

194:                                              ; preds = %189, %185
  ret void
}

declare dso_local i32 @PMAP_LOCK_ASSERT(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @rounddown2(i64, i64) #1

declare dso_local i64 @roundup2(i64, i64) #1

declare dso_local i32* @pmap_l2_to_l3(i32*, i64) #1

declare dso_local i32 @pmap_l3_valid(i32) #1

declare dso_local i32 @pmap_load(i32*) #1

declare dso_local i32 @pmap_invalidate_range(%struct.TYPE_19__*, i64, i64) #1

declare dso_local i32 @pmap_load_clear(i32*) #1

declare dso_local i32 @pmap_resident_count_dec(%struct.TYPE_19__*, i32) #1

declare dso_local %struct.TYPE_18__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i64 @pmap_pte_dirty(i32) #1

declare dso_local i32 @vm_page_dirty(%struct.TYPE_18__*) #1

declare dso_local i32 @vm_page_aflag_set(%struct.TYPE_18__*, i32) #1

declare dso_local %struct.rwlock* @PHYS_TO_PV_LIST_LOCK(i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_18__*) #1

declare dso_local i32 @rw_wunlock(%struct.rwlock*) #1

declare dso_local i32 @rw_wlock(%struct.rwlock*) #1

declare dso_local i32 @pmap_pvh_free(%struct.TYPE_16__*, %struct.TYPE_19__*, i64) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.md_page* @pa_to_pvh(i32) #1

declare dso_local i32 @vm_page_aflag_clear(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @pmap_unuse_pt(%struct.TYPE_19__*, i64, i32, %struct.spglist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
