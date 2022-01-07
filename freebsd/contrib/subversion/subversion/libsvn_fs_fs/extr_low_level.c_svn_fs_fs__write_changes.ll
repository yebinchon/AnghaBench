; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_low_level.c_svn_fs_fs__write_changes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_low_level.c_svn_fs_fs__write_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i8*, i32* }

@SVN_FS_FS__MIN_KIND_IN_CHANGED_FORMAT = common dso_local global i64 0, align 8
@SVN_FS_FS__MIN_MERGEINFO_IN_CHANGED_FORMAT = common dso_local global i64 0, align 8
@svn_sort_compare_items_lexically = common dso_local global i32 0, align 4
@svn_sort__item_t = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__write_changes(i32* %0, %struct.TYPE_8__* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_11__, align 8
  %20 = alloca %struct.TYPE_11__, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = call i32* @svn_pool_create(i32* %21)
  store i32* %22, i32** %11, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %12, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SVN_FS_FS__MIN_KIND_IN_CHANGED_FORMAT, align 8
  %30 = icmp sge i64 %28, %29
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %13, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SVN_FS_FS__MIN_MERGEINFO_IN_CHANGED_FORMAT, align 8
  %36 = icmp sge i64 %34, %35
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %14, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* @svn_sort_compare_items_lexically, align 4
  %40 = load i32*, i32** %10, align 8
  %41 = call %struct.TYPE_10__* @svn_sort__hash(i32* %38, i32 %39, i32* %40)
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %15, align 8
  store i32 0, i32* %16, align 4
  br label %42

42:                                               ; preds = %81, %5
  %43 = load i32, i32* %16, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %84

48:                                               ; preds = %42
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 @svn_pool_clear(i32* %49)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* @svn_sort__item_t, align 4
  %54 = call { i8*, i32* } @APR_ARRAY_IDX(%struct.TYPE_10__* %51, i32 %52, i32 %53)
  %55 = bitcast %struct.TYPE_11__* %19 to { i8*, i32* }*
  %56 = getelementptr inbounds { i8*, i32* }, { i8*, i32* }* %55, i32 0, i32 0
  %57 = extractvalue { i8*, i32* } %54, 0
  store i8* %57, i8** %56, align 8
  %58 = getelementptr inbounds { i8*, i32* }, { i8*, i32* }* %55, i32 0, i32 1
  %59 = extractvalue { i8*, i32* } %54, 1
  store i32* %59, i32** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %17, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* @svn_sort__item_t, align 4
  %65 = call { i8*, i32* } @APR_ARRAY_IDX(%struct.TYPE_10__* %62, i32 %63, i32 %64)
  %66 = bitcast %struct.TYPE_11__* %20 to { i8*, i32* }*
  %67 = getelementptr inbounds { i8*, i32* }, { i8*, i32* }* %66, i32 0, i32 0
  %68 = extractvalue { i8*, i32* } %65, 0
  store i8* %68, i8** %67, align 8
  %69 = getelementptr inbounds { i8*, i32* }, { i8*, i32* }* %66, i32 0, i32 1
  %70 = extractvalue { i8*, i32* } %65, 1
  store i32* %70, i32** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %18, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = load i8*, i8** %18, align 8
  %75 = load i32*, i32** %17, align 8
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %14, align 4
  %78 = load i32*, i32** %11, align 8
  %79 = call i32 @write_change_entry(i32* %73, i8* %74, i32* %75, i32 %76, i32 %77, i32* %78)
  %80 = call i32 @SVN_ERR(i32 %79)
  br label %81

81:                                               ; preds = %48
  %82 = load i32, i32* %16, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %16, align 4
  br label %42

84:                                               ; preds = %42
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32*, i32** %6, align 8
  %89 = call i32 @svn_stream_puts(i32* %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i32*, i32** %11, align 8
  %92 = call i32 @svn_pool_destroy(i32* %91)
  %93 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %93
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local %struct.TYPE_10__* @svn_sort__hash(i32*, i32, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local { i8*, i32* } @APR_ARRAY_IDX(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @write_change_entry(i32*, i8*, i32*, i32, i32, i32*) #1

declare dso_local i32 @svn_stream_puts(i32*, i8*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
