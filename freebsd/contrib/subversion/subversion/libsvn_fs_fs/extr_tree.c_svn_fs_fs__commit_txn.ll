; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_svn_fs_fs__commit_txn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_svn_fs_fs__commit_txn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i64 }
%struct.TYPE_27__ = type { i64, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i64 }
%struct.TYPE_26__ = type { i8* }

@SVN_NO_ERROR = common dso_local global %struct.TYPE_29__* null, align 8
@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@SVN_ERR_FS_CONFLICT = common dso_local global i64 0, align 8
@SVN_ERR_FS_TXN_OUT_OF_DATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_29__* @svn_fs_fs__commit_txn(i8** %0, i64* %1, %struct.TYPE_27__* %2, i32* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca %struct.TYPE_30__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.TYPE_27__* %2, %struct.TYPE_27__** %7, align 8
  store i32* %3, i32** %8, align 8
  %18 = load %struct.TYPE_29__*, %struct.TYPE_29__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_29__* %18, %struct.TYPE_29__** %9, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call %struct.TYPE_26__* @svn_stringbuf_create_empty(i32* %19)
  store %struct.TYPE_26__* %20, %struct.TYPE_26__** %10, align 8
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  store %struct.TYPE_28__* %23, %struct.TYPE_28__** %11, align 8
  %24 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_30__*, %struct.TYPE_30__** %25, align 8
  store %struct.TYPE_30__* %26, %struct.TYPE_30__** %12, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call i32* @svn_pool_create(i32* %27)
  store i32* %28, i32** %13, align 8
  %29 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %30 = load i64*, i64** %6, align 8
  store i64 %29, i64* %30, align 8
  %31 = load i8**, i8*** %5, align 8
  %32 = icmp ne i8** %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i8**, i8*** %5, align 8
  store i8* null, i8** %34, align 8
  br label %35

35:                                               ; preds = %33, %4
  br label %36

36:                                               ; preds = %35, %110
  %37 = load i32*, i32** %13, align 8
  %38 = call i32 @svn_pool_clear(i32* %37)
  %39 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = call %struct.TYPE_29__* @svn_fs_fs__youngest_rev(i64* %14, %struct.TYPE_28__* %39, i32* %40)
  %42 = call i32 @SVN_ERR(%struct.TYPE_29__* %41)
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %44 = load i64, i64* %14, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = call %struct.TYPE_29__* @svn_fs_fs__revision_root(i32** %15, %struct.TYPE_28__* %43, i64 %44, i32* %45)
  %47 = call i32 @SVN_ERR(%struct.TYPE_29__* %46)
  %48 = load i32*, i32** %15, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = call %struct.TYPE_29__* @get_root(i32** %16, i32* %48, i32* %49)
  %51 = call i32 @SVN_ERR(%struct.TYPE_29__* %50)
  %52 = load i32*, i32** %16, align 8
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %54 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = call %struct.TYPE_29__* @merge_changes(i32* null, i32* %52, %struct.TYPE_27__* %53, %struct.TYPE_26__* %54, i32* %55)
  store %struct.TYPE_29__* %56, %struct.TYPE_29__** %9, align 8
  %57 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %58 = icmp ne %struct.TYPE_29__* %57, null
  br i1 %58, label %59, label %74

59:                                               ; preds = %36
  %60 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SVN_ERR_FS_CONFLICT, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load i8**, i8*** %5, align 8
  %67 = icmp ne i8** %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i8**, i8*** %5, align 8
  store i8* %71, i8** %72, align 8
  br label %73

73:                                               ; preds = %68, %65, %59
  br label %111

74:                                               ; preds = %36
  %75 = load i64, i64* %14, align 8
  %76 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load i64*, i64** %6, align 8
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %80 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %81 = load i32*, i32** %13, align 8
  %82 = call %struct.TYPE_29__* @svn_fs_fs__commit(i64* %78, %struct.TYPE_28__* %79, %struct.TYPE_27__* %80, i32* %81)
  store %struct.TYPE_29__* %82, %struct.TYPE_29__** %9, align 8
  %83 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %84 = icmp ne %struct.TYPE_29__* %83, null
  br i1 %84, label %85, label %104

85:                                               ; preds = %74
  %86 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @SVN_ERR_FS_TXN_OUT_OF_DATE, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %85
  %92 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %93 = load i32*, i32** %13, align 8
  %94 = call %struct.TYPE_29__* @svn_fs_fs__youngest_rev(i64* %17, %struct.TYPE_28__* %92, i32* %93)
  %95 = call i32 @SVN_ERR(%struct.TYPE_29__* %94)
  %96 = load i64, i64* %17, align 8
  %97 = load i64, i64* %14, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  br label %111

100:                                              ; preds = %91
  %101 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %102 = call i32 @svn_error_clear(%struct.TYPE_29__* %101)
  br label %103

103:                                              ; preds = %100
  br label %110

104:                                              ; preds = %85, %74
  %105 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %106 = icmp ne %struct.TYPE_29__* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  br label %111

108:                                              ; preds = %104
  %109 = load %struct.TYPE_29__*, %struct.TYPE_29__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_29__* %109, %struct.TYPE_29__** %9, align 8
  br label %111

110:                                              ; preds = %103
  br label %36

111:                                              ; preds = %108, %107, %99, %73
  %112 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %113 = call i32 @svn_fs_fs__reset_txn_caches(%struct.TYPE_28__* %112)
  %114 = load i32*, i32** %13, align 8
  %115 = call i32 @svn_pool_destroy(i32* %114)
  %116 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %117 = call i32 @SVN_ERR(%struct.TYPE_29__* %116)
  %118 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %111
  %123 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %124 = load i32*, i32** %8, align 8
  %125 = call %struct.TYPE_29__* @svn_fs_fs__pack(%struct.TYPE_28__* %123, i32 0, i32* null, i32* null, i32* null, i32* null, i32* %124)
  %126 = call i32 @SVN_ERR(%struct.TYPE_29__* %125)
  br label %127

127:                                              ; preds = %122, %111
  %128 = load %struct.TYPE_29__*, %struct.TYPE_29__** @SVN_NO_ERROR, align 8
  ret %struct.TYPE_29__* %128
}

declare dso_local %struct.TYPE_26__* @svn_stringbuf_create_empty(i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_29__* @svn_fs_fs__youngest_rev(i64*, %struct.TYPE_28__*, i32*) #1

declare dso_local %struct.TYPE_29__* @svn_fs_fs__revision_root(i32**, %struct.TYPE_28__*, i64, i32*) #1

declare dso_local %struct.TYPE_29__* @get_root(i32**, i32*, i32*) #1

declare dso_local %struct.TYPE_29__* @merge_changes(i32*, i32*, %struct.TYPE_27__*, %struct.TYPE_26__*, i32*) #1

declare dso_local %struct.TYPE_29__* @svn_fs_fs__commit(i64*, %struct.TYPE_28__*, %struct.TYPE_27__*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_29__*) #1

declare dso_local i32 @svn_fs_fs__reset_txn_caches(%struct.TYPE_28__*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local %struct.TYPE_29__* @svn_fs_fs__pack(%struct.TYPE_28__*, i32, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
