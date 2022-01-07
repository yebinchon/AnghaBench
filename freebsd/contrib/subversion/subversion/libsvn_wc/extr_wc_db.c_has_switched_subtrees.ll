; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_has_switched_subtrees.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_has_switched_subtrees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@STMT_HAS_SWITCHED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"iss\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64*, %struct.TYPE_5__*, i8*, i8*, i32*)* @has_switched_subtrees to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @has_switched_subtrees(i64* %0, %struct.TYPE_5__* %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i64* %0, i64** %7, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %20 = load i64*, i64** %7, align 8
  %21 = icmp ne i64* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %5
  %23 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %23, i32** %6, align 8
  br label %95

24:                                               ; preds = %5
  %25 = load i64, i64* @FALSE, align 8
  %26 = load i64*, i64** %7, align 8
  store i64 %25, i64* %26, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = call i32 @svn_wc__db_base_get_info_internal(i32* null, i32* null, i32* null, i8** %15, i32* %14, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, %struct.TYPE_5__* %27, i8* %28, i32* %29, i32* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load i8*, i8** %10, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %67

35:                                               ; preds = %24
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %37 = load i32, i32* %14, align 4
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @svn_wc__db_fetch_repos_info(i8** %16, i32* null, %struct.TYPE_5__* %36, i32 %37, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load i8*, i8** %16, align 8
  %42 = load i8*, i8** %15, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = call i8* @svn_path_url_add_component2(i8* %41, i8* %42, i32* %43)
  store i8* %44, i8** %17, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = call i64 @strlen(i8* %45)
  store i64 %46, i64* %18, align 8
  %47 = load i8*, i8** %17, align 8
  %48 = call i64 @strlen(i8* %47)
  store i64 %48, i64* %19, align 8
  %49 = load i64, i64* %18, align 8
  %50 = load i64, i64* %19, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %62, label %52

52:                                               ; preds = %35
  %53 = load i8*, i8** %17, align 8
  %54 = load i64, i64* %19, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  %56 = load i64, i64* %18, align 8
  %57 = sub i64 0, %56
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8*, i8** %10, align 8
  %60 = call i64 @strcmp(i8* %58, i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %52, %35
  %63 = load i64, i64* @TRUE, align 8
  %64 = load i64*, i64** %7, align 8
  store i64 %63, i64* %64, align 8
  %65 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %65, i32** %6, align 8
  br label %95

66:                                               ; preds = %52
  br label %67

67:                                               ; preds = %66, %24
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @STMT_HAS_SWITCHED, align 4
  %72 = call i32 @svn_sqlite__get_statement(i32** %12, i32 %70, i32 %71)
  %73 = call i32 @SVN_ERR(i32 %72)
  %74 = load i32*, i32** %12, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i8*, i8** %9, align 8
  %79 = load i8*, i8** %15, align 8
  %80 = call i32 @svn_sqlite__bindf(i32* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %77, i8* %78, i8* %79)
  %81 = call i32 @SVN_ERR(i32 %80)
  %82 = load i32*, i32** %12, align 8
  %83 = call i32 @svn_sqlite__step(i64* %13, i32* %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  %85 = load i64, i64* %13, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %67
  %88 = load i64, i64* @TRUE, align 8
  %89 = load i64*, i64** %7, align 8
  store i64 %88, i64* %89, align 8
  br label %90

90:                                               ; preds = %87, %67
  %91 = load i32*, i32** %12, align 8
  %92 = call i32 @svn_sqlite__reset(i32* %91)
  %93 = call i32 @SVN_ERR(i32 %92)
  %94 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %94, i32** %6, align 8
  br label %95

95:                                               ; preds = %90, %62, %22
  %96 = load i32*, i32** %6, align 8
  ret i32* %96
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_base_get_info_internal(i32*, i32*, i32*, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_5__*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_fetch_repos_info(i8**, i32*, %struct.TYPE_5__*, i32, i32*) #1

declare dso_local i8* @svn_path_url_add_component2(i8*, i8*, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*, i8*) #1

declare dso_local i32 @svn_sqlite__step(i64*, i32*) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
