; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_op_make_copy_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_op_make_copy_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

@STMT_SELECT_WORKING_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"is\00", align 1
@SVN_ERR_WC_PATH_UNEXPECTED_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Modification of '%s' already exists\00", align 1
@STMT_COPY_OP_DEPTH_RECURSIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"isdd\00", align 1
@STMT_INSERT_DELETE_FROM_NODE_RECURSIVE = common dso_local global i32 0, align 4
@INVALID_REPOS_ID = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_op_make_copy_internal(%struct.TYPE_8__* %0, i8* %1, i64 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 -1, i32* %16, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @STMT_SELECT_WORKING_NODE, align 4
  %22 = call i32 @svn_sqlite__get_statement(i32** %14, i32 %20, i32 %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  %24 = load i32*, i32** %14, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %27, i8* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  %31 = load i32*, i32** %14, align 8
  %32 = call i32 @svn_sqlite__step(i64* %15, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load i64, i64* %15, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %6
  %37 = load i32*, i32** %14, align 8
  %38 = call i32 @svn_sqlite__column_int(i32* %37, i32 0)
  store i32 %38, i32* %16, align 4
  br label %39

39:                                               ; preds = %36, %6
  %40 = load i32*, i32** %14, align 8
  %41 = call i32 @svn_sqlite__reset(i32* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  %43 = load i64, i64* %15, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %78

45:                                               ; preds = %39
  %46 = load i32, i32* %16, align 4
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @relpath_depth(i8* %47)
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load i32, i32* @SVN_ERR_WC_PATH_UNEXPECTED_STATUS, align 4
  %52 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = call i32 @path_for_error_message(%struct.TYPE_8__* %53, i8* %54, i32* %55)
  %57 = call i32* @svn_error_createf(i32 %51, i32* null, i32 %52, i32 %56)
  store i32* %57, i32** %7, align 8
  br label %146

58:                                               ; preds = %45
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @STMT_COPY_OP_DEPTH_RECURSIVE, align 4
  %63 = call i32 @svn_sqlite__get_statement(i32** %14, i32 %61, i32 %62)
  %64 = call i32 @SVN_ERR(i32 %63)
  %65 = load i32*, i32** %14, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i8*, i8** %9, align 8
  %70 = load i32, i32* %16, align 4
  %71 = load i8*, i8** %9, align 8
  %72 = call i32 @relpath_depth(i8* %71)
  %73 = call i32 (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %68, i8* %69, i32 %70, i32 %72)
  %74 = call i32 @SVN_ERR(i32 %73)
  %75 = load i32*, i32** %14, align 8
  %76 = call i32 @svn_sqlite__step_done(i32* %75)
  %77 = call i32 @SVN_ERR(i32 %76)
  br label %127

78:                                               ; preds = %39
  %79 = load i8*, i8** %9, align 8
  %80 = call i32 @relpath_depth(i8* %79)
  store i32 %80, i32* %16, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %82 = load i8*, i8** %9, align 8
  %83 = load i32*, i32** %13, align 8
  %84 = call i32 @catch_copy_of_server_excluded(%struct.TYPE_8__* %81, i8* %82, i32* %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @STMT_INSERT_DELETE_FROM_NODE_RECURSIVE, align 4
  %90 = call i32 @svn_sqlite__get_statement(i32** %14, i32 %88, i32 %89)
  %91 = call i32 @SVN_ERR(i32 %90)
  %92 = load i32*, i32** %14, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i8*, i8** %9, align 8
  %97 = load i32, i32* %16, align 4
  %98 = call i32 (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %95, i8* %96, i32 0, i32 %97)
  %99 = call i32 @SVN_ERR(i32 %98)
  %100 = load i32*, i32** %14, align 8
  %101 = call i32 @svn_sqlite__update(i32* %17, i32* %100)
  %102 = call i32 @SVN_ERR(i32 %101)
  %103 = load i32, i32* %17, align 4
  %104 = icmp sgt i32 %103, 0
  %105 = zext i1 %104 to i32
  %106 = call i32 @SVN_ERR_ASSERT(i32 %105)
  %107 = load i64, i64* %10, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %116, label %109

109:                                              ; preds = %78
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %111 = load i8*, i8** %9, align 8
  %112 = load i32, i32* %16, align 4
  %113 = load i32*, i32** %13, align 8
  %114 = call i32 @db_move_moved_to_down_recursive(%struct.TYPE_8__* %110, i8* %111, i32 %112, i32* %113)
  %115 = call i32 @SVN_ERR(i32 %114)
  br label %116

116:                                              ; preds = %109, %78
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %118 = load i8*, i8** %9, align 8
  %119 = load i32, i32* @INVALID_REPOS_ID, align 4
  %120 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %121 = load i32, i32* %16, align 4
  %122 = load i32, i32* @FALSE, align 4
  %123 = load i32, i32* %16, align 4
  %124 = load i32*, i32** %13, align 8
  %125 = call i32 @make_copy_txn(%struct.TYPE_8__* %117, i8* %118, i32 %119, i32* null, i32 %120, i32 %121, i32 %122, i32 %123, i32* %124)
  %126 = call i32 @SVN_ERR(i32 %125)
  br label %127

127:                                              ; preds = %116, %58
  %128 = load i32*, i32** %11, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %137

130:                                              ; preds = %127
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %132 = load i8*, i8** %9, align 8
  %133 = load i32*, i32** %11, align 8
  %134 = load i32*, i32** %13, align 8
  %135 = call i32 @svn_wc__db_mark_conflict_internal(%struct.TYPE_8__* %131, i8* %132, i32* %133, i32* %134)
  %136 = call i32 @SVN_ERR(i32 %135)
  br label %137

137:                                              ; preds = %130, %127
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** %12, align 8
  %142 = load i32*, i32** %13, align 8
  %143 = call i32 @add_work_items(i32 %140, i32* %141, i32* %142)
  %144 = call i32 @SVN_ERR(i32 %143)
  %145 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %145, i32** %7, align 8
  br label %146

146:                                              ; preds = %137, %50
  %147 = load i32*, i32** %7, align 8
  ret i32* %147
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*, ...) #1

declare dso_local i32 @svn_sqlite__step(i64*, i32*) #1

declare dso_local i32 @svn_sqlite__column_int(i32*, i32) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i32 @relpath_depth(i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @path_for_error_message(%struct.TYPE_8__*, i8*, i32*) #1

declare dso_local i32 @svn_sqlite__step_done(i32*) #1

declare dso_local i32 @catch_copy_of_server_excluded(%struct.TYPE_8__*, i8*, i32*) #1

declare dso_local i32 @svn_sqlite__update(i32*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @db_move_moved_to_down_recursive(%struct.TYPE_8__*, i8*, i32, i32*) #1

declare dso_local i32 @make_copy_txn(%struct.TYPE_8__*, i8*, i32, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_wc__db_mark_conflict_internal(%struct.TYPE_8__*, i8*, i32*, i32*) #1

declare dso_local i32 @add_work_items(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
