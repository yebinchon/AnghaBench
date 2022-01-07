; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa_misc.c_spa_vdev_config_exit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa_misc.c_spa_vdev_config_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, i32, i32* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__*, i32*, i32 }
%struct.TYPE_17__ = type { i64 }

@spa_namespace_lock = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@SCL_ALL = common dso_local global i32 0, align 4
@zio_injection_enabled = common dso_local global i64 0, align 8
@VDEV_INITIALIZE_CANCELED = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spa_vdev_config_exit(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1, i64 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %12 = call i32 @MUTEX_HELD(i32* @spa_namespace_lock)
  %13 = call i32 @ASSERT(i32 %12)
  %14 = load i32, i32* @B_FALSE, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i64, i64* %8, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %17 = call i64 @spa_last_synced_txg(%struct.TYPE_19__* %16)
  %18 = icmp sgt i64 %15, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 4
  store i32* null, i32** %22, align 8
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @B_FALSE, align 4
  %27 = call i32 @vdev_dtl_reassess(i32 %25, i32 0, i32 0, i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %5
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 2
  %33 = call i32 @list_is_empty(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @B_TRUE, align 4
  store i32 %36, i32* %11, align 4
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %35, %30, %5
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %43 = call i32 @spa_normal_class(%struct.TYPE_19__* %42)
  %44 = call i64 @metaslab_class_validate(i32 %43)
  %45 = icmp eq i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @ASSERT(i32 %46)
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %49 = call i32 @spa_log_class(%struct.TYPE_19__* %48)
  %50 = call i64 @metaslab_class_validate(i32 %49)
  %51 = icmp eq i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @ASSERT(i32 %52)
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %55 = load i32, i32* @SCL_ALL, align 4
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %57 = call i32 @spa_config_exit(%struct.TYPE_19__* %54, i32 %55, %struct.TYPE_19__* %56)
  %58 = load i64, i64* @zio_injection_enabled, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %41
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = call i32 @zio_handle_panic_injection(%struct.TYPE_19__* %61, i8* %62, i32 0)
  br label %64

64:                                               ; preds = %60, %41
  %65 = load i32, i32* %9, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @txg_wait_synced(i32 %70, i64 %71)
  br label %73

73:                                               ; preds = %67, %64
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %75 = icmp ne %struct.TYPE_18__* %74, null
  br i1 %75, label %76, label %118

76:                                               ; preds = %73
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = icmp eq i32* %84, null
  br label %86

86:                                               ; preds = %81, %76
  %87 = phi i1 [ true, %76 ], [ %85, %81 ]
  %88 = zext i1 %87 to i32
  %89 = call i32 @ASSERT(i32 %88)
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %86
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  %99 = call i32 @mutex_enter(i32* %98)
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %101 = load i32, i32* @VDEV_INITIALIZE_CANCELED, align 4
  %102 = call i32 @vdev_initialize_stop(%struct.TYPE_18__* %100, i32 %101)
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = call i32 @mutex_exit(i32* %104)
  br label %106

106:                                              ; preds = %96, %86
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %108 = load i32, i32* @SCL_ALL, align 4
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %110 = load i32, i32* @RW_WRITER, align 4
  %111 = call i32 @spa_config_enter(%struct.TYPE_19__* %107, i32 %108, %struct.TYPE_19__* %109, i32 %110)
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %113 = call i32 @vdev_free(%struct.TYPE_18__* %112)
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %115 = load i32, i32* @SCL_ALL, align 4
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %117 = call i32 @spa_config_exit(%struct.TYPE_19__* %114, i32 %115, %struct.TYPE_19__* %116)
  br label %118

118:                                              ; preds = %106, %73
  %119 = load i32, i32* %11, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %118
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %123 = load i32, i32* @B_FALSE, align 4
  %124 = load i32, i32* @B_TRUE, align 4
  %125 = call i32 @spa_write_cachefile(%struct.TYPE_19__* %122, i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %121, %118
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i64 @spa_last_synced_txg(%struct.TYPE_19__*) #1

declare dso_local i32 @vdev_dtl_reassess(i32, i32, i32, i32) #1

declare dso_local i32 @list_is_empty(i32*) #1

declare dso_local i64 @metaslab_class_validate(i32) #1

declare dso_local i32 @spa_normal_class(%struct.TYPE_19__*) #1

declare dso_local i32 @spa_log_class(%struct.TYPE_19__*) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_19__*, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @zio_handle_panic_injection(%struct.TYPE_19__*, i8*, i32) #1

declare dso_local i32 @txg_wait_synced(i32, i64) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @vdev_initialize_stop(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_19__*, i32, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @vdev_free(%struct.TYPE_18__*) #1

declare dso_local i32 @spa_write_cachefile(%struct.TYPE_19__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
