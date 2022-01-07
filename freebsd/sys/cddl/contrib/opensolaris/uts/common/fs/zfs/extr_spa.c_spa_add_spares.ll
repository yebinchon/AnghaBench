; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_add_spares.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_add_spares.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32* }
%struct.TYPE_7__ = type { i32, i32 }

@SCL_CONFIG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_SPARES = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_GUID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VDEV_STATS = common dso_local global i32 0, align 4
@VDEV_STATE_CANT_OPEN = common dso_local global i32 0, align 4
@VDEV_AUX_SPARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32*)* @spa_add_spares to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spa_add_spares(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = load i32, i32* @SCL_CONFIG, align 4
  %15 = load i32, i32* @RW_READER, align 4
  %16 = call i32 @spa_config_held(%struct.TYPE_8__* %13, i32 %14, i32 %15)
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %99

24:                                               ; preds = %2
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %27 = call i64 @nvlist_lookup_nvlist(i32* %25, i32 %26, i32** %8)
  %28 = icmp eq i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @VERIFY(i32 %29)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* @ZPOOL_CONFIG_SPARES, align 4
  %36 = call i64 @nvlist_lookup_nvlist_array(i32* %34, i32 %35, i32*** %5, i64* %7)
  %37 = icmp eq i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @VERIFY(i32 %38)
  %40 = load i64, i64* %7, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %99

42:                                               ; preds = %24
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* @ZPOOL_CONFIG_SPARES, align 4
  %45 = load i32**, i32*** %5, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i64 @nvlist_add_nvlist_array(i32* %43, i32 %44, i32** %45, i64 %46)
  %48 = icmp eq i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @VERIFY(i32 %49)
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* @ZPOOL_CONFIG_SPARES, align 4
  %53 = call i64 @nvlist_lookup_nvlist_array(i32* %51, i32 %52, i32*** %5, i64* %7)
  %54 = icmp eq i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @VERIFY(i32 %55)
  store i64 0, i64* %6, align 8
  br label %57

57:                                               ; preds = %95, %42
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* %7, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %98

61:                                               ; preds = %57
  %62 = load i32**, i32*** %5, align 8
  %63 = load i64, i64* %6, align 8
  %64 = getelementptr inbounds i32*, i32** %62, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %67 = call i64 @nvlist_lookup_uint64(i32* %65, i32 %66, i64* %9)
  %68 = icmp eq i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @VERIFY(i32 %69)
  %71 = load i64, i64* %9, align 8
  %72 = call i64 @spa_spare_exists(i64 %71, i64* %12, i32* null)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %94

74:                                               ; preds = %61
  %75 = load i64, i64* %12, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %74
  %78 = load i32**, i32*** %5, align 8
  %79 = load i64, i64* %6, align 8
  %80 = getelementptr inbounds i32*, i32** %78, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* @ZPOOL_CONFIG_VDEV_STATS, align 4
  %83 = bitcast %struct.TYPE_7__** %10 to i64**
  %84 = call i64 @nvlist_lookup_uint64_array(i32* %81, i32 %82, i64** %83, i64* %11)
  %85 = icmp eq i64 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i32 @VERIFY(i32 %86)
  %88 = load i32, i32* @VDEV_STATE_CANT_OPEN, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @VDEV_AUX_SPARED, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %77, %74, %61
  br label %95

95:                                               ; preds = %94
  %96 = load i64, i64* %6, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %6, align 8
  br label %57

98:                                               ; preds = %57
  br label %99

99:                                               ; preds = %23, %98, %24
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spa_config_held(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #1

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i64*) #1

declare dso_local i64 @nvlist_add_nvlist_array(i32*, i32, i32**, i64) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i64 @spa_spare_exists(i64, i64*, i32*) #1

declare dso_local i64 @nvlist_lookup_uint64_array(i32*, i32, i64**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
