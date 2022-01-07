; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_bookmark.c_dsl_bookmark_rename_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_bookmark.c_dsl_bookmark_rename_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64 }

@SPA_FEATURE_BOOKMARKS = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @dsl_bookmark_rename_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsl_bookmark_rename_check(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %6, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call %struct.TYPE_9__* @dmu_tx_pool(i32* %13)
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %7, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SPA_FEATURE_BOOKMARKS, align 4
  %19 = call i32 @spa_feature_is_enabled(i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOTSUP, align 4
  %23 = call i32 @SET_ERROR(i32 %22)
  store i32 %23, i32* %3, align 4
  br label %105

24:                                               ; preds = %2
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @zfs_component_namecheck(i32 %27, i32* null, i32* null)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = call i32 @SET_ERROR(i32 %31)
  store i32 %32, i32* %3, align 4
  br label %105

33:                                               ; preds = %24
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @strlen(i32 %36)
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @strlen(i32 %40)
  %42 = add nsw i64 %37, %41
  %43 = add nsw i64 %42, 1
  %44 = load i64, i64* @ZFS_MAX_DATASET_NAME_LEN, align 8
  %45 = icmp sge i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %33
  %47 = load i32, i32* @ENAMETOOLONG, align 4
  %48 = call i32 @SET_ERROR(i32 %47)
  store i32 %48, i32* %3, align 4
  br label %105

49:                                               ; preds = %33
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @FTAG, align 4
  %55 = call i32 @dsl_dataset_hold(%struct.TYPE_9__* %50, i32 %53, i32 %54, %struct.TYPE_10__** %8)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %3, align 4
  br label %105

60:                                               ; preds = %49
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %67 = load i32, i32* @FTAG, align 4
  %68 = call i32 @dsl_dataset_rele(%struct.TYPE_10__* %66, i32 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = call i32 @SET_ERROR(i32 %69)
  store i32 %70, i32* %3, align 4
  br label %105

71:                                               ; preds = %60
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @dsl_dataset_bmark_lookup(%struct.TYPE_10__* %72, i32 %75, i32* %9)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %71
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %81 = load i32, i32* @FTAG, align 4
  %82 = call i32 @dsl_dataset_rele(%struct.TYPE_10__* %80, i32 %81)
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %3, align 4
  br label %105

84:                                               ; preds = %71
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @dsl_dataset_bmark_lookup(%struct.TYPE_10__* %85, i32 %88, i32* %9)
  store i32 %89, i32* %10, align 4
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %91 = load i32, i32* @FTAG, align 4
  %92 = call i32 @dsl_dataset_rele(%struct.TYPE_10__* %90, i32 %91)
  %93 = load i32, i32* %10, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %84
  %96 = load i32, i32* @EEXIST, align 4
  %97 = call i32 @SET_ERROR(i32 %96)
  store i32 %97, i32* %3, align 4
  br label %105

98:                                               ; preds = %84
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* @ESRCH, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %3, align 4
  br label %105

104:                                              ; preds = %98
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %104, %102, %95, %79, %65, %58, %46, %30, %21
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.TYPE_9__* @dmu_tx_pool(i32*) #1

declare dso_local i32 @spa_feature_is_enabled(i32, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @zfs_component_namecheck(i32, i32*, i32*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @dsl_dataset_hold(%struct.TYPE_9__*, i32, i32, %struct.TYPE_10__**) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @dsl_dataset_bmark_lookup(%struct.TYPE_10__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
