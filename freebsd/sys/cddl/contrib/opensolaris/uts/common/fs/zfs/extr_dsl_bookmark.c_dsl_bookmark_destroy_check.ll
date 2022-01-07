; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_bookmark.c_dsl_bookmark_destroy_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_bookmark.c_dsl_bookmark_destroy_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@SPA_FEATURE_BOOKMARKS = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @dsl_bookmark_destroy_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsl_bookmark_destroy_check(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %6, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call %struct.TYPE_5__* @dmu_tx_pool(i32* %17)
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %7, align 8
  store i32 0, i32* %8, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @nvlist_empty(i32 %21)
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @nvlist_empty(i32 %26)
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SPA_FEATURE_BOOKMARKS, align 4
  %33 = call i32 @spa_feature_is_enabled(i32 %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %101

36:                                               ; preds = %2
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32* @nvlist_next_nvpair(i32 %39, i32* null)
  store i32* %40, i32** %9, align 8
  br label %41

41:                                               ; preds = %93, %36
  %42 = load i32*, i32** %9, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %99

44:                                               ; preds = %41
  %45 = load i32*, i32** %9, align 8
  %46 = call i8* @nvpair_name(i32* %45)
  store i8* %46, i8** %10, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load i32, i32* @FTAG, align 4
  %50 = call i32 @dsl_bookmark_hold_ds(%struct.TYPE_5__* %47, i8* %48, i32** %11, i32 %49, i8** %14)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @ENOENT, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %93

55:                                               ; preds = %44
  %56 = load i32, i32* %13, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %55
  %59 = load i32*, i32** %11, align 8
  %60 = load i8*, i8** %14, align 8
  %61 = call i32 @dsl_dataset_bmark_lookup(i32* %59, i8* %60, i32* %12)
  store i32 %61, i32* %13, align 4
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* @FTAG, align 4
  %64 = call i32 @dsl_dataset_rele(i32* %62, i32 %63)
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* @ESRCH, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  br label %93

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69, %55
  %71 = load i32, i32* %13, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %70
  %74 = load i32*, i32** %5, align 8
  %75 = call i64 @dmu_tx_is_syncing(i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i8*, i8** %10, align 8
  %82 = call i32 @fnvlist_add_boolean(i32 %80, i8* %81)
  br label %83

83:                                               ; preds = %77, %73
  br label %92

84:                                               ; preds = %70
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i8*, i8** %10, align 8
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @fnvlist_add_int32(i32 %87, i8* %88, i32 %89)
  %91 = load i32, i32* %13, align 4
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %84, %83
  br label %93

93:                                               ; preds = %92, %68, %54
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %9, align 8
  %98 = call i32* @nvlist_next_nvpair(i32 %96, i32* %97)
  store i32* %98, i32** %9, align 8
  br label %41

99:                                               ; preds = %41
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %99, %35
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.TYPE_5__* @dmu_tx_pool(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @nvlist_empty(i32) #1

declare dso_local i32 @spa_feature_is_enabled(i32, i32) #1

declare dso_local i32* @nvlist_next_nvpair(i32, i32*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i32 @dsl_bookmark_hold_ds(%struct.TYPE_5__*, i8*, i32**, i32, i8**) #1

declare dso_local i32 @dsl_dataset_bmark_lookup(i32*, i8*, i32*) #1

declare dso_local i32 @dsl_dataset_rele(i32*, i32) #1

declare dso_local i64 @dmu_tx_is_syncing(i32*) #1

declare dso_local i32 @fnvlist_add_boolean(i32, i8*) #1

declare dso_local i32 @fnvlist_add_int32(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
