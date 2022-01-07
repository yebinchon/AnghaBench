; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dataset.c_dsl_dataset_snapshot_check_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dataset.c_dsl_dataset_snapshot_check_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i64 }

@EAGAIN = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ZFS_PROP_SNAPSHOT_LIMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsl_dataset_snapshot_check_impl(%struct.TYPE_12__* %0, i8* %1, %struct.TYPE_13__* %2, i32 %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %22 = call i32 @dmu_tx_is_syncing(%struct.TYPE_13__* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %90

25:                                               ; preds = %6
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %27 = call %struct.TYPE_14__* @dsl_dataset_phys(%struct.TYPE_12__* %26)
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sge i64 %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @EAGAIN, align 4
  %36 = call i32 @SET_ERROR(i32 %35)
  store i32 %36, i32* %7, align 4
  br label %90

37:                                               ; preds = %25
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @dsl_dataset_snap_lookup(%struct.TYPE_12__* %38, i8* %39, i64* %15)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @EEXIST, align 4
  %45 = call i32 @SET_ERROR(i32 %44)
  store i32 %45, i32* %7, align 4
  br label %90

46:                                               ; preds = %37
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* @ENOENT, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* %14, align 4
  store i32 %51, i32* %7, align 4
  br label %90

52:                                               ; preds = %46
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %52
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %57 = call i64 @DS_IS_INCONSISTENT(%struct.TYPE_12__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* @EBUSY, align 4
  %61 = call i32 @SET_ERROR(i32 %60)
  store i32 %61, i32* %7, align 4
  br label %90

62:                                               ; preds = %55, %52
  %63 = load i64, i64* %12, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %62
  %66 = load i32*, i32** %13, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %81

68:                                               ; preds = %65
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load i32, i32* @ZFS_PROP_SNAPSHOT_LIMIT, align 4
  %74 = load i32*, i32** %13, align 8
  %75 = call i32 @dsl_fs_ss_limit_check(i32 %71, i64 %72, i32 %73, i32* null, i32* %74)
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %68
  %79 = load i32, i32* %14, align 4
  store i32 %79, i32* %7, align 4
  br label %90

80:                                               ; preds = %68
  br label %81

81:                                               ; preds = %80, %65, %62
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %84 = call i32 @dsl_dataset_snapshot_reserve_space(%struct.TYPE_12__* %82, %struct.TYPE_13__* %83)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %81
  %88 = load i32, i32* %14, align 4
  store i32 %88, i32* %7, align 4
  br label %90

89:                                               ; preds = %81
  store i32 0, i32* %7, align 4
  br label %90

90:                                               ; preds = %89, %87, %78, %59, %50, %43, %34, %24
  %91 = load i32, i32* %7, align 4
  ret i32 %91
}

declare dso_local i32 @dmu_tx_is_syncing(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_14__* @dsl_dataset_phys(%struct.TYPE_12__*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @dsl_dataset_snap_lookup(%struct.TYPE_12__*, i8*, i64*) #1

declare dso_local i64 @DS_IS_INCONSISTENT(%struct.TYPE_12__*) #1

declare dso_local i32 @dsl_fs_ss_limit_check(i32, i64, i32, i32*, i32*) #1

declare dso_local i32 @dsl_dataset_snapshot_reserve_space(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
