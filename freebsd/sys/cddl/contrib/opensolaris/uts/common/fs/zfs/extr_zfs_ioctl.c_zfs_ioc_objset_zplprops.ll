; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_ioc_objset_zplprops.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_ioc_objset_zplprops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }

@FTAG = common dso_local global i32 0, align 4
@DMU_OST_ZFS = common dso_local global i64 0, align 8
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@ZFS_PROP_VERSION = common dso_local global i32 0, align 4
@ZFS_PROP_NORMALIZE = common dso_local global i32 0, align 4
@ZFS_PROP_UTF8ONLY = common dso_local global i32 0, align 4
@ZFS_PROP_CASE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @zfs_ioc_objset_zplprops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioc_objset_zplprops(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @FTAG, align 4
  %11 = call i32 @dmu_objset_hold(i32 %9, i32 %10, i32** %4)
  store i32 %11, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %80

15:                                               ; preds = %1
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = call i32 @dmu_objset_fast_stat(i32* %16, %struct.TYPE_6__* %18)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %72

24:                                               ; preds = %15
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %72, label %30

30:                                               ; preds = %24
  %31 = load i32*, i32** %4, align 8
  %32 = call i64 @dmu_objset_type(i32* %31)
  %33 = load i64, i64* @DMU_OST_ZFS, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %72

35:                                               ; preds = %30
  %36 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %37 = load i32, i32* @KM_SLEEP, align 4
  %38 = call i64 @nvlist_alloc(i32** %6, i32 %36, i32 %37)
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @VERIFY(i32 %40)
  %42 = load i32*, i32** %4, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* @ZFS_PROP_VERSION, align 4
  %45 = call i32 @nvl_add_zplprop(i32* %42, i32* %43, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %35
  %48 = load i32*, i32** %4, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* @ZFS_PROP_NORMALIZE, align 4
  %51 = call i32 @nvl_add_zplprop(i32* %48, i32* %49, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %47
  %54 = load i32*, i32** %4, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* @ZFS_PROP_UTF8ONLY, align 4
  %57 = call i32 @nvl_add_zplprop(i32* %54, i32* %55, i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %53
  %60 = load i32*, i32** %4, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* @ZFS_PROP_CASE, align 4
  %63 = call i32 @nvl_add_zplprop(i32* %60, i32* %61, i32 %62)
  store i32 %63, i32* %5, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @put_nvlist(%struct.TYPE_5__* %66, i32* %67)
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %65, %59, %53, %47, %35
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @nvlist_free(i32* %70)
  br label %75

72:                                               ; preds = %30, %24, %15
  %73 = load i32, i32* @ENOENT, align 4
  %74 = call i32 @SET_ERROR(i32 %73)
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32*, i32** %4, align 8
  %77 = load i32, i32* @FTAG, align 4
  %78 = call i32 @dmu_objset_rele(i32* %76, i32 %77)
  %79 = load i32, i32* %5, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %75, %13
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @dmu_objset_hold(i32, i32, i32**) #1

declare dso_local i32 @dmu_objset_fast_stat(i32*, %struct.TYPE_6__*) #1

declare dso_local i64 @dmu_objset_type(i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i32 @nvl_add_zplprop(i32*, i32*, i32) #1

declare dso_local i32 @put_nvlist(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @dmu_objset_rele(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
