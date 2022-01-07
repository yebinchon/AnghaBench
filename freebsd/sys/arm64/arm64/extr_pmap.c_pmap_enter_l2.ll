; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_enter_l2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_enter_l2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64, i64 }
%struct.TYPE_23__ = type { i32 }
%struct.rwlock = type { i32 }
%struct.spglist = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@PMAP_ENTER_NOSLEEP = common dso_local global i32 0, align 4
@KTR_PMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"pmap_enter_l2: failure for va %#lx in pmap %p\00", align 1
@KERN_RESOURCE_SHORTAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"pmap_enter_l2: l2pg's ref count is too low\00", align 1
@PMAP_ENTER_NOREPLACE = common dso_local global i32 0, align 4
@KERN_FAILURE = common dso_local global i32 0, align 4
@ATTR_DESCR_MASK = common dso_local global i32 0, align 4
@L2_BLOCK = common dso_local global i32 0, align 4
@L2_SIZE = common dso_local global i64 0, align 8
@VM_MAXUSER_ADDRESS = common dso_local global i64 0, align 8
@ATTR_MASK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"pmap_enter_l2: trie insert failed\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"pmap_enter_l2: non-zero L2 entry %p\00", align 1
@ATTR_SW_MANAGED = common dso_local global i32 0, align 4
@ATTR_SW_DBM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@PGA_WRITEABLE = common dso_local global i32 0, align 4
@ATTR_SW_WIRED = common dso_local global i32 0, align 4
@ishst = common dso_local global i32 0, align 4
@pmap_l2_mappings = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"pmap_enter_l2: success for va %#lx in pmap %p\00", align 1
@KERN_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, i64, i32, i32, %struct.TYPE_23__*, %struct.rwlock**)* @pmap_enter_l2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_enter_l2(%struct.TYPE_24__* %0, i64 %1, i32 %2, i32 %3, %struct.TYPE_23__* %4, %struct.rwlock** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca %struct.rwlock**, align 8
  %14 = alloca %struct.spglist, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_23__*, align 8
  %18 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_23__* %4, %struct.TYPE_23__** %12, align 8
  store %struct.rwlock** %5, %struct.rwlock*** %13, align 8
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %20 = load i32, i32* @MA_OWNED, align 4
  %21 = call i32 @PMAP_LOCK_ASSERT(%struct.TYPE_24__* %19, i32 %20)
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @PMAP_ENTER_NOSLEEP, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %6
  br label %31

29:                                               ; preds = %6
  %30 = load %struct.rwlock**, %struct.rwlock*** %13, align 8
  br label %31

31:                                               ; preds = %29, %28
  %32 = phi %struct.rwlock** [ null, %28 ], [ %30, %29 ]
  %33 = call %struct.TYPE_23__* @pmap_alloc_l2(%struct.TYPE_24__* %22, i64 %23, %struct.rwlock** %32)
  store %struct.TYPE_23__* %33, %struct.TYPE_23__** %17, align 8
  %34 = icmp eq %struct.TYPE_23__* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32, i32* @KTR_PMAP, align 4
  %37 = load i64, i64* %9, align 8
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %39 = call i32 @CTR2(i32 %36, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %37, %struct.TYPE_24__* %38)
  %40 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %40, i32* %7, align 4
  br label %223

41:                                               ; preds = %31
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %43 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_23__* %42)
  %44 = call i64 @PHYS_TO_DMAP(i32 %43)
  %45 = inttoptr i64 %44 to i32*
  store i32* %45, i32** %15, align 8
  %46 = load i32*, i32** %15, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i64 @pmap_l2_index(i64 %47)
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32* %49, i32** %15, align 8
  %50 = load i32*, i32** %15, align 8
  %51 = call i64 @pmap_load(i32* %50)
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %16, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %134

