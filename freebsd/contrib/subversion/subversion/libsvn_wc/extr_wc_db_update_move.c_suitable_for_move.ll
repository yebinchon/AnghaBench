; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_suitable_for_move.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_suitable_for_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@STMT_SELECT_BASE_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"is\00", align 1
@STMT_SELECT_REPOS_PATH_REVISION = common dso_local global i32 0, align 4
@SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [110 x i8] c"Cannot apply update because '%s' is a switched path (please switch it back to its original URL and try again)\00", align 1
@.str.2 = private unnamed_addr constant [96 x i8] c"Cannot apply update because '%s' is a mixed-revision working copy (please update and try again)\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*, i8*, i32*)* @suitable_for_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @suitable_for_move(%struct.TYPE_4__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32* @svn_pool_create(i32* %16)
  store i32* %17, i32** %12, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @STMT_SELECT_BASE_NODE, align 4
  %22 = call i32 @svn_sqlite__get_statement(i32** %8, i32 %20, i32 %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  %24 = load i32*, i32** %8, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @svn_sqlite__bindf(i32* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %27, i8* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @svn_sqlite__step(i64* %9, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load i64, i64* %9, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %3
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @svn_sqlite__reset(i32* %37)
  %39 = call i32* @svn_error_trace(i32 %38)
  store i32* %39, i32** %4, align 8
  br label %122

40:                                               ; preds = %3
  %41 = load i32*, i32** %8, align 8
  %42 = call i64 @svn_sqlite__column_revnum(i32* %41, i32 4)
  store i64 %42, i64* %10, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = call i8* @svn_sqlite__column_text(i32* %43, i32 1, i32* %44)
  store i8* %45, i8** %11, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @svn_sqlite__reset(i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @STMT_SELECT_REPOS_PATH_REVISION, align 4
  %53 = call i32 @svn_sqlite__get_statement(i32** %8, i32 %51, i32 %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load i32*, i32** %8, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @svn_sqlite__bindf(i32* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %58, i8* %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @svn_sqlite__step(i64* %9, i32* %62)
  %64 = call i32 @SVN_ERR(i32 %63)
  br label %65

65:                                               ; preds = %111, %40
  %66 = load i64, i64* %9, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %115

68:                                               ; preds = %65
  %69 = load i32*, i32** %8, align 8
  %70 = call i64 @svn_sqlite__column_revnum(i32* %69, i32 2)
  store i64 %70, i64* %13, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = call i8* @svn_sqlite__column_text(i32* %71, i32 0, i32* null)
  store i8* %72, i8** %14, align 8
  %73 = load i32*, i32** %12, align 8
  %74 = call i32 @svn_pool_clear(i32* %73)
  %75 = load i8*, i8** %6, align 8
  %76 = load i8*, i8** %14, align 8
  %77 = call i8* @svn_relpath_skip_ancestor(i8* %75, i8* %76)
  store i8* %77, i8** %15, align 8
  %78 = load i8*, i8** %11, align 8
  %79 = load i8*, i8** %15, align 8
  %80 = load i32*, i32** %12, align 8
  %81 = call i8* @svn_relpath_join(i8* %78, i8* %79, i32* %80)
  store i8* %81, i8** %15, align 8
  %82 = load i8*, i8** %15, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = call i8* @svn_sqlite__column_text(i32* %83, i32 1, i32* null)
  %85 = call i64 @strcmp(i8* %82, i8* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %68
  %88 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @svn_sqlite__reset(i32* %89)
  %91 = call i32 @_(i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.1, i64 0, i64 0))
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %93 = load i8*, i8** %14, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 @path_for_error_message(%struct.TYPE_4__* %92, i8* %93, i32* %94)
  %96 = call i32* @svn_error_createf(i32 %88, i32 %90, i32 %91, i32 %95)
  store i32* %96, i32** %4, align 8
  br label %122

97:                                               ; preds = %68
  %98 = load i64, i64* %10, align 8
  %99 = load i64, i64* %13, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %97
  %102 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %103 = load i32*, i32** %8, align 8
  %104 = call i32 @svn_sqlite__reset(i32* %103)
  %105 = call i32 @_(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.2, i64 0, i64 0))
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %107 = load i8*, i8** %6, align 8
  %108 = load i32*, i32** %7, align 8
  %109 = call i32 @path_for_error_message(%struct.TYPE_4__* %106, i8* %107, i32* %108)
  %110 = call i32* @svn_error_createf(i32 %102, i32 %104, i32 %105, i32 %109)
  store i32* %110, i32** %4, align 8
  br label %122

111:                                              ; preds = %97
  %112 = load i32*, i32** %8, align 8
  %113 = call i32 @svn_sqlite__step(i64* %9, i32* %112)
  %114 = call i32 @SVN_ERR(i32 %113)
  br label %65

115:                                              ; preds = %65
  %116 = load i32*, i32** %8, align 8
  %117 = call i32 @svn_sqlite__reset(i32* %116)
  %118 = call i32 @SVN_ERR(i32 %117)
  %119 = load i32*, i32** %12, align 8
  %120 = call i32 @svn_pool_destroy(i32* %119)
  %121 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %121, i32** %4, align 8
  br label %122

122:                                              ; preds = %115, %101, %87, %36
  %123 = load i32*, i32** %4, align 8
  ret i32* %123
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*) #1

declare dso_local i32 @svn_sqlite__step(i64*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i64 @svn_sqlite__column_revnum(i32*, i32) #1

declare dso_local i8* @svn_sqlite__column_text(i32*, i32, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i8* @svn_relpath_skip_ancestor(i8*, i8*) #1

declare dso_local i8* @svn_relpath_join(i8*, i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @path_for_error_message(%struct.TYPE_4__*, i8*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
