; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_prop_retrieve_recursive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_prop_retrieve_recursive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@STMT_SELECT_CURRENT_PROPS_RECURSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"is\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_prop_retrieve_recursive(i32** %0, i32* %1, i8* %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store i32** %0, i32*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = call i32 @svn_dirent_is_absolute(i8* %20)
  %22 = call i32 @SVN_ERR_ASSERT(i32 %21)
  %23 = load i32*, i32** %8, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = call i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_4__** %13, i8** %14, i32* %23, i8* %24, i32* %25, i32* %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %30 = call i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_4__* %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @STMT_SELECT_CURRENT_PROPS_RECURSIVE, align 4
  %35 = call i32 @svn_sqlite__get_statement(i32** %15, i32 %33, i32 %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load i32*, i32** %15, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %14, align 8
  %42 = call i32 @svn_sqlite__bindf(i32* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %40, i8* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load i32*, i32** %11, align 8
  %45 = call i32* @apr_hash_make(i32* %44)
  %46 = load i32**, i32*** %7, align 8
  store i32* %45, i32** %46, align 8
  %47 = load i32*, i32** %15, align 8
  %48 = call i32 @svn_sqlite__step(i64* %16, i32* %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  %50 = load i32*, i32** %12, align 8
  %51 = call i32* @svn_pool_create(i32* %50)
  store i32* %51, i32** %17, align 8
  br label %52

52:                                               ; preds = %88, %6
  %53 = load i64, i64* %16, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %92

55:                                               ; preds = %52
  %56 = load i32*, i32** %17, align 8
  %57 = call i32 @svn_pool_clear(i32* %56)
  %58 = load i32*, i32** %15, align 8
  %59 = load i32*, i32** %17, align 8
  %60 = load i32*, i32** %17, align 8
  %61 = call i32 @svn_sqlite__column_properties(i32** %18, i32* %58, i32 0, i32* %59, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load i32*, i32** %18, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %55
  %66 = load i32*, i32** %18, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = call i32* @svn_hash_gets(i32* %66, i8* %67)
  br label %70

69:                                               ; preds = %55
  br label %70

70:                                               ; preds = %69, %65
  %71 = phi i32* [ %68, %65 ], [ null, %69 ]
  store i32* %71, i32** %19, align 8
  %72 = load i32*, i32** %19, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %88

74:                                               ; preds = %70
  %75 = load i32**, i32*** %7, align 8
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %15, align 8
  %81 = call i32 @svn_sqlite__column_text(i32* %80, i32 1, i32* null)
  %82 = load i32*, i32** %11, align 8
  %83 = call i32 @svn_dirent_join(i32 %79, i32 %81, i32* %82)
  %84 = load i32*, i32** %19, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = call i32 @svn_string_dup(i32* %84, i32* %85)
  %87 = call i32 @svn_hash_sets(i32* %76, i32 %83, i32 %86)
  br label %88

88:                                               ; preds = %74, %70
  %89 = load i32*, i32** %15, align 8
  %90 = call i32 @svn_sqlite__step(i64* %16, i32* %89)
  %91 = call i32 @SVN_ERR(i32 %90)
  br label %52

92:                                               ; preds = %52
  %93 = load i32*, i32** %17, align 8
  %94 = call i32 @svn_pool_destroy(i32* %93)
  %95 = load i32*, i32** %15, align 8
  %96 = call i32 @svn_sqlite__reset(i32* %95)
  %97 = call i32* @svn_error_trace(i32 %96)
  ret i32* %97
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_4__**, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_4__*) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_sqlite__step(i64*, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @svn_sqlite__column_properties(i32**, i32*, i32, i32*, i32*) #1

declare dso_local i32* @svn_hash_gets(i32*, i8*) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, i32) #1

declare dso_local i32 @svn_dirent_join(i32, i32, i32*) #1

declare dso_local i32 @svn_sqlite__column_text(i32*, i32, i32*) #1

declare dso_local i32 @svn_string_dup(i32*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
