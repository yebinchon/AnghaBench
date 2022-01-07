; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_ioc_promote.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_ioc_promote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@zfs_unmount_snap_cb = common dso_local global i32 0, align 4
@DS_FIND_SNAPSHOTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @zfs_ioc_promote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioc_promote(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %12 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 7
  store i8 0, i8* %19, align 1
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @dataset_namecheck(i8* %22, i32* null, i32* null)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %1
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i8* @strchr(i8* %28, i8 signext 37)
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %25, %1
  %32 = load i32, i32* @EINVAL, align 4
  %33 = call i32 @SET_ERROR(i32 %32)
  store i32 %33, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %121

34:                                               ; preds = %25
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* @FTAG, align 4
  %39 = call i32 @dsl_pool_hold(i8* %37, i32 %38, i32** %4)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %121

44:                                               ; preds = %34
  %45 = load i32*, i32** %4, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* @FTAG, align 4
  %50 = call i32 @dsl_dataset_hold(i32* %45, i8* %48, i32 %49, %struct.TYPE_10__** %5)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %44
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* @FTAG, align 4
  %56 = call i32 @dsl_pool_rele(i32* %54, i32 %55)
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %121

58:                                               ; preds = %44
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dsl_dir_is_clone(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %58
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %66 = load i32, i32* @FTAG, align 4
  %67 = call i32 @dsl_dataset_rele(%struct.TYPE_10__* %65, i32 %66)
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* @FTAG, align 4
  %70 = call i32 @dsl_pool_rele(i32* %68, i32 %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = call i32 @SET_ERROR(i32 %71)
  store i32 %72, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %121

73:                                               ; preds = %58
  %74 = load i32*, i32** %4, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call %struct.TYPE_11__* @dsl_dir_phys(i32 %77)
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @FTAG, align 4
  %82 = call i32 @dsl_dataset_hold_obj(i32* %74, i32 %80, i32 %81, %struct.TYPE_10__** %6)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %73
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %87 = load i32, i32* @FTAG, align 4
  %88 = call i32 @dsl_dataset_rele(%struct.TYPE_10__* %86, i32 %87)
  %89 = load i32*, i32** %4, align 8
  %90 = load i32, i32* @FTAG, align 4
  %91 = call i32 @dsl_pool_rele(i32* %89, i32 %90)
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %121

93:                                               ; preds = %73
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %95 = call i32 @dsl_dataset_name(%struct.TYPE_10__* %94, i8* %15)
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %97 = load i32, i32* @FTAG, align 4
  %98 = call i32 @dsl_dataset_rele(%struct.TYPE_10__* %96, i32 %97)
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %100 = load i32, i32* @FTAG, align 4
  %101 = call i32 @dsl_dataset_rele(%struct.TYPE_10__* %99, i32 %100)
  %102 = load i32*, i32** %4, align 8
  %103 = load i32, i32* @FTAG, align 4
  %104 = call i32 @dsl_pool_rele(i32* %102, i32 %103)
  %105 = call i8* @strchr(i8* %15, i8 signext 64)
  store i8* %105, i8** %9, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %93
  %109 = load i8*, i8** %9, align 8
  store i8 0, i8* %109, align 1
  br label %110

110:                                              ; preds = %108, %93
  %111 = load i32, i32* @zfs_unmount_snap_cb, align 4
  %112 = load i32, i32* @DS_FIND_SNAPSHOTS, align 4
  %113 = call i32 @dmu_objset_find(i8* %15, i32 %111, i32* null, i32 %112)
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @dsl_dataset_promote(i8* %116, i32 %119)
  store i32 %120, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %121

121:                                              ; preds = %110, %85, %64, %53, %42, %31
  %122 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %122)
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @dataset_namecheck(i8*, i32*, i32*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @SET_ERROR(i32) #2

declare dso_local i32 @dsl_pool_hold(i8*, i32, i32**) #2

declare dso_local i32 @dsl_dataset_hold(i32*, i8*, i32, %struct.TYPE_10__**) #2

declare dso_local i32 @dsl_pool_rele(i32*, i32) #2

declare dso_local i32 @dsl_dir_is_clone(i32) #2

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_10__*, i32) #2

declare dso_local i32 @dsl_dataset_hold_obj(i32*, i32, i32, %struct.TYPE_10__**) #2

declare dso_local %struct.TYPE_11__* @dsl_dir_phys(i32) #2

declare dso_local i32 @dsl_dataset_name(%struct.TYPE_10__*, i8*) #2

declare dso_local i32 @dmu_objset_find(i8*, i32, i32*, i32) #2

declare dso_local i32 @dsl_dataset_promote(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
