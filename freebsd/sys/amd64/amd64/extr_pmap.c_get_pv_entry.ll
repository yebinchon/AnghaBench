; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_get_pv_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_get_pv_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pv_chunks_list = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.rwlock = type { i32 }
%struct.pv_chunk = type { i32*, i32*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@pv_entry_allocs = common dso_local global i32 0, align 4
@_NPCM = common dso_local global i32 0, align 4
@pc_list = common dso_local global i32 0, align 4
@pv_entry_count = common dso_local global i32 0, align 4
@pv_entry_spare = common dso_local global i32 0, align 4
@VM_ALLOC_NORMAL = common dso_local global i32 0, align 4
@VM_ALLOC_NOOBJ = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@pc_chunk_tryfail = common dso_local global i32 0, align 4
@pc_chunk_count = common dso_local global i32 0, align 4
@pc_chunk_allocs = common dso_local global i32 0, align 4
@PC_FREE0 = common dso_local global i64 0, align 8
@PC_FREE1 = common dso_local global i64 0, align 8
@PC_FREE2 = common dso_local global i64 0, align 8
@pv_chunks = common dso_local global %struct.pv_chunks_list* null, align 8
@pc_lru = common dso_local global i32 0, align 4
@_NPCPV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__*, %struct.rwlock**)* @get_pv_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_pv_entry(%struct.TYPE_9__* %0, %struct.rwlock** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.rwlock**, align 8
  %6 = alloca %struct.pv_chunks_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.pv_chunk*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.rwlock** %1, %struct.rwlock*** %5, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = load i32, i32* @MA_OWNED, align 4
  %14 = call i32 @PMAP_LOCK_ASSERT(%struct.TYPE_9__* %12, i32 %13)
  %15 = call i32 @atomic_add_long(i32* @pv_entry_allocs, i32 1)
  %16 = call i32 @PV_STAT(i32 %15)
  br label %17

17:                                               ; preds = %138, %2
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = call %struct.pv_chunk* @TAILQ_FIRST(i32* %19)
  store %struct.pv_chunk* %20, %struct.pv_chunk** %10, align 8
  %21 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %22 = icmp ne %struct.pv_chunk* %21, null
  br i1 %22, label %23, label %116

23:                                               ; preds = %17
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %47, %23
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @_NPCM, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %24
  %29 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %30 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %28
  %38 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %39 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @bsfq(i32 %44)
  store i32 %45, i32* %7, align 4
  br label %50

46:                                               ; preds = %28
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %24

50:                                               ; preds = %37, %24
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @_NPCM, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %115

54:                                               ; preds = %50
  %55 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %56 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = mul nsw i32 %58, 64
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %57, i64 %62
  store i32* %63, i32** %9, align 8
  %64 = load i32, i32* %7, align 4
  %65 = zext i32 %64 to i64
  %66 = shl i64 1, %65
  %67 = xor i64 %66, -1
  %68 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %69 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = and i64 %75, %67
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %73, align 4
  %78 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %79 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %109

84:                                               ; preds = %54
  %85 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %86 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %109

91:                                               ; preds = %84
  %92 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %93 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 2
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %91
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %102 = load i32, i32* @pc_list, align 4
  %103 = call i32 @TAILQ_REMOVE(i32* %100, %struct.pv_chunk* %101, i32 %102)
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %107 = load i32, i32* @pc_list, align 4
  %108 = call i32 @TAILQ_INSERT_TAIL(i32* %105, %struct.pv_chunk* %106, i32 %107)
  br label %109

109:                                              ; preds = %98, %91, %84, %54
  %110 = call i32 @atomic_add_long(i32* @pv_entry_count, i32 1)
  %111 = call i32 @PV_STAT(i32 %110)
  %112 = call i32 @atomic_subtract_int(i32* @pv_entry_spare, i32 1)
  %113 = call i32 @PV_STAT(i32 %112)
  %114 = load i32*, i32** %9, align 8
  store i32* %114, i32** %3, align 8
  br label %210

115:                                              ; preds = %50
  br label %116

116:                                              ; preds = %115, %17
  %117 = load i32, i32* @VM_ALLOC_NORMAL, align 4
  %118 = load i32, i32* @VM_ALLOC_NOOBJ, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %121 = or i32 %119, %120
  %122 = call %struct.TYPE_8__* @vm_page_alloc(i32* null, i32 0, i32 %121)
  store %struct.TYPE_8__* %122, %struct.TYPE_8__** %11, align 8
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %124 = icmp eq %struct.TYPE_8__* %123, null
  br i1 %124, label %125, label %140

125:                                              ; preds = %116
  %126 = load %struct.rwlock**, %struct.rwlock*** %5, align 8
  %127 = icmp eq %struct.rwlock** %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load i32, i32* @pc_chunk_tryfail, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* @pc_chunk_tryfail, align 4
  %131 = call i32 @PV_STAT(i32 %129)
  store i32* null, i32** %3, align 8
  br label %210

132:                                              ; preds = %125
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %134 = load %struct.rwlock**, %struct.rwlock*** %5, align 8
  %135 = call %struct.TYPE_8__* @reclaim_pv_chunk(%struct.TYPE_9__* %133, %struct.rwlock** %134)
  store %struct.TYPE_8__* %135, %struct.TYPE_8__** %11, align 8
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %137 = icmp eq %struct.TYPE_8__* %136, null
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  br label %17

139:                                              ; preds = %132
  br label %140

140:                                              ; preds = %139, %116
  %141 = call i32 @atomic_add_int(i32* @pc_chunk_count, i32 1)
  %142 = call i32 @PV_STAT(i32 %141)
  %143 = call i32 @atomic_add_int(i32* @pc_chunk_allocs, i32 1)
  %144 = call i32 @PV_STAT(i32 %143)
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @dump_add_page(i32 %147)
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @PHYS_TO_DMAP(i32 %151)
  %153 = inttoptr i64 %152 to i8*
  %154 = bitcast i8* %153 to %struct.pv_chunk*
  store %struct.pv_chunk* %154, %struct.pv_chunk** %10, align 8
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %156 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %157 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %156, i32 0, i32 2
  store %struct.TYPE_9__* %155, %struct.TYPE_9__** %157, align 8
  %158 = load i64, i64* @PC_FREE0, align 8
  %159 = and i64 %158, -2
  %160 = trunc i64 %159 to i32
  %161 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %162 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  store i32 %160, i32* %164, align 4
  %165 = load i64, i64* @PC_FREE1, align 8
  %166 = trunc i64 %165 to i32
  %167 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %168 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 1
  store i32 %166, i32* %170, align 4
  %171 = load i64, i64* @PC_FREE2, align 8
  %172 = trunc i64 %171 to i32
  %173 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %174 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 2
  store i32 %172, i32* %176, align 4
  %177 = load %struct.pv_chunks_list*, %struct.pv_chunks_list** @pv_chunks, align 8
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i64 @_vm_phys_domain(i32 %180)
  %182 = getelementptr inbounds %struct.pv_chunks_list, %struct.pv_chunks_list* %177, i64 %181
  store %struct.pv_chunks_list* %182, %struct.pv_chunks_list** %6, align 8
  %183 = load %struct.pv_chunks_list*, %struct.pv_chunks_list** %6, align 8
  %184 = getelementptr inbounds %struct.pv_chunks_list, %struct.pv_chunks_list* %183, i32 0, i32 0
  %185 = call i32 @mtx_lock(i32* %184)
  %186 = load %struct.pv_chunks_list*, %struct.pv_chunks_list** %6, align 8
  %187 = getelementptr inbounds %struct.pv_chunks_list, %struct.pv_chunks_list* %186, i32 0, i32 1
  %188 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %189 = load i32, i32* @pc_lru, align 4
  %190 = call i32 @TAILQ_INSERT_TAIL(i32* %187, %struct.pv_chunk* %188, i32 %189)
  %191 = load %struct.pv_chunks_list*, %struct.pv_chunks_list** %6, align 8
  %192 = getelementptr inbounds %struct.pv_chunks_list, %struct.pv_chunks_list* %191, i32 0, i32 0
  %193 = call i32 @mtx_unlock(i32* %192)
  %194 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %195 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 0
  store i32* %197, i32** %9, align 8
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 0
  %200 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %201 = load i32, i32* @pc_list, align 4
  %202 = call i32 @TAILQ_INSERT_HEAD(i32* %199, %struct.pv_chunk* %200, i32 %201)
  %203 = call i32 @atomic_add_long(i32* @pv_entry_count, i32 1)
  %204 = call i32 @PV_STAT(i32 %203)
  %205 = load i32, i32* @_NPCPV, align 4
  %206 = sub nsw i32 %205, 1
  %207 = call i32 @atomic_add_int(i32* @pv_entry_spare, i32 %206)
  %208 = call i32 @PV_STAT(i32 %207)
  %209 = load i32*, i32** %9, align 8
  store i32* %209, i32** %3, align 8
  br label %210

210:                                              ; preds = %140, %128, %109
  %211 = load i32*, i32** %3, align 8
  ret i32* %211
}

declare dso_local i32 @PMAP_LOCK_ASSERT(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @PV_STAT(i32) #1

declare dso_local i32 @atomic_add_long(i32*, i32) #1

declare dso_local %struct.pv_chunk* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @bsfq(i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.pv_chunk*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.pv_chunk*, i32) #1

declare dso_local i32 @atomic_subtract_int(i32*, i32) #1

declare dso_local %struct.TYPE_8__* @vm_page_alloc(i32*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @reclaim_pv_chunk(%struct.TYPE_9__*, %struct.rwlock**) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local i32 @dump_add_page(i32) #1

declare dso_local i64 @PHYS_TO_DMAP(i32) #1

declare dso_local i64 @_vm_phys_domain(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.pv_chunk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
