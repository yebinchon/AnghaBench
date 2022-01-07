; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libbe/extr_be_access.c_be_unmount.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libbe/extr_be_access.c_be_unmount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.be_mount_info = type { i8*, i64, i32, i32*, %struct.TYPE_5__* }

@BE_MAXPATHLEN = common dso_local global i32 0, align 4
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@BE_ERR_ZFSOPEN = common dso_local global i32 0, align 4
@BE_MNT_FORCE = common dso_local global i32 0, align 4
@MS_FORCE = common dso_local global i32 0, align 4
@BE_ERR_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_unmount(%struct.TYPE_5__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.be_mount_info, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @BE_MAXPATHLEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @be_root_concat(%struct.TYPE_5__* %18, i8* %19, i8* %17)
  store i32 %20, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @set_error(%struct.TYPE_5__* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %64

26:                                               ; preds = %3
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %31 = call i32* @zfs_open(i32 %29, i8* %17, i32 %30)
  store i32* %31, i32** %11, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = load i32, i32* @BE_ERR_ZFSOPEN, align 4
  %36 = call i32 @set_error(%struct.TYPE_5__* %34, i32 %35)
  store i32 %36, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %64

37:                                               ; preds = %26
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = getelementptr inbounds %struct.be_mount_info, %struct.be_mount_info* %12, i32 0, i32 4
  store %struct.TYPE_5__* %38, %struct.TYPE_5__** %39, align 8
  %40 = getelementptr inbounds %struct.be_mount_info, %struct.be_mount_info* %12, i32 0, i32 0
  store i8* %17, i8** %40, align 8
  %41 = getelementptr inbounds %struct.be_mount_info, %struct.be_mount_info* %12, i32 0, i32 3
  store i32* null, i32** %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @BE_MNT_FORCE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* @MS_FORCE, align 4
  br label %49

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48, %46
  %50 = phi i32 [ %47, %46 ], [ 0, %48 ]
  %51 = getelementptr inbounds %struct.be_mount_info, %struct.be_mount_info* %12, i32 0, i32 2
  store i32 %50, i32* %51, align 8
  %52 = getelementptr inbounds %struct.be_mount_info, %struct.be_mount_info* %12, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = call i32 @be_umount_iter(i32* %53, %struct.be_mount_info* %12)
  store i32 %54, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i32*, i32** %11, align 8
  %58 = call i32 @zfs_close(i32* %57)
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %64

60:                                               ; preds = %49
  %61 = load i32*, i32** %11, align 8
  %62 = call i32 @zfs_close(i32* %61)
  %63 = load i32, i32* @BE_ERR_SUCCESS, align 4
  store i32 %63, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %64

64:                                               ; preds = %60, %56, %33, %22
  %65 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @be_root_concat(%struct.TYPE_5__*, i8*, i8*) #2

declare dso_local i32 @set_error(%struct.TYPE_5__*, i32) #2

declare dso_local i32* @zfs_open(i32, i8*, i32) #2

declare dso_local i32 @be_umount_iter(i32*, %struct.be_mount_info*) #2

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
