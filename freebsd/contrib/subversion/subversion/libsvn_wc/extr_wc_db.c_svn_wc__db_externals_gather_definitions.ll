; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_externals_gather_definitions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_externals_gather_definitions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@STMT_SELECT_EXTERNAL_PROPERTIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"is\00", align 1
@SVN_PROP_EXTERNALS = common dso_local global i32 0, align 4
@depth_map = common dso_local global i32 0, align 4
@svn_depth_unknown = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_externals_gather_definitions(i32** %0, i32** %1, i32* %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  store i32** %0, i32*** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32* null, i32** %17, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = call i32* @svn_pool_create(i32* %24)
  store i32* %25, i32** %18, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 @svn_dirent_is_absolute(i8* %26)
  %28 = call i32 @SVN_ERR_ASSERT(i32 %27)
  %29 = load i32*, i32** %9, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = load i32*, i32** %18, align 8
  %33 = call i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_4__** %13, i8** %15, i32* %29, i8* %30, i32* %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %36 = call i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_4__* %35)
  %37 = load i32*, i32** %11, align 8
  %38 = call i32* @apr_hash_make(i32* %37)
  %39 = load i32**, i32*** %7, align 8
  store i32* %38, i32** %39, align 8
  %40 = load i32**, i32*** %8, align 8
  %41 = icmp ne i32** %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %6
  %43 = load i32*, i32** %11, align 8
  %44 = call i32* @apr_hash_make(i32* %43)
  %45 = load i32**, i32*** %8, align 8
  store i32* %44, i32** %45, align 8
  br label %46

46:                                               ; preds = %42, %6
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @STMT_SELECT_EXTERNAL_PROPERTIES, align 4
  %51 = call i32 @svn_sqlite__get_statement(i32** %14, i32 %49, i32 %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = load i32*, i32** %14, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %15, align 8
  %58 = call i32 @svn_sqlite__bindf(i32* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %56, i8* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = load i32*, i32** %14, align 8
  %61 = call i32 @svn_sqlite__step(i64* %16, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  br label %63

63:                                               ; preds = %113, %46
  %64 = load i64, i64* %16, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %117

66:                                               ; preds = %63
  %67 = load i32*, i32** %18, align 8
  %68 = call i32 @svn_pool_clear(i32* %67)
  %69 = load i32*, i32** %14, align 8
  %70 = load i32*, i32** %18, align 8
  %71 = load i32*, i32** %18, align 8
  %72 = call i32* @svn_sqlite__column_properties(i32** %19, i32* %69, i32 0, i32* %70, i32* %71)
  store i32* %72, i32** %17, align 8
  %73 = load i32*, i32** %17, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  br label %117

76:                                               ; preds = %66
  %77 = load i32*, i32** %19, align 8
  %78 = load i32, i32* @SVN_PROP_EXTERNALS, align 4
  %79 = call i8* @svn_prop_get_value(i32* %77, i32 %78)
  store i8* %79, i8** %20, align 8
  %80 = load i8*, i8** %20, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %113

82:                                               ; preds = %76
  %83 = load i32*, i32** %14, align 8
  %84 = call i8* @svn_sqlite__column_text(i32* %83, i32 1, i32* null)
  store i8* %84, i8** %22, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i8*, i8** %22, align 8
  %89 = load i32*, i32** %11, align 8
  %90 = call i8* @svn_dirent_join(i32 %87, i8* %88, i32* %89)
  store i8* %90, i8** %21, align 8
  %91 = load i32**, i32*** %7, align 8
  %92 = load i32*, i32** %91, align 8
  %93 = load i8*, i8** %21, align 8
  %94 = load i32*, i32** %11, align 8
  %95 = load i8*, i8** %20, align 8
  %96 = call i32 @apr_pstrdup(i32* %94, i8* %95)
  %97 = call i32 @svn_hash_sets(i32* %92, i8* %93, i32 %96)
  %98 = load i32**, i32*** %8, align 8
  %99 = icmp ne i32** %98, null
  br i1 %99, label %100, label %112

100:                                              ; preds = %82
  %101 = load i32*, i32** %14, align 8
  %102 = load i32, i32* @depth_map, align 4
  %103 = load i32, i32* @svn_depth_unknown, align 4
  %104 = call i32 @svn_sqlite__column_token_null(i32* %101, i32 2, i32 %102, i32 %103)
  store i32 %104, i32* %23, align 4
  %105 = load i32**, i32*** %8, align 8
  %106 = load i32*, i32** %105, align 8
  %107 = load i8*, i8** %21, align 8
  %108 = load i32, i32* @depth_map, align 4
  %109 = load i32, i32* %23, align 4
  %110 = call i32 @svn_token__to_word(i32 %108, i32 %109)
  %111 = call i32 @svn_hash_sets(i32* %106, i8* %107, i32 %110)
  br label %112

112:                                              ; preds = %100, %82
  br label %113

113:                                              ; preds = %112, %76
  %114 = load i32*, i32** %14, align 8
  %115 = call i32 @svn_sqlite__step(i64* %16, i32* %114)
  %116 = call i32 @SVN_ERR(i32 %115)
  br label %63

117:                                              ; preds = %75, %63
  %118 = load i32*, i32** %18, align 8
  %119 = call i32 @svn_pool_destroy(i32* %118)
  %120 = load i32*, i32** %17, align 8
  %121 = load i32*, i32** %14, align 8
  %122 = call i32 @svn_sqlite__reset(i32* %121)
  %123 = call i32 @svn_error_compose_create(i32* %120, i32 %122)
  %124 = call i32* @svn_error_trace(i32 %123)
  ret i32* %124
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_4__**, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_4__*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*) #1

declare dso_local i32 @svn_sqlite__step(i64*, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32* @svn_sqlite__column_properties(i32**, i32*, i32, i32*, i32*) #1

declare dso_local i8* @svn_prop_get_value(i32*, i32) #1

declare dso_local i8* @svn_sqlite__column_text(i32*, i32, i32*) #1

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i32) #1

declare dso_local i32 @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @svn_sqlite__column_token_null(i32*, i32, i32, i32) #1

declare dso_local i32 @svn_token__to_word(i32, i32) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
