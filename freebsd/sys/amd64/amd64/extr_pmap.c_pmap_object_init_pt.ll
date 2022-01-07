; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_object_init_pt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_object_init_pt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i64, i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@OBJT_DEVICE = common dso_local global i64 0, align 8
@OBJT_SG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"pmap_object_init_pt: non-device object\00", align 1
@NBPDR = common dso_local global i32 0, align 4
@VM_PAGE_BITS_ALL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"pmap_object_init_pt: invalid page %p\00", align 1
@listq = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PG_PS = common dso_local global i32 0, align 4
@PG_U = common dso_local global i32 0, align 4
@pmap_pde_mappings = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [73 x i8] c"pmap_object_init_pt: missing reference to page directory page, va: 0x%lx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_object_init_pt(i32 %0, i32 %1, %struct.TYPE_15__* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_14__*, align 8
  %19 = alloca %struct.TYPE_14__*, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @pmap_accessed_bit(i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @pmap_modified_bit(i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @pmap_valid_bit(i32 %25)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @pmap_rw_bit(i32 %27)
  store i32 %28, i32* %14, align 4
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %30 = call i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_15__* %29)
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @OBJT_DEVICE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %5
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @OBJT_SG, align 8
  %41 = icmp eq i64 %39, %40
  br label %42

42:                                               ; preds = %36, %5
  %43 = phi i1 [ true, %5 ], [ %41, %36 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @KASSERT(i32 %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @NBPDR, align 4
  %48 = sub nsw i32 %47, 1
  %49 = and i32 %46, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %225

51:                                               ; preds = %42
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @NBPDR, align 4
  %54 = sub nsw i32 %53, 1
  %55 = and i32 %52, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %225

57:                                               ; preds = %51
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @pmap_ps_enabled(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  br label %225

62:                                               ; preds = %57
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i64 @atop(i32 %66)
  %68 = add nsw i64 %65, %67
  %69 = call i32 @vm_object_populate(%struct.TYPE_15__* %63, i64 %64, i64 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %62
  br label %225

72:                                               ; preds = %62
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %74 = load i64, i64* %9, align 8
  %75 = call %struct.TYPE_14__* @vm_page_lookup(%struct.TYPE_15__* %73, i64 %74)
  store %struct.TYPE_14__* %75, %struct.TYPE_14__** %18, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @VM_PAGE_BITS_ALL, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %83 = bitcast %struct.TYPE_14__* %82 to i8*
  %84 = call i32 @KASSERT(i32 %81, i8* %83)
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* %20, align 4
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %90 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_14__* %89)
  store i32 %90, i32* %17, align 4
  %91 = load i32, i32* %17, align 4
  %92 = load i32, i32* @NBPDR, align 4
  %93 = sub nsw i32 %92, 1
  %94 = and i32 %91, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %72
  br label %225

97:                                               ; preds = %72
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %99 = load i32, i32* @listq, align 4
  %100 = call %struct.TYPE_14__* @TAILQ_NEXT(%struct.TYPE_14__* %98, i32 %99)
  store %struct.TYPE_14__* %100, %struct.TYPE_14__** %18, align 8
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* @PAGE_SIZE, align 4
  %103 = add nsw i32 %101, %102
  store i32 %103, i32* %16, align 4
  br label %104

104:                                              ; preds = %136, %97
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* %17, align 4
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %106, %107
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %140

110:                                              ; preds = %104
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @VM_PAGE_BITS_ALL, align 8
  %115 = icmp eq i64 %113, %114
  %116 = zext i1 %115 to i32
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %118 = bitcast %struct.TYPE_14__* %117 to i8*
  %119 = call i32 @KASSERT(i32 %116, i8* %118)
  %120 = load i32, i32* %16, align 4
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %122 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_14__* %121)
  %123 = icmp ne i32 %120, %122
  br i1 %123, label %131, label %124

124:                                              ; preds = %110
  %125 = load i32, i32* %20, align 4
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %125, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %124, %110
  br label %225

132:                                              ; preds = %124
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %134 = load i32, i32* @listq, align 4
  %135 = call %struct.TYPE_14__* @TAILQ_NEXT(%struct.TYPE_14__* %133, i32 %134)
  store %struct.TYPE_14__* %135, %struct.TYPE_14__** %18, align 8
  br label %136

136:                                              ; preds = %132
  %137 = load i32, i32* @PAGE_SIZE, align 4
  %138 = load i32, i32* %16, align 4
  %139 = add nsw i32 %138, %137
  store i32 %139, i32* %16, align 4
  br label %104

140:                                              ; preds = %104
  %141 = load i32, i32* %6, align 4
  %142 = call i32 @PMAP_LOCK(i32 %141)
  %143 = load i32, i32* %17, align 4
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* %20, align 4
  %146 = call i32 @pmap_cache_bits(i32 %144, i32 %145, i32 1)
  %147 = or i32 %143, %146
  store i32 %147, i32* %16, align 4
  br label %148

148:                                              ; preds = %218, %140
  %149 = load i32, i32* %16, align 4
  %150 = load i32, i32* %17, align 4
  %151 = load i32, i32* %10, align 4
  %152 = add nsw i32 %150, %151
  %153 = icmp slt i32 %149, %152
  br i1 %153, label %154, label %222

154:                                              ; preds = %148
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* %7, align 4
  %157 = call %struct.TYPE_14__* @pmap_allocpde(i32 %155, i32 %156, i32* null)
  store %struct.TYPE_14__* %157, %struct.TYPE_14__** %19, align 8
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %159 = icmp eq %struct.TYPE_14__* %158, null
  br i1 %159, label %160, label %164

160:                                              ; preds = %154
  %161 = load i32, i32* @NBPDR, align 4
  %162 = load i32, i32* %7, align 4
  %163 = add nsw i32 %162, %161
  store i32 %163, i32* %7, align 4
  br label %218

164:                                              ; preds = %154
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %166 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_14__* %165)
  %167 = call i64 @PHYS_TO_DMAP(i32 %166)
  %168 = inttoptr i64 %167 to i32*
  store i32* %168, i32** %11, align 8
  %169 = load i32*, i32** %11, align 8
  %170 = load i32, i32* %7, align 4
  %171 = call i64 @pmap_pde_index(i32 %170)
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  store i32* %172, i32** %11, align 8
  %173 = load i32*, i32** %11, align 8
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %15, align 4
  %176 = and i32 %174, %175
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %200

178:                                              ; preds = %164
  %179 = load i32*, i32** %11, align 8
  %180 = load i32, i32* %16, align 4
  %181 = load i32, i32* @PG_PS, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* %13, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* %12, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* @PG_U, align 4
  %188 = or i32 %186, %187
  %189 = load i32, i32* %14, align 4
  %190 = or i32 %188, %189
  %191 = load i32, i32* %15, align 4
  %192 = or i32 %190, %191
  %193 = call i32 @pde_store(i32* %179, i32 %192)
  %194 = load i32, i32* %6, align 4
  %195 = load i32, i32* @NBPDR, align 4
  %196 = load i32, i32* @PAGE_SIZE, align 4
  %197 = sdiv i32 %195, %196
  %198 = call i32 @pmap_resident_count_inc(i32 %194, i32 %197)
  %199 = call i32 @atomic_add_long(i32* @pmap_pde_mappings, i32 1)
  br label %214

200:                                              ; preds = %164
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = add nsw i64 %203, -1
  store i64 %204, i64* %202, align 8
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = icmp sgt i64 %207, 0
  %209 = zext i1 %208 to i32
  %210 = load i32, i32* %7, align 4
  %211 = sext i32 %210 to i64
  %212 = inttoptr i64 %211 to i8*
  %213 = call i32 @KASSERT(i32 %209, i8* %212)
  br label %214

214:                                              ; preds = %200, %178
  %215 = load i32, i32* @NBPDR, align 4
  %216 = load i32, i32* %7, align 4
  %217 = add nsw i32 %216, %215
  store i32 %217, i32* %7, align 4
  br label %218

218:                                              ; preds = %214, %160
  %219 = load i32, i32* @NBPDR, align 4
  %220 = load i32, i32* %16, align 4
  %221 = add nsw i32 %220, %219
  store i32 %221, i32* %16, align 4
  br label %148

222:                                              ; preds = %148
  %223 = load i32, i32* %6, align 4
  %224 = call i32 @PMAP_UNLOCK(i32 %223)
  br label %225

225:                                              ; preds = %61, %71, %96, %131, %222, %51, %42
  ret void
}

declare dso_local i32 @pmap_accessed_bit(i32) #1

declare dso_local i32 @pmap_modified_bit(i32) #1

declare dso_local i32 @pmap_valid_bit(i32) #1

declare dso_local i32 @pmap_rw_bit(i32) #1

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_15__*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @pmap_ps_enabled(i32) #1

declare dso_local i32 @vm_object_populate(%struct.TYPE_15__*, i64, i64) #1

declare dso_local i64 @atop(i32) #1

declare dso_local %struct.TYPE_14__* @vm_page_lookup(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @TAILQ_NEXT(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local i32 @pmap_cache_bits(i32, i32, i32) #1

declare dso_local %struct.TYPE_14__* @pmap_allocpde(i32, i32, i32*) #1

declare dso_local i64 @PHYS_TO_DMAP(i32) #1

declare dso_local i64 @pmap_pde_index(i32) #1

declare dso_local i32 @pde_store(i32*, i32) #1

declare dso_local i32 @pmap_resident_count_inc(i32, i32) #1

declare dso_local i32 @atomic_add_long(i32*, i32) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
