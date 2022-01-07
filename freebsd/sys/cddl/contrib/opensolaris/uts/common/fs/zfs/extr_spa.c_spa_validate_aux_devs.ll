; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_validate_aux_devs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_validate_aux_devs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32** }
%struct.TYPE_10__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8*, i32 }

@SCL_ALL = common dso_local global i64 0, align 8
@RW_WRITER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_GUID = common dso_local global i32 0, align 4
@VDEV_ALLOC_SPARE = common dso_local global i32 0, align 4
@VDEV_ALLOC_L2CACHE = common dso_local global i32 0, align 4
@ENOTBLK = common dso_local global i32 0, align 4
@VDEV_TYPE_DISK = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_L2CACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64, i32, %struct.TYPE_11__*, i8*, i64, i32)* @spa_validate_aux_devs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_validate_aux_devs(i32* %0, i32* %1, i64 %2, i32 %3, %struct.TYPE_11__* %4, i8* %5, i64 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32**, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_10__*, align 8
  %22 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i64 %2, i64* %12, align 8
  store i32 %3, i32* %13, align 4
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %14, align 8
  store i8* %5, i8** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  %23 = load i32*, i32** %10, align 8
  %24 = load i64, i64* @SCL_ALL, align 8
  %25 = load i32, i32* @RW_WRITER, align 4
  %26 = call i64 @spa_config_held(i32* %23, i64 %24, i32 %25)
  %27 = load i64, i64* @SCL_ALL, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @ASSERT(i32 %29)
  %31 = load i32*, i32** %11, align 8
  %32 = load i8*, i8** %15, align 8
  %33 = call i64 @nvlist_lookup_nvlist_array(i32* %31, i8* %32, i32*** %18, i64* %20)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %8
  store i32 0, i32* %9, align 4
  br label %135

36:                                               ; preds = %8
  %37 = load i64, i64* %20, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* @EINVAL, align 4
  %41 = call i32 @SET_ERROR(i32 %40)
  store i32 %41, i32* %9, align 4
  br label %135

42:                                               ; preds = %36
  %43 = load i32*, i32** %10, align 8
  %44 = call i64 @spa_version(i32* %43)
  %45 = load i64, i64* %16, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @ENOTSUP, align 4
  %49 = call i32 @SET_ERROR(i32 %48)
  store i32 %49, i32* %9, align 4
  br label %135

50:                                               ; preds = %42
  %51 = load i32**, i32*** %18, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  store i32** %51, i32*** %53, align 8
  %54 = load i64, i64* %20, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  store i64 0, i64* %19, align 8
  br label %57

57:                                               ; preds = %125, %50
  %58 = load i64, i64* %19, align 8
  %59 = load i64, i64* %20, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %128

61:                                               ; preds = %57
  %62 = load i32*, i32** %10, align 8
  %63 = load i32**, i32*** %18, align 8
  %64 = load i64, i64* %19, align 8
  %65 = getelementptr inbounds i32*, i32** %63, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @spa_config_parse(i32* %62, %struct.TYPE_10__** %21, i32* %66, i32* null, i32 0, i32 %67)
  store i32 %68, i32* %22, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %129

71:                                               ; preds = %61
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %71
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %80 = call i32 @vdev_free(%struct.TYPE_10__* %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = call i32 @SET_ERROR(i32 %81)
  store i32 %82, i32* %22, align 4
  br label %129

83:                                               ; preds = %71
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  store %struct.TYPE_10__* %84, %struct.TYPE_10__** %86, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %88 = call i32 @vdev_open(%struct.TYPE_10__* %87)
  store i32 %88, i32* %22, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %109

90:                                               ; preds = %83
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %92 = load i64, i64* %12, align 8
  %93 = load i32, i32* %17, align 4
  %94 = call i32 @vdev_label_init(%struct.TYPE_10__* %91, i64 %92, i32 %93)
  store i32 %94, i32* %22, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %90
  %97 = load i32**, i32*** %18, align 8
  %98 = load i64, i64* %19, align 8
  %99 = getelementptr inbounds i32*, i32** %97, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @nvlist_add_uint64(i32* %100, i32 %101, i32 %104)
  %106 = icmp eq i64 %105, 0
  %107 = zext i1 %106 to i32
  %108 = call i32 @VERIFY(i32 %107)
  br label %109

109:                                              ; preds = %96, %90, %83
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %111 = call i32 @vdev_free(%struct.TYPE_10__* %110)
  %112 = load i32, i32* %22, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %109
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* @VDEV_ALLOC_SPARE, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* @VDEV_ALLOC_L2CACHE, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  br label %129

123:                                              ; preds = %118, %114, %109
  store i32 0, i32* %22, align 4
  br label %124

124:                                              ; preds = %123
  br label %125

125:                                              ; preds = %124
  %126 = load i64, i64* %19, align 8
  %127 = add nsw i64 %126, 1
  store i64 %127, i64* %19, align 8
  br label %57

128:                                              ; preds = %57
  br label %129

129:                                              ; preds = %128, %122, %78, %70
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 1
  store i32** null, i32*** %131, align 8
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  store i64 0, i64* %133, align 8
  %134 = load i32, i32* %22, align 4
  store i32 %134, i32* %9, align 4
  br label %135

135:                                              ; preds = %129, %47, %39, %35
  %136 = load i32, i32* %9, align 4
  ret i32 %136
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @spa_config_held(i32*, i64, i32) #1

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i8*, i32***, i64*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @spa_version(i32*) #1

declare dso_local i32 @spa_config_parse(i32*, %struct.TYPE_10__**, i32*, i32*, i32, i32) #1

declare dso_local i32 @vdev_free(%struct.TYPE_10__*) #1

declare dso_local i32 @vdev_open(%struct.TYPE_10__*) #1

declare dso_local i32 @vdev_label_init(%struct.TYPE_10__*, i64, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_add_uint64(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
