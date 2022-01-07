; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vnops.c_zfs_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vnops.c_zfs_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i64 }

@FSYNC = common dso_local global i32 0, align 4
@FDSYNC = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@ZFS_AV_QUARANTINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i32*, i32*)* @zfs_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_close(i32* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call %struct.TYPE_10__* @VTOZ(i32* %15)
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %13, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %14, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 (...) @ddi_get_pid()
  %22 = call i32 @cleanlocks(i32* %20, i32 %21, i32 0)
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 (...) @ddi_get_pid()
  %25 = call i32 @cleanshares(i32* %23, i32 %24)
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %27 = call i32 @ZFS_ENTER(%struct.TYPE_11__* %26)
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %29 = call i32 @ZFS_VERIFY_ZP(%struct.TYPE_10__* %28)
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @FSYNC, align 4
  %32 = load i32, i32* @FDSYNC, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %6
  %37 = load i32, i32* %9, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 3
  %42 = call i32 @atomic_dec_32(i32* %41)
  br label %43

43:                                               ; preds = %39, %36, %6
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %45 = call i32 @zfs_has_ctldir(%struct.TYPE_10__* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %80, label %47

47:                                               ; preds = %43
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %80

54:                                               ; preds = %47
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %56 = call %struct.TYPE_12__* @ZTOV(%struct.TYPE_10__* %55)
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @VREG, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %80

61:                                               ; preds = %54
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @ZFS_AV_QUARANTINED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %61
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load i32*, i32** %7, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = call i64 @fs_vscan(i32* %74, i32* %75, i32 1)
  %77 = icmp eq i64 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @VERIFY(i32 %78)
  br label %80

80:                                               ; preds = %73, %68, %61, %54, %47, %43
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %82 = call i32 @ZFS_EXIT(%struct.TYPE_11__* %81)
  ret i32 0
}

declare dso_local %struct.TYPE_10__* @VTOZ(i32*) #1

declare dso_local i32 @cleanlocks(i32*, i32, i32) #1

declare dso_local i32 @ddi_get_pid(...) #1

declare dso_local i32 @cleanshares(i32*, i32) #1

declare dso_local i32 @ZFS_ENTER(%struct.TYPE_11__*) #1

declare dso_local i32 @ZFS_VERIFY_ZP(%struct.TYPE_10__*) #1

declare dso_local i32 @atomic_dec_32(i32*) #1

declare dso_local i32 @zfs_has_ctldir(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_12__* @ZTOV(%struct.TYPE_10__*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @fs_vscan(i32*, i32*, i32) #1

declare dso_local i32 @ZFS_EXIT(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
