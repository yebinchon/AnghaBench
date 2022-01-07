; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_deleg.c_dsl_deleg_set_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_deleg.c_dsl_deleg_set_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_14__ = type { i64 }

@FTAG = common dso_local global i32 0, align 4
@DMU_OT_DSL_PERMS = common dso_local global i32 0, align 4
@DMU_OT_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"permission update\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @dsl_deleg_set_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsl_deleg_set_sync(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %5, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call %struct.TYPE_11__* @dmu_tx_pool(i32* %19)
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %7, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @FTAG, align 4
  %29 = call i32 @dsl_dir_hold(%struct.TYPE_11__* %24, i32 %27, i32 %28, %struct.TYPE_12__** %6, i32* null)
  %30 = call i32 @VERIFY0(i32 %29)
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %32 = call %struct.TYPE_14__* @dsl_dir_phys(%struct.TYPE_12__* %31)
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %2
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @dmu_buf_will_dirty(i32 %40, i32* %41)
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* @DMU_OT_DSL_PERMS, align 4
  %45 = load i32, i32* @DMU_OT_NONE, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = call i64 @zap_create(i32* %43, i32 %44, i32 %45, i32 0, i32* %46)
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %49 = call %struct.TYPE_14__* @dsl_dir_phys(%struct.TYPE_12__* %48)
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  store i64 %47, i64* %50, align 8
  store i64 %47, i64* %10, align 8
  br label %51

51:                                               ; preds = %37, %2
  br label %52

52:                                               ; preds = %98, %51
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = call i32* @nvlist_next_nvpair(i32* %55, i32* %56)
  store i32* %57, i32** %9, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %99

59:                                               ; preds = %52
  %60 = load i32*, i32** %9, align 8
  %61 = call i8* @nvpair_name(i32* %60)
  store i8* %61, i8** %11, align 8
  store i32* null, i32** %13, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = call i32* @fnvpair_value_nvlist(i32* %62)
  store i32* %63, i32** %12, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = call i64 @zap_lookup(i32* %64, i64 %65, i8* %66, i32 8, i32 1, i64* %14)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %59
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* @DMU_OT_DSL_PERMS, align 4
  %72 = load i64, i64* %10, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = load i32*, i32** %4, align 8
  %75 = call i64 @zap_create_link(i32* %70, i32 %71, i64 %72, i8* %73, i32* %74)
  store i64 %75, i64* %14, align 8
  br label %76

76:                                               ; preds = %69, %59
  br label %77

77:                                               ; preds = %82, %76
  %78 = load i32*, i32** %12, align 8
  %79 = load i32*, i32** %13, align 8
  %80 = call i32* @nvlist_next_nvpair(i32* %78, i32* %79)
  store i32* %80, i32** %13, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %98

82:                                               ; preds = %77
  %83 = load i32*, i32** %13, align 8
  %84 = call i8* @nvpair_name(i32* %83)
  store i8* %84, i8** %15, align 8
  store i64 0, i64* %16, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = load i64, i64* %14, align 8
  %87 = load i8*, i8** %15, align 8
  %88 = load i32*, i32** %4, align 8
  %89 = call i64 @zap_update(i32* %85, i64 %86, i8* %87, i32 8, i32 1, i64* %16, i32* %88)
  %90 = icmp eq i64 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i32 @VERIFY(i32 %91)
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %94 = load i32*, i32** %4, align 8
  %95 = load i8*, i8** %11, align 8
  %96 = load i8*, i8** %15, align 8
  %97 = call i32 @spa_history_log_internal_dd(%struct.TYPE_12__* %93, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %95, i8* %96)
  br label %77

98:                                               ; preds = %77
  br label %52

99:                                               ; preds = %52
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %101 = load i32, i32* @FTAG, align 4
  %102 = call i32 @dsl_dir_rele(%struct.TYPE_12__* %100, i32 %101)
  ret void
}

declare dso_local %struct.TYPE_11__* @dmu_tx_pool(i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dsl_dir_hold(%struct.TYPE_11__*, i32, i32, %struct.TYPE_12__**, i32*) #1

declare dso_local %struct.TYPE_14__* @dsl_dir_phys(%struct.TYPE_12__*) #1

declare dso_local i32 @dmu_buf_will_dirty(i32, i32*) #1

declare dso_local i64 @zap_create(i32*, i32, i32, i32, i32*) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i32* @fnvpair_value_nvlist(i32*) #1

declare dso_local i64 @zap_lookup(i32*, i64, i8*, i32, i32, i64*) #1

declare dso_local i64 @zap_create_link(i32*, i32, i64, i8*, i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @zap_update(i32*, i64, i8*, i32, i32, i64*, i32*) #1

declare dso_local i32 @spa_history_log_internal_dd(%struct.TYPE_12__*, i8*, i32*, i8*, i8*, i8*) #1

declare dso_local i32 @dsl_dir_rele(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
