; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dataset.c_dsl_dataset_rollback_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dataset.c_dsl_dataset_rollback_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%rollback\00", align 1
@DS_CREATE_FLAG_NODIRTY = common dso_local global i32 0, align 4
@kcred = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsl_dataset_rollback_sync(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %5, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32* @dmu_tx_pool(i32* %14)
  store i32* %15, i32** %6, align 8
  %16 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @FTAG, align 4
  %25 = call i32 @dsl_dataset_hold(i32* %20, i32 %23, i32 %24, %struct.TYPE_10__** %7)
  %26 = call i32 @VERIFY0(i32 %25)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dsl_dataset_name(i32 %29, i8* %19)
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @fnvlist_add_string(i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %19)
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @DS_CREATE_FLAG_NODIRTY, align 4
  %42 = load i32, i32* @kcred, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @dsl_dataset_create_sync(i32 %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %41, i32 %42, i32* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @FTAG, align 4
  %48 = call i32 @dsl_dataset_hold_obj(i32* %45, i32 %46, i32 %47, %struct.TYPE_10__** %8)
  %49 = call i32 @VERIFY0(i32 %48)
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @dsl_dataset_clone_swap_sync_impl(%struct.TYPE_10__* %50, %struct.TYPE_10__* %51, i32* %52)
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @dsl_dataset_zero_zil(%struct.TYPE_10__* %54, i32* %55)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @dsl_destroy_head_sync_impl(%struct.TYPE_10__* %57, i32* %58)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %61 = load i32, i32* @FTAG, align 4
  %62 = call i32 @dsl_dataset_rele(%struct.TYPE_10__* %60, i32 %61)
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %64 = load i32, i32* @FTAG, align 4
  %65 = call i32 @dsl_dataset_rele(%struct.TYPE_10__* %63, i32 %64)
  %66 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %66)
  ret void
}

declare dso_local i32* @dmu_tx_pool(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dsl_dataset_hold(i32*, i32, i32, %struct.TYPE_10__**) #1

declare dso_local i32 @dsl_dataset_name(i32, i8*) #1

declare dso_local i32 @fnvlist_add_string(i32, i8*, i8*) #1

declare dso_local i32 @dsl_dataset_create_sync(i32, i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @dsl_dataset_hold_obj(i32*, i32, i32, %struct.TYPE_10__**) #1

declare dso_local i32 @dsl_dataset_clone_swap_sync_impl(%struct.TYPE_10__*, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @dsl_dataset_zero_zil(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @dsl_destroy_head_sync_impl(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_10__*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
