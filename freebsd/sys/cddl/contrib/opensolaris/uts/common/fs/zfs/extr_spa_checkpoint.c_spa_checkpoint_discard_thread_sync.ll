; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa_checkpoint.c_spa_checkpoint_discard_thread_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa_checkpoint.c_spa_checkpoint_discard_thread_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_13__* }

@zfs_spa_discard_memory_limit = common dso_local global i32 0, align 4
@spa_checkpoint_discard_sync_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"discarding checkpoint: txg %llu, vdev id %d, deleted %llu words - %llu words are left\00", align 1
@EINTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [97 x i8] c"zfs: error %d was returned while incrementally destroying the checkpoint space map of vdev %llu\0A\00", align 1
@VDEV_TOP_ZAP_POOL_CHECKPOINT_SM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_15__*)* @spa_checkpoint_discard_thread_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spa_checkpoint_discard_thread_sync(i8* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %5, align 8
  %13 = load i32, i32* @zfs_spa_discard_memory_limit, align 4
  %14 = sext i32 %13 to i64
  %15 = udiv i64 %14, 8
  %16 = lshr i64 %15, 1
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %7, align 4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 2
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %19, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %7, align 4
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  %29 = call i32 @space_map_length(%struct.TYPE_16__* %28)
  %30 = sext i32 %29 to i64
  %31 = udiv i64 %30, 4
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %9, align 4
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %34, align 8
  %36 = load i32, i32* @spa_checkpoint_discard_sync_callback, align 4
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %38 = call i32 @space_map_incremental_destroy(%struct.TYPE_16__* %35, i32 %36, %struct.TYPE_14__* %8, %struct.TYPE_15__* %37)
  store i32 %38, i32* %6, align 4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %40, align 8
  %42 = call i32 @space_map_length(%struct.TYPE_16__* %41)
  %43 = sext i32 %42 to i64
  %44 = udiv i64 %43, 4
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %10, align 4
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = sub nsw i32 %52, %53
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @zfs_dbgmsg(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %51, i32 %54, i32 %55)
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @EINTR, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %105

60:                                               ; preds = %2
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @zfs_panic_recover(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %67)
  br label %69

69:                                               ; preds = %63, %60
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @ASSERT0(i32 %70)
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ASSERT0(i32 %76)
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %79, align 8
  %81 = call i32 @space_map_length(%struct.TYPE_16__* %80)
  %82 = call i32 @ASSERT0(i32 %81)
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %84, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %87 = call i32 @space_map_free(%struct.TYPE_16__* %85, %struct.TYPE_15__* %86)
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %89, align 8
  %91 = call i32 @space_map_close(%struct.TYPE_16__* %90)
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 2
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %93, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @spa_meta_objset(i32 %96)
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @VDEV_TOP_ZAP_POOL_CHECKPOINT_SM, align 4
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %103 = call i32 @zap_remove(i32 %97, i32 %100, i32 %101, %struct.TYPE_15__* %102)
  %104 = call i32 @VERIFY0(i32 %103)
  br label %105

105:                                              ; preds = %69, %2
  ret void
}

declare dso_local i32 @space_map_length(%struct.TYPE_16__*) #1

declare dso_local i32 @space_map_incremental_destroy(%struct.TYPE_16__*, i32, %struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @zfs_dbgmsg(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @zfs_panic_recover(i8*, i32, i32) #1

declare dso_local i32 @ASSERT0(i32) #1

declare dso_local i32 @space_map_free(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i32 @space_map_close(%struct.TYPE_16__*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @zap_remove(i32, i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @spa_meta_objset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
