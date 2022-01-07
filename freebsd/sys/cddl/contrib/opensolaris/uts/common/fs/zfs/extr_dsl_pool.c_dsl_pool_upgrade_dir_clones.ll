; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_pool.c_dsl_pool_upgrade_dir_clones.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_pool.c_dsl_pool_upgrade_dir_clones.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@FREE_DIR_NAME = common dso_local global i32 0, align 4
@DMU_OT_BPOBJ = common dso_local global i32 0, align 4
@SPA_OLD_MAXBLOCKSIZE = common dso_local global i32 0, align 4
@DMU_OT_BPOBJ_HDR = common dso_local global i32 0, align 4
@DMU_POOL_DIRECTORY_OBJECT = common dso_local global i32 0, align 4
@DMU_POOL_FREE_BPOBJ = common dso_local global i32 0, align 4
@upgrade_dir_clones_cb = common dso_local global i32 0, align 4
@DS_FIND_CHILDREN = common dso_local global i32 0, align 4
@DS_FIND_SERIALIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsl_pool_upgrade_dir_clones(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i32 @dmu_tx_is_syncing(i32* %6)
  %8 = call i32 @ASSERT(i32 %7)
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @FREE_DIR_NAME, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @dsl_dir_create_sync(%struct.TYPE_6__* %9, i32 %12, i32 %13, i32* %14)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = load i32, i32* @FREE_DIR_NAME, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  %20 = call i32 @dsl_pool_open_special_dir(%struct.TYPE_6__* %16, i32 %17, i32* %19)
  %21 = call i32 @VERIFY0(i32 %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DMU_OT_BPOBJ, align 4
  %26 = load i32, i32* @SPA_OLD_MAXBLOCKSIZE, align 4
  %27 = load i32, i32* @DMU_OT_BPOBJ_HDR, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @dmu_object_alloc(i32 %24, i32 %25, i32 %26, i32 %27, i32 4, i32* %28)
  store i32 %29, i32* %5, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @DMU_POOL_DIRECTORY_OBJECT, align 4
  %34 = load i32, i32* @DMU_POOL_FREE_BPOBJ, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @zap_add(i32 %32, i32 %33, i32 %34, i32 4, i32 1, i32* %5, i32* %35)
  %37 = call i32 @VERIFY0(i32 %36)
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @bpobj_open(i32* %39, i32 %42, i32 %43)
  %45 = call i32 @VERIFY0(i32 %44)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @upgrade_dir_clones_cb, align 4
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* @DS_FIND_CHILDREN, align 4
  %53 = load i32, i32* @DS_FIND_SERIALIZE, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @dmu_objset_find_dp(%struct.TYPE_6__* %46, i32 %49, i32 %50, i32* %51, i32 %54)
  %56 = call i32 @VERIFY0(i32 %55)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dmu_tx_is_syncing(i32*) #1

declare dso_local i32 @dsl_dir_create_sync(%struct.TYPE_6__*, i32, i32, i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dsl_pool_open_special_dir(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @dmu_object_alloc(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @zap_add(i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @bpobj_open(i32*, i32, i32) #1

declare dso_local i32 @dmu_objset_find_dp(%struct.TYPE_6__*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
