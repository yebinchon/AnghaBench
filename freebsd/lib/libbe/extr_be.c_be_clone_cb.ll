; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libbe/extr_be.c_be_clone_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libbe/extr_be.c_be_clone_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libbe_deep_clone = type { i8*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.libbe_dccb = type { i32*, i32*, %struct.TYPE_2__* }

@BE_MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s@%s\00", align 1
@BE_ERR_SUCCESS = common dso_local global i64 0, align 8
@BE_ERR_UNKNOWN = common dso_local global i32 0, align 4
@ZFS_TYPE_DATASET = common dso_local global i32 0, align 4
@BE_ERR_EXISTS = common dso_local global i32 0, align 4
@ZFS_TYPE_SNAPSHOT = common dso_local global i32 0, align 4
@BE_ERR_ZFSOPEN = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"canmount\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"noauto\00", align 1
@be_deep_clone_prop = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@ZPROP_INVAL = common dso_local global i64 0, align 8
@BE_ERR_ZFSCLONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @be_clone_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_clone_cb(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.libbe_deep_clone*, align 8
  %14 = alloca %struct.libbe_dccb, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %16 = load i32, i32* @BE_MAXPATHLEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %20 = load i32, i32* @BE_MAXPATHLEN, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %9, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = bitcast i8* %23 to %struct.libbe_deep_clone*
  store %struct.libbe_deep_clone* %24, %struct.libbe_deep_clone** %13, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i8* @zfs_get_name(i32* %25)
  store i8* %26, i8** %10, align 8
  %27 = trunc i64 %21 to i32
  %28 = load i8*, i8** %10, align 8
  %29 = load %struct.libbe_deep_clone*, %struct.libbe_deep_clone** %13, align 8
  %30 = getelementptr inbounds %struct.libbe_deep_clone, %struct.libbe_deep_clone* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @snprintf(i8* %22, i32 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %31)
  %33 = load %struct.libbe_deep_clone*, %struct.libbe_deep_clone** %13, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = trunc i64 %17 to i32
  %36 = call i64 @be_get_path(%struct.libbe_deep_clone* %33, i8* %34, i8* %19, i32 %35)
  %37 = load i64, i64* @BE_ERR_SUCCESS, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %2
  %40 = load %struct.libbe_deep_clone*, %struct.libbe_deep_clone** %13, align 8
  %41 = getelementptr inbounds %struct.libbe_deep_clone, %struct.libbe_deep_clone* %40, i32 0, i32 3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* @BE_ERR_UNKNOWN, align 4
  %44 = call i32 @set_error(%struct.TYPE_2__* %42, i32 %43)
  store i32 %44, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %153

45:                                               ; preds = %2
  %46 = load %struct.libbe_deep_clone*, %struct.libbe_deep_clone** %13, align 8
  %47 = getelementptr inbounds %struct.libbe_deep_clone, %struct.libbe_deep_clone* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ZFS_TYPE_DATASET, align 4
  %52 = call i64 @zfs_dataset_exists(i32 %50, i8* %19, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %45
  %55 = load %struct.libbe_deep_clone*, %struct.libbe_deep_clone** %13, align 8
  %56 = getelementptr inbounds %struct.libbe_deep_clone, %struct.libbe_deep_clone* %55, i32 0, i32 3
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* @BE_ERR_EXISTS, align 4
  %59 = call i32 @set_error(%struct.TYPE_2__* %57, i32 %58)
  store i32 %59, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %153

60:                                               ; preds = %45
  %61 = load %struct.libbe_deep_clone*, %struct.libbe_deep_clone** %13, align 8
  %62 = getelementptr inbounds %struct.libbe_deep_clone, %struct.libbe_deep_clone* %61, i32 0, i32 3
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  %67 = call i64 @zfs_dataset_exists(i32 %65, i8* %22, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %153

70:                                               ; preds = %60
  %71 = load %struct.libbe_deep_clone*, %struct.libbe_deep_clone** %13, align 8
  %72 = getelementptr inbounds %struct.libbe_deep_clone, %struct.libbe_deep_clone* %71, i32 0, i32 3
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  %77 = call i32* @zfs_open(i32 %75, i8* %22, i32 %76)
  store i32* %77, i32** %11, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %70
  %80 = load %struct.libbe_deep_clone*, %struct.libbe_deep_clone** %13, align 8
  %81 = getelementptr inbounds %struct.libbe_deep_clone, %struct.libbe_deep_clone* %80, i32 0, i32 3
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* @BE_ERR_ZFSOPEN, align 4
  %84 = call i32 @set_error(%struct.TYPE_2__* %82, i32 %83)
  store i32 %84, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %153

85:                                               ; preds = %70
  %86 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %87 = load i32, i32* @KM_SLEEP, align 4
  %88 = call i32 @nvlist_alloc(i32** %12, i32 %86, i32 %87)
  %89 = load i32*, i32** %12, align 8
  %90 = call i32 @nvlist_add_string(i32* %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %91 = load %struct.libbe_deep_clone*, %struct.libbe_deep_clone** %13, align 8
  %92 = getelementptr inbounds %struct.libbe_deep_clone, %struct.libbe_deep_clone* %91, i32 0, i32 3
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.libbe_dccb, %struct.libbe_dccb* %14, i32 0, i32 2
  store %struct.TYPE_2__* %93, %struct.TYPE_2__** %94, align 8
  %95 = load i32*, i32** %4, align 8
  %96 = getelementptr inbounds %struct.libbe_dccb, %struct.libbe_dccb* %14, i32 0, i32 1
  store i32* %95, i32** %96, align 8
  %97 = load i32*, i32** %12, align 8
  %98 = getelementptr inbounds %struct.libbe_dccb, %struct.libbe_dccb* %14, i32 0, i32 0
  store i32* %97, i32** %98, align 8
  %99 = load i32, i32* @be_deep_clone_prop, align 4
  %100 = load i32, i32* @B_FALSE, align 4
  %101 = load i32, i32* @B_FALSE, align 4
  %102 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %103 = call i64 @zprop_iter(i32 %99, %struct.libbe_dccb* %14, i32 %100, i32 %101, i32 %102)
  %104 = load i64, i64* @ZPROP_INVAL, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %85
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %153

107:                                              ; preds = %85
  %108 = load i32*, i32** %11, align 8
  %109 = load i32*, i32** %12, align 8
  %110 = call i32 @zfs_clone(i32* %108, i8* %19, i32* %109)
  store i32 %110, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = load %struct.libbe_deep_clone*, %struct.libbe_deep_clone** %13, align 8
  %114 = getelementptr inbounds %struct.libbe_deep_clone, %struct.libbe_deep_clone* %113, i32 0, i32 3
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load i32, i32* @BE_ERR_ZFSCLONE, align 4
  %117 = call i32 @set_error(%struct.TYPE_2__* %115, i32 %116)
  store i32 %117, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %153

118:                                              ; preds = %107
  %119 = load i32*, i32** %12, align 8
  %120 = call i32 @nvlist_free(i32* %119)
  %121 = load i32*, i32** %11, align 8
  %122 = call i32 @zfs_close(i32* %121)
  %123 = load %struct.libbe_deep_clone*, %struct.libbe_deep_clone** %13, align 8
  %124 = getelementptr inbounds %struct.libbe_deep_clone, %struct.libbe_deep_clone* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = icmp eq i32 %125, -1
  br i1 %126, label %135, label %127

127:                                              ; preds = %118
  %128 = load %struct.libbe_deep_clone*, %struct.libbe_deep_clone** %13, align 8
  %129 = getelementptr inbounds %struct.libbe_deep_clone, %struct.libbe_deep_clone* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.libbe_deep_clone*, %struct.libbe_deep_clone** %13, align 8
  %132 = getelementptr inbounds %struct.libbe_deep_clone, %struct.libbe_deep_clone* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = icmp slt i32 %130, %133
  br i1 %134, label %135, label %147

135:                                              ; preds = %127, %118
  %136 = load %struct.libbe_deep_clone*, %struct.libbe_deep_clone** %13, align 8
  %137 = getelementptr inbounds %struct.libbe_deep_clone, %struct.libbe_deep_clone* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 4
  %140 = load i32*, i32** %4, align 8
  %141 = load %struct.libbe_deep_clone*, %struct.libbe_deep_clone** %13, align 8
  %142 = call i32 @zfs_iter_filesystems(i32* %140, i32 (i32*, i8*)* @be_clone_cb, %struct.libbe_deep_clone* %141)
  store i32 %142, i32* %6, align 4
  %143 = load %struct.libbe_deep_clone*, %struct.libbe_deep_clone** %13, align 8
  %144 = getelementptr inbounds %struct.libbe_deep_clone, %struct.libbe_deep_clone* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* %144, align 4
  br label %147

147:                                              ; preds = %135, %127
  %148 = load %struct.libbe_deep_clone*, %struct.libbe_deep_clone** %13, align 8
  %149 = getelementptr inbounds %struct.libbe_deep_clone, %struct.libbe_deep_clone* %148, i32 0, i32 3
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = load i32, i32* %6, align 4
  %152 = call i32 @set_error(%struct.TYPE_2__* %150, i32 %151)
  store i32 %152, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %153

153:                                              ; preds = %147, %112, %106, %79, %69, %54, %39
  %154 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %154)
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @zfs_get_name(i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i64 @be_get_path(%struct.libbe_deep_clone*, i8*, i8*, i32) #2

declare dso_local i32 @set_error(%struct.TYPE_2__*, i32) #2

declare dso_local i64 @zfs_dataset_exists(i32, i8*, i32) #2

declare dso_local i32* @zfs_open(i32, i8*, i32) #2

declare dso_local i32 @nvlist_alloc(i32**, i32, i32) #2

declare dso_local i32 @nvlist_add_string(i32*, i8*, i8*) #2

declare dso_local i64 @zprop_iter(i32, %struct.libbe_dccb*, i32, i32, i32) #2

declare dso_local i32 @zfs_clone(i32*, i8*, i32*) #2

declare dso_local i32 @nvlist_free(i32*) #2

declare dso_local i32 @zfs_close(i32*) #2

declare dso_local i32 @zfs_iter_filesystems(i32*, i32 (i32*, i8*)*, %struct.libbe_deep_clone*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
