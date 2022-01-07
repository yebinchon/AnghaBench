; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_base_get_children_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_base_get_children_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.svn_wc__db_base_info_t = type { i8*, i32, i32, i32, i32, i8*, i8*, i8* }

@INVALID_REPOS_ID = common dso_local global i64 0, align 8
@STMT_SELECT_BASE_CHILDREN_INFO_LOCK = common dso_local global i32 0, align 4
@STMT_SELECT_BASE_CHILDREN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"is\00", align 1
@presence_map = common dso_local global i32 0, align 4
@kind_map = common dso_local global i32 0, align 4
@depth_map = common dso_local global i32 0, align 4
@svn_depth_unknown = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, %struct.TYPE_4__*, i8*, i64, i32*, i32*)* @base_get_children_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @base_get_children_info(i32** %0, %struct.TYPE_4__* %1, i8* %2, i64 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.svn_wc__db_base_info_t*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  store i32** %0, i32*** %8, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %23 = load i64, i64* @INVALID_REPOS_ID, align 8
  store i64 %23, i64* %16, align 8
  store i8* null, i8** %17, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = call i32* @apr_hash_make(i32* %24)
  %26 = load i32**, i32*** %8, align 8
  store i32* %25, i32** %26, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* %11, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %6
  %33 = load i32, i32* @STMT_SELECT_BASE_CHILDREN_INFO_LOCK, align 4
  br label %36

34:                                               ; preds = %6
  %35 = load i32, i32* @STMT_SELECT_BASE_CHILDREN_INFO, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = call i32 @svn_sqlite__get_statement(i32** %14, i32 %29, i32 %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load i32*, i32** %14, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @svn_sqlite__bindf(i32* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %43, i8* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  %47 = load i32*, i32** %14, align 8
  %48 = call i32 @svn_sqlite__step(i64* %15, i32* %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  br label %50

50:                                               ; preds = %119, %36
  %51 = load i64, i64* %15, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %131

53:                                               ; preds = %50
  %54 = load i32*, i32** %14, align 8
  %55 = call i8* @svn_sqlite__column_text(i32* %54, i32 0, i32* null)
  store i8* %55, i8** %20, align 8
  %56 = load i8*, i8** %20, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = call i8* @svn_relpath_basename(i8* %56, i32* %57)
  store i8* %58, i8** %21, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = call %struct.svn_wc__db_base_info_t* @apr_pcalloc(i32* %59, i32 48)
  store %struct.svn_wc__db_base_info_t* %60, %struct.svn_wc__db_base_info_t** %18, align 8
  %61 = load i32*, i32** %14, align 8
  %62 = call i64 @svn_sqlite__column_int64(i32* %61, i32 1)
  store i64 %62, i64* %19, align 8
  %63 = load i32*, i32** %14, align 8
  %64 = load i32*, i32** %12, align 8
  %65 = call i8* @svn_sqlite__column_text(i32* %63, i32 2, i32* %64)
  %66 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %18, align 8
  %67 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %66, i32 0, i32 7
  store i8* %65, i8** %67, align 8
  %68 = load i32*, i32** %14, align 8
  %69 = load i32, i32* @presence_map, align 4
  %70 = call i8* @svn_sqlite__column_token(i32* %68, i32 3, i32 %69)
  %71 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %18, align 8
  %72 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %71, i32 0, i32 6
  store i8* %70, i8** %72, align 8
  %73 = load i32*, i32** %14, align 8
  %74 = load i32, i32* @kind_map, align 4
  %75 = call i8* @svn_sqlite__column_token(i32* %73, i32 4, i32 %74)
  %76 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %18, align 8
  %77 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %76, i32 0, i32 5
  store i8* %75, i8** %77, align 8
  %78 = load i32*, i32** %14, align 8
  %79 = call i32 @svn_sqlite__column_revnum(i32* %78, i32 5)
  %80 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %18, align 8
  %81 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 4
  %82 = load i32*, i32** %14, align 8
  %83 = load i32, i32* @depth_map, align 4
  %84 = load i32, i32* @svn_depth_unknown, align 4
  %85 = call i32 @svn_sqlite__column_token_null(i32* %82, i32 6, i32 %83, i32 %84)
  %86 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %18, align 8
  %87 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 8
  %88 = load i32*, i32** %14, align 8
  %89 = call i32 @svn_sqlite__column_boolean(i32* %88, i32 7)
  %90 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %18, align 8
  %91 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 4
  %92 = load i64, i64* %11, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %53
  %95 = load i32*, i32** %14, align 8
  %96 = load i32*, i32** %12, align 8
  %97 = call i32 @lock_from_columns(i32* %95, i32 8, i32 9, i32 10, i32 11, i32* %96)
  %98 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %18, align 8
  %99 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 8
  br label %100

100:                                              ; preds = %94, %53
  %101 = load i64, i64* %19, align 8
  %102 = load i64, i64* %16, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %119

104:                                              ; preds = %100
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %106 = load i64, i64* %19, align 8
  %107 = load i32*, i32** %12, align 8
  %108 = call i32* @svn_wc__db_fetch_repos_info(i8** %17, i32* null, %struct.TYPE_4__* %105, i64 %106, i32* %107)
  store i32* %108, i32** %22, align 8
  %109 = load i32*, i32** %22, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %117

111:                                              ; preds = %104
  %112 = load i32*, i32** %22, align 8
  %113 = load i32*, i32** %14, align 8
  %114 = call i32 @svn_sqlite__reset(i32* %113)
  %115 = call i32 @svn_error_compose_create(i32* %112, i32 %114)
  %116 = call i32* @svn_error_trace(i32 %115)
  store i32* %116, i32** %7, align 8
  br label %136

117:                                              ; preds = %104
  %118 = load i64, i64* %19, align 8
  store i64 %118, i64* %16, align 8
  br label %119

119:                                              ; preds = %117, %100
  %120 = load i8*, i8** %17, align 8
  %121 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %18, align 8
  %122 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %121, i32 0, i32 0
  store i8* %120, i8** %122, align 8
  %123 = load i32**, i32*** %8, align 8
  %124 = load i32*, i32** %123, align 8
  %125 = load i8*, i8** %21, align 8
  %126 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %18, align 8
  %127 = call i32 @svn_hash_sets(i32* %124, i8* %125, %struct.svn_wc__db_base_info_t* %126)
  %128 = load i32*, i32** %14, align 8
  %129 = call i32 @svn_sqlite__step(i64* %15, i32* %128)
  %130 = call i32 @SVN_ERR(i32 %129)
  br label %50

131:                                              ; preds = %50
  %132 = load i32*, i32** %14, align 8
  %133 = call i32 @svn_sqlite__reset(i32* %132)
  %134 = call i32 @SVN_ERR(i32 %133)
  %135 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %135, i32** %7, align 8
  br label %136

136:                                              ; preds = %131, %111
  %137 = load i32*, i32** %7, align 8
  ret i32* %137
}

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*) #1

declare dso_local i32 @svn_sqlite__step(i64*, i32*) #1

declare dso_local i8* @svn_sqlite__column_text(i32*, i32, i32*) #1

declare dso_local i8* @svn_relpath_basename(i8*, i32*) #1

declare dso_local %struct.svn_wc__db_base_info_t* @apr_pcalloc(i32*, i32) #1

declare dso_local i64 @svn_sqlite__column_int64(i32*, i32) #1

declare dso_local i8* @svn_sqlite__column_token(i32*, i32, i32) #1

declare dso_local i32 @svn_sqlite__column_revnum(i32*, i32) #1

declare dso_local i32 @svn_sqlite__column_token_null(i32*, i32, i32, i32) #1

declare dso_local i32 @svn_sqlite__column_boolean(i32*, i32) #1

declare dso_local i32 @lock_from_columns(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32* @svn_wc__db_fetch_repos_info(i8**, i32*, %struct.TYPE_4__*, i64, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, %struct.svn_wc__db_base_info_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
