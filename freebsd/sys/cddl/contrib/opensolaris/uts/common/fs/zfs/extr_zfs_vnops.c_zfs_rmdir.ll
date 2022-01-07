; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vnops.c_zfs_rmdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vnops.c_zfs_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64 }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_21__*, i32, i32* }
%struct.TYPE_21__ = type { i64 }

@VDIR = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i32 0, align 4
@ct = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@TXG_WAIT = common dso_local global i32 0, align 4
@ZEXISTS = common dso_local global i32 0, align 4
@TX_RMDIR = common dso_local global i32 0, align 4
@ZFS_NO_OBJECT = common dso_local global i32 0, align 4
@ZFS_SYNC_ALWAYS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, %struct.TYPE_24__*, i8*, i32*)* @zfs_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_rmdir(%struct.TYPE_24__* %0, %struct.TYPE_24__* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %6, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %18 = call %struct.TYPE_22__* @VTOZ(%struct.TYPE_24__* %17)
  store %struct.TYPE_22__* %18, %struct.TYPE_22__** %10, align 8
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %20 = call %struct.TYPE_22__* @VTOZ(%struct.TYPE_24__* %19)
  store %struct.TYPE_22__* %20, %struct.TYPE_22__** %11, align 8
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  store %struct.TYPE_23__* %23, %struct.TYPE_23__** %12, align 8
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %25 = call i32 @ZFS_ENTER(%struct.TYPE_23__* %24)
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %27 = call i32 @ZFS_VERIFY_ZP(%struct.TYPE_22__* %26)
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %29 = call i32 @ZFS_VERIFY_ZP(%struct.TYPE_22__* %28)
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %13, align 8
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @zfs_zaccess_delete(%struct.TYPE_22__* %33, %struct.TYPE_22__* %34, i32* %35)
  store i32 %36, i32* %15, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %4
  br label %121

39:                                               ; preds = %4
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @VDIR, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @ENOTDIR, align 4
  %47 = call i32 @SET_ERROR(i32 %46)
  store i32 %47, i32* %15, align 4
  br label %121

48:                                               ; preds = %39
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* @ct, align 4
  %53 = call i32 @vnevent_rmdir(%struct.TYPE_24__* %49, %struct.TYPE_24__* %50, i8* %51, i32 %52)
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %55, align 8
  %57 = call i32* @dmu_tx_create(%struct.TYPE_21__* %56)
  store i32* %57, i32** %14, align 8
  %58 = load i32*, i32** %14, align 8
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @FALSE, align 4
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @dmu_tx_hold_zap(i32* %58, i32 %61, i32 %62, i8* %63)
  %65 = load i32*, i32** %14, align 8
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @B_FALSE, align 4
  %70 = call i32 @dmu_tx_hold_sa(i32* %65, i32 %68, i32 %69)
  %71 = load i32*, i32** %14, align 8
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @FALSE, align 4
  %76 = call i32 @dmu_tx_hold_zap(i32* %71, i32 %74, i32 %75, i8* null)
  %77 = load i32*, i32** %14, align 8
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %79 = call i32 @zfs_sa_upgrade_txholds(i32* %77, %struct.TYPE_22__* %78)
  %80 = load i32*, i32** %14, align 8
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %82 = call i32 @zfs_sa_upgrade_txholds(i32* %80, %struct.TYPE_22__* %81)
  %83 = load i32*, i32** %14, align 8
  %84 = call i32 @dmu_tx_mark_netfree(i32* %83)
  %85 = load i32*, i32** %14, align 8
  %86 = load i32, i32* @TXG_WAIT, align 4
  %87 = call i32 @dmu_tx_assign(i32* %85, i32 %86)
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %15, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %48
  %91 = load i32*, i32** %14, align 8
  %92 = call i32 @dmu_tx_abort(i32* %91)
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %94 = call i32 @ZFS_EXIT(%struct.TYPE_23__* %93)
  %95 = load i32, i32* %15, align 4
  store i32 %95, i32* %5, align 4
  br label %136

96:                                               ; preds = %48
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %98 = call i32 @cache_purge(%struct.TYPE_24__* %97)
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %102 = load i32*, i32** %14, align 8
  %103 = load i32, i32* @ZEXISTS, align 4
  %104 = call i32 @zfs_link_destroy(%struct.TYPE_22__* %99, i8* %100, %struct.TYPE_22__* %101, i32* %102, i32 %103, i32* null)
  store i32 %104, i32* %15, align 4
  %105 = load i32, i32* %15, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %96
  %108 = load i32, i32* @TX_RMDIR, align 4
  store i32 %108, i32* %16, align 4
  %109 = load i32*, i32** %13, align 8
  %110 = load i32*, i32** %14, align 8
  %111 = load i32, i32* %16, align 4
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = load i32, i32* @ZFS_NO_OBJECT, align 4
  %115 = call i32 @zfs_log_remove(i32* %109, i32* %110, i32 %111, %struct.TYPE_22__* %112, i8* %113, i32 %114)
  br label %116

116:                                              ; preds = %107, %96
  %117 = load i32*, i32** %14, align 8
  %118 = call i32 @dmu_tx_commit(i32* %117)
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %120 = call i32 @cache_purge(%struct.TYPE_24__* %119)
  br label %121

121:                                              ; preds = %116, %45, %38
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @ZFS_SYNC_ALWAYS, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %121
  %130 = load i32*, i32** %13, align 8
  %131 = call i32 @zil_commit(i32* %130, i32 0)
  br label %132

132:                                              ; preds = %129, %121
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %134 = call i32 @ZFS_EXIT(%struct.TYPE_23__* %133)
  %135 = load i32, i32* %15, align 4
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %132, %90
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local %struct.TYPE_22__* @VTOZ(%struct.TYPE_24__*) #1

declare dso_local i32 @ZFS_ENTER(%struct.TYPE_23__*) #1

declare dso_local i32 @ZFS_VERIFY_ZP(%struct.TYPE_22__*) #1

declare dso_local i32 @zfs_zaccess_delete(%struct.TYPE_22__*, %struct.TYPE_22__*, i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @vnevent_rmdir(%struct.TYPE_24__*, %struct.TYPE_24__*, i8*, i32) #1

declare dso_local i32* @dmu_tx_create(%struct.TYPE_21__*) #1

declare dso_local i32 @dmu_tx_hold_zap(i32*, i32, i32, i8*) #1

declare dso_local i32 @dmu_tx_hold_sa(i32*, i32, i32) #1

declare dso_local i32 @zfs_sa_upgrade_txholds(i32*, %struct.TYPE_22__*) #1

declare dso_local i32 @dmu_tx_mark_netfree(i32*) #1

declare dso_local i32 @dmu_tx_assign(i32*, i32) #1

declare dso_local i32 @dmu_tx_abort(i32*) #1

declare dso_local i32 @ZFS_EXIT(%struct.TYPE_23__*) #1

declare dso_local i32 @cache_purge(%struct.TYPE_24__*) #1

declare dso_local i32 @zfs_link_destroy(%struct.TYPE_22__*, i8*, %struct.TYPE_22__*, i32*, i32, i32*) #1

declare dso_local i32 @zfs_log_remove(i32*, i32*, i32, %struct.TYPE_22__*, i8*, i32) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

declare dso_local i32 @zil_commit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
