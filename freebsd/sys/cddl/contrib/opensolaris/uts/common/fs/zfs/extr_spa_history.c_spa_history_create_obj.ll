; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa_history.c_spa_history_create_obj.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa_history.c_spa_history_create_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@DMU_OT_SPA_HISTORY = common dso_local global i32 0, align 4
@SPA_OLD_MAXBLOCKSIZE = common dso_local global i32 0, align 4
@DMU_OT_SPA_HISTORY_OFFSETS = common dso_local global i32 0, align 4
@DMU_POOL_DIRECTORY_OBJECT = common dso_local global i32 0, align 4
@DMU_POOL_HISTORY = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spa_history_create_obj(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %7, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* @DMU_OT_SPA_HISTORY, align 4
  %19 = load i32, i32* @SPA_OLD_MAXBLOCKSIZE, align 4
  %20 = load i32, i32* @DMU_OT_SPA_HISTORY_OFFSETS, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @dmu_object_alloc(i32* %17, i32 %18, i32 %19, i32 %20, i32 4, i32* %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* @DMU_POOL_DIRECTORY_OBJECT, align 4
  %27 = load i32, i32* @DMU_POOL_HISTORY, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32*, i32** %4, align 8
  %31 = call i64 @zap_add(i32* %25, i32 %26, i32 %27, i32 4, i32 1, i32* %29, i32* %30)
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @VERIFY(i32 %33)
  %35 = load i32*, i32** %7, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @FTAG, align 4
  %40 = call i64 @dmu_bonus_hold(i32* %35, i32 %38, i32 %39, %struct.TYPE_11__** %5)
  %41 = icmp eq i64 0, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @VERIFY(i32 %42)
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = icmp uge i64 %47, 4
  %49 = zext i1 %48 to i32
  %50 = call i32 @ASSERT(i32 %49)
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  store %struct.TYPE_10__* %53, %struct.TYPE_10__** %6, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @dmu_buf_will_dirty(%struct.TYPE_11__* %54, i32* %55)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %58 = call i32 @spa_normal_class(%struct.TYPE_9__* %57)
  %59 = call i32 @metaslab_class_get_dspace(i32 %58)
  %60 = sdiv i32 %59, 1000
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @MIN(i32 %65, i32 1073741824)
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @MAX(i32 %71, i32 131072)
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %76 = load i32, i32* @FTAG, align 4
  %77 = call i32 @dmu_buf_rele(%struct.TYPE_11__* %75, i32 %76)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dmu_object_alloc(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @zap_add(i32*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i64 @dmu_bonus_hold(i32*, i32, i32, %struct.TYPE_11__**) #1

declare dso_local i32 @dmu_buf_will_dirty(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @metaslab_class_get_dspace(i32) #1

declare dso_local i32 @spa_normal_class(%struct.TYPE_9__*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @dmu_buf_rele(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
