; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zio.c_zio_alloc_zil.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zio.c_zio_alloc_zil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@METASLAB_HINTBP_AVOID = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ZIO_COMPRESS_OFF = common dso_local global i32 0, align 4
@SPA_VERSION_SLIM_ZIL = common dso_local global i64 0, align 8
@ZIO_CHECKSUM_ZILOG2 = common dso_local global i32 0, align 4
@ZIO_CHECKSUM_ZILOG = common dso_local global i32 0, align 4
@DMU_OT_INTENT_LOG = common dso_local global i32 0, align 4
@ZFS_HOST_BYTEORDER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"%s: zil block allocation failure: size %llu, error %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zio_alloc_zil(%struct.TYPE_9__* %0, i64 %1, i64 %2, i32* %3, i32* %4, i64 %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32* %6, i32** %14, align 8
  store i32 1, i32* %15, align 4
  %17 = load i64, i64* %10, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %19 = call i64 @spa_syncing_txg(%struct.TYPE_9__* %18)
  %20 = icmp sgt i64 %17, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = call i32 @metaslab_trace_init(i32* %16)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %26 = call i32 @spa_log_class(%struct.TYPE_9__* %25)
  %27 = load i64, i64* %13, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = load i32, i32* @METASLAB_HINTBP_AVOID, align 4
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @cityhash4(i32 0, i32 0, i32 0, i64 %32)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = srem i32 %33, %36
  %38 = call i32 @metaslab_alloc(%struct.TYPE_9__* %24, i32 %26, i64 %27, i32* %28, i32 1, i64 %29, i32* %30, i32 %31, i32* %16, i32* null, i32 %37)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %7
  %42 = load i32, i32* @TRUE, align 4
  %43 = load i32*, i32** %14, align 8
  store i32 %42, i32* %43, align 4
  br label %66

44:                                               ; preds = %7
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %47 = call i32 @spa_normal_class(%struct.TYPE_9__* %46)
  %48 = load i64, i64* %13, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = load i32, i32* @METASLAB_HINTBP_AVOID, align 4
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @cityhash4(i32 0, i32 0, i32 0, i64 %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = srem i32 %54, %57
  %59 = call i32 @metaslab_alloc(%struct.TYPE_9__* %45, i32 %47, i64 %48, i32* %49, i32 1, i64 %50, i32* %51, i32 %52, i32* %16, i32* null, i32 %58)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %44
  %63 = load i32, i32* @FALSE, align 4
  %64 = load i32*, i32** %14, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %44
  br label %66

66:                                               ; preds = %65, %41
  %67 = call i32 @metaslab_trace_fini(i32* %16)
  %68 = load i32, i32* %15, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %102

70:                                               ; preds = %66
  %71 = load i32*, i32** %11, align 8
  %72 = load i64, i64* %13, align 8
  %73 = call i32 @BP_SET_LSIZE(i32* %71, i64 %72)
  %74 = load i32*, i32** %11, align 8
  %75 = load i64, i64* %13, align 8
  %76 = call i32 @BP_SET_PSIZE(i32* %74, i64 %75)
  %77 = load i32*, i32** %11, align 8
  %78 = load i32, i32* @ZIO_COMPRESS_OFF, align 4
  %79 = call i32 @BP_SET_COMPRESS(i32* %77, i32 %78)
  %80 = load i32*, i32** %11, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %82 = call i64 @spa_version(%struct.TYPE_9__* %81)
  %83 = load i64, i64* @SPA_VERSION_SLIM_ZIL, align 8
  %84 = icmp sge i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %70
  %86 = load i32, i32* @ZIO_CHECKSUM_ZILOG2, align 4
  br label %89

87:                                               ; preds = %70
  %88 = load i32, i32* @ZIO_CHECKSUM_ZILOG, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  %91 = call i32 @BP_SET_CHECKSUM(i32* %80, i32 %90)
  %92 = load i32*, i32** %11, align 8
  %93 = load i32, i32* @DMU_OT_INTENT_LOG, align 4
  %94 = call i32 @BP_SET_TYPE(i32* %92, i32 %93)
  %95 = load i32*, i32** %11, align 8
  %96 = call i32 @BP_SET_LEVEL(i32* %95, i32 0)
  %97 = load i32*, i32** %11, align 8
  %98 = call i32 @BP_SET_DEDUP(i32* %97, i32 0)
  %99 = load i32*, i32** %11, align 8
  %100 = load i32, i32* @ZFS_HOST_BYTEORDER, align 4
  %101 = call i32 @BP_SET_BYTEORDER(i32* %99, i32 %100)
  br label %108

102:                                              ; preds = %66
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %104 = call i32 @spa_name(%struct.TYPE_9__* %103)
  %105 = load i64, i64* %13, align 8
  %106 = load i32, i32* %15, align 4
  %107 = call i32 @zfs_dbgmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %104, i64 %105, i32 %106)
  br label %108

108:                                              ; preds = %102, %89
  %109 = load i32, i32* %15, align 4
  ret i32 %109
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @spa_syncing_txg(%struct.TYPE_9__*) #1

declare dso_local i32 @metaslab_trace_init(i32*) #1

declare dso_local i32 @metaslab_alloc(%struct.TYPE_9__*, i32, i64, i32*, i32, i64, i32*, i32, i32*, i32*, i32) #1

declare dso_local i32 @spa_log_class(%struct.TYPE_9__*) #1

declare dso_local i32 @cityhash4(i32, i32, i32, i64) #1

declare dso_local i32 @spa_normal_class(%struct.TYPE_9__*) #1

declare dso_local i32 @metaslab_trace_fini(i32*) #1

declare dso_local i32 @BP_SET_LSIZE(i32*, i64) #1

declare dso_local i32 @BP_SET_PSIZE(i32*, i64) #1

declare dso_local i32 @BP_SET_COMPRESS(i32*, i32) #1

declare dso_local i32 @BP_SET_CHECKSUM(i32*, i32) #1

declare dso_local i64 @spa_version(%struct.TYPE_9__*) #1

declare dso_local i32 @BP_SET_TYPE(i32*, i32) #1

declare dso_local i32 @BP_SET_LEVEL(i32*, i32) #1

declare dso_local i32 @BP_SET_DEDUP(i32*, i32) #1

declare dso_local i32 @BP_SET_BYTEORDER(i32*, i32) #1

declare dso_local i32 @zfs_dbgmsg(i8*, i32, i64, i32) #1

declare dso_local i32 @spa_name(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
