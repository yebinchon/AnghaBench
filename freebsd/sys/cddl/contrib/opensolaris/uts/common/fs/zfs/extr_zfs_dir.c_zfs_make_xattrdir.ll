; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_dir.c_zfs_make_xattrdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_dir.c_zfs_make_xattrdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i64, i32 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64 }

@ACE_WRITE_NAMED_ATTRS = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@IS_XATTR = common dso_local global i32 0, align 4
@EDQUOT = common dso_local global i32 0, align 4
@ZFS_SA_BASE_ATTR_SIZE = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4
@DMU_NEW_OBJECT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TXG_WAIT = common dso_local global i32 0, align 4
@TX_MKXATTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_make_xattrdir(%struct.TYPE_23__* %0, i32* %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_25__, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  store %struct.TYPE_24__* %19, %struct.TYPE_24__** %10, align 8
  %20 = load i32**, i32*** %8, align 8
  store i32* null, i32** %20, align 8
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %22 = load i32, i32* @ACE_WRITE_NAMED_ATTRS, align 4
  %23 = load i32, i32* @B_FALSE, align 4
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @zfs_zaccess(%struct.TYPE_23__* %21, i32 %22, i32 0, i32 %23, i32* %24)
  store i32 %25, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %5, align 4
  br label %134

29:                                               ; preds = %4
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %31 = load i32, i32* @IS_XATTR, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @zfs_acl_ids_create(%struct.TYPE_23__* %30, i32 %31, i32* %32, i32* %33, i32* null, %struct.TYPE_25__* %14)
  store i32 %34, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %5, align 4
  br label %134

38:                                               ; preds = %29
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %40 = call i64 @zfs_acl_ids_overquota(%struct.TYPE_24__* %39, %struct.TYPE_25__* %14)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = call i32 @zfs_acl_ids_free(%struct.TYPE_25__* %14)
  %44 = load i32, i32* @EDQUOT, align 4
  %45 = call i32 @SET_ERROR(i32 %44)
  store i32 %45, i32* %5, align 4
  br label %134

46:                                               ; preds = %38
  %47 = call i32 @getnewvnode_reserve(i32 1)
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32* @dmu_tx_create(i32 %50)
  store i32* %51, i32** %12, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 1
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ZFS_SA_BASE_ATTR_SIZE, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @dmu_tx_hold_sa_create(i32* %52, i64 %58)
  %60 = load i32*, i32** %12, align 8
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @B_TRUE, align 4
  %65 = call i32 @dmu_tx_hold_sa(i32* %60, i32 %63, i32 %64)
  %66 = load i32*, i32** %12, align 8
  %67 = load i32, i32* @DMU_NEW_OBJECT, align 4
  %68 = load i32, i32* @FALSE, align 4
  %69 = call i32 @dmu_tx_hold_zap(i32* %66, i32 %67, i32 %68, i32* null)
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %15, align 8
  %73 = load i64, i64* %15, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %46
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = call i32 @zfs_fuid_txhold(%struct.TYPE_24__* %76, i32* %77)
  br label %79

79:                                               ; preds = %75, %46
  %80 = load i32*, i32** %12, align 8
  %81 = load i32, i32* @TXG_WAIT, align 4
  %82 = call i32 @dmu_tx_assign(i32* %80, i32 %81)
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = call i32 @zfs_acl_ids_free(%struct.TYPE_25__* %14)
  %87 = load i32*, i32** %12, align 8
  %88 = call i32 @dmu_tx_abort(i32* %87)
  %89 = load i32, i32* %13, align 4
  store i32 %89, i32* %5, align 4
  br label %134

90:                                               ; preds = %79
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = load i32*, i32** %12, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = load i32, i32* @IS_XATTR, align 4
  %96 = call i32 @zfs_mknode(%struct.TYPE_23__* %91, i32* %92, i32* %93, i32* %94, i32 %95, %struct.TYPE_23__** %11, %struct.TYPE_25__* %14)
  %97 = load i64, i64* %15, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %90
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %101 = load i32*, i32** %12, align 8
  %102 = call i32 @zfs_fuid_sync(%struct.TYPE_24__* %100, i32* %101)
  br label %103

103:                                              ; preds = %99, %90
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %108 = call i32 @SA_ZPL_XATTR(%struct.TYPE_24__* %107)
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 0
  %111 = load i32*, i32** %12, align 8
  %112 = call i64 @sa_update(i32 %106, i32 %108, i64* %110, i32 8, i32* %111)
  %113 = icmp eq i64 0, %112
  %114 = zext i1 %113 to i32
  %115 = call i32 @VERIFY(i32 %114)
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32*, i32** %12, align 8
  %120 = load i32, i32* @TX_MKXATTR, align 4
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32*, i32** %7, align 8
  %126 = call i32 @zfs_log_create(i32 %118, i32* %119, i32 %120, %struct.TYPE_23__* %121, %struct.TYPE_23__* %122, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* null, i32 %124, i32* %125)
  %127 = call i32 @zfs_acl_ids_free(%struct.TYPE_25__* %14)
  %128 = load i32*, i32** %12, align 8
  %129 = call i32 @dmu_tx_commit(i32* %128)
  %130 = call i32 (...) @getnewvnode_drop_reserve()
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %132 = call i32* @ZTOV(%struct.TYPE_23__* %131)
  %133 = load i32**, i32*** %8, align 8
  store i32* %132, i32** %133, align 8
  store i32 0, i32* %5, align 4
  br label %134

134:                                              ; preds = %103, %85, %42, %36, %27
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i32 @zfs_zaccess(%struct.TYPE_23__*, i32, i32, i32, i32*) #1

declare dso_local i32 @zfs_acl_ids_create(%struct.TYPE_23__*, i32, i32*, i32*, i32*, %struct.TYPE_25__*) #1

declare dso_local i64 @zfs_acl_ids_overquota(%struct.TYPE_24__*, %struct.TYPE_25__*) #1

declare dso_local i32 @zfs_acl_ids_free(%struct.TYPE_25__*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @getnewvnode_reserve(i32) #1

declare dso_local i32* @dmu_tx_create(i32) #1

declare dso_local i32 @dmu_tx_hold_sa_create(i32*, i64) #1

declare dso_local i32 @dmu_tx_hold_sa(i32*, i32, i32) #1

declare dso_local i32 @dmu_tx_hold_zap(i32*, i32, i32, i32*) #1

declare dso_local i32 @zfs_fuid_txhold(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @dmu_tx_assign(i32*, i32) #1

declare dso_local i32 @dmu_tx_abort(i32*) #1

declare dso_local i32 @zfs_mknode(%struct.TYPE_23__*, i32*, i32*, i32*, i32, %struct.TYPE_23__**, %struct.TYPE_25__*) #1

declare dso_local i32 @zfs_fuid_sync(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @sa_update(i32, i32, i64*, i32, i32*) #1

declare dso_local i32 @SA_ZPL_XATTR(%struct.TYPE_24__*) #1

declare dso_local i32 @zfs_log_create(i32, i32*, i32, %struct.TYPE_23__*, %struct.TYPE_23__*, i8*, i32*, i32, i32*) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

declare dso_local i32 @getnewvnode_drop_reserve(...) #1

declare dso_local i32* @ZTOV(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
