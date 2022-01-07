; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_revert_list_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_revert_list_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8* }
%struct.TYPE_9__ = type { i32, i32 }

@STMT_SELECT_REVERT_LIST_RECURSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"s\00", align 1
@svn_wc_notify_revert = common dso_local global i32 0, align 4
@kind_map = common dso_local global i32 0, align 4
@kind_map_none = common dso_local global i32 0, align 4
@svn_wc_notify_tree_conflict = common dso_local global i32 0, align 4
@STMT_DELETE_REVERT_LIST_RECURSIVE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_revert_list_notify(i32 (i8*, %struct.TYPE_8__*, i32*)* %0, i8* %1, i32* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32 (i8*, %struct.TYPE_8__*, i32*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_8__*, align 8
  store i32 (i8*, %struct.TYPE_8__*, i32*)* %0, i32 (i8*, %struct.TYPE_8__*, i32*)** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = call i32* @svn_pool_create(i32* %19)
  store i32* %20, i32** %16, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = load i32*, i32** %16, align 8
  %25 = call i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_9__** %12, i8** %13, i32* %21, i8* %22, i32* %23, i32* %24)
  %26 = call i32 @SVN_ERR(i32 %25)
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %28 = call i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_9__* %27)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @STMT_SELECT_REVERT_LIST_RECURSIVE, align 4
  %33 = call i32 @svn_sqlite__get_statement(i32** %14, i32 %31, i32 %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load i32*, i32** %14, align 8
  %36 = load i8*, i8** %13, align 8
  %37 = call i32 @svn_sqlite__bindf(i32* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load i32*, i32** %14, align 8
  %40 = call i32 @svn_sqlite__step(i64* %15, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load i64, i64* %15, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %5
  %45 = load i32*, i32** %14, align 8
  %46 = call i32 @svn_sqlite__reset(i32* %45)
  %47 = call i32* @svn_error_trace(i32 %46)
  store i32* %47, i32** %6, align 8
  br label %126

48:                                               ; preds = %5
  br label %49

49:                                               ; preds = %97, %88, %48
  %50 = load i64, i64* %15, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %106

52:                                               ; preds = %49
  %53 = load i32*, i32** %14, align 8
  %54 = call i8* @svn_sqlite__column_text(i32* %53, i32 0, i32* null)
  store i8* %54, i8** %17, align 8
  %55 = load i32*, i32** %16, align 8
  %56 = call i32 @svn_pool_clear(i32* %55)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %17, align 8
  %61 = load i32*, i32** %16, align 8
  %62 = call i32 @svn_dirent_join(i32 %59, i8* %60, i32* %61)
  %63 = load i32, i32* @svn_wc_notify_revert, align 4
  %64 = load i32*, i32** %16, align 8
  %65 = call %struct.TYPE_8__* @svn_wc_create_notify(i32 %62, i32 %63, i32* %64)
  store %struct.TYPE_8__* %65, %struct.TYPE_8__** %18, align 8
  %66 = load i32*, i32** %14, align 8
  %67 = call i32 @svn_sqlite__column_is_null(i32* %66, i32 1)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %52
  %70 = load i32*, i32** %14, align 8
  %71 = load i32, i32* @kind_map, align 4
  %72 = call i8* @svn_sqlite__column_token(i32* %70, i32 1, i32 %71)
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  br label %97

75:                                               ; preds = %52
  %76 = load i32*, i32** %14, align 8
  %77 = call i32 @svn_sqlite__column_is_null(i32* %76, i32 3)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %75
  %80 = load i32*, i32** %14, align 8
  %81 = load i32, i32* @kind_map_none, align 4
  %82 = call i8* @svn_sqlite__column_token(i32* %80, i32 3, i32 %81)
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  br label %85

85:                                               ; preds = %79, %75
  %86 = load i32*, i32** %14, align 8
  %87 = call i32 @svn_sqlite__column_int(i32* %86, i32 2)
  switch i32 %87, label %94 [
    i32 0, label %88
    i32 1, label %89
    i32 2, label %90
  ]

88:                                               ; preds = %85
  br label %49

89:                                               ; preds = %85
  br label %96

90:                                               ; preds = %85
  %91 = load i32, i32* @svn_wc_notify_tree_conflict, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  br label %96

94:                                               ; preds = %85
  %95 = call i32 (...) @SVN_ERR_MALFUNCTION()
  br label %96

96:                                               ; preds = %94, %90, %89
  br label %97

97:                                               ; preds = %96, %69
  %98 = load i32 (i8*, %struct.TYPE_8__*, i32*)*, i32 (i8*, %struct.TYPE_8__*, i32*)** %7, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %101 = load i32*, i32** %16, align 8
  %102 = call i32 %98(i8* %99, %struct.TYPE_8__* %100, i32* %101)
  %103 = load i32*, i32** %14, align 8
  %104 = call i32 @svn_sqlite__step(i64* %15, i32* %103)
  %105 = call i32 @SVN_ERR(i32 %104)
  br label %49

106:                                              ; preds = %49
  %107 = load i32*, i32** %14, align 8
  %108 = call i32 @svn_sqlite__reset(i32* %107)
  %109 = call i32 @SVN_ERR(i32 %108)
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @STMT_DELETE_REVERT_LIST_RECURSIVE, align 4
  %114 = call i32 @svn_sqlite__get_statement(i32** %14, i32 %112, i32 %113)
  %115 = call i32 @SVN_ERR(i32 %114)
  %116 = load i32*, i32** %14, align 8
  %117 = load i8*, i8** %13, align 8
  %118 = call i32 @svn_sqlite__bindf(i32* %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %117)
  %119 = call i32 @SVN_ERR(i32 %118)
  %120 = load i32*, i32** %14, align 8
  %121 = call i32 @svn_sqlite__step_done(i32* %120)
  %122 = call i32 @SVN_ERR(i32 %121)
  %123 = load i32*, i32** %16, align 8
  %124 = call i32 @svn_pool_destroy(i32* %123)
  %125 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %125, i32** %6, align 8
  br label %126

126:                                              ; preds = %106, %44
  %127 = load i32*, i32** %6, align 8
  ret i32* %127
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_9__**, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_9__*) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i8*) #1

declare dso_local i32 @svn_sqlite__step(i64*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i8* @svn_sqlite__column_text(i32*, i32, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local %struct.TYPE_8__* @svn_wc_create_notify(i32, i32, i32*) #1

declare dso_local i32 @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i32 @svn_sqlite__column_is_null(i32*, i32) #1

declare dso_local i8* @svn_sqlite__column_token(i32*, i32, i32) #1

declare dso_local i32 @svn_sqlite__column_int(i32*, i32) #1

declare dso_local i32 @SVN_ERR_MALFUNCTION(...) #1

declare dso_local i32 @svn_sqlite__step_done(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
