; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_pool.c_dsl_pool_open_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_pool.c_dsl_pool_open_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32* }

@KM_SLEEP = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@dsl_dataset_t = common dso_local global i32 0, align 4
@ds_dirty_link = common dso_local global i32 0, align 4
@zilog_t = common dso_local global i32 0, align 4
@zl_dirty_link = common dso_local global i32 0, align 4
@dsl_dir_t = common dso_local global i32 0, align 4
@dd_dirty_link = common dso_local global i32 0, align 4
@dsl_sync_task_t = common dso_local global i32 0, align 4
@dst_node = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"dp_sync_taskq\00", align 1
@zfs_sync_taskq_batch_pct = common dso_local global i32 0, align 4
@minclsyspri = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@TASKQ_THREADS_CPU_PCT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"dp_zil_clean_taskq\00", align 1
@zfs_zil_clean_taskq_nthr_pct = common dso_local global i32 0, align 4
@zfs_zil_clean_taskq_minalloc = common dso_local global i32 0, align 4
@zfs_zil_clean_taskq_maxalloc = common dso_local global i32 0, align 4
@TASKQ_PREPOPULATE = common dso_local global i32 0, align 4
@MUTEX_DEFAULT = common dso_local global i32 0, align 4
@CV_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"zfs_vn_rele_taskq\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i32*, i32)* @dsl_pool_open_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @dsl_pool_open_impl(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = call i32* @spa_get_rootblkptr(i32* %7)
  store i32* %8, i32** %6, align 8
  %9 = load i32, i32* @KM_SLEEP, align 4
  %10 = call %struct.TYPE_5__* @kmem_zalloc(i32 72, i32 %9)
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %5, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 12
  store i32* %11, i32** %13, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 11
  store i32 %15, i32* %17, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 10
  %20 = load i32, i32* @B_TRUE, align 4
  %21 = call i32 @rrw_init(i32* %19, i32 %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @txg_init(%struct.TYPE_5__* %22, i32 %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 9
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* @dsl_dataset_t, align 4
  %29 = load i32, i32* @ds_dirty_link, align 4
  %30 = call i32 @offsetof(i32 %28, i32 %29)
  %31 = call i32 @txg_list_create(i32* %26, i32* %27, i32 %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 8
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* @zilog_t, align 4
  %36 = load i32, i32* @zl_dirty_link, align 4
  %37 = call i32 @offsetof(i32 %35, i32 %36)
  %38 = call i32 @txg_list_create(i32* %33, i32* %34, i32 %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 7
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* @dsl_dir_t, align 4
  %43 = load i32, i32* @dd_dirty_link, align 4
  %44 = call i32 @offsetof(i32 %42, i32 %43)
  %45 = call i32 @txg_list_create(i32* %40, i32* %41, i32 %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 6
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* @dsl_sync_task_t, align 4
  %50 = load i32, i32* @dst_node, align 4
  %51 = call i32 @offsetof(i32 %49, i32 %50)
  %52 = call i32 @txg_list_create(i32* %47, i32* %48, i32 %51)
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 5
  %55 = load i32*, i32** %3, align 8
  %56 = load i32, i32* @dsl_sync_task_t, align 4
  %57 = load i32, i32* @dst_node, align 4
  %58 = call i32 @offsetof(i32 %56, i32 %57)
  %59 = call i32 @txg_list_create(i32* %54, i32* %55, i32 %58)
  %60 = load i32, i32* @zfs_sync_taskq_batch_pct, align 4
  %61 = load i32, i32* @minclsyspri, align 4
  %62 = load i32, i32* @INT_MAX, align 4
  %63 = load i32, i32* @TASKQ_THREADS_CPU_PCT, align 4
  %64 = call i8* @taskq_create(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61, i32 1, i32 %62, i32 %63)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 4
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* @zfs_zil_clean_taskq_nthr_pct, align 4
  %68 = load i32, i32* @minclsyspri, align 4
  %69 = load i32, i32* @zfs_zil_clean_taskq_minalloc, align 4
  %70 = load i32, i32* @zfs_zil_clean_taskq_maxalloc, align 4
  %71 = load i32, i32* @TASKQ_PREPOPULATE, align 4
  %72 = load i32, i32* @TASKQ_THREADS_CPU_PCT, align 4
  %73 = or i32 %71, %72
  %74 = call i8* @taskq_create(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %68, i32 %69, i32 %70, i32 %73)
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 3
  store i8* %74, i8** %76, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load i32, i32* @MUTEX_DEFAULT, align 4
  %80 = call i32 @mutex_init(i32* %78, i32* null, i32 %79, i32* null)
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* @CV_DEFAULT, align 4
  %84 = call i32 @cv_init(i32* %82, i32* null, i32 %83, i32* null)
  %85 = load i32, i32* @minclsyspri, align 4
  %86 = call i8* @taskq_create(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 1, i32 %85, i32 1, i32 4, i32 0)
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  store i8* %86, i8** %88, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  ret %struct.TYPE_5__* %89
}

declare dso_local i32* @spa_get_rootblkptr(i32*) #1

declare dso_local %struct.TYPE_5__* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @rrw_init(i32*, i32) #1

declare dso_local i32 @txg_init(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @txg_list_create(i32*, i32*, i32) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i8* @taskq_create(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_init(i32*, i32*, i32, i32*) #1

declare dso_local i32 @cv_init(i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
