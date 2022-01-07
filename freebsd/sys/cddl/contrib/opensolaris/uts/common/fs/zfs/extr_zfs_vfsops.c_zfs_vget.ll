; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vfsops.c_zfs_vget.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vfsops.c_zfs_vget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64 }

@ZFSCTL_INO_ROOT = common dso_local global i64 0, align 8
@ZFSCTL_INO_SNAPDIR = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i64, i32, i32**)* @zfs_vget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_vget(%struct.TYPE_12__* %0, i64 %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %10, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @ZFSCTL_INO_ROOT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %34, label %19

19:                                               ; preds = %4
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @ZFSCTL_INO_SNAPDIR, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %34, label %23

23:                                               ; preds = %19
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28, %19, %4
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %35, i32* %5, align 4
  br label %85

36:                                               ; preds = %28, %23
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %38 = call i32 @ZFS_ENTER(%struct.TYPE_11__* %37)
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @zfs_zget(%struct.TYPE_11__* %39, i64 %40, %struct.TYPE_10__** %11)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %36
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %51 = call i32* @ZTOV(%struct.TYPE_10__* %50)
  %52 = call i32 @vrele(i32* %51)
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %49, %44, %36
  %55 = load i32, i32* %12, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %59 = call i32* @ZTOV(%struct.TYPE_10__* %58)
  %60 = load i32**, i32*** %9, align 8
  store i32* %59, i32** %60, align 8
  br label %61

61:                                               ; preds = %57, %54
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %63 = call i32 @ZFS_EXIT(%struct.TYPE_11__* %62)
  %64 = load i32, i32* %12, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %61
  %67 = load i32**, i32*** %9, align 8
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @vn_lock(i32* %68, i32 %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load i32**, i32*** %9, align 8
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @vrele(i32* %75)
  br label %77

77:                                               ; preds = %73, %66
  br label %78

78:                                               ; preds = %77, %61
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32**, i32*** %9, align 8
  store i32* null, i32** %82, align 8
  br label %83

83:                                               ; preds = %81, %78
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %83, %34
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @ZFS_ENTER(%struct.TYPE_11__*) #1

declare dso_local i32 @zfs_zget(%struct.TYPE_11__*, i64, %struct.TYPE_10__**) #1

declare dso_local i32 @vrele(i32*) #1

declare dso_local i32* @ZTOV(%struct.TYPE_10__*) #1

declare dso_local i32 @ZFS_EXIT(%struct.TYPE_11__*) #1

declare dso_local i32 @vn_lock(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
