; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vfsops.c_zfs_umount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vfsops.c_zfs_umount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__*, %struct.TYPE_24__*, i32, i32, i32, %struct.TYPE_20__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_20__ = type { i32 }

@curthread = common dso_local global %struct.TYPE_25__* null, align 8
@ZFS_DELEG_PERM_MOUNT = common dso_local global i32 0, align 4
@MS_FORCE = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@FORCECLOSE = common dso_local global i32 0, align 4
@zfsvfs_taskq = common dso_local global %struct.TYPE_26__* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, i32)* @zfs_umount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_umount(%struct.TYPE_23__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_25__*, %struct.TYPE_25__** @curthread, align 8
  store %struct.TYPE_25__* %11, %struct.TYPE_25__** %6, align 8
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  store %struct.TYPE_22__* %14, %struct.TYPE_22__** %7, align 8
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %20 = call i32 @secpolicy_fs_unmount(i32* %18, %struct.TYPE_23__* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %2
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @refstr_value(i32 %26)
  %28 = inttoptr i64 %27 to i8*
  %29 = load i32, i32* @ZFS_DELEG_PERM_MOUNT, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = call i64 @dsl_deleg_access(i8* %28, i32 %29, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %3, align 4
  br label %142

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35, %2
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 5
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dnlc_purge_vfsp(i32 %41, i32 0)
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %44, align 8
  %46 = icmp ne %struct.TYPE_21__* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %36
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @zfsctl_umount_snapshots(%struct.TYPE_23__* %48, i32 %49, i32* %50)
  store i32 %51, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %3, align 4
  br label %142

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %36
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @MS_FORCE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %56
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 3
  %64 = load i32, i32* @RW_WRITER, align 4
  %65 = load i32, i32* @FTAG, align 4
  %66 = call i32 @rrm_enter(i32* %63, i32 %64, i32 %65)
  %67 = load i32, i32* @B_TRUE, align 4
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 3
  %72 = load i32, i32* @FTAG, align 4
  %73 = call i32 @rrm_exit(i32* %71, i32 %72)
  br label %74

74:                                               ; preds = %61, %56
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @MS_FORCE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* @FORCECLOSE, align 4
  br label %83

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %82, %80
  %84 = phi i32 [ %81, %80 ], [ 0, %82 ]
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %86 = call i32 @vflush(%struct.TYPE_23__* %75, i32 0, i32 %84, %struct.TYPE_25__* %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %3, align 4
  br label %142

91:                                               ; preds = %83
  br label %92

92:                                               ; preds = %100, %91
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** @zfsvfs_taskq, align 8
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 2
  %98 = call i64 @taskqueue_cancel(i32 %95, i32* %97, i32* null)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %92
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** @zfsvfs_taskq, align 8
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 2
  %106 = call i32 @taskqueue_drain(i32 %103, i32* %105)
  br label %92

107:                                              ; preds = %92
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %109 = load i32, i32* @B_TRUE, align 4
  %110 = call i64 @zfsvfs_teardown(%struct.TYPE_22__* %108, i32 %109)
  %111 = icmp eq i64 %110, 0
  %112 = zext i1 %111 to i32
  %113 = call i32 @VERIFY(i32 %112)
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %115, align 8
  store %struct.TYPE_24__* %116, %struct.TYPE_24__** %8, align 8
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %118 = icmp ne %struct.TYPE_24__* %117, null
  br i1 %118, label %119, label %131

119:                                              ; preds = %107
  %120 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %120, i32 0, i32 0
  %122 = call i32 @mutex_enter(i32* %121)
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %124 = call i32 @dmu_objset_set_user(%struct.TYPE_24__* %123, i32* null)
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 0
  %127 = call i32 @mutex_exit(i32* %126)
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %130 = call i32 @dmu_objset_disown(%struct.TYPE_24__* %128, %struct.TYPE_22__* %129)
  br label %131

131:                                              ; preds = %119, %107
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %133, align 8
  %135 = icmp ne %struct.TYPE_21__* %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %138 = call i32 @zfsctl_destroy(%struct.TYPE_22__* %137)
  br label %139

139:                                              ; preds = %136, %131
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %141 = call i32 @zfs_freevfs(%struct.TYPE_23__* %140)
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %139, %89, %53, %33
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @secpolicy_fs_unmount(i32*, %struct.TYPE_23__*) #1

declare dso_local i64 @dsl_deleg_access(i8*, i32, i32*) #1

declare dso_local i64 @refstr_value(i32) #1

declare dso_local i32 @dnlc_purge_vfsp(i32, i32) #1

declare dso_local i32 @zfsctl_umount_snapshots(%struct.TYPE_23__*, i32, i32*) #1

declare dso_local i32 @rrm_enter(i32*, i32, i32) #1

declare dso_local i32 @rrm_exit(i32*, i32) #1

declare dso_local i32 @vflush(%struct.TYPE_23__*, i32, i32, %struct.TYPE_25__*) #1

declare dso_local i64 @taskqueue_cancel(i32, i32*, i32*) #1

declare dso_local i32 @taskqueue_drain(i32, i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @zfsvfs_teardown(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @dmu_objset_set_user(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @dmu_objset_disown(%struct.TYPE_24__*, %struct.TYPE_22__*) #1

declare dso_local i32 @zfsctl_destroy(%struct.TYPE_22__*) #1

declare dso_local i32 @zfs_freevfs(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
