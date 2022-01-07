; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_get_excluded_subtrees.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_get_excluded_subtrees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@STMT_SELECT_ALL_EXCLUDED_DESCENDANTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"is\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_get_excluded_subtrees(i32** %0, i32* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @svn_dirent_is_absolute(i8* %16)
  %18 = call i32 @SVN_ERR_ASSERT(i32 %17)
  %19 = load i32*, i32** %7, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = call i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_4__** %11, i8** %12, i32* %19, i8* %20, i32* %21, i32* %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %26 = call i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_4__* %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @STMT_SELECT_ALL_EXCLUDED_DESCENDANTS, align 4
  %31 = call i32 @svn_sqlite__get_statement(i32** %13, i32 %29, i32 %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load i32*, i32** %13, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %12, align 8
  %38 = call i32 @svn_sqlite__bindf(i32* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %36, i8* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load i32*, i32** %13, align 8
  %41 = call i32 @svn_sqlite__step(i64* %14, i32* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  %43 = load i64, i64* %14, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %5
  %46 = load i32*, i32** %9, align 8
  %47 = call i32* @apr_hash_make(i32* %46)
  %48 = load i32**, i32*** %6, align 8
  store i32* %47, i32** %48, align 8
  br label %51

49:                                               ; preds = %5
  %50 = load i32**, i32*** %6, align 8
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %49, %45
  br label %52

52:                                               ; preds = %55, %51
  %53 = load i64, i64* %14, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %52
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %13, align 8
  %60 = call i32 @svn_sqlite__column_text(i32* %59, i32 0, i32* null)
  %61 = load i32*, i32** %9, align 8
  %62 = call i8* @svn_dirent_join(i32 %58, i32 %60, i32* %61)
  store i8* %62, i8** %15, align 8
  %63 = load i32**, i32*** %6, align 8
  %64 = load i32*, i32** %63, align 8
  %65 = load i8*, i8** %15, align 8
  %66 = load i8*, i8** %15, align 8
  %67 = call i32 @svn_hash_sets(i32* %64, i8* %65, i8* %66)
  %68 = load i32*, i32** %13, align 8
  %69 = call i32 @svn_sqlite__step(i64* %14, i32* %68)
  %70 = call i32 @SVN_ERR(i32 %69)
  br label %52

71:                                               ; preds = %52
  %72 = load i32*, i32** %13, align 8
  %73 = call i32 @svn_sqlite__reset(i32* %72)
  %74 = call i32 @SVN_ERR(i32 %73)
  %75 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %75
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_4__**, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_4__*) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*) #1

declare dso_local i32 @svn_sqlite__step(i64*, i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i8* @svn_dirent_join(i32, i32, i32*) #1

declare dso_local i32 @svn_sqlite__column_text(i32*, i32, i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i8*) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
