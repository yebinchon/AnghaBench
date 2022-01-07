; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libbe/extr_be.c_be_rename.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libbe/extr_be.c_be_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renameflags = type { i32 }
%struct.TYPE_6__ = type { i32 }

@BE_MAXPATHLEN = common dso_local global i32 0, align 4
@ZFS_TYPE_DATASET = common dso_local global i32 0, align 4
@BE_ERR_NOENT = common dso_local global i32 0, align 4
@BE_ERR_EXISTS = common dso_local global i32 0, align 4
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@BE_ERR_ZFSOPEN = common dso_local global i32 0, align 4
@__const.be_rename.flags = private unnamed_addr constant %struct.renameflags { i32 1 }, align 4
@BE_ERR_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_rename(%struct.TYPE_6__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.renameflags, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i32, i32* @BE_MAXPATHLEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i32, i32* @BE_MAXPATHLEN, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @be_validate_name(%struct.TYPE_6__* %22, i8* %23)
  store i32 %24, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @set_error(%struct.TYPE_6__* %27, i32 %28)
  store i32 %29, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %96

30:                                               ; preds = %3
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @be_root_concat(%struct.TYPE_6__* %31, i8* %32, i8* %18)
  store i32 %33, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @set_error(%struct.TYPE_6__* %36, i32 %37)
  store i32 %38, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %96

39:                                               ; preds = %30
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @be_root_concat(%struct.TYPE_6__* %40, i8* %41, i8* %21)
  store i32 %42, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @set_error(%struct.TYPE_6__* %45, i32 %46)
  store i32 %47, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %96

48:                                               ; preds = %39
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @ZFS_TYPE_DATASET, align 4
  %53 = call i64 @zfs_dataset_exists(i32 %51, i8* %18, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %48
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = load i32, i32* @BE_ERR_NOENT, align 4
  %58 = call i32 @set_error(%struct.TYPE_6__* %56, i32 %57)
  store i32 %58, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %96

59:                                               ; preds = %48
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @ZFS_TYPE_DATASET, align 4
  %64 = call i64 @zfs_dataset_exists(i32 %62, i8* %21, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %68 = load i32, i32* @BE_ERR_EXISTS, align 4
  %69 = call i32 @set_error(%struct.TYPE_6__* %67, i32 %68)
  store i32 %69, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %96

70:                                               ; preds = %59
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %75 = call i32* @zfs_open(i32 %73, i8* %18, i32 %74)
  store i32* %75, i32** %11, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %70
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %79 = load i32, i32* @BE_ERR_ZFSOPEN, align 4
  %80 = call i32 @set_error(%struct.TYPE_6__* %78, i32 %79)
  store i32 %80, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %96

81:                                               ; preds = %70
  %82 = bitcast %struct.renameflags* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %82, i8* align 4 bitcast (%struct.renameflags* @__const.be_rename.flags to i8*), i64 4, i1 false)
  %83 = load i32*, i32** %11, align 8
  %84 = getelementptr inbounds %struct.renameflags, %struct.renameflags* %14, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @zfs_rename(i32* %83, i32* null, i8* %21, i32 %85)
  store i32 %86, i32* %12, align 4
  %87 = load i32*, i32** %11, align 8
  %88 = call i32 @zfs_close(i32* %87)
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %81
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %93 = load i32, i32* @BE_ERR_UNKNOWN, align 4
  %94 = call i32 @set_error(%struct.TYPE_6__* %92, i32 %93)
  store i32 %94, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %96

95:                                               ; preds = %81
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %96

96:                                               ; preds = %95, %91, %77, %66, %55, %44, %35, %26
  %97 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %97)
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @be_validate_name(%struct.TYPE_6__*, i8*) #2

declare dso_local i32 @set_error(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @be_root_concat(%struct.TYPE_6__*, i8*, i8*) #2

declare dso_local i64 @zfs_dataset_exists(i32, i8*, i32) #2

declare dso_local i32* @zfs_open(i32, i8*, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @zfs_rename(i32*, i32*, i8*, i32) #2

declare dso_local i32 @zfs_close(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