54:                                               ; preds = %41
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %57, 1
  %59 = zext i1 %58 to i32
  %60 = call i32 @KASSERT(i32 %59, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @PMAP_ENTER_NOREPLACE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %54
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* @KTR_PMAP, align 4
  %71 = load i64, i64* %9, align 8
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %73 = call i32 @CTR2(i32 %70, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %71, %struct.TYPE_24__* %72)
  %74 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %74, i32* %7, align 4
  br label %223

75:                                               ; preds = %54
  %76 = call i32 @SLIST_INIT(%struct.spglist* %14)
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* @ATTR_DESCR_MASK, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @L2_BLOCK, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %75
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %84 = load i32*, i32** %15, align 8
  %85 = load i64, i64* %9, align 8
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %87 = load i64, i64* %9, align 8
  %88 = call i32* @pmap_l1(%struct.TYPE_24__* %86, i64 %87)
  %89 = call i64 @pmap_load(i32* %88)
  %90 = load %struct.rwlock**, %struct.rwlock*** %13, align 8
  %91 = call i32 @pmap_remove_l2(%struct.TYPE_24__* %83, i32* %84, i64 %85, i64 %89, %struct.spglist* %14, %struct.rwlock** %90)
  br label %101

92:                                               ; preds = %75
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %94 = load i32, i32* %16, align 4
  %95 = load i64, i64* %9, align 8
  %96 = load i64, i64* %9, align 8
  %97 = load i64, i64* @L2_SIZE, align 8
  %98 = add i64 %96, %97
  %99 = load %struct.rwlock**, %struct.rwlock*** %13, align 8
  %100 = call i32 @pmap_remove_l3_range(%struct.TYPE_24__* %93, i32 %94, i64 %95, i64 %98, %struct.spglist* %14, %struct.rwlock** %99)
  br label %101

101:                                              ; preds = %92, %82
  %102 = call i32 @vm_page_free_pages_toq(%struct.spglist* %14, i32 1)
  %103 = load i64, i64* %9, align 8
  %104 = load i64, i64* @VM_MAXUSER_ADDRESS, align 8
  %105 = icmp sge i64 %103, %104
  br i1 %105, label %106, label %125

106:                                              ; preds = %101
  %107 = load i32*, i32** %15, align 8
  %108 = call i64 @pmap_load(i32* %107)
  %109 = load i64, i64* @ATTR_MASK, align 8
  %110 = xor i64 %109, -1
  %111 = and i64 %108, %110
  %112 = call %struct.TYPE_23__* @PHYS_TO_VM_PAGE(i64 %111)
  store %struct.TYPE_23__* %112, %struct.TYPE_23__** %18, align 8
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %115 = call i64 @pmap_insert_pt_page(%struct.TYPE_24__* %113, %struct.TYPE_23__* %114, i32 0)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %106
  %118 = call i32 @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %119

119:                                              ; preds = %117, %106
  %120 = load i32*, i32** %15, align 8
  %121 = call i32 @pmap_clear(i32* %120)
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %123 = load i64, i64* %9, align 8
  %124 = call i32 @pmap_invalidate_page(%struct.TYPE_24__* %122, i64 %123)
  br label %133

125:                                              ; preds = %101
  %126 = load i32*, i32** %15, align 8
  %127 = call i64 @pmap_load(i32* %126)
  %128 = icmp eq i64 %127, 0
  %129 = zext i1 %128 to i32
  %130 = load i32*, i32** %15, align 8
  %131 = bitcast i32* %130 to i8*
  %132 = call i32 @KASSERT(i32 %129, i8* %131)
  br label %133

133:                                              ; preds = %125, %119
  br label %134

134:                                              ; preds = %133, %41
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* @ATTR_SW_MANAGED, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %189

139:                                              ; preds = %134
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %141 = load i64, i64* %9, align 8
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %11, align 4
  %144 = load %struct.rwlock**, %struct.rwlock*** %13, align 8
  %145 = call i32 @pmap_pv_insert_l2(%struct.TYPE_24__* %140, i64 %141, i32 %142, i32 %143, %struct.rwlock** %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %165, label %147

147:                                              ; preds = %139
  %148 = call i32 @SLIST_INIT(%struct.spglist* %14)
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %150 = load i64, i64* %9, align 8
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %152 = call i64 @pmap_unwire_l3(%struct.TYPE_24__* %149, i64 %150, %struct.TYPE_23__* %151, %struct.spglist* %14)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %147
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %156 = load i64, i64* %9, align 8
  %157 = call i32 @pmap_invalidate_page(%struct.TYPE_24__* %155, i64 %156)
  %158 = call i32 @vm_page_free_pages_toq(%struct.spglist* %14, i32 1)
  br label %159

159:                                              ; preds = %154, %147
  %160 = load i32, i32* @KTR_PMAP, align 4
  %161 = load i64, i64* %9, align 8
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %163 = call i32 @CTR2(i32 %160, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %161, %struct.TYPE_24__* %162)
  %164 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %164, i32* %7, align 4
  br label %223

165:                                              ; preds = %139
  %166 = load i32, i32* %10, align 4
  %167 = load i32, i32* @ATTR_SW_DBM, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %188

170:                                              ; preds = %165
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  store %struct.TYPE_23__* %171, %struct.TYPE_23__** %18, align 8
  br label %172

172:                                              ; preds = %184, %170
  %173 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %174 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %175 = load i64, i64* @L2_SIZE, align 8
  %176 = load i64, i64* @PAGE_SIZE, align 8
  %177 = udiv i64 %175, %176
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %174, i64 %177
  %179 = icmp ult %struct.TYPE_23__* %173, %178
  br i1 %179, label %180, label %187

180:                                              ; preds = %172
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %182 = load i32, i32* @PGA_WRITEABLE, align 4
  %183 = call i32 @vm_page_aflag_set(%struct.TYPE_23__* %181, i32 %182)
  br label %184

184:                                              ; preds = %180
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 1
  store %struct.TYPE_23__* %186, %struct.TYPE_23__** %18, align 8
  br label %172

187:                                              ; preds = %172
  br label %188

188:                                              ; preds = %187, %165
  br label %189

189:                                              ; preds = %188, %134
  %190 = load i32, i32* %10, align 4
  %191 = load i32, i32* @ATTR_SW_WIRED, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %203

194:                                              ; preds = %189
  %195 = load i64, i64* @L2_SIZE, align 8
  %196 = load i64, i64* @PAGE_SIZE, align 8
  %197 = udiv i64 %195, %196
  %198 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = add i64 %201, %197
  store i64 %202, i64* %200, align 8
  br label %203

203:                                              ; preds = %194, %189
  %204 = load i64, i64* @L2_SIZE, align 8
  %205 = load i64, i64* @PAGE_SIZE, align 8
  %206 = udiv i64 %204, %205
  %207 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = add i64 %210, %206
  store i64 %211, i64* %209, align 8
  %212 = load i32*, i32** %15, align 8
  %213 = load i32, i32* %10, align 4
  %214 = call i32 @pmap_store(i32* %212, i32 %213)
  %215 = load i32, i32* @ishst, align 4
  %216 = call i32 @dsb(i32 %215)
  %217 = call i32 @atomic_add_long(i32* @pmap_l2_mappings, i32 1)
  %218 = load i32, i32* @KTR_PMAP, align 4
  %219 = load i64, i64* %9, align 8
  %220 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %221 = call i32 @CTR2(i32 %218, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i64 %219, %struct.TYPE_24__* %220)
  %222 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %222, i32* %7, align 4
  br label %223

223:                                              ; preds = %203, %159, %65, %35
  %224 = load i32, i32* %7, align 4
  ret i32 %224
}

declare dso_local i32 @PMAP_LOCK_ASSERT(%struct.TYPE_24__*, i32) #1

declare dso_local %struct.TYPE_23__* @pmap_alloc_l2(%struct.TYPE_24__*, i64, %struct.rwlock**) #1

declare dso_local i32 @CTR2(i32, i8*, i64, %struct.TYPE_24__*) #1

declare dso_local i64 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_23__*) #1

