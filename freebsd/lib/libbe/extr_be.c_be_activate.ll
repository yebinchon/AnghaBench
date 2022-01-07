; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libbe/extr_be.c_be_activate.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libbe/extr_be.c_be_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }

@BE_MAXPATHLEN = common dso_local global i32 0, align 4
@BE_ERR_UNKNOWN = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_GUID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"zfs:%s:\00", align 1
@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@BE_ERR_NOPOOL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"bootfs\00", align 1
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@BE_ERR_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_activate(%struct.TYPE_9__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load i32, i32* @BE_MAXPATHLEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %8, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  %23 = load i32, i32* @BE_MAXPATHLEN, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %10, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @be_root_concat(%struct.TYPE_9__* %26, i8* %27, i8* %22)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = call i32 @be_exists(%struct.TYPE_9__* %29, i8* %22)
  store i32 %30, i32* %17, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %3
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = load i32, i32* %17, align 4
  %35 = call i32 @set_error(%struct.TYPE_9__* %33, i32 %34)
  store i32 %35, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %130

36:                                               ; preds = %3
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %75

39:                                               ; preds = %36
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32* @zpool_get_config(i32 %42, i32* null)
  store i32* %43, i32** %11, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = load i32, i32* @BE_ERR_UNKNOWN, align 4
  %49 = call i32 @set_error(%struct.TYPE_9__* %47, i32 %48)
  store i32 %49, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %130

50:                                               ; preds = %39
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* @ZPOOL_CONFIG_POOL_GUID, align 4
  %53 = call i64 @nvlist_lookup_uint64(i32* %51, i32 %52, i32* %15)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %57 = load i32, i32* @BE_ERR_UNKNOWN, align 4
  %58 = call i32 @set_error(%struct.TYPE_9__* %56, i32 %57)
  store i32 %58, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %130

59:                                               ; preds = %50
  %60 = trunc i64 %24 to i32
  %61 = call i32 @snprintf(i8* %25, i32 %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %22)
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %64 = call i64 @nvlist_lookup_nvlist(i32* %62, i32 %63, i32** %13)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %68 = load i32, i32* @BE_ERR_NOPOOL, align 4
  %69 = call i32 @set_error(%struct.TYPE_9__* %67, i32 %68)
  store i32 %69, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %130

70:                                               ; preds = %59
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %72 = load i32*, i32** %13, align 8
  %73 = load i32, i32* %15, align 4
  %74 = call i32 @be_set_nextboot(%struct.TYPE_9__* %71, i32* %72, i32 %73, i8* %25)
  store i32 %74, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %130

75:                                               ; preds = %36
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @be_deactivate(%struct.TYPE_9__* %76, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %130

83:                                               ; preds = %75
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @zpool_set_prop(i32 %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  store i32 %87, i32* %17, align 4
  %88 = load i32, i32* %17, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %130

91:                                               ; preds = %83
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %96 = call i32* @zfs_open(i32 %94, i8* %22, i32 %95)
  store i32* %96, i32** %16, align 8
  %97 = load i32*, i32** %16, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %130

100:                                              ; preds = %91
  %101 = call i64 @be_prop_list_alloc(i32** %12)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %130

104:                                              ; preds = %100
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %106 = load i32*, i32** %12, align 8
  %107 = call i64 @be_get_dataset_props(%struct.TYPE_9__* %105, i8* %22, i32* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i32*, i32** %12, align 8
  %111 = call i32 @nvlist_free(i32* %110)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %130

112:                                              ; preds = %104
  %113 = load i32*, i32** %12, align 8
  %114 = call i64 @nvlist_lookup_string(i32* %113, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %14)
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = load i32*, i32** %16, align 8
  %118 = call i32 @zfs_promote(i32* %117)
  store i32 %118, i32* %17, align 4
  br label %119

119:                                              ; preds = %116, %112
  %120 = load i32*, i32** %12, align 8
  %121 = call i32 @nvlist_free(i32* %120)
  %122 = load i32*, i32** %16, align 8
  %123 = call i32 @zfs_close(i32* %122)
  %124 = load i32, i32* %17, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %130

127:                                              ; preds = %119
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* @BE_ERR_SUCCESS, align 4
  store i32 %129, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %130

130:                                              ; preds = %128, %126, %109, %103, %99, %90, %82, %70, %66, %55, %46, %32
  %131 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %131)
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @be_root_concat(%struct.TYPE_9__*, i8*, i8*) #2

declare dso_local i32 @be_exists(%struct.TYPE_9__*, i8*) #2

declare dso_local i32 @set_error(%struct.TYPE_9__*, i32) #2

declare dso_local i32* @zpool_get_config(i32, i32*) #2

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #2

declare dso_local i32 @be_set_nextboot(%struct.TYPE_9__*, i32*, i32, i8*) #2

declare dso_local i64 @be_deactivate(%struct.TYPE_9__*, i32) #2

declare dso_local i32 @zpool_set_prop(i32, i8*, i8*) #2

declare dso_local i32* @zfs_open(i32, i8*, i32) #2

declare dso_local i64 @be_prop_list_alloc(i32**) #2

declare dso_local i64 @be_get_dataset_props(%struct.TYPE_9__*, i8*, i32*) #2

declare dso_local i32 @nvlist_free(i32*) #2

declare dso_local i64 @nvlist_lookup_string(i32*, i8*, i8**) #2

declare dso_local i32 @zfs_promote(i32*) #2

declare dso_local i32 @zfs_close(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
