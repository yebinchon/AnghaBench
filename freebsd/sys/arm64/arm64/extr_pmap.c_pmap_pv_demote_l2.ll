; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_pv_demote_l2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_pv_demote_l2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.rwlock = type { i32 }
%struct.md_page = type { i32 }
%struct.pv_chunk = type { i32*, i64, %struct.pv_chunk* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@L2_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"pmap_pv_demote_l2: va is not 2mpage aligned\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"pmap_pv_demote_l2: pa is not 2mpage aligned\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"pmap_pv_demote_l2: pv not found\00", align 1
@pv_next = common dso_local global i32 0, align 4
@pv_entry_allocs = common dso_local global i32 0, align 4
@Ln_ENTRIES = common dso_local global i64 0, align 8
@L2_SIZE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"pmap_pv_demote_l2: missing spare\00", align 1
@_NPCM = common dso_local global i32 0, align 4
@VPO_UNMANAGED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"pmap_pv_demote_l2: page %p is not managed\00", align 1
@pc_list = common dso_local global i32 0, align 4
@pv_entry_count = common dso_local global i32 0, align 4
@pv_entry_spare = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i64, i64, %struct.rwlock**)* @pmap_pv_demote_l2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_pv_demote_l2(%struct.TYPE_10__* %0, i64 %1, i64 %2, %struct.rwlock** %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
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
  store i64 %2, i64* %7, align 8
  store %struct.rwlock** %3, %struct.rwlock*** %8, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = load i32, i32* @MA_OWNED, align 4
  %18 = call i32 @PMAP_LOCK_ASSERT(%struct.TYPE_10__* %16, i32 %17)
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @L2_OFFSET, align 8
  %21 = and i64 %19, %20
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @KASSERT(i32 %23, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @L2_OFFSET, align 8
  %27 = and i64 %25, %26
  %28 = icmp eq i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @KASSERT(i32 %29, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.rwlock**, %struct.rwlock*** %8, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @CHANGE_PV_LIST_LOCK_TO_PHYS(%struct.rwlock** %31, i64 %32)
  %34 = load i64, i64* %7, align 8
  %35 = call %struct.md_page* @pa_to_pvh(i64 %34)
  store %struct.md_page* %35, %struct.md_page** %9, align 8
  %36 = load %struct.md_page*, %struct.md_page** %9, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call %struct.pv_chunk* @pmap_pvh_remove(%struct.md_page* %36, %struct.TYPE_10__* %37, i64 %38)
  store %struct.pv_chunk* %39, %struct.pv_chunk** %11, align 8
  %40 = load %struct.pv_chunk*, %struct.pv_chunk** %11, align 8
  %41 = icmp ne %struct.pv_chunk* %40, null
  %42 = zext i1 %41 to i32
  %43 = call i32 @KASSERT(i32 %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i64, i64* %7, align 8
  %45 = call %struct.TYPE_9__* @PHYS_TO_VM_PAGE(i64 %44)
  store %struct.TYPE_9__* %45, %struct.TYPE_9__** %13, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load %struct.pv_chunk*, %struct.pv_chunk** %11, align 8
  %50 = load i32, i32* @pv_next, align 4
  %51 = call i32 @TAILQ_INSERT_TAIL(i32* %48, %struct.pv_chunk* %49, i32 %50)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = load i64, i64* @Ln_ENTRIES, align 8
  %58 = sub nsw i64 %57, 1
  %59 = call i32 @atomic_add_long(i32* @pv_entry_allocs, i64 %58)
  %60 = call i32 @PV_STAT(i32 %59)
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* @L2_SIZE, align 8
  %63 = add nsw i64 %61, %62
  %64 = load i64, i64* @PAGE_SIZE, align 8
  %65 = sub nsw i64 %63, %64
  store i64 %65, i64* %12, align 8
  br label %66

66:                                               ; preds = %179, %4
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = call %struct.pv_chunk* @TAILQ_FIRST(i32* %68)
  store %struct.pv_chunk* %69, %struct.pv_chunk** %10, align 8
  %70 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %71 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %90, label %76

76:                                               ; preds = %66
  %77 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %78 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %76
  %84 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %85 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br label %90

90:                                               ; preds = %83, %76, %66
  %91 = phi i1 [ true, %76 ], [ true, %66 ], [ %89, %83 ]
  %92 = zext i1 %91 to i32
  %93 = call i32 @KASSERT(i32 %92, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %15, align 4
  br label %94

94:                                               ; preds = %176, %90
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* @_NPCM, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %179

98:                                               ; preds = %94
  br label %99

99:                                               ; preds = %174, %98
  %100 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %101 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %175

108:                                              ; preds = %99
  %109 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %110 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %15, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @ffsl(i32 %115)
  %117 = sub nsw i32 %116, 1
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %14, align 4
  %119 = zext i32 %118 to i64
  %120 = shl i64 1, %119
  %121 = xor i64 %120, -1
  %122 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %123 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %15, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = and i64 %129, %121
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %127, align 4
  %132 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %133 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %132, i32 0, i32 2
  %134 = load %struct.pv_chunk*, %struct.pv_chunk** %133, align 8
  %135 = load i32, i32* %15, align 4
  %136 = mul nsw i32 %135, 64
  %137 = load i32, i32* %14, align 4
  %138 = add nsw i32 %136, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %134, i64 %139
  store %struct.pv_chunk* %140, %struct.pv_chunk** %11, align 8
  %141 = load i64, i64* @PAGE_SIZE, align 8
  %142 = load i64, i64* %6, align 8
  %143 = add nsw i64 %142, %141
  store i64 %143, i64* %6, align 8
  %144 = load i64, i64* %6, align 8
  %145 = load %struct.pv_chunk*, %struct.pv_chunk** %11, align 8
  %146 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %145, i32 0, i32 1
  store i64 %144, i64* %146, align 8
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 1
  store %struct.TYPE_9__* %148, %struct.TYPE_9__** %13, align 8
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @VPO_UNMANAGED, align 4
  %153 = and i32 %151, %152
  %154 = icmp eq i32 %153, 0
  %155 = zext i1 %154 to i32
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %157 = bitcast %struct.TYPE_9__* %156 to i8*
  %158 = call i32 @KASSERT(i32 %155, i8* %157)
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 1
  %162 = load %struct.pv_chunk*, %struct.pv_chunk** %11, align 8
  %163 = load i32, i32* @pv_next, align 4
  %164 = call i32 @TAILQ_INSERT_TAIL(i32* %161, %struct.pv_chunk* %162, i32 %163)
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 4
  %170 = load i64, i64* %6, align 8
  %171 = load i64, i64* %12, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %108
  br label %190

174:                                              ; preds = %108
  br label %99

175:                                              ; preds = %99
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %15, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %15, align 4
  br label %94

179:                                              ; preds = %94
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  %182 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %183 = load i32, i32* @pc_list, align 4
  %184 = call i32 @TAILQ_REMOVE(i32* %181, %struct.pv_chunk* %182, i32 %183)
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  %187 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %188 = load i32, i32* @pc_list, align 4
  %189 = call i32 @TAILQ_INSERT_TAIL(i32* %186, %struct.pv_chunk* %187, i32 %188)
  br label %66

190:                                              ; preds = %173
  %191 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %192 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 0
  %195 = load i32, i32* %194, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %222

197:                                              ; preds = %190
  %198 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %199 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 1
  %202 = load i32, i32* %201, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %222

204:                                              ; preds = %197
  %205 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %206 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 2
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %222

211:                                              ; preds = %204
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 0
  %214 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %215 = load i32, i32* @pc_list, align 4
  %216 = call i32 @TAILQ_REMOVE(i32* %213, %struct.pv_chunk* %214, i32 %215)
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 0
  %219 = load %struct.pv_chunk*, %struct.pv_chunk** %10, align 8
  %220 = load i32, i32* @pc_list, align 4
  %221 = call i32 @TAILQ_INSERT_TAIL(i32* %218, %struct.pv_chunk* %219, i32 %220)
  br label %222

222:                                              ; preds = %211, %204, %197, %190
  %223 = load i64, i64* @Ln_ENTRIES, align 8
  %224 = sub nsw i64 %223, 1
  %225 = call i32 @atomic_add_long(i32* @pv_entry_count, i64 %224)
  %226 = call i32 @PV_STAT(i32 %225)
  %227 = load i64, i64* @Ln_ENTRIES, align 8
  %228 = sub nsw i64 %227, 1
  %229 = call i32 @atomic_subtract_int(i32* @pv_entry_spare, i64 %228)
  %230 = call i32 @PV_STAT(i32 %229)
  ret void
}

declare dso_local i32 @PMAP_LOCK_ASSERT(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @CHANGE_PV_LIST_LOCK_TO_PHYS(%struct.rwlock**, i64) #1

declare dso_local %struct.md_page* @pa_to_pvh(i64) #1

declare dso_local %struct.pv_chunk* @pmap_pvh_remove(%struct.md_page*, %struct.TYPE_10__*, i64) #1

declare dso_local %struct.TYPE_9__* @PHYS_TO_VM_PAGE(i64) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.pv_chunk*, i32) #1

declare dso_local i32 @PV_STAT(i32) #1

declare dso_local i32 @atomic_add_long(i32*, i64) #1

declare dso_local %struct.pv_chunk* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @ffsl(i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.pv_chunk*, i32) #1

declare dso_local i32 @atomic_subtract_int(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
