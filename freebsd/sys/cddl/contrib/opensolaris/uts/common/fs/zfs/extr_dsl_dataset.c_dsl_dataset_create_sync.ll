; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dataset.c_dsl_dataset_create_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dataset.c_dsl_dataset_create_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32*, i32 }

@FTAG = common dso_local global i32 0, align 4
@DS_CREATE_FLAG_NODIRTY = common dso_local global i32 0, align 4
@SPA_FEATURE_FS_SS_LIMIT = common dso_local global i32 0, align 4
@DD_FIELD_FILESYSTEM_COUNT = common dso_local global i32 0, align 4
@DD_FIELD_SNAPSHOT_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsl_dataset_create_sync(%struct.TYPE_14__* %0, i8* %1, i32* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %13, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = call i32 @dmu_tx_is_syncing(i32* %23)
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 64
  %31 = zext i1 %30 to i32
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = call i32 @dsl_dir_create_sync(%struct.TYPE_13__* %33, %struct.TYPE_14__* %34, i8* %35, i32* %36)
  store i32 %37, i32* %15, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %39 = load i32, i32* %15, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* @FTAG, align 4
  %42 = call i32 @dsl_dir_hold_obj(%struct.TYPE_13__* %38, i32 %39, i8* %40, i32 %41, %struct.TYPE_14__** %16)
  %43 = call i32 @VERIFY0(i32 %42)
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @DS_CREATE_FLAG_NODIRTY, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  %50 = load i32*, i32** %12, align 8
  %51 = call i32 @dsl_dataset_create_sync_dd(%struct.TYPE_14__* %44, i32* %45, i32 %49, i32* %50)
  store i32 %51, i32* %14, align 4
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @dsl_deleg_set_create_perms(%struct.TYPE_14__* %52, i32* %53, i32* %54)
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @SPA_FEATURE_FS_SS_LIMIT, align 4
  %60 = call i64 @spa_feature_is_active(i32 %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %87

62:                                               ; preds = %6
  store i32 0, i32* %17, align 4
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** %18, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %69 = load i32*, i32** %12, align 8
  %70 = call i32 @dsl_dir_zapify(%struct.TYPE_14__* %68, i32* %69)
  %71 = load i32*, i32** %18, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @DD_FIELD_FILESYSTEM_COUNT, align 4
  %76 = load i32*, i32** %12, align 8
  %77 = call i32 @zap_add(i32* %71, i32 %74, i32 %75, i32 4, i32 1, i32* %17, i32* %76)
  %78 = call i32 @VERIFY0(i32 %77)
  %79 = load i32*, i32** %18, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @DD_FIELD_SNAPSHOT_COUNT, align 4
  %84 = load i32*, i32** %12, align 8
  %85 = call i32 @zap_add(i32* %79, i32 %82, i32 %83, i32 4, i32 1, i32* %17, i32* %84)
  %86 = call i32 @VERIFY0(i32 %85)
  br label %87

87:                                               ; preds = %62, %6
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %89 = load i32, i32* @FTAG, align 4
  %90 = call i32 @dsl_dir_rele(%struct.TYPE_14__* %88, i32 %89)
  %91 = load i32*, i32** %9, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %110

93:                                               ; preds = %87
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @DS_CREATE_FLAG_NODIRTY, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %110, label %98

98:                                               ; preds = %93
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* @FTAG, align 4
  %102 = call i32 @dsl_dataset_hold_obj(%struct.TYPE_13__* %99, i32 %100, i32 %101, i32** %19)
  %103 = call i32 @VERIFY0(i32 %102)
  %104 = load i32*, i32** %19, align 8
  %105 = load i32*, i32** %12, align 8
  %106 = call i32 @dsl_dataset_zero_zil(i32* %104, i32* %105)
  %107 = load i32*, i32** %19, align 8
  %108 = load i32, i32* @FTAG, align 4
  %109 = call i32 @dsl_dataset_rele(i32* %107, i32 %108)
  br label %110

110:                                              ; preds = %98, %93, %87
  %111 = load i32, i32* %14, align 4
  ret i32 %111
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dmu_tx_is_syncing(i32*) #1

declare dso_local i32 @dsl_dir_create_sync(%struct.TYPE_13__*, %struct.TYPE_14__*, i8*, i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dsl_dir_hold_obj(%struct.TYPE_13__*, i32, i8*, i32, %struct.TYPE_14__**) #1

declare dso_local i32 @dsl_dataset_create_sync_dd(%struct.TYPE_14__*, i32*, i32, i32*) #1

declare dso_local i32 @dsl_deleg_set_create_perms(%struct.TYPE_14__*, i32*, i32*) #1

declare dso_local i64 @spa_feature_is_active(i32, i32) #1

declare dso_local i32 @dsl_dir_zapify(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @zap_add(i32*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @dsl_dir_rele(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @dsl_dataset_hold_obj(%struct.TYPE_13__*, i32, i32, i32**) #1

declare dso_local i32 @dsl_dataset_zero_zil(i32*, i32*) #1

declare dso_local i32 @dsl_dataset_rele(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
