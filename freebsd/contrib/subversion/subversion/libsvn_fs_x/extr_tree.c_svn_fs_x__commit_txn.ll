; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_tree.c_svn_fs_x__commit_txn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_tree.c_svn_fs_x__commit_txn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i64 }
%struct.TYPE_27__ = type { i64, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_25__ = type { i8* }

@SVN_NO_ERROR = common dso_local global %struct.TYPE_29__* null, align 8
@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@SVN_ERR_FS_CONFLICT = common dso_local global i64 0, align 8
@SVN_ERR_FS_TXN_OUT_OF_DATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_29__* @svn_fs_x__commit_txn(i8** %0, i64* %1, %struct.TYPE_27__* %2, i32* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_27__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca %struct.TYPE_26__*, align 8
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
  %20 = call %struct.TYPE_25__* @svn_stringbuf_create_empty(i32* %19)
  store %struct.TYPE_25__* %20, %struct.TYPE_25__** %10, align 8
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  store %struct.TYPE_28__* %23, %struct.TYPE_28__** %11, align 8
  %24 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  store %struct.TYPE_26__* %26, %struct.TYPE_26__** %12, align 8
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

36:                                               ; preds = %35, %111
  %37 = load i32*, i32** %13, align 8
  %38 = call i32 @svn_pool_clear(i32* %37)
  %39 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = call %struct.TYPE_29__* @svn_fs_x__youngest_rev(i64* %14, %struct.TYPE_28__* %39, i32* %40)
  %42 = call i32 @SVN_ERR(%struct.TYPE_29__* %41)
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %44 = load i64, i64* %14, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = call %struct.TYPE_29__* @svn_fs_x__revision_root(i32** %15, %struct.TYPE_28__* %43, i64 %44, i32* %45)
  %47 = call i32 @SVN_ERR(%struct.TYPE_29__* %46)
  %48 = load i32*, i32** %15, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = call %struct.TYPE_29__* @get_root(i32** %16, i32* %48, i32* %49, i32* %50)
  %52 = call i32 @SVN_ERR(%struct.TYPE_29__* %51)
  %53 = load i32*, i32** %16, align 8
  %54 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = call %struct.TYPE_29__* @merge_changes(i32* null, i32* %53, %struct.TYPE_27__* %54, %struct.TYPE_25__* %55, i32* %56)
  store %struct.TYPE_29__* %57, %struct.TYPE_29__** %9, align 8
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %59 = icmp ne %struct.TYPE_29__* %58, null
  br i1 %59, label %60, label %75

60:                                               ; preds = %36
  %61 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SVN_ERR_FS_CONFLICT, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = load i8**, i8*** %5, align 8
  %68 = icmp ne i8** %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i8**, i8*** %5, align 8
  store i8* %72, i8** %73, align 8
  br label %74

74:                                               ; preds = %69, %66, %60
  br label %112

75:                                               ; preds = %36
  %76 = load i64, i64* %14, align 8
  %77 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load i64*, i64** %6, align 8
  %80 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %7, align 8
  %82 = load i32*, i32** %13, align 8
  %83 = call %struct.TYPE_29__* @svn_fs_x__commit(i64* %79, %struct.TYPE_28__* %80, %struct.TYPE_27__* %81, i32* %82)
  store %struct.TYPE_29__* %83, %struct.TYPE_29__** %9, align 8
  %84 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %85 = icmp ne %struct.TYPE_29__* %84, null
  br i1 %85, label %86, label %105

86:                                               ; preds = %75
  %87 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @SVN_ERR_FS_TXN_OUT_OF_DATE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %105

92:                                               ; preds = %86
  %93 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %94 = load i32*, i32** %13, align 8
  %95 = call %struct.TYPE_29__* @svn_fs_x__youngest_rev(i64* %17, %struct.TYPE_28__* %93, i32* %94)
  %96 = call i32 @SVN_ERR(%struct.TYPE_29__* %95)
  %97 = load i64, i64* %17, align 8
  %98 = load i64, i64* %14, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  br label %112

101:                                              ; preds = %92
  %102 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %103 = call i32 @svn_error_clear(%struct.TYPE_29__* %102)
  br label %104

104:                                              ; preds = %101
  br label %111

105:                                              ; preds = %86, %75
  %106 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %107 = icmp ne %struct.TYPE_29__* %106, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  br label %112

109:                                              ; preds = %105
  %110 = load %struct.TYPE_29__*, %struct.TYPE_29__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_29__* %110, %struct.TYPE_29__** %9, align 8
  br label %112

111:                                              ; preds = %104
  br label %36

112:                                              ; preds = %109, %108, %100, %74
  %113 = load i32*, i32** %13, align 8
  %114 = call i32 @svn_pool_destroy(i32* %113)
  %115 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %116 = call i32 @SVN_ERR(%struct.TYPE_29__* %115)
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %112
  %122 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %123 = load i32*, i32** %8, align 8
  %124 = call %struct.TYPE_29__* @svn_fs_x__pack(%struct.TYPE_28__* %122, i32 0, i32* null, i32* null, i32* null, i32* null, i32* %123)
  %125 = call i32 @SVN_ERR(%struct.TYPE_29__* %124)
  br label %126

126:                                              ; preds = %121, %112
  %127 = load %struct.TYPE_29__*, %struct.TYPE_29__** @SVN_NO_ERROR, align 8
  ret %struct.TYPE_29__* %127
}

declare dso_local %struct.TYPE_25__* @svn_stringbuf_create_empty(i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_29__* @svn_fs_x__youngest_rev(i64*, %struct.TYPE_28__*, i32*) #1

declare dso_local %struct.TYPE_29__* @svn_fs_x__revision_root(i32**, %struct.TYPE_28__*, i64, i32*) #1

declare dso_local %struct.TYPE_29__* @get_root(i32**, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_29__* @merge_changes(i32*, i32*, %struct.TYPE_27__*, %struct.TYPE_25__*, i32*) #1

declare dso_local %struct.TYPE_29__* @svn_fs_x__commit(i64*, %struct.TYPE_28__*, %struct.TYPE_27__*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_29__*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local %struct.TYPE_29__* @svn_fs_x__pack(%struct.TYPE_28__*, i32, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
