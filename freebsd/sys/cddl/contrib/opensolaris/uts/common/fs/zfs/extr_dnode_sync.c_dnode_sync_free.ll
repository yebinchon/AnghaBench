; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dnode_sync.c_dnode_sync_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dnode_sync.c_dnode_sync_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i64, i32, i64, i32, i32, i64, %struct.TYPE_13__*, %struct.TYPE_14__*, i64*, i64*, i64*, i32* }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@TXG_MASK = common dso_local global i32 0, align 4
@DMU_OT_NONE = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i32 0, align 4
@DMU_META_DNODE_OBJECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_16__*)* @dnode_sync_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dnode_sync_free(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %6 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @TXG_MASK, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %12 = call i32 @dmu_tx_is_syncing(%struct.TYPE_16__* %11)
  %13 = call i32 @ASSERT(i32 %12)
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %17 = call i32 @DN_USED_BYTES(%struct.TYPE_13__* %16)
  %18 = call i32 @ASSERT0(i32 %17)
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @BP_IS_HOLE(i32 %23)
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 13
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = call i32 @dnode_undirty_dbufs(i32* %31)
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %34 = call i32 @dnode_evict_dbufs(%struct.TYPE_15__* %33)
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 12
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  store i64 0, i64* %40, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 11
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 10
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  store i64 0, i64* %52, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @DMU_OT_NONE, align 8
  %59 = icmp ne i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @ASSERT(i32 %60)
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @DMU_OT_NONE, align 8
  %66 = icmp ne i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @ASSERT(i32 %67)
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @ASSERT(i32 %73)
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %77, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %2
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 9
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %88 = call i32 @dmu_buf_will_dirty(i32* %86, %struct.TYPE_16__* %87)
  br label %89

89:                                               ; preds = %82, %2
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %91, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = mul i64 4, %96
  %98 = trunc i64 %97 to i32
  %99 = call i32 @bzero(%struct.TYPE_13__* %92, i32 %98)
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %101 = call i32 @dnode_free_interior_slots(%struct.TYPE_15__* %100)
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 5
  %104 = call i32 @mutex_enter(i32* %103)
  %105 = load i64, i64* @DMU_OT_NONE, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 7
  store i64 0, i64* %109, align 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 2
  store i64 0, i64* %111, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 1
  store i64 0, i64* %113, align 8
  %114 = load i32, i32* @B_FALSE, align 4
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 6
  store i32 %114, i32* %116, align 4
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 3
  store i32 1, i32* %118, align 8
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 5
  %121 = call i32 @mutex_exit(i32* %120)
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @DMU_META_DNODE_OBJECT, align 8
  %126 = icmp ne i64 %124, %125
  %127 = zext i1 %126 to i32
  %128 = call i32 @ASSERT(i32 %127)
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = inttoptr i64 %133 to i8*
  %135 = call i32 @dnode_rele(%struct.TYPE_15__* %129, i8* %134)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dmu_tx_is_syncing(%struct.TYPE_16__*) #1

declare dso_local i32 @ASSERT0(i32) #1

declare dso_local i32 @DN_USED_BYTES(%struct.TYPE_13__*) #1

declare dso_local i32 @BP_IS_HOLE(i32) #1

declare dso_local i32 @dnode_undirty_dbufs(i32*) #1

declare dso_local i32 @dnode_evict_dbufs(%struct.TYPE_15__*) #1

declare dso_local i32 @dmu_buf_will_dirty(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @bzero(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @dnode_free_interior_slots(%struct.TYPE_15__*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @dnode_rele(%struct.TYPE_15__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
