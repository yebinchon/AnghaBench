; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dataset.c_dsl_dataset_rename_snapshot_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dataset.c_dsl_dataset_rename_snapshot_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@FTAG = common dso_local global i32 0, align 4
@DS_FIND_CHILDREN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @dsl_dataset_rename_snapshot_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsl_dataset_rename_snapshot_check(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %6, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32* @dmu_tx_pool(i32* %12)
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @FTAG, align 4
  %19 = call i32 @dsl_dataset_hold(i32* %14, i32 %17, i32 %18, %struct.TYPE_12__** %8)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %3, align 4
  br label %49

24:                                               ; preds = %2
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load i32*, i32** %7, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %37 = load i32, i32* @DS_FIND_CHILDREN, align 4
  %38 = call i32 @dmu_objset_find_dp(i32* %30, i32 %35, i32 (i32*, %struct.TYPE_12__*, %struct.TYPE_13__*)* @dsl_dataset_rename_snapshot_check_impl, %struct.TYPE_13__* %36, i32 %37)
  store i32 %38, i32* %9, align 4
  br label %44

39:                                               ; preds = %24
  %40 = load i32*, i32** %7, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %43 = call i32 @dsl_dataset_rename_snapshot_check_impl(i32* %40, %struct.TYPE_12__* %41, %struct.TYPE_13__* %42)
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %39, %29
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %46 = load i32, i32* @FTAG, align 4
  %47 = call i32 @dsl_dataset_rele(%struct.TYPE_12__* %45, i32 %46)
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %44, %22
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32* @dmu_tx_pool(i32*) #1

declare dso_local i32 @dsl_dataset_hold(i32*, i32, i32, %struct.TYPE_12__**) #1

declare dso_local i32 @dmu_objset_find_dp(i32*, i32, i32 (i32*, %struct.TYPE_12__*, %struct.TYPE_13__*)*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @dsl_dataset_rename_snapshot_check_impl(i32*, %struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
