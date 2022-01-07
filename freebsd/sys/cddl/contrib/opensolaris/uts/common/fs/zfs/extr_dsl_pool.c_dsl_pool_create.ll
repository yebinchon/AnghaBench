; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_pool.c_dsl_pool_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_pool.c_dsl_pool_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32*, i32*, i8*, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32 }

@RW_WRITER = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@DMU_OST_META = common dso_local global i32 0, align 4
@DMU_POOL_DIRECTORY_OBJECT = common dso_local global i32 0, align 4
@DMU_OT_OBJECT_DIRECTORY = common dso_local global i32 0, align 4
@DMU_OT_NONE = common dso_local global i32 0, align 4
@MOS_DIR_NAME = common dso_local global i32* null, align 8
@SPA_VERSION_DEADLISTS = common dso_local global i64 0, align 8
@FREE_DIR_NAME = common dso_local global i32* null, align 8
@SPA_OLD_MAXBLOCKSIZE = common dso_local global i32 0, align 4
@DMU_POOL_FREE_BPOBJ = common dso_local global i32 0, align 4
@SPA_VERSION_DSL_SCRUB = common dso_local global i64 0, align 8
@DMU_OST_ZFS = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@kcred = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @dsl_pool_create(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.TYPE_17__* @dsl_pool_open_impl(i32* %12, i32 %13)
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %8, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32* @dmu_tx_create_assigned(%struct.TYPE_17__* %15, i32 %16)
  store i32* %17, i32** %9, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load i32, i32* @RW_WRITER, align 4
  %21 = load i32, i32* @FTAG, align 4
  %22 = call i32 @rrw_enter(i32* %19, i32 %20, i32 %21)
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 8
  %26 = load i32, i32* @DMU_OST_META, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = call i8* @dmu_objset_create_impl(i32* %23, %struct.TYPE_18__* null, i32* %25, i32 %26, i32* %27)
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 3
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* @DMU_POOL_DIRECTORY_OBJECT, align 4
  %35 = load i32, i32* @DMU_OT_OBJECT_DIRECTORY, align 4
  %36 = load i32, i32* @DMU_OT_NONE, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @zap_create_claim(i8* %33, i32 %34, i32 %35, i32 %36, i32 0, i32* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @ASSERT0(i32 %39)
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @dsl_scan_init(%struct.TYPE_17__* %41, i32 %42)
  %44 = call i32 @VERIFY0(i32 %43)
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @dsl_dir_create_sync(%struct.TYPE_17__* %45, i32* null, i32* null, i32* %46)
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 7
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 2
  %57 = call i32 @dsl_dir_hold_obj(%struct.TYPE_17__* %50, i32 %53, i32* null, %struct.TYPE_17__* %54, i32** %56)
  %58 = call i32 @VERIFY0(i32 %57)
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32*, i32** @MOS_DIR_NAME, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = call i32 @dsl_dir_create_sync(%struct.TYPE_17__* %59, i32* %62, i32* %63, i32* %64)
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %67 = load i32*, i32** @MOS_DIR_NAME, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 6
  %70 = call i32 @dsl_pool_open_special_dir(%struct.TYPE_17__* %66, i32* %67, i32* %69)
  %71 = call i32 @VERIFY0(i32 %70)
  %72 = load i32*, i32** %4, align 8
  %73 = call i64 @spa_version(i32* %72)
  %74 = load i64, i64* @SPA_VERSION_DEADLISTS, align 8
  %75 = icmp sge i64 %73, %74
  br i1 %75, label %76, label %114

76:                                               ; preds = %3
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i32*, i32** @FREE_DIR_NAME, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = call i32 @dsl_dir_create_sync(%struct.TYPE_17__* %77, i32* %80, i32* %81, i32* %82)
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %85 = load i32*, i32** @FREE_DIR_NAME, align 8
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 5
  %88 = call i32 @dsl_pool_open_special_dir(%struct.TYPE_17__* %84, i32* %85, i32* %87)
  %89 = call i32 @VERIFY0(i32 %88)
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 3
  %92 = load i8*, i8** %91, align 8
  %93 = load i32, i32* @SPA_OLD_MAXBLOCKSIZE, align 4
  %94 = load i32*, i32** %9, align 8
  %95 = call i32 @bpobj_alloc(i8* %92, i32 %93, i32* %94)
  store i32 %95, i32* %11, align 4
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 3
  %98 = load i8*, i8** %97, align 8
  %99 = load i32, i32* @DMU_POOL_DIRECTORY_OBJECT, align 4
  %100 = load i32, i32* @DMU_POOL_FREE_BPOBJ, align 4
  %101 = load i32*, i32** %9, align 8
  %102 = call i64 @zap_add(i8* %98, i32 %99, i32 %100, i32 4, i32 1, i32* %11, i32* %101)
  %103 = icmp eq i64 %102, 0
  %104 = zext i1 %103 to i32
  %105 = call i32 @VERIFY(i32 %104)
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 4
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 3
  %110 = load i8*, i8** %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @bpobj_open(i32* %107, i8* %110, i32 %111)
  %113 = call i32 @VERIFY0(i32 %112)
  br label %114

114:                                              ; preds = %76, %3
  %115 = load i32*, i32** %4, align 8
  %116 = call i64 @spa_version(i32* %115)
  %117 = load i64, i64* @SPA_VERSION_DSL_SCRUB, align 8
  %118 = icmp sge i64 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %121 = load i32*, i32** %9, align 8
  %122 = call i32 @dsl_pool_create_origin(%struct.TYPE_17__* %120, i32* %121)
  br label %123

123:                                              ; preds = %119, %114
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = load i32*, i32** %9, align 8
  %128 = call i32 @dsl_dataset_create_sync_dd(i32* %126, i32* null, i32 0, i32* %127)
  store i32 %128, i32* %11, align 4
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* @FTAG, align 4
  %132 = call i32 @dsl_dataset_hold_obj(%struct.TYPE_17__* %129, i32 %130, i32 %131, %struct.TYPE_18__** %10)
  %133 = call i32 @VERIFY0(i32 %132)
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %135 = load i32, i32* @FTAG, align 4
  %136 = call i32 @dsl_dataset_rele(%struct.TYPE_18__* %134, i32 %135)
  %137 = load i32*, i32** %9, align 8
  %138 = call i32 @dmu_tx_commit(i32* %137)
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 0
  %141 = load i32, i32* @FTAG, align 4
  %142 = call i32 @rrw_exit(i32* %140, i32 %141)
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  ret %struct.TYPE_17__* %143
}

declare dso_local %struct.TYPE_17__* @dsl_pool_open_impl(i32*, i32) #1

declare dso_local i32* @dmu_tx_create_assigned(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @rrw_enter(i32*, i32, i32) #1

declare dso_local i8* @dmu_objset_create_impl(i32*, %struct.TYPE_18__*, i32*, i32, i32*) #1

declare dso_local i32 @zap_create_claim(i8*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ASSERT0(i32) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dsl_scan_init(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @dsl_dir_create_sync(%struct.TYPE_17__*, i32*, i32*, i32*) #1

declare dso_local i32 @dsl_dir_hold_obj(%struct.TYPE_17__*, i32, i32*, %struct.TYPE_17__*, i32**) #1

declare dso_local i32 @dsl_pool_open_special_dir(%struct.TYPE_17__*, i32*, i32*) #1

declare dso_local i64 @spa_version(i32*) #1

declare dso_local i32 @bpobj_alloc(i8*, i32, i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @zap_add(i8*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @bpobj_open(i32*, i8*, i32) #1

declare dso_local i32 @dsl_pool_create_origin(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @dsl_dataset_create_sync_dd(i32*, i32*, i32, i32*) #1

declare dso_local i32 @dsl_dataset_hold_obj(%struct.TYPE_17__*, i32, i32, %struct.TYPE_18__**) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

declare dso_local i32 @rrw_exit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
