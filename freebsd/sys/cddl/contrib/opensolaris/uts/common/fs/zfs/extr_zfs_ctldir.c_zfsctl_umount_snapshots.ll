; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ctldir.c_zfsctl_umount_snapshots.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ctldir.c_zfsctl_umount_snapshots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32* }
%struct.mount = type { i32 }
%struct.TYPE_10__ = type { %struct.mount* }

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@ZFSCTL_INO_SNAPDIR = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"extra references after unmount\00", align 1
@MS_FORCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"force unmounting failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfsctl_umount_snapshots(%struct.TYPE_11__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.mount*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %18 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %7, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %9, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @ASSERT(i32 %29)
  store i64 0, i64* %15, align 8
  br label %31

31:                                               ; preds = %108, %87, %3
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dmu_objset_pool(i32 %34)
  %36 = load i32, i32* @FTAG, align 4
  %37 = call i32 @dsl_pool_config_enter(i32 %35, i32 %36)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = trunc i64 %19 to i32
  %42 = call i32 @dmu_snapshot_list_next(i32 %40, i32 %41, i8* %21, i64* %17, i64* %15, i32* null)
  store i32 %42, i32* %16, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dmu_objset_pool(i32 %45)
  %47 = load i32, i32* @FTAG, align 4
  %48 = call i32 @dsl_pool_config_exit(i32 %46, i32 %47)
  %49 = load i32, i32* %16, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %31
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* @ENOENT, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 0, i32* %16, align 4
  br label %56

56:                                               ; preds = %55, %51
  br label %109

57:                                               ; preds = %31
  br label %58

58:                                               ; preds = %77, %57
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %60 = load i32, i32* @LK_EXCLUSIVE, align 4
  %61 = load i32, i32* @ZFSCTL_INO_SNAPDIR, align 4
  %62 = load i64, i64* %17, align 8
  %63 = call i32 @sfs_vnode_get(%struct.TYPE_11__* %59, i32 %60, i32 %61, i64 %62, %struct.TYPE_10__** %12)
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %58
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %68 = icmp eq %struct.TYPE_10__* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %66, %58
  br label %80

70:                                               ; preds = %66
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load %struct.mount*, %struct.mount** %72, align 8
  store %struct.mount* %73, %struct.mount** %10, align 8
  %74 = load %struct.mount*, %struct.mount** %10, align 8
  %75 = icmp ne %struct.mount* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %80

77:                                               ; preds = %70
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %79 = call i32 @vput(%struct.TYPE_10__* %78)
  br label %58

80:                                               ; preds = %76, %69
  %81 = load i32, i32* %16, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %109

84:                                               ; preds = %80
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %86 = icmp eq %struct.TYPE_10__* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  br label %31

88:                                               ; preds = %84
  %89 = load %struct.mount*, %struct.mount** %10, align 8
  %90 = call i32 @vfs_ref(%struct.mount* %89)
  %91 = load %struct.mount*, %struct.mount** %10, align 8
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @curthread, align 4
  %94 = call i32 @dounmount(%struct.mount* %91, i32 %92, i32 %93)
  store i32 %94, i32* %16, align 4
  %95 = load i32, i32* %16, align 4
  %96 = icmp eq i32 %95, 0
  %97 = zext i1 %96 to i32
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %99 = call i32 @vrefcnt(%struct.TYPE_10__* %98)
  %100 = icmp eq i32 %99, 1
  %101 = zext i1 %100 to i32
  %102 = call i32 @KASSERT_IMPLY(i32 %97, i32 %101, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %104 = call i32 @vput(%struct.TYPE_10__* %103)
  %105 = load i32, i32* %16, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %88
  br label %109

108:                                              ; preds = %88
  br label %31

109:                                              ; preds = %107, %83, %56
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* @MS_FORCE, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  %114 = zext i1 %113 to i32
  %115 = load i32, i32* %16, align 4
  %116 = icmp eq i32 %115, 0
  %117 = zext i1 %116 to i32
  %118 = call i32 @KASSERT_IMPLY(i32 %114, i32 %117, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %119 = load i32, i32* %16, align 4
  %120 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %120)
  ret i32 %119
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @dsl_pool_config_enter(i32, i32) #2

declare dso_local i32 @dmu_objset_pool(i32) #2

declare dso_local i32 @dmu_snapshot_list_next(i32, i32, i8*, i64*, i64*, i32*) #2

declare dso_local i32 @dsl_pool_config_exit(i32, i32) #2

declare dso_local i32 @sfs_vnode_get(%struct.TYPE_11__*, i32, i32, i64, %struct.TYPE_10__**) #2

declare dso_local i32 @vput(%struct.TYPE_10__*) #2

declare dso_local i32 @vfs_ref(%struct.mount*) #2

declare dso_local i32 @dounmount(%struct.mount*, i32, i32) #2

declare dso_local i32 @KASSERT_IMPLY(i32, i32, i8*) #2

declare dso_local i32 @vrefcnt(%struct.TYPE_10__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
