; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_pv_demote_pde.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_pv_demote_pde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.rwlock = type { i32 }
%struct.md_page = type { i32 }
%struct.pv_chunk = type { i32*, i64, %struct.pv_chunk* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@PDRMASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"pmap_pv_demote_pde: pa is not 2mpage aligned\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"pmap_pv_demote_pde: pv not found\00", align 1
@pv_next = common dso_local global i32 0, align 4
@pv_entry_allocs = common dso_local global i32 0, align 4
@NPTEPG = common dso_local global i64 0, align 8
@NBPDR = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"pmap_pv_demote_pde: missing spare\00", align 1
@_NPCM = common dso_local global i32 0, align 4
@VPO_UNMANAGED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"pmap_pv_demote_pde: page %p is not managed\00", align 1
@pc_list = common dso_local global i32 0, align 4
@pv_entry_count = common dso_local global i32 0, align 4
@pv_entry_spare = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i64, i32, %struct.rwlock**)* @pmap_pv_demote_pde to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_pv_demote_pde(%struct.TYPE_10__* %0, i64 %1, i32 %2, %struct.rwlock** %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rwlock**, align 8
  %9 = alloca %struct.md_page*, align 8
  %10 = alloca %struct.pv_chunk*, align 8
  %11 = alloca %struct.pv_chunk*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.rwlock** %3, %struct.rwlock*** %8, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = load i32, i32* @MA_OWNED, align 4
  %18 = call i32 @PMAP_LOCK_ASSERT(%struct.TYPE_10__* %16, i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @PDRMASK, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @KASSERT(i32 %23, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.rwlock**, %struct.rwlock*** %8, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @CHANGE_PV_LIST_LOCK_TO_PHYS(%struct.rwlock** %25, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = call %struct.md_page* @pa_to_pvh(i32 %28)
  store %struct.md_page* %29, %struct.md_page** %9, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @trunc_2mpage(i64 %30)
  store i64 %31, i64* %6, align 8
  %32 = load %struct.md_page*, %struct.md_page** %9, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call %struct.pv_chunk* @pmap_pvh_remove(%struct.md_page* %32, %struct.TYPE_10__* %33, i64 %34)
  store %struct.pv_chunk* %35, %struct.pv_chunk** %11, align 8
  %36 = load %struct.pv_chunk*, %struct.pv_chunk** %11, align 8
  %37 = icmp ne %struct.pv_chunk* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @KASSERT(i32 %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* %7, align 4
  %41 = call %struct.TYPE_9__* @PHYS_TO_VM_PAGE(i32 %40)
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %13, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load %struct.pv_chunk*, %struct.pv_chunk** %11, align 8
  %46 = load i32, i32* @pv_next, align 4
  %47 = call i32 @TAILQ_INSERT_TAIL(i32* %44, %struct.pv_chunk* %45, i32 %46)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = load i64, i64* @NPTEPG, align 8
  %54 = sub nsw i64 %53, 1
  %55 = call i32 @atomic_add_long(i32* @pv_entry_allocs, i64 %54)
  %56 = call i32 @PV_STAT(i32 %55)
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* @NBPDR, align 8
  %59 = add nsw i64 %57, %58
  %60 = load i64, i64* @PAGE_SIZE, align 8
  %61 = sub nsw i64 %59, %60
  store i64 %61, i64* %12, align 8
  br label %62

62:                                               ; preds = %174, %4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = call %struct.pv_chunk* @TAILQ_FIRST(i32* %64)
  store %struct.pv_chunk* %65, %struct.pv_chunk** %10, align 8
  %66 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %67 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %86, label %72

72:                                               ; preds = %62
  %73 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %74 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %72
  %80 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %81 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br label %86

86:                                               ; preds = %79, %72, %62
  %87 = phi i1 [ true, %72 ], [ true, %62 ], [ %85, %79 ]
  %88 = zext i1 %87 to i32
  %89 = call i32 @KASSERT(i32 %88, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %15, align 4
  br label %90

90:                                               ; preds = %171, %86
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* @_NPCM, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %174

94:                                               ; preds = %90
  br label %95

95:                                               ; preds = %169, %94
  %96 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %97 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %170

104:                                              ; preds = %95
  %105 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %106 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %15, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @bsfq(i32 %111)
  store i32 %112, i32* %14, align 4
  %113 = load i32, i32* %14, align 4
  %114 = zext i32 %113 to i64
  %115 = shl i64 1, %114
  %116 = xor i64 %115, -1
  %117 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %118 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %15, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = and i64 %124, %116
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %122, align 4
  %127 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %128 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %127, i32 0, i32 2
  %129 = load %struct.pv_chunk*, %struct.pv_chunk** %128, align 8
  %130 = load i32, i32* %15, align 4
  %131 = mul nsw i32 %130, 64
  %132 = load i32, i32* %14, align 4
  %133 = add nsw i32 %131, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %129, i64 %134
  store %struct.pv_chunk* %135, %struct.pv_chunk** %11, align 8
  %136 = load i64, i64* @PAGE_SIZE, align 8
  %137 = load i64, i64* %6, align 8
  %138 = add nsw i64 %137, %136
  store i64 %138, i64* %6, align 8
  %139 = load i64, i64* %6, align 8
  %140 = load %struct.pv_chunk*, %struct.pv_chunk** %11, align 8
  %141 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %140, i32 0, i32 1
  store i64 %139, i64* %141, align 8
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 1
  store %struct.TYPE_9__* %143, %struct.TYPE_9__** %13, align 8
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @VPO_UNMANAGED, align 4
  %148 = and i32 %146, %147
  %149 = icmp eq i32 %148, 0
  %150 = zext i1 %149 to i32
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %152 = bitcast %struct.TYPE_9__* %151 to i8*
  %153 = call i32 @KASSERT(i32 %150, i8* %152)
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 1
  %157 = load %struct.pv_chunk*, %struct.pv_chunk** %11, align 8
  %158 = load i32, i32* @pv_next, align 4
  %159 = call i32 @TAILQ_INSERT_TAIL(i32* %156, %struct.pv_chunk* %157, i32 %158)
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %162, align 4
  %165 = load i64, i64* %6, align 8
  %166 = load i64, i64* %12, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %104
  br label %185

169:                                              ; preds = %104
  br label %95

170:                                              ; preds = %95
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %15, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %15, align 4
  br label %90

174:                                              ; preds = %90
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %178 = load i32, i32* @pc_list, align 4
  %179 = call i32 @TAILQ_REMOVE(i32* %176, %struct.pv_chunk* %177, i32 %178)
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  %182 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %183 = load i32, i32* @pc_list, align 4
  %184 = call i32 @TAILQ_INSERT_TAIL(i32* %181, %struct.pv_chunk* %182, i32 %183)
  br label %62

185:                                              ; preds = %168
  %186 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %187 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 0
  %190 = load i32, i32* %189, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %217

192:                                              ; preds = %185
  %193 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %194 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 1
  %197 = load i32, i32* %196, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %217

199:                                              ; preds = %192
  %200 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %201 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 2
  %204 = load i32, i32* %203, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %217

206:                                              ; preds = %199
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 0
  %209 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %210 = load i32, i32* @pc_list, align 4
  %211 = call i32 @TAILQ_REMOVE(i32* %208, %struct.pv_chunk* %209, i32 %210)
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 0
  %214 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %215 = load i32, i32* @pc_list, align 4
  %216 = call i32 @TAILQ_INSERT_TAIL(i32* %213, %struct.pv_chunk* %214, i32 %215)
  br label %217

217:                                              ; preds = %206, %199, %192, %185
  %218 = load i64, i64* @NPTEPG, align 8
  %219 = sub nsw i64 %218, 1
  %220 = call i32 @atomic_add_long(i32* @pv_entry_count, i64 %219)
  %221 = call i32 @PV_STAT(i32 %220)
  %222 = load i64, i64* @NPTEPG, align 8
  %223 = sub nsw i64 %222, 1
  %224 = call i32 @atomic_subtract_int(i32* @pv_entry_spare, i64 %223)
  %225 = call i32 @PV_STAT(i32 %224)
  ret void
}

declare dso_local i32 @PMAP_LOCK_ASSERT(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @CHANGE_PV_LIST_LOCK_TO_PHYS(%struct.rwlock**, i32) #1

declare dso_local %struct.md_page* @pa_to_pvh(i32) #1

declare dso_local i64 @trunc_2mpage(i64) #1

declare dso_local %struct.pv_chunk* @pmap_pvh_remove(%struct.md_page*, %struct.TYPE_10__*, i64) #1

declare dso_local %struct.TYPE_9__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.pv_chunk*, i32) #1

declare dso_local i32 @PV_STAT(i32) #1

declare dso_local i32 @atomic_add_long(i32*, i64) #1

declare dso_local %struct.pv_chunk* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @bsfq(i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.pv_chunk*, i32) #1

declare dso_local i32 @atomic_subtract_int(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
