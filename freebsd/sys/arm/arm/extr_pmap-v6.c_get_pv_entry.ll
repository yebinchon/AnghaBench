; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v6.c_get_pv_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v6.c_get_pv_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.pv_chunk = type { i32*, i32*, %struct.TYPE_5__* }

@get_pv_entry.printinterval = internal constant %struct.timeval { i32 60, i32 0 }, align 4
@get_pv_entry.lastprint = internal global %struct.timeval zeroinitializer, align 4
@pvh_global_lock = common dso_local global i32 0, align 4
@RA_WLOCKED = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@pv_entry_allocs = common dso_local global i32 0, align 4
@pv_entry_count = common dso_local global i64 0, align 8
@pv_entry_high_water = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [124 x i8] c"Approaching the limit on PV entries, consider increasing either the vm.pmap.shpgperproc or the vm.pmap.pv_entries tunable.\0A\00", align 1
@_NPCM = common dso_local global i32 0, align 4
@pv_entry_spare = common dso_local global i32 0, align 4
@pc_list = common dso_local global i32 0, align 4
@pv_vafree = common dso_local global i64 0, align 8
@VM_ALLOC_NORMAL = common dso_local global i32 0, align 4
@VM_ALLOC_NOOBJ = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@pc_chunk_tryfail = common dso_local global i32 0, align 4
@pc_chunk_count = common dso_local global i32 0, align 4
@pc_chunk_allocs = common dso_local global i32 0, align 4
@pc_freemask = common dso_local global i64* null, align 8
@pv_chunks = common dso_local global i32 0, align 4
@pc_lru = common dso_local global i32 0, align 4
@_NPCPV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*, i64)* @get_pv_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_pv_entry(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.pv_chunk*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i32, i32* @RA_WLOCKED, align 4
  %12 = call i32 @rw_assert(i32* @pvh_global_lock, i32 %11)
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = load i32, i32* @MA_OWNED, align 4
  %15 = call i32 @PMAP_LOCK_ASSERT(%struct.TYPE_5__* %13, i32 %14)
  %16 = load i32, i32* @pv_entry_allocs, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @pv_entry_allocs, align 4
  %18 = call i32 @PV_STAT(i32 %16)
  %19 = load i64, i64* @pv_entry_count, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* @pv_entry_count, align 8
  %21 = load i64, i64* @pv_entry_count, align 8
  %22 = load i64, i64* @pv_entry_high_water, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = call i64 @ratecheck(%struct.timeval* @get_pv_entry.lastprint, %struct.timeval* @get_pv_entry.printinterval)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 @printf(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %24
  br label %30

30:                                               ; preds = %29, %2
  br label %31

31:                                               ; preds = %156, %30
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = call %struct.pv_chunk* @TAILQ_FIRST(i32* %33)
  store %struct.pv_chunk* %34, %struct.pv_chunk** %9, align 8
  %35 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %36 = icmp ne %struct.pv_chunk* %35, null
  br i1 %36, label %37, label %131

37:                                               ; preds = %31
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %62, %37
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @_NPCM, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %65

42:                                               ; preds = %38
  %43 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %44 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %42
  %52 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %53 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ffs(i32 %58)
  %60 = sub nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %65

61:                                               ; preds = %42
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %38

65:                                               ; preds = %51, %38
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @_NPCM, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %130

69:                                               ; preds = %65
  %70 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %71 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = mul nsw i32 %73, 32
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %72, i64 %77
  store i32* %78, i32** %8, align 8
  %79 = load i32, i32* %6, align 4
  %80 = zext i32 %79 to i64
  %81 = shl i64 1, %80
  %82 = xor i64 %81, -1
  %83 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %84 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = and i64 %90, %82
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %88, align 4
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %112, %69
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @_NPCM, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %115

97:                                               ; preds = %93
  %98 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %99 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %97
  %107 = load i32, i32* @pv_entry_spare, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* @pv_entry_spare, align 4
  %109 = call i32 @PV_STAT(i32 %107)
  %110 = load i32*, i32** %8, align 8
  store i32* %110, i32** %3, align 8
  br label %221

111:                                              ; preds = %97
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %7, align 4
  br label %93

115:                                              ; preds = %93
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %119 = load i32, i32* @pc_list, align 4
  %120 = call i32 @TAILQ_REMOVE(i32* %117, %struct.pv_chunk* %118, i32 %119)
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %124 = load i32, i32* @pc_list, align 4
  %125 = call i32 @TAILQ_INSERT_TAIL(i32* %122, %struct.pv_chunk* %123, i32 %124)
  %126 = load i32, i32* @pv_entry_spare, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* @pv_entry_spare, align 4
  %128 = call i32 @PV_STAT(i32 %126)
  %129 = load i32*, i32** %8, align 8
  store i32* %129, i32** %3, align 8
  br label %221

130:                                              ; preds = %65
  br label %131

131:                                              ; preds = %130, %31
  %132 = load i64, i64* @pv_vafree, align 8
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %142, label %134

134:                                              ; preds = %131
  %135 = load i32, i32* @VM_ALLOC_NORMAL, align 4
  %136 = load i32, i32* @VM_ALLOC_NOOBJ, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %139 = or i32 %137, %138
  %140 = call i32* @vm_page_alloc(i32* null, i32 0, i32 %139)
  store i32* %140, i32** %10, align 8
  %141 = icmp eq i32* %140, null
  br i1 %141, label %142, label %158

142:                                              ; preds = %134, %131
  %143 = load i64, i64* %5, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %142
  %146 = load i64, i64* @pv_entry_count, align 8
  %147 = add nsw i64 %146, -1
  store i64 %147, i64* @pv_entry_count, align 8
  %148 = load i32, i32* @pc_chunk_tryfail, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* @pc_chunk_tryfail, align 4
  %150 = call i32 @PV_STAT(i32 %148)
  store i32* null, i32** %3, align 8
  br label %221

151:                                              ; preds = %142
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %153 = call i32* @pmap_pv_reclaim(%struct.TYPE_5__* %152)
  store i32* %153, i32** %10, align 8
  %154 = load i32*, i32** %10, align 8
  %155 = icmp eq i32* %154, null
  br i1 %155, label %156, label %157

156:                                              ; preds = %151
  br label %31

157:                                              ; preds = %151
  br label %158

158:                                              ; preds = %157, %134
  %159 = load i32, i32* @pc_chunk_count, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* @pc_chunk_count, align 4
  %161 = call i32 @PV_STAT(i32 %159)
  %162 = load i32, i32* @pc_chunk_allocs, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* @pc_chunk_allocs, align 4
  %164 = call i32 @PV_STAT(i32 %162)
  %165 = call i64 @pmap_pte2list_alloc(i64* @pv_vafree)
  %166 = inttoptr i64 %165 to %struct.pv_chunk*
  store %struct.pv_chunk* %166, %struct.pv_chunk** %9, align 8
  %167 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %168 = ptrtoint %struct.pv_chunk* %167 to i32
  %169 = call i32 @pmap_qenter(i32 %168, i32** %10, i32 1)
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %171 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %172 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %171, i32 0, i32 2
  store %struct.TYPE_5__* %170, %struct.TYPE_5__** %172, align 8
  %173 = load i64*, i64** @pc_freemask, align 8
  %174 = getelementptr inbounds i64, i64* %173, i64 0
  %175 = load i64, i64* %174, align 8
  %176 = and i64 %175, -2
  %177 = trunc i64 %176 to i32
  %178 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %179 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 0
  store i32 %177, i32* %181, align 4
  store i32 1, i32* %7, align 4
  br label %182

182:                                              ; preds = %199, %158
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* @_NPCM, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %202

186:                                              ; preds = %182
  %187 = load i64*, i64** @pc_freemask, align 8
  %188 = load i32, i32* %7, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i64, i64* %187, i64 %189
  %191 = load i64, i64* %190, align 8
  %192 = trunc i64 %191 to i32
  %193 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %194 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %7, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  store i32 %192, i32* %198, align 4
  br label %199

199:                                              ; preds = %186
  %200 = load i32, i32* %7, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %7, align 4
  br label %182

202:                                              ; preds = %182
  %203 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %204 = load i32, i32* @pc_lru, align 4
  %205 = call i32 @TAILQ_INSERT_TAIL(i32* @pv_chunks, %struct.pv_chunk* %203, i32 %204)
  %206 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %207 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %206, i32 0, i32 1
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 0
  store i32* %209, i32** %8, align 8
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 0
  %212 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %213 = load i32, i32* @pc_list, align 4
  %214 = call i32 @TAILQ_INSERT_HEAD(i32* %211, %struct.pv_chunk* %212, i32 %213)
  %215 = load i32, i32* @_NPCPV, align 4
  %216 = sub nsw i32 %215, 1
  %217 = load i32, i32* @pv_entry_spare, align 4
  %218 = add nsw i32 %217, %216
  store i32 %218, i32* @pv_entry_spare, align 4
  %219 = call i32 @PV_STAT(i32 %218)
  %220 = load i32*, i32** %8, align 8
  store i32* %220, i32** %3, align 8
  br label %221

221:                                              ; preds = %202, %145, %115, %106
  %222 = load i32*, i32** %3, align 8
  ret i32* %222
}

declare dso_local i32 @rw_assert(i32*, i32) #1

declare dso_local i32 @PMAP_LOCK_ASSERT(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @PV_STAT(i32) #1

declare dso_local i64 @ratecheck(%struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local %struct.pv_chunk* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.pv_chunk*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.pv_chunk*, i32) #1

declare dso_local i32* @vm_page_alloc(i32*, i32, i32) #1

declare dso_local i32* @pmap_pv_reclaim(%struct.TYPE_5__*) #1

declare dso_local i64 @pmap_pte2list_alloc(i64*) #1

declare dso_local i32 @pmap_qenter(i32, i32**, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.pv_chunk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
