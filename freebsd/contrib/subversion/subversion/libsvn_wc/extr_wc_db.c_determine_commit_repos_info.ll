; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_determine_commit_repos_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_determine_commit_repos_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@STMT_SELECT_NODE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"is\00", align 1
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"The node '%s' was not found.\00", align 1
@presence_map = common dso_local global i32 0, align 4
@svn_wc__db_status_base_deleted = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8**, %struct.TYPE_4__*, i8*, i32*, i32*)* @determine_commit_repos_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @determine_commit_repos_info(i32* %0, i8** %1, %struct.TYPE_4__* %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i8** %1, i8*** %9, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @STMT_SELECT_NODE_INFO, align 4
  %25 = call i32* @svn_sqlite__get_statement(i32** %14, i32 %23, i32 %24)
  %26 = call i32 @SVN_ERR(i32* %25)
  %27 = load i32*, i32** %14, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %11, align 8
  %32 = call i32* @svn_sqlite__bindf(i32* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %30, i8* %31)
  %33 = call i32 @SVN_ERR(i32* %32)
  %34 = load i32*, i32** %14, align 8
  %35 = call i32* @svn_sqlite__step(i32* %15, i32* %34)
  %36 = call i32 @SVN_ERR(i32* %35)
  %37 = load i32, i32* %15, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %6
  %40 = load i32, i32* @SVN_ERR_WC_PATH_NOT_FOUND, align 4
  %41 = load i32*, i32** %14, align 8
  %42 = call i32* @svn_sqlite__reset(i32* %41)
  %43 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load i32*, i32** %13, align 8
  %47 = call i32 @path_for_error_message(%struct.TYPE_4__* %44, i8* %45, i32* %46)
  %48 = call i32* @svn_error_createf(i32 %40, i32* %42, i32 %43, i32 %47)
  store i32* %48, i32** %7, align 8
  br label %115

49:                                               ; preds = %6
  %50 = load i32*, i32** %14, align 8
  %51 = call i32 @svn_sqlite__column_int(i32* %50, i32 0)
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %16, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %88

54:                                               ; preds = %49
  %55 = load i32*, i32** %14, align 8
  %56 = load i32, i32* @presence_map, align 4
  %57 = call i64 @svn_sqlite__column_token(i32* %55, i32 3, i32 %56)
  store i64 %57, i64* %17, align 8
  %58 = load i64, i64* %17, align 8
  %59 = load i64, i64* @svn_wc__db_status_base_deleted, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load i32*, i32** %14, align 8
  %63 = call i32* @svn_sqlite__step_row(i32* %62)
  %64 = call i32 @SVN_ERR(i32* %63)
  %65 = load i32*, i32** %14, align 8
  %66 = call i32 @svn_sqlite__column_int(i32* %65, i32 0)
  store i32 %66, i32* %16, align 4
  br label %87

67:                                               ; preds = %54
  %68 = load i32*, i32** %14, align 8
  %69 = call i32* @svn_sqlite__reset(i32* %68)
  %70 = call i32 @SVN_ERR(i32* %69)
  %71 = load i8*, i8** %11, align 8
  %72 = load i32*, i32** %13, align 8
  %73 = call i32 @svn_relpath_split(i8** %19, i8** %20, i8* %71, i32* %72)
  %74 = load i32*, i32** %8, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %76 = load i8*, i8** %19, align 8
  %77 = load i32*, i32** %13, align 8
  %78 = load i32*, i32** %13, align 8
  %79 = call i32* @determine_commit_repos_info(i32* %74, i8** %18, %struct.TYPE_4__* %75, i8* %76, i32* %77, i32* %78)
  %80 = call i32 @SVN_ERR(i32* %79)
  %81 = load i8*, i8** %18, align 8
  %82 = load i8*, i8** %20, align 8
  %83 = load i32*, i32** %12, align 8
  %84 = call i8* @svn_relpath_join(i8* %81, i8* %82, i32* %83)
  %85 = load i8**, i8*** %9, align 8
  store i8* %84, i8** %85, align 8
  %86 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %86, i32** %7, align 8
  br label %115

87:                                               ; preds = %61
  br label %88

88:                                               ; preds = %87, %49
  %89 = load i32, i32* %16, align 4
  %90 = icmp eq i32 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i32 @SVN_ERR_ASSERT(i32 %91)
  %93 = load i32*, i32** %14, align 8
  %94 = call i32 @svn_sqlite__column_is_null(i32* %93, i32 1)
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = call i32 @SVN_ERR_ASSERT(i32 %97)
  %99 = load i32*, i32** %14, align 8
  %100 = call i32 @svn_sqlite__column_is_null(i32* %99, i32 2)
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  %104 = call i32 @SVN_ERR_ASSERT(i32 %103)
  %105 = load i32*, i32** %14, align 8
  %106 = call i32 @svn_sqlite__column_int64(i32* %105, i32 1)
  %107 = load i32*, i32** %8, align 8
  store i32 %106, i32* %107, align 4
  %108 = load i32*, i32** %14, align 8
  %109 = load i32*, i32** %12, align 8
  %110 = call i8* @svn_sqlite__column_text(i32* %108, i32 2, i32* %109)
  %111 = load i8**, i8*** %9, align 8
  store i8* %110, i8** %111, align 8
  %112 = load i32*, i32** %14, align 8
  %113 = call i32* @svn_sqlite__reset(i32* %112)
  %114 = call i32* @svn_error_trace(i32* %113)
  store i32* %114, i32** %7, align 8
  br label %115

115:                                              ; preds = %88, %67, %39
  %116 = load i32*, i32** %7, align 8
  ret i32* %116
}

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32* @svn_sqlite__bindf(i32*, i8*, i32, i8*) #1

declare dso_local i32* @svn_sqlite__step(i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32* @svn_sqlite__reset(i32*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @path_for_error_message(%struct.TYPE_4__*, i8*, i32*) #1

declare dso_local i32 @svn_sqlite__column_int(i32*, i32) #1

declare dso_local i64 @svn_sqlite__column_token(i32*, i32, i32) #1

declare dso_local i32* @svn_sqlite__step_row(i32*) #1

declare dso_local i32 @svn_relpath_split(i8**, i8**, i8*, i32*) #1

declare dso_local i8* @svn_relpath_join(i8*, i8*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_sqlite__column_is_null(i32*, i32) #1

declare dso_local i32 @svn_sqlite__column_int64(i32*, i32) #1

declare dso_local i8* @svn_sqlite__column_text(i32*, i32, i32*) #1

declare dso_local i32* @svn_error_trace(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
