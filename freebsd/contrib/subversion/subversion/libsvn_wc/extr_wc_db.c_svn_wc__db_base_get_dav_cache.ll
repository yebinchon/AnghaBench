; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_base_get_dav_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_base_get_dav_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@STMT_SELECT_BASE_DAV_CACHE = common dso_local global i32 0, align 4
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"The node '%s' was not found.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_base_get_dav_cache(i32** %0, i32* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32** %0, i32*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = call i32 @svn_dirent_is_absolute(i8* %16)
  %18 = call i32 @SVN_ERR_ASSERT(i32 %17)
  %19 = load i32*, i32** %8, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = call i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_4__** %12, i8** %13, i32* %19, i8* %20, i32* %21, i32* %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %26 = call i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_4__* %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @STMT_SELECT_BASE_DAV_CACHE, align 4
  %31 = call i32 @svn_sqlite__get_statement(i32** %14, i32 %29, i32 %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load i32*, i32** %14, align 8
  %34 = call i32 @svn_sqlite__step(i32* %15, i32* %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load i32, i32* %15, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %5
  %39 = load i32, i32* @SVN_ERR_WC_PATH_NOT_FOUND, align 4
  %40 = load i32*, i32** %14, align 8
  %41 = call i32 @svn_sqlite__reset(i32* %40)
  %42 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %43 = load i8*, i8** %9, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @svn_dirent_local_style(i8* %43, i32* %44)
  %46 = call i32* @svn_error_createf(i32 %39, i32 %41, i32 %42, i32 %45)
  store i32* %46, i32** %6, align 8
  br label %57

47:                                               ; preds = %5
  %48 = load i32**, i32*** %7, align 8
  %49 = load i32*, i32** %14, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @svn_sqlite__column_properties(i32** %48, i32* %49, i32 0, i32* %50, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load i32*, i32** %14, align 8
  %55 = call i32 @svn_sqlite__reset(i32* %54)
  %56 = call i32* @svn_error_trace(i32 %55)
  store i32* %56, i32** %6, align 8
  br label %57

57:                                               ; preds = %47, %38
  %58 = load i32*, i32** %6, align 8
  ret i32* %58
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_4__**, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_4__*) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__step(i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32, i32, i32) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @svn_sqlite__column_properties(i32**, i32*, i32, i32*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
