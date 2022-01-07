; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_acl.c_zfs_zaccess_rename.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_acl.c_zfs_zaccess_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64 }

@ZFS_AV_QUARANTINED = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@ACE_ADD_SUBDIRECTORY = common dso_local global i32 0, align 4
@ACE_ADD_FILE = common dso_local global i32 0, align 4
@ACE_WRITE_DATA = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_zaccess_rename(%struct.TYPE_11__* %0, %struct.TYPE_11__* %1, %struct.TYPE_11__* %2, %struct.TYPE_11__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ZFS_AV_QUARANTINED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* @EACCES, align 4
  %22 = call i32 @SET_ERROR(i32 %21)
  store i32 %22, i32* %6, align 4
  br label %85

23:                                               ; preds = %5
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %25 = call %struct.TYPE_12__* @ZTOV(%struct.TYPE_11__* %24)
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @VDIR, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @ACE_ADD_SUBDIRECTORY, align 4
  br label %34

32:                                               ; preds = %23
  %33 = load i32, i32* @ACE_ADD_FILE, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  store i32 %35, i32* %12, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %37 = call %struct.TYPE_12__* @ZTOV(%struct.TYPE_11__* %36)
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @VDIR, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %34
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %44 = call %struct.TYPE_12__* @ZTOV(%struct.TYPE_11__* %43)
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %46 = call %struct.TYPE_12__* @ZTOV(%struct.TYPE_11__* %45)
  %47 = icmp ne %struct.TYPE_12__* %44, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %50 = load i32, i32* @ACE_WRITE_DATA, align 4
  %51 = load i32, i32* @B_FALSE, align 4
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @zfs_zaccess(%struct.TYPE_11__* %49, i32 %50, i32 0, i32 %51, i32* %52)
  store i32 %53, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %6, align 4
  br label %85

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %42, %34
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = call i32 @zfs_zaccess_delete(%struct.TYPE_11__* %59, %struct.TYPE_11__* %60, i32* %61)
  store i32 %62, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %6, align 4
  br label %85

66:                                               ; preds = %58
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %68 = icmp ne %struct.TYPE_11__* %67, null
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = call i32 @zfs_zaccess_delete(%struct.TYPE_11__* %70, %struct.TYPE_11__* %71, i32* %72)
  store i32 %73, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* %6, align 4
  br label %85

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77, %66
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @B_FALSE, align 4
  %82 = load i32*, i32** %11, align 8
  %83 = call i32 @zfs_zaccess(%struct.TYPE_11__* %79, i32 %80, i32 0, i32 %81, i32* %82)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %78, %75, %64, %55, %20
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local %struct.TYPE_12__* @ZTOV(%struct.TYPE_11__*) #1

declare dso_local i32 @zfs_zaccess(%struct.TYPE_11__*, i32, i32, i32, i32*) #1

declare dso_local i32 @zfs_zaccess_delete(%struct.TYPE_11__*, %struct.TYPE_11__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
