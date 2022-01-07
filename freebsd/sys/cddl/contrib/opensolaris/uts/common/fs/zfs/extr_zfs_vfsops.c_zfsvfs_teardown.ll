; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vfsops.c_zfsvfs_teardown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vfsops.c_zfsvfs_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32*, %struct.TYPE_15__*, i32, i32, i64, i32, i32, i32*, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_13__ = type { i64 }

@RW_WRITER = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@VFS_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i64)* @zfsvfs_teardown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfsvfs_teardown(%struct.TYPE_17__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 2
  %9 = load i32, i32* @RW_WRITER, align 4
  %10 = load i32, i32* @FTAG, align 4
  %11 = call i32 @rrm_enter(i32* %8, i32 %9, i32 %10)
  %12 = load i64, i64* %5, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dnlc_purge_vfsp(i32 %19, i32 0)
  br label %21

21:                                               ; preds = %14, %2
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 7
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 7
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @zil_close(i32* %29)
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 7
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %26, %21
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 3
  %36 = load i32, i32* @RW_WRITER, align 4
  %37 = call i32 @rw_enter(i32* %35, i32 %36)
  %38 = load i64, i64* %5, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %60, label %40

40:                                               ; preds = %33
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %45, %40
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 3
  %53 = call i32 @rw_exit(i32* %52)
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 2
  %56 = load i32, i32* @FTAG, align 4
  %57 = call i32 @rrm_exit(i32* %55, i32 %56)
  %58 = load i32, i32* @EIO, align 4
  %59 = call i32 @SET_ERROR(i32 %58)
  store i32 %59, i32* %3, align 4
  br label %143

60:                                               ; preds = %45, %33
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 5
  %63 = call i32 @mutex_enter(i32* %62)
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 6
  %66 = call %struct.TYPE_16__* @list_head(i32* %65)
  store %struct.TYPE_16__* %66, %struct.TYPE_16__** %6, align 8
  br label %67

67:                                               ; preds = %86, %60
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %69 = icmp ne %struct.TYPE_16__* %68, null
  br i1 %69, label %70, label %91

70:                                               ; preds = %67
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %70
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %77 = call %struct.TYPE_13__* @ZTOV(%struct.TYPE_16__* %76)
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp sge i64 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @ASSERT(i32 %81)
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %84 = call i32 @zfs_znode_dmu_fini(%struct.TYPE_16__* %83)
  br label %85

85:                                               ; preds = %75, %70
  br label %86

86:                                               ; preds = %85
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 6
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %90 = call %struct.TYPE_16__* @list_next(i32* %88, %struct.TYPE_16__* %89)
  store %struct.TYPE_16__* %90, %struct.TYPE_16__** %6, align 8
  br label %67

91:                                               ; preds = %67
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 5
  %94 = call i32 @mutex_exit(i32* %93)
  %95 = load i64, i64* %5, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %91
  %98 = load i64, i64* @B_TRUE, align 8
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 4
  store i64 %98, i64* %100, align 8
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 3
  %103 = call i32 @rw_exit(i32* %102)
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 2
  %106 = load i32, i32* @FTAG, align 4
  %107 = call i32 @rrm_exit(i32* %105, i32 %106)
  br label %108

108:                                              ; preds = %97, %91
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = icmp eq i32* %111, null
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  store i32 0, i32* %3, align 4
  br label %143

114:                                              ; preds = %108
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %116 = call i32 @zfs_unregister_callbacks(%struct.TYPE_17__* %115)
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @dmu_objset_ds(i32* %119)
  %121 = call i64 @dsl_dataset_is_dirty(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %138

123:                                              ; preds = %114
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @VFS_RDONLY, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %123
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @dmu_objset_pool(i32* %135)
  %137 = call i32 @txg_wait_synced(i32 %136, i32 0)
  br label %138

138:                                              ; preds = %132, %123, %114
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @dmu_objset_evict_dbufs(i32* %141)
  store i32 0, i32* %3, align 4
  br label %143

143:                                              ; preds = %138, %113, %50
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @rrm_enter(i32*, i32, i32) #1

declare dso_local i32 @dnlc_purge_vfsp(i32, i32) #1

declare dso_local i32 @zil_close(i32*) #1

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local i32 @rw_exit(i32*) #1

declare dso_local i32 @rrm_exit(i32*, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local %struct.TYPE_16__* @list_head(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.TYPE_13__* @ZTOV(%struct.TYPE_16__*) #1

declare dso_local i32 @zfs_znode_dmu_fini(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @list_next(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @zfs_unregister_callbacks(%struct.TYPE_17__*) #1

declare dso_local i64 @dsl_dataset_is_dirty(i32) #1

declare dso_local i32 @dmu_objset_ds(i32*) #1

declare dso_local i32 @txg_wait_synced(i32, i32) #1

declare dso_local i32 @dmu_objset_pool(i32*) #1

declare dso_local i32 @dmu_objset_evict_dbufs(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
