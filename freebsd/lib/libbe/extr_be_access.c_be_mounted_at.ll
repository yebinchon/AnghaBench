; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libbe/extr_be_access.c_be_mounted_at.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libbe/extr_be_access.c_be_mounted_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.be_mountcheck_info = type { i8*, i32* }
%struct.TYPE_5__ = type { i32, i32*, %struct.TYPE_6__* }

@BE_MAXPATHLEN = common dso_local global i32 0, align 4
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@BE_ERR_ZFSOPEN = common dso_local global i32 0, align 4
@be_mountcheck_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_mounted_at(%struct.TYPE_6__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.be_mountcheck_info, align 8
  %12 = alloca %struct.TYPE_5__, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i32, i32* @BE_MAXPATHLEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = bitcast i8* %17 to i8**
  %19 = load i32, i32* @BE_MAXPATHLEN, align 4
  %20 = call i32 @bzero(i8** %18, i32 %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %28 = call i32* @zfs_open(i32 %23, i32 %26, i32 %27)
  store i32* %28, i32** %10, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* @BE_ERR_ZFSOPEN, align 4
  store i32 %31, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %77

32:                                               ; preds = %3
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds %struct.be_mountcheck_info, %struct.be_mountcheck_info* %11, i32 0, i32 0
  store i8* %33, i8** %34, align 8
  %35 = getelementptr inbounds %struct.be_mountcheck_info, %struct.be_mountcheck_info* %11, i32 0, i32 1
  store i32* null, i32** %35, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* @be_mountcheck_cb, align 4
  %38 = call i32 @zfs_iter_filesystems(i32* %36, i32 %37, %struct.be_mountcheck_info* %11)
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @zfs_close(i32* %39)
  %41 = getelementptr inbounds %struct.be_mountcheck_info, %struct.be_mountcheck_info* %11, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %76

44:                                               ; preds = %32
  %45 = load i32*, i32** %7, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %72

47:                                               ; preds = %44
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %55 = call i32* @zfs_open(i32 %50, i32 %53, i32 %54)
  store i32* %55, i32** %10, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %47
  %58 = getelementptr inbounds %struct.be_mountcheck_info, %struct.be_mountcheck_info* %11, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @free(i32* %59)
  %61 = load i32, i32* @BE_ERR_ZFSOPEN, align 4
  store i32 %61, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %77

62:                                               ; preds = %47
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  store %struct.TYPE_6__* %63, %struct.TYPE_6__** %64, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  store i32* %65, i32** %66, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i32 0, i32* %67, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @prop_list_builder_cb(i32* %68, %struct.TYPE_5__* %12)
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 @zfs_close(i32* %70)
  br label %72

72:                                               ; preds = %62, %44
  %73 = getelementptr inbounds %struct.be_mountcheck_info, %struct.be_mountcheck_info* %11, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @free(i32* %74)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %77

76:                                               ; preds = %32
  store i32 1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %77

77:                                               ; preds = %76, %72, %57, %30
  %78 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %78)
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bzero(i8**, i32) #2

declare dso_local i32* @zfs_open(i32, i32, i32) #2

declare dso_local i32 @zfs_iter_filesystems(i32*, i32, %struct.be_mountcheck_info*) #2

declare dso_local i32 @zfs_close(i32*) #2

declare dso_local i32 @free(i32*) #2

declare dso_local i32 @prop_list_builder_cb(i32*, %struct.TYPE_5__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
