; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dataset.c_dsl_dataset_rename_snapshot_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dataset.c_dsl_dataset_rename_snapshot_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@FTAG = common dso_local global i32 0, align 4
@DS_FIND_CHILDREN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @dsl_dataset_rename_snapshot_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsl_dataset_rename_snapshot_sync(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %9, %struct.TYPE_13__** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32* @dmu_tx_pool(i32* %10)
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @FTAG, align 4
  %17 = call i32 @dsl_dataset_hold(i32* %12, i32 %15, i32 %16, %struct.TYPE_12__** %7)
  %18 = call i32 @VERIFY0(i32 %17)
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  store i32* %19, i32** %21, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %2
  %27 = load i32*, i32** %6, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %34 = load i32, i32* @DS_FIND_CHILDREN, align 4
  %35 = call i32 @dmu_objset_find_dp(i32* %27, i32 %32, i32 (i32*, %struct.TYPE_12__*, %struct.TYPE_13__*)* @dsl_dataset_rename_snapshot_sync_impl, %struct.TYPE_13__* %33, i32 %34)
  %36 = call i32 @VERIFY0(i32 %35)
  br label %43

37:                                               ; preds = %2
  %38 = load i32*, i32** %6, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %41 = call i32 @dsl_dataset_rename_snapshot_sync_impl(i32* %38, %struct.TYPE_12__* %39, %struct.TYPE_13__* %40)
  %42 = call i32 @VERIFY0(i32 %41)
  br label %43

43:                                               ; preds = %37, %26
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %45 = load i32, i32* @FTAG, align 4
  %46 = call i32 @dsl_dataset_rele(%struct.TYPE_12__* %44, i32 %45)
  ret void
}

declare dso_local i32* @dmu_tx_pool(i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dsl_dataset_hold(i32*, i32, i32, %struct.TYPE_12__**) #1

declare dso_local i32 @dmu_objset_find_dp(i32*, i32, i32 (i32*, %struct.TYPE_12__*, %struct.TYPE_13__*)*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @dsl_dataset_rename_snapshot_sync_impl(i32*, %struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
