; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_fetch_repos_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_fetch_repos_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@INVALID_REPOS_ID = common dso_local global i64 0, align 8
@STMT_SELECT_REPOSITORY_BY_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"i\00", align 1
@SVN_ERR_WC_CORRUPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"No REPOSITORY table entry for id '%ld'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_fetch_repos_info(i8** %0, i8** %1, %struct.TYPE_3__* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i8** %0, i8*** %7, align 8
  store i8** %1, i8*** %8, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i8**, i8*** %7, align 8
  %15 = icmp ne i8** %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %5
  %17 = load i8**, i8*** %8, align 8
  %18 = icmp ne i8** %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %20, i32** %6, align 8
  br label %80

21:                                               ; preds = %16, %5
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @INVALID_REPOS_ID, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load i8**, i8*** %7, align 8
  %27 = icmp ne i8** %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i8**, i8*** %7, align 8
  store i8* null, i8** %29, align 8
  br label %30

30:                                               ; preds = %28, %25
  %31 = load i8**, i8*** %8, align 8
  %32 = icmp ne i8** %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i8**, i8*** %8, align 8
  store i8* null, i8** %34, align 8
  br label %35

35:                                               ; preds = %33, %30
  %36 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %36, i32** %6, align 8
  br label %80

37:                                               ; preds = %21
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @STMT_SELECT_REPOSITORY_BY_ID, align 4
  %42 = call i32 @svn_sqlite__get_statement(i32** %12, i32 %40, i32 %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load i32*, i32** %12, align 8
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @svn_sqlite__bindf(i32* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  %48 = load i32*, i32** %12, align 8
  %49 = call i32 @svn_sqlite__step(i32* %13, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %37
  %54 = load i32, i32* @SVN_ERR_WC_CORRUPT, align 4
  %55 = load i32*, i32** %12, align 8
  %56 = call i32 @svn_sqlite__reset(i32* %55)
  %57 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i64, i64* %10, align 8
  %59 = call i32* @svn_error_createf(i32 %54, i32 %56, i32 %57, i64 %58)
  store i32* %59, i32** %6, align 8
  br label %80

60:                                               ; preds = %37
  %61 = load i8**, i8*** %7, align 8
  %62 = icmp ne i8** %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i32*, i32** %12, align 8
  %65 = load i32*, i32** %11, align 8
  %66 = call i8* @svn_sqlite__column_text(i32* %64, i32 0, i32* %65)
  %67 = load i8**, i8*** %7, align 8
  store i8* %66, i8** %67, align 8
  br label %68

68:                                               ; preds = %63, %60
  %69 = load i8**, i8*** %8, align 8
  %70 = icmp ne i8** %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load i32*, i32** %12, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = call i8* @svn_sqlite__column_text(i32* %72, i32 1, i32* %73)
  %75 = load i8**, i8*** %8, align 8
  store i8* %74, i8** %75, align 8
  br label %76

76:                                               ; preds = %71, %68
  %77 = load i32*, i32** %12, align 8
  %78 = call i32 @svn_sqlite__reset(i32* %77)
  %79 = call i32* @svn_error_trace(i32 %78)
  store i32* %79, i32** %6, align 8
  br label %80

80:                                               ; preds = %76, %53, %35, %19
  %81 = load i32*, i32** %6, align 8
  ret i32* %81
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i64) #1

declare dso_local i32 @svn_sqlite__step(i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32, i32, i64) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @svn_sqlite__column_text(i32*, i32, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
