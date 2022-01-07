; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_objset.c_dmu_objset_remap_indirects.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_objset.c_dmu_objset_remap_indirects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }

@FTAG = common dso_local global i32 0, align 4
@SPA_FEATURE_OBSOLETE_COUNTS = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DD_FIELD_LAST_REMAP_TXG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmu_objset_remap_indirects(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  store i32* null, i32** %5, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = load i32, i32* @FTAG, align 4
  %12 = call i32 @dmu_objset_hold(i8* %10, i32 %11, i32** %5)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %108

17:                                               ; preds = %1
  %18 = load i32*, i32** %5, align 8
  %19 = call %struct.TYPE_10__* @dmu_objset_ds(i32* %18)
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %8, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @dmu_objset_spa(i32* %22)
  %24 = load i32, i32* @SPA_FEATURE_OBSOLETE_COUNTS, align 4
  %25 = call i32 @spa_feature_is_enabled(i32 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %17
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @FTAG, align 4
  %30 = call i32 @dmu_objset_rele(i32* %28, i32 %29)
  %31 = load i32, i32* @ENOTSUP, align 4
  %32 = call i32 @SET_ERROR(i32 %31)
  store i32 %32, i32* %2, align 4
  br label %108

33:                                               ; preds = %17
  %34 = load i32*, i32** %5, align 8
  %35 = call %struct.TYPE_10__* @dmu_objset_ds(i32* %34)
  %36 = call i64 @dsl_dataset_is_snapshot(%struct.TYPE_10__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* @FTAG, align 4
  %41 = call i32 @dmu_objset_rele(i32* %39, i32 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = call i32 @SET_ERROR(i32 %42)
  store i32 %43, i32* %2, align 4
  br label %108

44:                                               ; preds = %33
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @dmu_objset_spa(i32* %45)
  %47 = call i64 @spa_get_last_removal_txg(i32 %46)
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* %6, align 8
  %49 = icmp eq i64 %48, -1
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* @FTAG, align 4
  %53 = call i32 @dmu_objset_rele(i32* %51, i32 %52)
  store i32 0, i32* %2, align 4
  br label %108

54:                                               ; preds = %44
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %56 = call i64 @dsl_dir_is_zapified(%struct.TYPE_9__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %54
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @dmu_objset_spa(i32* %59)
  %61 = call i32 @spa_meta_objset(i32 %60)
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @DD_FIELD_LAST_REMAP_TXG, align 4
  %66 = call i64 @zap_lookup(i32 %61, i32 %64, i32 %65, i32 8, i32 1, i64* %9)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %58
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* %6, align 8
  %71 = icmp ugt i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* @FTAG, align 4
  %75 = call i32 @dmu_objset_rele(i32* %73, i32 %74)
  store i32 0, i32* %2, align 4
  br label %108

76:                                               ; preds = %68, %58
  br label %77

77:                                               ; preds = %76, %54
  %78 = load i32*, i32** %5, align 8
  %79 = call %struct.TYPE_10__* @dmu_objset_ds(i32* %78)
  %80 = load i32, i32* @FTAG, align 4
  %81 = call i32 @dsl_dataset_long_hold(%struct.TYPE_10__* %79, i32 %80)
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @dmu_objset_pool(i32* %82)
  %84 = load i32, i32* @FTAG, align 4
  %85 = call i32 @dsl_pool_rele(i32 %83, i32 %84)
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @dmu_objset_spa(i32* %86)
  %88 = call i64 @spa_last_synced_txg(i32 %87)
  store i64 %88, i64* %7, align 8
  %89 = load i32*, i32** %5, align 8
  %90 = load i64, i64* %6, align 8
  %91 = call i32 @dmu_objset_remap_indirects_impl(i32* %89, i64 %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %77
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %96 = load i64, i64* %7, align 8
  %97 = call i32 @dsl_dir_update_last_remap_txg(%struct.TYPE_9__* %95, i64 %96)
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %94, %77
  %99 = load i32*, i32** %5, align 8
  %100 = call %struct.TYPE_10__* @dmu_objset_ds(i32* %99)
  %101 = load i32, i32* @FTAG, align 4
  %102 = call i32 @dsl_dataset_long_rele(%struct.TYPE_10__* %100, i32 %101)
  %103 = load i32*, i32** %5, align 8
  %104 = call %struct.TYPE_10__* @dmu_objset_ds(i32* %103)
  %105 = load i32, i32* @FTAG, align 4
  %106 = call i32 @dsl_dataset_rele(%struct.TYPE_10__* %104, i32 %105)
  %107 = load i32, i32* %4, align 4
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %98, %72, %50, %38, %27, %15
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @dmu_objset_hold(i8*, i32, i32**) #1

declare dso_local %struct.TYPE_10__* @dmu_objset_ds(i32*) #1

declare dso_local i32 @spa_feature_is_enabled(i32, i32) #1

declare dso_local i32 @dmu_objset_spa(i32*) #1

declare dso_local i32 @dmu_objset_rele(i32*, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @dsl_dataset_is_snapshot(%struct.TYPE_10__*) #1

declare dso_local i64 @spa_get_last_removal_txg(i32) #1

declare dso_local i64 @dsl_dir_is_zapified(%struct.TYPE_9__*) #1

declare dso_local i64 @zap_lookup(i32, i32, i32, i32, i32, i64*) #1

declare dso_local i32 @spa_meta_objset(i32) #1

declare dso_local i32 @dsl_dataset_long_hold(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @dsl_pool_rele(i32, i32) #1

declare dso_local i32 @dmu_objset_pool(i32*) #1

declare dso_local i64 @spa_last_synced_txg(i32) #1

declare dso_local i32 @dmu_objset_remap_indirects_impl(i32*, i64) #1

declare dso_local i32 @dsl_dir_update_last_remap_txg(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @dsl_dataset_long_rele(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
