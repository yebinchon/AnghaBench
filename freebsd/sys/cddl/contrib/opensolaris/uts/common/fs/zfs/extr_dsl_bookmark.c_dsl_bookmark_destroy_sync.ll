; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_bookmark.c_dsl_bookmark_destroy_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_bookmark.c_dsl_bookmark_destroy_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32* }
%struct.TYPE_11__ = type { i32, i64, i32 }

@FTAG = common dso_local global i32 0, align 4
@SPA_FEATURE_BOOKMARKS = common dso_local global i32 0, align 4
@DS_FIELD_BOOKMARK_NAMES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"remove bookmark\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"name=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @dsl_bookmark_destroy_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsl_bookmark_destroy_sync(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %5, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call %struct.TYPE_10__* @dmu_tx_pool(i32* %14)
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %6, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %7, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32* @nvlist_next_nvpair(i32 %21, i32* null)
  store i32* %22, i32** %8, align 8
  br label %23

23:                                               ; preds = %83, %2
  %24 = load i32*, i32** %8, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %89

26:                                               ; preds = %23
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @nvpair_name(i32* %28)
  %30 = load i32, i32* @FTAG, align 4
  %31 = call i32 @dsl_bookmark_hold_ds(%struct.TYPE_10__* %27, i32 %29, %struct.TYPE_11__** %9, i32 %30, i8** %10)
  %32 = call i32 @VERIFY0(i32 %31)
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @dsl_dataset_bookmark_remove(%struct.TYPE_11__* %33, i8* %34, i32* %35)
  %37 = call i32 @VERIFY0(i32 %36)
  %38 = load i32*, i32** %7, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @zap_count(i32* %38, i64 %41, i64* %11)
  %43 = call i32 @VERIFY0(i32 %42)
  %44 = load i64, i64* %11, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %75

46:                                               ; preds = %26
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @dmu_buf_will_dirty(i32 %49, i32* %50)
  %52 = load i32*, i32** %7, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @zap_destroy(i32* %52, i64 %55, i32* %56)
  %58 = call i32 @VERIFY0(i32 %57)
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @SPA_FEATURE_BOOKMARKS, align 4
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @spa_feature_decr(i32 %63, i32 %64, i32* %65)
  %67 = load i32*, i32** %7, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @DS_FIELD_BOOKMARK_NAMES, align 4
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @zap_remove(i32* %67, i32 %70, i32 %71, i32* %72)
  %74 = call i32 @VERIFY0(i32 %73)
  br label %75

75:                                               ; preds = %46, %26
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = call i32 @spa_history_log_internal_ds(%struct.TYPE_11__* %76, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %78)
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %81 = load i32, i32* @FTAG, align 4
  %82 = call i32 @dsl_dataset_rele(%struct.TYPE_11__* %80, i32 %81)
  br label %83

83:                                               ; preds = %75
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %8, align 8
  %88 = call i32* @nvlist_next_nvpair(i32 %86, i32* %87)
  store i32* %88, i32** %8, align 8
  br label %23

89:                                               ; preds = %23
  ret void
}

declare dso_local %struct.TYPE_10__* @dmu_tx_pool(i32*) #1

declare dso_local i32* @nvlist_next_nvpair(i32, i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dsl_bookmark_hold_ds(%struct.TYPE_10__*, i32, %struct.TYPE_11__**, i32, i8**) #1

declare dso_local i32 @nvpair_name(i32*) #1

declare dso_local i32 @dsl_dataset_bookmark_remove(%struct.TYPE_11__*, i8*, i32*) #1

declare dso_local i32 @zap_count(i32*, i64, i64*) #1

declare dso_local i32 @dmu_buf_will_dirty(i32, i32*) #1

declare dso_local i32 @zap_destroy(i32*, i64, i32*) #1

declare dso_local i32 @spa_feature_decr(i32, i32, i32*) #1

declare dso_local i32 @zap_remove(i32*, i32, i32, i32*) #1

declare dso_local i32 @spa_history_log_internal_ds(%struct.TYPE_11__*, i8*, i32*, i8*, i8*) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
