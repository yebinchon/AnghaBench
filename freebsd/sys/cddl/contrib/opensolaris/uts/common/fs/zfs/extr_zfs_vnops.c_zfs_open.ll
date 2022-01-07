; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vnops.c_zfs_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vnops.c_zfs_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i64 }

@FWRITE = common dso_local global i32 0, align 4
@ZFS_APPENDONLY = common dso_local global i32 0, align 4
@FAPPEND = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@ZFS_AV_QUARANTINED = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@FSYNC = common dso_local global i32 0, align 4
@FDSYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32, i32*, i32*)* @zfs_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_open(i32** %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  store i32** %0, i32*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32**, i32*** %6, align 8
  %13 = load i32*, i32** %12, align 8
  %14 = call %struct.TYPE_10__* @VTOZ(i32* %13)
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %10, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %11, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %19 = call i32 @ZFS_ENTER(%struct.TYPE_11__* %18)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %21 = call i32 @ZFS_VERIFY_ZP(%struct.TYPE_10__* %20)
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @FWRITE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @ZFS_APPENDONLY, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %26
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @FAPPEND, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %40 = call i32 @ZFS_EXIT(%struct.TYPE_11__* %39)
  %41 = load i32, i32* @EPERM, align 4
  %42 = call i32 @SET_ERROR(i32 %41)
  store i32 %42, i32* %5, align 4
  br label %99

43:                                               ; preds = %33, %26, %4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %45 = call i32 @zfs_has_ctldir(%struct.TYPE_10__* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %85, label %47

47:                                               ; preds = %43
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %85

54:                                               ; preds = %47
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %56 = call %struct.TYPE_12__* @ZTOV(%struct.TYPE_10__* %55)
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @VREG, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %85

61:                                               ; preds = %54
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @ZFS_AV_QUARANTINED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %85, label %68

68:                                               ; preds = %61
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %68
  %74 = load i32**, i32*** %6, align 8
  %75 = load i32*, i32** %74, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = call i64 @fs_vscan(i32* %75, i32* %76, i32 0)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %81 = call i32 @ZFS_EXIT(%struct.TYPE_11__* %80)
  %82 = load i32, i32* @EACCES, align 4
  %83 = call i32 @SET_ERROR(i32 %82)
  store i32 %83, i32* %5, align 4
  br label %99

84:                                               ; preds = %73
  br label %85

85:                                               ; preds = %84, %68, %61, %54, %47, %43
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @FSYNC, align 4
  %88 = load i32, i32* @FDSYNC, align 4
  %89 = or i32 %87, %88
  %90 = and i32 %86, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 2
  %95 = call i32 @atomic_inc_32(i32* %94)
  br label %96

96:                                               ; preds = %92, %85
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %98 = call i32 @ZFS_EXIT(%struct.TYPE_11__* %97)
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %96, %79, %38
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local %struct.TYPE_10__* @VTOZ(i32*) #1

declare dso_local i32 @ZFS_ENTER(%struct.TYPE_11__*) #1

declare dso_local i32 @ZFS_VERIFY_ZP(%struct.TYPE_10__*) #1

declare dso_local i32 @ZFS_EXIT(%struct.TYPE_11__*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @zfs_has_ctldir(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_12__* @ZTOV(%struct.TYPE_10__*) #1

declare dso_local i64 @fs_vscan(i32*, i32*, i32) #1

declare dso_local i32 @atomic_inc_32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
