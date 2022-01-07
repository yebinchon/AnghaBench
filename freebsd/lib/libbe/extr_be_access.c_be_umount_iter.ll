; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libbe/extr_be_access.c_be_umount_iter.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libbe/extr_be_access.c_be_umount_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_mount_info = type { i32, i32, i32 }

@errno = common dso_local global i32 0, align 4
@BE_ERR_PATHLEN = common dso_local global i32 0, align 4
@BE_ERR_BADPATH = common dso_local global i32 0, align 4
@BE_ERR_PERMS = common dso_local global i32 0, align 4
@BE_ERR_PATHBUSY = common dso_local global i32 0, align 4
@BE_ERR_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @be_umount_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_umount_iter(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.be_mount_info*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.be_mount_info*
  store %struct.be_mount_info* %10, %struct.be_mount_info** %8, align 8
  %11 = load %struct.be_mount_info*, %struct.be_mount_info** %8, align 8
  %12 = getelementptr inbounds %struct.be_mount_info, %struct.be_mount_info* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.be_mount_info*, %struct.be_mount_info** %8, align 8
  %17 = call i32 @zfs_iter_filesystems(i32* %15, i32 (i32*, i8*)* @be_umount_iter, %struct.be_mount_info* %16)
  store i32 %17, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %72

21:                                               ; preds = %2
  %22 = load %struct.be_mount_info*, %struct.be_mount_info** %8, align 8
  %23 = getelementptr inbounds %struct.be_mount_info, %struct.be_mount_info* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %23, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @zfs_is_mounted(i32* %26, i8** %7)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %72

30:                                               ; preds = %21
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @free(i8* %31)
  %33 = load i32*, i32** %4, align 8
  %34 = load %struct.be_mount_info*, %struct.be_mount_info** %8, align 8
  %35 = getelementptr inbounds %struct.be_mount_info, %struct.be_mount_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @zfs_unmount(i32* %33, i32* null, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %71

39:                                               ; preds = %30
  %40 = load i32, i32* @errno, align 4
  switch i32 %40, label %65 [
    i32 131, label %41
    i32 132, label %47
    i32 130, label %47
    i32 129, label %47
    i32 128, label %53
    i32 133, label %59
  ]

41:                                               ; preds = %39
  %42 = load %struct.be_mount_info*, %struct.be_mount_info** %8, align 8
  %43 = getelementptr inbounds %struct.be_mount_info, %struct.be_mount_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @BE_ERR_PATHLEN, align 4
  %46 = call i32 @set_error(i32 %44, i32 %45)
  store i32 %46, i32* %3, align 4
  br label %72

47:                                               ; preds = %39, %39, %39
  %48 = load %struct.be_mount_info*, %struct.be_mount_info** %8, align 8
  %49 = getelementptr inbounds %struct.be_mount_info, %struct.be_mount_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @BE_ERR_BADPATH, align 4
  %52 = call i32 @set_error(i32 %50, i32 %51)
  store i32 %52, i32* %3, align 4
  br label %72

53:                                               ; preds = %39
  %54 = load %struct.be_mount_info*, %struct.be_mount_info** %8, align 8
  %55 = getelementptr inbounds %struct.be_mount_info, %struct.be_mount_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @BE_ERR_PERMS, align 4
  %58 = call i32 @set_error(i32 %56, i32 %57)
  store i32 %58, i32* %3, align 4
  br label %72

59:                                               ; preds = %39
  %60 = load %struct.be_mount_info*, %struct.be_mount_info** %8, align 8
  %61 = getelementptr inbounds %struct.be_mount_info, %struct.be_mount_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @BE_ERR_PATHBUSY, align 4
  %64 = call i32 @set_error(i32 %62, i32 %63)
  store i32 %64, i32* %3, align 4
  br label %72

65:                                               ; preds = %39
  %66 = load %struct.be_mount_info*, %struct.be_mount_info** %8, align 8
  %67 = getelementptr inbounds %struct.be_mount_info, %struct.be_mount_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @BE_ERR_UNKNOWN, align 4
  %70 = call i32 @set_error(i32 %68, i32 %69)
  store i32 %70, i32* %3, align 4
  br label %72

71:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %65, %59, %53, %47, %41, %29, %19
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @zfs_iter_filesystems(i32*, i32 (i32*, i8*)*, %struct.be_mount_info*) #1

declare dso_local i32 @zfs_is_mounted(i32*, i8**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @zfs_unmount(i32*, i32*, i32) #1

declare dso_local i32 @set_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
