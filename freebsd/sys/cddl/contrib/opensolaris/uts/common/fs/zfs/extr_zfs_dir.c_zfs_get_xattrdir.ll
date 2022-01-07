; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_dir.c_zfs_get_xattrdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_dir.c_zfs_get_xattrdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ZXATTR = common dso_local global i32 0, align 4
@CREATE_XATTR_DIR = common dso_local global i32 0, align 4
@ENOATTR = common dso_local global i32 0, align 4
@VFS_RDONLY = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@AT_TYPE = common dso_local global i32 0, align 4
@AT_MODE = common dso_local global i32 0, align 4
@AT_UID = common dso_local global i32 0, align 4
@AT_GID = common dso_local global i32 0, align 4
@VDIR = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_ISVTX = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_get_xattrdir(%struct.TYPE_13__* %0, i32** %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_15__, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %10, align 8
  br label %17

17:                                               ; preds = %80, %4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %19 = load i32, i32* @ZXATTR, align 4
  %20 = call i32 @zfs_dirent_lookup(%struct.TYPE_13__* %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.TYPE_13__** %11, i32 %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* %5, align 4
  br label %90

25:                                               ; preds = %17
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %27 = icmp ne %struct.TYPE_13__* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %30 = call i32* @ZTOV(%struct.TYPE_13__* %29)
  %31 = load i32**, i32*** %7, align 8
  store i32* %30, i32** %31, align 8
  store i32 0, i32* %5, align 4
  br label %90

32:                                               ; preds = %25
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @CREATE_XATTR_DIR, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @ENOATTR, align 4
  %39 = call i32 @SET_ERROR(i32 %38)
  store i32 %39, i32* %5, align 4
  br label %90

40:                                               ; preds = %32
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @VFS_RDONLY, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load i32, i32* @EROFS, align 4
  %51 = call i32 @SET_ERROR(i32 %50)
  store i32 %51, i32* %5, align 4
  br label %90

52:                                               ; preds = %40
  %53 = load i32, i32* @AT_TYPE, align 4
  %54 = load i32, i32* @AT_MODE, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @AT_UID, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @AT_GID, align 4
  %59 = or i32 %57, %58
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* @VDIR, align 4
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 4
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* @S_IFDIR, align 4
  %64 = load i32, i32* @S_ISVTX, align 4
  %65 = or i32 %63, %64
  %66 = or i32 %65, 511
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  store i32 %66, i32* %67, align 4
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 2
  %72 = call i32 @zfs_fuid_map_ids(%struct.TYPE_13__* %68, i32* %69, i32* %70, i32* %71)
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %74 = load i32**, i32*** %7, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @zfs_make_xattrdir(%struct.TYPE_13__* %73, %struct.TYPE_15__* %12, i32** %74, i32* %75)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* @ERESTART, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %52
  br label %17

81:                                               ; preds = %52
  %82 = load i32, i32* %13, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load i32**, i32*** %7, align 8
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @VOP_UNLOCK(i32* %86, i32 0)
  br label %88

88:                                               ; preds = %84, %81
  %89 = load i32, i32* %13, align 4
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %88, %49, %37, %28, %23
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @zfs_dirent_lookup(%struct.TYPE_13__*, i8*, %struct.TYPE_13__**, i32) #1

declare dso_local i32* @ZTOV(%struct.TYPE_13__*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @zfs_fuid_map_ids(%struct.TYPE_13__*, i32*, i32*, i32*) #1

declare dso_local i32 @zfs_make_xattrdir(%struct.TYPE_13__*, %struct.TYPE_15__*, i32**, i32*) #1

declare dso_local i32 @VOP_UNLOCK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