declare dso_local i64 @pmap_l2_index(i64) #1

declare dso_local i64 @pmap_load(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @SLIST_INIT(%struct.spglist*) #1

declare dso_local i32 @pmap_remove_l2(%struct.TYPE_24__*, i32*, i64, i64, %struct.spglist*, %struct.rwlock**) #1

declare dso_local i32* @pmap_l1(%struct.TYPE_24__*, i64) #1

declare dso_local i32 @pmap_remove_l3_range(%struct.TYPE_24__*, i32, i64, i64, %struct.spglist*, %struct.rwlock**) #1

declare dso_local i32 @vm_page_free_pages_toq(%struct.spglist*, i32) #1

declare dso_local %struct.TYPE_23__* @PHYS_TO_VM_PAGE(i64) #1

declare dso_local i64 @pmap_insert_pt_page(%struct.TYPE_24__*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @pmap_clear(i32*) #1

declare dso_local i32 @pmap_invalidate_page(%struct.TYPE_24__*, i64) #1

declare dso_local i32 @pmap_pv_insert_l2(%struct.TYPE_24__*, i64, i32, i32, %struct.rwlock**) #1

declare dso_local i64 @pmap_unwire_l3(%struct.TYPE_24__*, i64, %struct.TYPE_23__*, %struct.spglist*) #1

declare dso_local i32 @vm_page_aflag_set(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @pmap_store(i32*, i32) #1

declare dso_local i32 @dsb(i32) #1

declare dso_local i32 @atomic_add_long(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
