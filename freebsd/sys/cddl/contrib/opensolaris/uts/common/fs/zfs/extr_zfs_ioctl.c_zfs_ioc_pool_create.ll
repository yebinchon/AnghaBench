; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_ioc_pool_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_ioc_pool_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64, i64, i32, i32, i32 }

@SPA_VERSION = common dso_local global i32 0, align 4
@ZPOOL_PROP_VERSION = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ZPOOL_ROOTFS_PROPS = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@ZPOOL_PROP_TNAME = common dso_local global i32 0, align 4
@ZPROP_SRC_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @zfs_ioc_pool_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioc_pool_create(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %9, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @get_nvlist(i32 %18, i64 %21, i32 %24, i32** %5)
  store i32 %25, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %140

29:                                               ; preds = %1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %29
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @get_nvlist(i32 %37, i64 %40, i32 %43, i32** %6)
  store i32 %44, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %34
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @nvlist_free(i32* %47)
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %140

50:                                               ; preds = %34, %29
  %51 = load i32*, i32** %6, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %110

53:                                               ; preds = %50
  store i32* null, i32** %10, align 8
  %54 = load i32, i32* @SPA_VERSION, align 4
  store i32 %54, i32* %11, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* @ZPOOL_PROP_VERSION, align 4
  %57 = call i32 @zpool_prop_to_name(i32 %56)
  %58 = call i32 @nvlist_lookup_uint64(i32* %55, i32 %57, i32* %11)
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @SPA_VERSION_IS_SUPPORTED(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %53
  %63 = load i32, i32* @EINVAL, align 4
  %64 = call i32 @SET_ERROR(i32 %63)
  store i32 %64, i32* %4, align 4
  br label %130

65:                                               ; preds = %53
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* @ZPOOL_ROOTFS_PROPS, align 4
  %68 = call i32 @nvlist_lookup_nvlist(i32* %66, i32 %67, i32** %10)
  %69 = load i32*, i32** %10, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %87

71:                                               ; preds = %65
  %72 = load i32*, i32** %10, align 8
  %73 = load i32, i32* @KM_SLEEP, align 4
  %74 = call i32 @nvlist_dup(i32* %72, i32** %7, i32 %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @nvlist_free(i32* %78)
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @nvlist_free(i32* %80)
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %140

83:                                               ; preds = %71
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* @ZPOOL_ROOTFS_PROPS, align 4
  %86 = call i32 @nvlist_remove_all(i32* %84, i32 %85)
  br label %87

87:                                               ; preds = %83, %65
  %88 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %89 = load i32, i32* @KM_SLEEP, align 4
  %90 = call i64 @nvlist_alloc(i32** %8, i32 %88, i32 %89)
  %91 = icmp eq i64 %90, 0
  %92 = zext i1 %91 to i32
  %93 = call i32 @VERIFY(i32 %92)
  %94 = load i32, i32* %11, align 4
  %95 = load i32*, i32** %7, align 8
  %96 = load i32*, i32** %8, align 8
  %97 = call i32 @zfs_fill_zplprops_root(i32 %94, i32* %95, i32* %96, i32* null)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %87
  br label %130

101:                                              ; preds = %87
  %102 = load i32*, i32** %6, align 8
  %103 = load i32, i32* @ZPOOL_PROP_TNAME, align 4
  %104 = call i32 @zpool_prop_to_name(i32 %103)
  %105 = call i64 @nvlist_lookup_string(i32* %102, i32 %104, i8** %12)
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i8*, i8** %12, align 8
  store i8* %108, i8** %9, align 8
  br label %109

109:                                              ; preds = %107, %101
  br label %110

110:                                              ; preds = %109, %50
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = load i32*, i32** %5, align 8
  %115 = load i32*, i32** %6, align 8
  %116 = load i32*, i32** %8, align 8
  %117 = call i32 @spa_create(i8* %113, i32* %114, i32* %115, i32* %116)
  store i32 %117, i32* %4, align 4
  %118 = load i32, i32* %4, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %129, label %120

120:                                              ; preds = %110
  %121 = load i8*, i8** %9, align 8
  %122 = load i32, i32* @ZPROP_SRC_LOCAL, align 4
  %123 = load i32*, i32** %7, align 8
  %124 = call i32 @zfs_set_prop_nvlist(i8* %121, i32 %122, i32* %123, i32* null)
  store i32 %124, i32* %4, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %120
  %127 = load i8*, i8** %9, align 8
  %128 = call i32 @spa_destroy(i8* %127)
  br label %129

129:                                              ; preds = %126, %120, %110
  br label %130

130:                                              ; preds = %129, %100, %62
  %131 = load i32*, i32** %7, align 8
  %132 = call i32 @nvlist_free(i32* %131)
  %133 = load i32*, i32** %8, align 8
  %134 = call i32 @nvlist_free(i32* %133)
  %135 = load i32*, i32** %5, align 8
  %136 = call i32 @nvlist_free(i32* %135)
  %137 = load i32*, i32** %6, align 8
  %138 = call i32 @nvlist_free(i32* %137)
  %139 = load i32, i32* %4, align 4
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %130, %77, %46, %27
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i32 @get_nvlist(i32, i64, i32, i32**) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @nvlist_lookup_uint64(i32*, i32, i32*) #1

declare dso_local i32 @zpool_prop_to_name(i32) #1

declare dso_local i32 @SPA_VERSION_IS_SUPPORTED(i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @nvlist_lookup_nvlist(i32*, i32, i32**) #1

declare dso_local i32 @nvlist_dup(i32*, i32**, i32) #1

declare dso_local i32 @nvlist_remove_all(i32*, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i32 @zfs_fill_zplprops_root(i32, i32*, i32*, i32*) #1

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i32 @spa_create(i8*, i32*, i32*, i32*) #1

declare dso_local i32 @zfs_set_prop_nvlist(i8*, i32, i32*, i32*) #1

declare dso_local i32 @spa_destroy(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
