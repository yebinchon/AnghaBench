; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_svn_fs_x__get_mergeinfo_count.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_svn_fs_x__get_mergeinfo_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32 }

@svn_fs_x__mergeinfo_count_get_func = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__get_mergeinfo_count(i32* %0, %struct.TYPE_21__* %1, %struct.TYPE_19__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_17__, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @svn_fs_x__is_txn(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %73, label %23

23:                                               ; preds = %4
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  store %struct.TYPE_20__* %26, %struct.TYPE_20__** %11, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @svn_fs_x__get_revnum(i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %32 = load i32, i32* %12, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @svn_fs_x__rev_file_init(i32** %13, %struct.TYPE_21__* %31, i32 %32, i32* %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %37 = load i32, i32* %12, align 4
  %38 = call i64 @svn_fs_x__is_packed_rev(%struct.TYPE_21__* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %72

40:                                               ; preds = %23
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %72

45:                                               ; preds = %40
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %47 = load i32*, i32** %13, align 8
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @svn_fs_x__item_offset(i32* %15, i32* %16, %struct.TYPE_21__* %46, i32* %47, %struct.TYPE_19__* %48, i32* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @svn_fs_x__packed_base_rev(%struct.TYPE_21__* %52, i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %15, align 4
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = bitcast i32* %58 to i8**
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @svn_fs_x__mergeinfo_count_get_func, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = call i32 @svn_cache__get_partial(i8** %59, i64* %17, i64 %62, %struct.TYPE_17__* %14, i32 %63, i32* %16, i32* %64)
  %66 = call i32 @SVN_ERR(i32 %65)
  %67 = load i64, i64* %17, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %45
  %70 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %70, i32** %5, align 8
  br label %85

71:                                               ; preds = %45
  br label %72

72:                                               ; preds = %71, %40, %23
  br label %73

73:                                               ; preds = %72, %4
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = call i32 @svn_fs_x__get_node_revision(%struct.TYPE_18__** %10, %struct.TYPE_21__* %74, %struct.TYPE_19__* %75, i32* %76, i32* %77)
  %79 = call i32 @SVN_ERR(i32 %78)
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %6, align 8
  store i32 %82, i32* %83, align 4
  %84 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %84, i32** %5, align 8
  br label %85

85:                                               ; preds = %73, %69
  %86 = load i32*, i32** %5, align 8
  ret i32* %86
}

declare dso_local i32 @svn_fs_x__is_txn(i32) #1

declare dso_local i32 @svn_fs_x__get_revnum(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__rev_file_init(i32**, %struct.TYPE_21__*, i32, i32*) #1

declare dso_local i64 @svn_fs_x__is_packed_rev(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @svn_fs_x__item_offset(i32*, i32*, %struct.TYPE_21__*, i32*, %struct.TYPE_19__*, i32*) #1

declare dso_local i32 @svn_fs_x__packed_base_rev(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @svn_cache__get_partial(i8**, i64*, i64, %struct.TYPE_17__*, i32, i32*, i32*) #1

declare dso_local i32 @svn_fs_x__get_node_revision(%struct.TYPE_18__**, %struct.TYPE_21__*, %struct.TYPE_19__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
