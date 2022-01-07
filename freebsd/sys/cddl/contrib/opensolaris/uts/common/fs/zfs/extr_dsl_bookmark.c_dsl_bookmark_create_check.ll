; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_bookmark.c_dsl_bookmark_create_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_bookmark.c_dsl_bookmark_create_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@SPA_FEATURE_BOOKMARKS = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @dsl_bookmark_create_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsl_bookmark_create_check(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %6, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call %struct.TYPE_5__* @dmu_tx_pool(i32* %14)
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SPA_FEATURE_BOOKMARKS, align 4
  %20 = call i32 @spa_feature_is_enabled(i32 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOTSUP, align 4
  %24 = call i32 @SET_ERROR(i32 %23)
  store i32 %24, i32* %3, align 4
  br label %71

25:                                               ; preds = %2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32* @nvlist_next_nvpair(i32 %28, i32* null)
  store i32* %29, i32** %9, align 8
  br label %30

30:                                               ; preds = %63, %25
  %31 = load i32*, i32** %9, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %69

33:                                               ; preds = %30
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @fnvpair_value_string(i32* %35)
  %37 = load i32, i32* @FTAG, align 4
  %38 = call i32 @dsl_dataset_hold(%struct.TYPE_5__* %34, i32 %36, i32 %37, i32** %10)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %33
  %42 = load i32*, i32** %10, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @nvpair_name(i32* %43)
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @dsl_bookmark_create_check_impl(i32* %42, i32 %44, i32* %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32*, i32** %10, align 8
  %48 = load i32, i32* @FTAG, align 4
  %49 = call i32 @dsl_dataset_rele(i32* %47, i32 %48)
  br label %50

50:                                               ; preds = %41, %33
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @nvpair_name(i32* %57)
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @fnvlist_add_int32(i32 %56, i32 %58, i32 %59)
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %53, %50
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %9, align 8
  %68 = call i32* @nvlist_next_nvpair(i32 %66, i32* %67)
  store i32* %68, i32** %9, align 8
  br label %30

69:                                               ; preds = %30
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %22
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.TYPE_5__* @dmu_tx_pool(i32*) #1

declare dso_local i32 @spa_feature_is_enabled(i32, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32* @nvlist_next_nvpair(i32, i32*) #1

declare dso_local i32 @dsl_dataset_hold(%struct.TYPE_5__*, i32, i32, i32**) #1

declare dso_local i32 @fnvpair_value_string(i32*) #1

declare dso_local i32 @dsl_bookmark_create_check_impl(i32*, i32, i32*) #1

declare dso_local i32 @nvpair_name(i32*) #1

declare dso_local i32 @dsl_dataset_rele(i32*, i32) #1

declare dso_local i32 @fnvlist_add_int32(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
