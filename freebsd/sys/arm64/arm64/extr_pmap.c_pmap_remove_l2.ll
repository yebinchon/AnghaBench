; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_remove_l2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_remove_l2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.spglist = type { i32 }
%struct.rwlock = type { i32 }
%struct.md_page = type { i32 }
%struct.TYPE_22__ = type { i64, i64, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@L2_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"pmap_remove_l2: sva is not aligned\00", align 1
@ATTR_DESCR_MASK = common dso_local global i32 0, align 4
@L2_BLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"pmap_remove_l2: L2e %lx is not a block mapping\00", align 1
@ATTR_SW_WIRED = common dso_local global i32 0, align 4
@L2_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ATTR_SW_MANAGED = common dso_local global i32 0, align 4
@ATTR_MASK = common dso_local global i32 0, align 4
@ATTR_AF = common dso_local global i32 0, align 4
@PGA_REFERENCED = common dso_local global i32 0, align 4
@PGA_WRITEABLE = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global %struct.TYPE_23__* null, align 8
@VM_PAGE_BITS_ALL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"pmap_remove_l2: l3 page not promoted\00", align 1
@NL3PG = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"pmap_remove_l2: l3 page ref count error\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, i32*, i32, i32, %struct.spglist*, %struct.rwlock**)* @pmap_remove_l2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_remove_l2(%struct.TYPE_23__* %0, i32* %1, i32 %2, i32 %3, %struct.spglist* %4, %struct.rwlock** %5) #0 {
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
  %17 = alloca %struct.TYPE_22__*, align 8
  %18 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.spglist* %4, %struct.spglist** %11, align 8
  store %struct.rwlock** %5, %struct.rwlock*** %12, align 8
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %20 = load i32, i32* @MA_OWNED, align 4
  %21 = call i32 @PMAP_LOCK_ASSERT(%struct.TYPE_23__* %19, i32 %20)
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @L2_OFFSET, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @KASSERT(i32 %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @pmap_load_clear(i32* %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* @ATTR_DESCR_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @L2_BLOCK, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 @KASSERT(i32 %35, i8* %38)
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @pmap_invalidate_page(%struct.TYPE_23__* %40, i32 %41)
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* @ATTR_SW_WIRED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %6
  %48 = load i32, i32* @L2_SIZE, align 4
  %49 = load i32, i32* @PAGE_SIZE, align 4
  %50 = sdiv i32 %48, %49
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %54, %50
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %47, %6
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %58 = load i32, i32* @L2_SIZE, align 4
  %59 = load i32, i32* @PAGE_SIZE, align 4
  %60 = sdiv i32 %58, %59
  %61 = call i32 @pmap_resident_count_dec(%struct.TYPE_23__* %57, i32 %60)
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* @ATTR_SW_MANAGED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %134

66:                                               ; preds = %56
  %67 = load %struct.rwlock**, %struct.rwlock*** %12, align 8
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @ATTR_MASK, align 4
  %70 = xor i32 %69, -1
  %71 = and i32 %68, %70
  %72 = call i32 @CHANGE_PV_LIST_LOCK_TO_PHYS(%struct.rwlock** %67, i32 %71)
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* @ATTR_MASK, align 4
  %75 = xor i32 %74, -1
  %76 = and i32 %73, %75
  %77 = call %struct.md_page* @pa_to_pvh(i32 %76)
  store %struct.md_page* %77, %struct.md_page** %13, align 8
  %78 = load %struct.md_page*, %struct.md_page** %13, align 8
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @pmap_pvh_free(%struct.md_page* %78, %struct.TYPE_23__* %79, i32 %80)
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @L2_SIZE, align 4
  %84 = add nsw i32 %82, %83
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* @ATTR_MASK, align 4
  %88 = xor i32 %87, -1
  %89 = and i32 %86, %88
  %90 = call %struct.TYPE_22__* @PHYS_TO_VM_PAGE(i32 %89)
  store %struct.TYPE_22__* %90, %struct.TYPE_22__** %17, align 8
  br label %91

91:                                               ; preds = %127, %66
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %15, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %133

95:                                               ; preds = %91
  %96 = load i32, i32* %14, align 4
  %97 = call i64 @pmap_pte_dirty(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %101 = call i32 @vm_page_dirty(%struct.TYPE_22__* %100)
  br label %102

102:                                              ; preds = %99, %95
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* @ATTR_AF, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %109 = load i32, i32* @PGA_REFERENCED, align 4
  %110 = call i32 @vm_page_aflag_set(%struct.TYPE_22__* %108, i32 %109)
  br label %111

111:                                              ; preds = %107, %102
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 0
  %115 = call i64 @TAILQ_EMPTY(i32* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %111
  %118 = load %struct.md_page*, %struct.md_page** %13, align 8
  %119 = getelementptr inbounds %struct.md_page, %struct.md_page* %118, i32 0, i32 0
  %120 = call i64 @TAILQ_EMPTY(i32* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %124 = load i32, i32* @PGA_WRITEABLE, align 4
  %125 = call i32 @vm_page_aflag_clear(%struct.TYPE_22__* %123, i32 %124)
  br label %126

126:                                              ; preds = %122, %117, %111
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* @PAGE_SIZE, align 4
  %129 = load i32, i32* %16, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* %16, align 4
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 1
  store %struct.TYPE_22__* %132, %struct.TYPE_22__** %17, align 8
  br label %91

133:                                              ; preds = %91
  br label %134

134:                                              ; preds = %133, %56
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** @kernel_pmap, align 8
  %137 = icmp eq %struct.TYPE_23__* %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %134
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %140 = load i32*, i32** %8, align 8
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @pmap_remove_kernel_l2(%struct.TYPE_23__* %139, i32* %140, i32 %141)
  br label %173

143:                                              ; preds = %134
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %145 = load i32, i32* %9, align 4
  %146 = call %struct.TYPE_22__* @pmap_remove_pt_page(%struct.TYPE_23__* %144, i32 %145)
  store %struct.TYPE_22__* %146, %struct.TYPE_22__** %18, align 8
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %148 = icmp ne %struct.TYPE_22__* %147, null
  br i1 %148, label %149, label %172

149:                                              ; preds = %143
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @VM_PAGE_BITS_ALL, align 8
  %154 = icmp eq i64 %152, %153
  %155 = zext i1 %154 to i32
  %156 = call i32 @KASSERT(i32 %155, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %158 = call i32 @pmap_resident_count_dec(%struct.TYPE_23__* %157, i32 1)
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @NL3PG, align 8
  %163 = icmp eq i64 %161, %162
  %164 = zext i1 %163 to i32
  %165 = call i32 @KASSERT(i32 %164, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 1
  store i64 0, i64* %167, align 8
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %169 = load %struct.spglist*, %struct.spglist** %11, align 8
  %170 = load i32, i32* @FALSE, align 4
  %171 = call i32 @pmap_add_delayed_free_list(%struct.TYPE_22__* %168, %struct.spglist* %169, i32 %170)
  br label %172

172:                                              ; preds = %149, %143
  br label %173

173:                                              ; preds = %172, %138
  %174 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* %10, align 4
  %177 = load %struct.spglist*, %struct.spglist** %11, align 8
  %178 = call i32 @pmap_unuse_pt(%struct.TYPE_23__* %174, i32 %175, i32 %176, %struct.spglist* %177)
  ret i32 %178
}

declare dso_local i32 @PMAP_LOCK_ASSERT(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @pmap_load_clear(i32*) #1

declare dso_local i32 @pmap_invalidate_page(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @pmap_resident_count_dec(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @CHANGE_PV_LIST_LOCK_TO_PHYS(%struct.rwlock**, i32) #1

declare dso_local %struct.md_page* @pa_to_pvh(i32) #1

declare dso_local i32 @pmap_pvh_free(%struct.md_page*, %struct.TYPE_23__*, i32) #1

declare dso_local %struct.TYPE_22__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i64 @pmap_pte_dirty(i32) #1

declare dso_local i32 @vm_page_dirty(%struct.TYPE_22__*) #1

declare dso_local i32 @vm_page_aflag_set(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @vm_page_aflag_clear(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @pmap_remove_kernel_l2(%struct.TYPE_23__*, i32*, i32) #1

declare dso_local %struct.TYPE_22__* @pmap_remove_pt_page(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @pmap_add_delayed_free_list(%struct.TYPE_22__*, %struct.spglist*, i32) #1

declare dso_local i32 @pmap_unuse_pt(%struct.TYPE_23__*, i32, i32, %struct.spglist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
