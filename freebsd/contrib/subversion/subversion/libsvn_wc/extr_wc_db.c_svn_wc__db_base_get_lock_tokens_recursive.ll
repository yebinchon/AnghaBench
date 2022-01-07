; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_base_get_lock_tokens_recursive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_base_get_lock_tokens_recursive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@INVALID_REPOS_ID = common dso_local global i64 0, align 8
@STMT_SELECT_BASE_NODE_LOCK_TOKENS_RECURSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"is\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_base_get_lock_tokens_recursive(i32** %0, i32* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  store i32** %0, i32*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %22 = load i64, i64* @INVALID_REPOS_ID, align 8
  store i64 %22, i64* %16, align 8
  store i8* null, i8** %17, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 @svn_dirent_is_absolute(i8* %23)
  %25 = call i32 @SVN_ERR_ASSERT(i32 %24)
  %26 = load i32*, i32** %8, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = call i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_5__** %12, i8** %13, i32* %26, i8* %27, i32* %28, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %33 = call i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_5__* %32)
  %34 = load i32*, i32** %10, align 8
  %35 = call i32* @apr_hash_make(i32* %34)
  %36 = load i32**, i32*** %7, align 8
  store i32* %35, i32** %36, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @STMT_SELECT_BASE_NODE_LOCK_TOKENS_RECURSIVE, align 4
  %41 = call i32 @svn_sqlite__get_statement(i32** %14, i32 %39, i32 %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  %43 = load i32*, i32** %14, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %13, align 8
  %48 = call i32 @svn_sqlite__bindf(i32* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %46, i8* %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  %50 = load i32*, i32** %14, align 8
  %51 = call i32 @svn_sqlite__step(i64* %15, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  br label %53

53:                                               ; preds = %82, %5
  %54 = load i64, i64* %15, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %98

56:                                               ; preds = %53
  %57 = load i32*, i32** %14, align 8
  %58 = call i64 @svn_sqlite__column_int64(i32* %57, i32 0)
  store i64 %58, i64* %18, align 8
  %59 = load i32*, i32** %14, align 8
  %60 = call i8* @svn_sqlite__column_text(i32* %59, i32 1, i32* null)
  store i8* %60, i8** %19, align 8
  %61 = load i32*, i32** %14, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = call i8* @svn_sqlite__column_text(i32* %61, i32 2, i32* %62)
  store i8* %63, i8** %20, align 8
  %64 = load i64, i64* %18, align 8
  %65 = load i64, i64* %16, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %82

67:                                               ; preds = %56
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %69 = load i64, i64* %18, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = call i32* @svn_wc__db_fetch_repos_info(i8** %17, i32* null, %struct.TYPE_5__* %68, i64 %69, i32* %70)
  store i32* %71, i32** %21, align 8
  %72 = load i32*, i32** %21, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = load i32*, i32** %21, align 8
  %76 = load i32*, i32** %14, align 8
  %77 = call i32* @svn_sqlite__reset(i32* %76)
  %78 = call i32 @svn_error_compose_create(i32* %75, i32* %77)
  %79 = call i32* @svn_error_trace(i32 %78)
  store i32* %79, i32** %6, align 8
  br label %101

80:                                               ; preds = %67
  %81 = load i64, i64* %18, align 8
  store i64 %81, i64* %16, align 8
  br label %82

82:                                               ; preds = %80, %56
  %83 = load i8*, i8** %17, align 8
  %84 = icmp ne i8* %83, null
  %85 = zext i1 %84 to i32
  %86 = call i32 @SVN_ERR_ASSERT(i32 %85)
  %87 = load i32**, i32*** %7, align 8
  %88 = load i32*, i32** %87, align 8
  %89 = load i8*, i8** %17, align 8
  %90 = load i8*, i8** %19, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = call i32 @svn_path_url_add_component2(i8* %89, i8* %90, i32* %91)
  %93 = load i8*, i8** %20, align 8
  %94 = call i32 @svn_hash_sets(i32* %88, i32 %92, i8* %93)
  %95 = load i32*, i32** %14, align 8
  %96 = call i32 @svn_sqlite__step(i64* %15, i32* %95)
  %97 = call i32 @SVN_ERR(i32 %96)
  br label %53

98:                                               ; preds = %53
  %99 = load i32*, i32** %14, align 8
  %100 = call i32* @svn_sqlite__reset(i32* %99)
  store i32* %100, i32** %6, align 8
  br label %101

101:                                              ; preds = %98, %74
  %102 = load i32*, i32** %6, align 8
  ret i32* %102
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_5__**, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_5__*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*) #1

declare dso_local i32 @svn_sqlite__step(i64*, i32*) #1

declare dso_local i64 @svn_sqlite__column_int64(i32*, i32) #1

declare dso_local i8* @svn_sqlite__column_text(i32*, i32, i32*) #1

declare dso_local i32* @svn_wc__db_fetch_repos_info(i8**, i32*, %struct.TYPE_5__*, i64, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_error_compose_create(i32*, i32*) #1

declare dso_local i32* @svn_sqlite__reset(i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, i8*) #1

declare dso_local i32 @svn_path_url_add_component2(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
