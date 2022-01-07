; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_enter_quick_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_enter_quick_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_13__ = type { i32, i64, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.rwlock = type { i32 }
%struct.spglist = type { i32 }

@kmi = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@VPO_UNMANAGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"pmap_enter_quick_locked: managed mapping within the clean submap\00", align 1
@MA_OWNED = common dso_local global i32 0, align 4
@VM_MAXUSER_ADDRESS = common dso_local global i64 0, align 8
@PG_PS = common dso_local global i32 0, align 4
@PG_FRAME = common dso_local global i32 0, align 4
@PG_MANAGED = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@pg_nx = common dso_local global i32 0, align 4
@PG_U = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (i32, i64, %struct.TYPE_13__*, i32, %struct.TYPE_13__*, %struct.rwlock**)* @pmap_enter_quick_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @pmap_enter_quick_locked(i32 %0, i64 %1, %struct.TYPE_13__* %2, i32 %3, %struct.TYPE_13__* %4, %struct.rwlock** %5) #0 {
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.rwlock**, align 8
  %14 = alloca %struct.spglist, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_13__* %4, %struct.TYPE_13__** %12, align 8
  store %struct.rwlock** %5, %struct.rwlock*** %13, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @kmi, i32 0, i32 0), align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %34, label %23

23:                                               ; preds = %6
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @kmi, i32 0, i32 1), align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @VPO_UNMANAGED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %27, %23, %6
  %35 = phi i1 [ true, %23 ], [ true, %6 ], [ %33, %27 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @KASSERT(i32 %36, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @pmap_valid_bit(i32 %38)
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @MA_OWNED, align 4
  %42 = call i32 @PMAP_LOCK_ASSERT(i32 %40, i32 %41)
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* @VM_MAXUSER_ADDRESS, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %110

46:                                               ; preds = %34
  %47 = load i64, i64* %9, align 8
  %48 = call i64 @pmap_pde_pindex(i64 %47)
  store i64 %48, i64* %18, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %50 = icmp ne %struct.TYPE_13__* %49, null
  br i1 %50, label %51, label %62

51:                                               ; preds = %46
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %18, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  br label %101

62:                                               ; preds = %51, %46
  %63 = load i32, i32* %8, align 4
  %64 = load i64, i64* %9, align 8
  %65 = call i32* @pmap_pde(i32 %63, i64 %64)
  store i32* %65, i32** %19, align 8
  %66 = load i32*, i32** %19, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %91

68:                                               ; preds = %62
  %69 = load i32*, i32** %19, align 8
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %17, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %91

74:                                               ; preds = %68
  %75 = load i32*, i32** %19, align 8
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @PG_PS, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %7, align 8
  br label %209

81:                                               ; preds = %74
  %82 = load i32*, i32** %19, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @PG_FRAME, align 4
  %85 = and i32 %83, %84
  %86 = call %struct.TYPE_13__* @PHYS_TO_VM_PAGE(i32 %85)
  store %struct.TYPE_13__* %86, %struct.TYPE_13__** %12, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  br label %100

91:                                               ; preds = %68, %62
  %92 = load i32, i32* %8, align 4
  %93 = load i64, i64* %18, align 8
  %94 = call %struct.TYPE_13__* @_pmap_allocpte(i32 %92, i64 %93, i32* null)
  store %struct.TYPE_13__* %94, %struct.TYPE_13__** %12, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %96 = icmp eq %struct.TYPE_13__* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %98, %struct.TYPE_13__** %7, align 8
  br label %209

99:                                               ; preds = %91
  br label %100

100:                                              ; preds = %99, %81
  br label %101

101:                                              ; preds = %100, %57
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %103 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_13__* %102)
  %104 = call i64 @PHYS_TO_DMAP(i32 %103)
  %105 = inttoptr i64 %104 to i32*
  store i32* %105, i32** %16, align 8
  %106 = load i32*, i32** %16, align 8
  %107 = load i64, i64* %9, align 8
  %108 = call i64 @pmap_pte_index(i64 %107)
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  store i32* %109, i32** %16, align 8
  br label %113

110:                                              ; preds = %34
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %12, align 8
  %111 = load i64, i64* %9, align 8
  %112 = call i32* @vtopte(i64 %111)
  store i32* %112, i32** %16, align 8
  br label %113

113:                                              ; preds = %110, %101
  %114 = load i32*, i32** %16, align 8
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %113
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %119 = icmp ne %struct.TYPE_13__* %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %122, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %12, align 8
  br label %125

125:                                              ; preds = %120, %117
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %126, %struct.TYPE_13__** %7, align 8
  br label %209

127:                                              ; preds = %113
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @VPO_UNMANAGED, align 4
  %132 = and i32 %130, %131
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %159

134:                                              ; preds = %127
  %135 = load i32, i32* %8, align 4
  %136 = load i64, i64* %9, align 8
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %138 = load %struct.rwlock**, %struct.rwlock*** %13, align 8
  %139 = call i32 @pmap_try_insert_pv_entry(i32 %135, i64 %136, %struct.TYPE_13__* %137, %struct.rwlock** %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %159, label %141

141:                                              ; preds = %134
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %143 = icmp ne %struct.TYPE_13__* %142, null
  br i1 %143, label %144, label %157

144:                                              ; preds = %141
  %145 = call i32 @SLIST_INIT(%struct.spglist* %14)
  %146 = load i32, i32* %8, align 4
  %147 = load i64, i64* %9, align 8
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %149 = call i64 @pmap_unwire_ptp(i32 %146, i64 %147, %struct.TYPE_13__* %148, %struct.spglist* %14)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %144
  %152 = load i32, i32* %8, align 4
  %153 = load i64, i64* %9, align 8
  %154 = call i32 @pmap_invalidate_page(i32 %152, i64 %153)
  %155 = call i32 @vm_page_free_pages_toq(%struct.spglist* %14, i32 1)
  br label %156

156:                                              ; preds = %151, %144
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %12, align 8
  br label %157

157:                                              ; preds = %156, %141
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %158, %struct.TYPE_13__** %7, align 8
  br label %209

159:                                              ; preds = %134, %127
  %160 = load i32, i32* %8, align 4
  %161 = call i32 @pmap_resident_count_inc(i32 %160, i32 1)
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %163 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_13__* %162)
  %164 = load i32, i32* %17, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* %8, align 4
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @pmap_cache_bits(i32 %166, i32 %170, i32 0)
  %172 = or i32 %165, %171
  store i32 %172, i32* %15, align 4
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @VPO_UNMANAGED, align 4
  %177 = and i32 %175, %176
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %159
  %180 = load i32, i32* @PG_MANAGED, align 4
  %181 = load i32, i32* %15, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %15, align 4
  br label %183

183:                                              ; preds = %179, %159
  %184 = load i32, i32* %11, align 4
  %185 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %186 = and i32 %184, %185
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %183
  %189 = load i32, i32* @pg_nx, align 4
  %190 = load i32, i32* %15, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %15, align 4
  br label %192

192:                                              ; preds = %188, %183
  %193 = load i64, i64* %9, align 8
  %194 = load i64, i64* @VM_MAXUSER_ADDRESS, align 8
  %195 = icmp slt i64 %193, %194
  br i1 %195, label %196, label %204

196:                                              ; preds = %192
  %197 = load i32, i32* @PG_U, align 4
  %198 = load i32, i32* %8, align 4
  %199 = load i64, i64* %9, align 8
  %200 = call i32 @pmap_pkru_get(i32 %198, i64 %199)
  %201 = or i32 %197, %200
  %202 = load i32, i32* %15, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* %15, align 4
  br label %204

204:                                              ; preds = %196, %192
  %205 = load i32*, i32** %16, align 8
  %206 = load i32, i32* %15, align 4
  %207 = call i32 @pte_store(i32* %205, i32 %206)
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %208, %struct.TYPE_13__** %7, align 8
  br label %209

209:                                              ; preds = %204, %157, %125, %97, %80
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  ret %struct.TYPE_13__* %210
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @pmap_valid_bit(i32) #1

declare dso_local i32 @PMAP_LOCK_ASSERT(i32, i32) #1

declare dso_local i64 @pmap_pde_pindex(i64) #1

declare dso_local i32* @pmap_pde(i32, i64) #1

declare dso_local %struct.TYPE_13__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local %struct.TYPE_13__* @_pmap_allocpte(i32, i64, i32*) #1

declare dso_local i64 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_13__*) #1

declare dso_local i64 @pmap_pte_index(i64) #1

declare dso_local i32* @vtopte(i64) #1

declare dso_local i32 @pmap_try_insert_pv_entry(i32, i64, %struct.TYPE_13__*, %struct.rwlock**) #1

declare dso_local i32 @SLIST_INIT(%struct.spglist*) #1

declare dso_local i64 @pmap_unwire_ptp(i32, i64, %struct.TYPE_13__*, %struct.spglist*) #1

declare dso_local i32 @pmap_invalidate_page(i32, i64) #1

declare dso_local i32 @vm_page_free_pages_toq(%struct.spglist*, i32) #1

declare dso_local i32 @pmap_resident_count_inc(i32, i32) #1

declare dso_local i32 @pmap_cache_bits(i32, i32, i32) #1

declare dso_local i32 @pmap_pkru_get(i32, i64) #1

declare dso_local i32 @pte_store(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
