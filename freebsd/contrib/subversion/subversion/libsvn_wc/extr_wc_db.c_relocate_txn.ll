; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_relocate_txn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_relocate_txn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

@svn_wc__db_status_excluded = common dso_local global i64 0, align 8
@INVALID_REPOS_ID = common dso_local global i64 0, align 8
@svn_wc__db_status_deleted = common dso_local global i64 0, align 8
@svn_wc__db_status_added = common dso_local global i64 0, align 8
@STMT_RECURSIVE_UPDATE_NODE_REPO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"isii\00", align 1
@STMT_UPDATE_LOCK_REPOS_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"ii\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_8__*, i8*, i8*, i32*)* @relocate_txn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @relocate_txn(%struct.TYPE_8__* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %18 = load i8*, i8** %6, align 8
  store i8* %18, i8** %11, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @read_info(i64* %12, i32* null, i32* null, i32* null, i64* %15, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i64* %14, i32* null, i32* null, %struct.TYPE_8__* %19, i8* %20, i32* %21, i32* %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load i64, i64* %12, align 8
  %26 = load i64, i64* @svn_wc__db_status_excluded, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %4
  %29 = load i8*, i8** %11, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i8* @svn_relpath_dirname(i8* %29, i32* %30)
  store i8* %31, i8** %16, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = load i8*, i8** %16, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @read_info(i64* %12, i32* null, i32* null, i32* null, i64* %15, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i64* null, i32* null, i32* null, %struct.TYPE_8__* %32, i8* %33, i32* %34, i32* %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  %38 = load i8*, i8** %16, align 8
  store i8* %38, i8** %11, align 8
  br label %39

39:                                               ; preds = %28, %4
  %40 = load i64, i64* %15, align 8
  %41 = load i64, i64* @INVALID_REPOS_ID, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %81

43:                                               ; preds = %39
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* @svn_wc__db_status_deleted, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %43
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @scan_deletion(i32* null, i32* null, i8** %17, i32* null, %struct.TYPE_8__* %48, i8* %49, i32* %50, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load i8*, i8** %17, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %47
  %57 = load i64, i64* @svn_wc__db_status_added, align 8
  store i64 %57, i64* %12, align 8
  %58 = load i8*, i8** %17, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = call i8* @svn_relpath_dirname(i8* %58, i32* %59)
  store i8* %60, i8** %11, align 8
  br label %61

61:                                               ; preds = %56, %47
  br label %62

62:                                               ; preds = %61, %43
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* @svn_wc__db_status_added, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 @scan_addition(i32* null, i32* null, i32* null, i64* %15, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, %struct.TYPE_8__* %67, i8* %68, i32* %69, i32* %70)
  %72 = call i32 @SVN_ERR(i32 %71)
  br label %80

73:                                               ; preds = %62
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @svn_wc__db_base_get_info_internal(i32* null, i32* null, i32* null, i32* null, i64* %15, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, %struct.TYPE_8__* %74, i8* %75, i32* %76, i32* %77)
  %79 = call i32 @SVN_ERR(i32 %78)
  br label %80

80:                                               ; preds = %73, %66
  br label %81

81:                                               ; preds = %80, %39
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %83 = load i64, i64* %15, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = call i32 @svn_wc__db_fetch_repos_info(i32* null, i8** %13, %struct.TYPE_8__* %82, i64 %83, i32* %84)
  %86 = call i32 @SVN_ERR(i32 %85)
  %87 = load i8*, i8** %13, align 8
  %88 = call i32 @SVN_ERR_ASSERT(i8* %87)
  %89 = load i8*, i8** %7, align 8
  %90 = load i8*, i8** %13, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %8, align 8
  %95 = call i32 @create_repos_id(i64* %10, i8* %89, i8* %90, i32 %93, i32* %94)
  %96 = call i32 @SVN_ERR(i32 %95)
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @STMT_RECURSIVE_UPDATE_NODE_REPO, align 4
  %101 = call i32 @svn_sqlite__get_statement(i32** %9, i32 %99, i32 %100)
  %102 = call i32 @SVN_ERR(i32 %101)
  %103 = load i32*, i32** %9, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = load i8*, i8** %6, align 8
  %109 = ptrtoint i8* %108 to i64
  %110 = load i64, i64* %15, align 8
  %111 = load i64, i64* %10, align 8
  %112 = call i32 (i32*, i8*, i64, i64, ...) @svn_sqlite__bindf(i32* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %107, i64 %109, i64 %110, i64 %111)
  %113 = call i32 @SVN_ERR(i32 %112)
  %114 = load i32*, i32** %9, align 8
  %115 = call i32 @svn_sqlite__step_done(i32* %114)
  %116 = call i32 @SVN_ERR(i32 %115)
  %117 = load i64, i64* %14, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %134

119:                                              ; preds = %81
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @STMT_UPDATE_LOCK_REPOS_ID, align 4
  %124 = call i32 @svn_sqlite__get_statement(i32** %9, i32 %122, i32 %123)
  %125 = call i32 @SVN_ERR(i32 %124)
  %126 = load i32*, i32** %9, align 8
  %127 = load i64, i64* %15, align 8
  %128 = load i64, i64* %10, align 8
  %129 = call i32 (i32*, i8*, i64, i64, ...) @svn_sqlite__bindf(i32* %126, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %127, i64 %128)
  %130 = call i32 @SVN_ERR(i32 %129)
  %131 = load i32*, i32** %9, align 8
  %132 = call i32 @svn_sqlite__step_done(i32* %131)
  %133 = call i32 @SVN_ERR(i32 %132)
  br label %134

134:                                              ; preds = %119, %81
  %135 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %135
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @read_info(i64*, i32*, i32*, i32*, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i64*, i32*, i32*, %struct.TYPE_8__*, i8*, i32*, i32*) #1

declare dso_local i8* @svn_relpath_dirname(i8*, i32*) #1

declare dso_local i32 @scan_deletion(i32*, i32*, i8**, i32*, %struct.TYPE_8__*, i8*, i32*, i32*) #1

declare dso_local i32 @scan_addition(i32*, i32*, i32*, i64*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_8__*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_base_get_info_internal(i32*, i32*, i32*, i32*, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_8__*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_fetch_repos_info(i32*, i8**, %struct.TYPE_8__*, i64, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i8*) #1

declare dso_local i32 @create_repos_id(i64*, i8*, i8*, i32, i32*) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i64, i64, ...) #1

declare dso_local i32 @svn_sqlite__step_done(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
