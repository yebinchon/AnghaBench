; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_svn_wc__db_op_raise_moved_away_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_svn_wc__db_op_raise_moved_away_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@STMT_CREATE_UPDATE_MOVE_LIST = common dso_local global i32 0, align 4
@STMT_SELECT_MOVED_DESCENDANTS_SRC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"isd\00", align 1
@kind_map = common dso_local global i32 0, align 4
@svn_wc_conflict_reason_moved_away = common dso_local global i32 0, align 4
@svn_wc_notify_tree_conflict = common dso_local global i32 0, align 4
@svn_wc_notify_state_inapplicable = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_op_raise_moved_away_internal(%struct.TYPE_5__* %0, i8* %1, i32 %2, i32* %3, i32 %4, i32 %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %30 = load i32*, i32** %19, align 8
  %31 = call i32* @svn_pool_create(i32* %30)
  store i32* %31, i32** %22, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @STMT_CREATE_UPDATE_MOVE_LIST, align 4
  %36 = call i32 @svn_sqlite__exec_statements(i32 %34, i32 %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @STMT_SELECT_MOVED_DESCENDANTS_SRC, align 4
  %42 = call i32 @svn_sqlite__get_statement(i32** %20, i32 %40, i32 %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load i32*, i32** %20, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %12, align 8
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @svn_sqlite__bindf(i32* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %47, i8* %48, i32 %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  %52 = load i32*, i32** %20, align 8
  %53 = call i32 @svn_sqlite__step(i64* %21, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  br label %55

55:                                               ; preds = %116, %9
  %56 = load i64, i64* %21, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %120

58:                                               ; preds = %55
  %59 = load i32*, i32** %20, align 8
  %60 = call i32 @svn_sqlite__column_int(i32* %59, i32 0)
  store i32 %60, i32* %24, align 4
  %61 = load i32*, i32** %20, align 8
  %62 = call i8* @svn_sqlite__column_text(i32* %61, i32 1, i32* null)
  store i8* %62, i8** %25, align 8
  %63 = load i32*, i32** %20, align 8
  %64 = load i32, i32* @kind_map, align 4
  %65 = call i32 @svn_sqlite__column_token(i32* %63, i32 2, i32 %64)
  store i32 %65, i32* %26, align 4
  %66 = load i32*, i32** %20, align 8
  %67 = call i8* @svn_sqlite__column_text(i32* %66, i32 3, i32* null)
  store i8* %67, i8** %27, align 8
  %68 = load i32*, i32** %20, align 8
  %69 = call i8* @svn_sqlite__column_text(i32* %68, i32 4, i32* null)
  store i8* %69, i8** %28, align 8
  %70 = load i32*, i32** %22, align 8
  %71 = call i32 @svn_pool_clear(i32* %70)
  %72 = load i8*, i8** %27, align 8
  %73 = icmp ne i8* %72, null
  %74 = zext i1 %73 to i32
  %75 = call i32 @SVN_ERR_ASSERT(i32 %74)
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %77 = load i8*, i8** %25, align 8
  %78 = load i8*, i8** %28, align 8
  %79 = load i32*, i32** %14, align 8
  %80 = load i32*, i32** %17, align 8
  %81 = load i32*, i32** %18, align 8
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %26, align 4
  %84 = load i32, i32* %26, align 4
  %85 = load i8*, i8** %27, align 8
  %86 = load i32, i32* @svn_wc_conflict_reason_moved_away, align 4
  %87 = load i32, i32* %16, align 4
  %88 = load i8*, i8** %25, align 8
  %89 = load i32, i32* %24, align 4
  %90 = load i32*, i32** %22, align 8
  %91 = call i32 @svn_relpath_prefix(i8* %88, i32 %89, i32* %90)
  %92 = load i32*, i32** %22, align 8
  %93 = load i32*, i32** %22, align 8
  %94 = call i32* @create_tree_conflict(i32** %29, %struct.TYPE_5__* %76, i8* %77, i8* %78, i32* %79, i32* %80, i32* %81, i32 %82, i32 %83, i32 %84, i8* %85, i32 %86, i32 %87, i32 %91, i32* %92, i32* %93)
  store i32* %94, i32** %23, align 8
  %95 = load i32*, i32** %23, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %108, label %97

97:                                               ; preds = %58
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %99 = load i8*, i8** %25, align 8
  %100 = load i32*, i32** %14, align 8
  %101 = load i32, i32* @svn_wc_notify_tree_conflict, align 4
  %102 = load i32, i32* %26, align 4
  %103 = load i32, i32* @svn_wc_notify_state_inapplicable, align 4
  %104 = load i32, i32* @svn_wc_notify_state_inapplicable, align 4
  %105 = load i32*, i32** %29, align 8
  %106 = load i32*, i32** %19, align 8
  %107 = call i32* @update_move_list_add(%struct.TYPE_5__* %98, i8* %99, i32* %100, i32 %101, i32 %102, i32 %103, i32 %104, i32* %105, i32* null, i32* %106)
  store i32* %107, i32** %23, align 8
  br label %108

108:                                              ; preds = %97, %58
  %109 = load i32*, i32** %23, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load i32*, i32** %23, align 8
  %113 = load i32*, i32** %20, align 8
  %114 = call i32 @svn_sqlite__reset(i32* %113)
  %115 = call i32* @svn_error_compose_create(i32* %112, i32 %114)
  store i32* %115, i32** %10, align 8
  br label %127

116:                                              ; preds = %108
  %117 = load i32*, i32** %20, align 8
  %118 = call i32 @svn_sqlite__step(i64* %21, i32* %117)
  %119 = call i32 @SVN_ERR(i32 %118)
  br label %55

120:                                              ; preds = %55
  %121 = load i32*, i32** %20, align 8
  %122 = call i32 @svn_sqlite__reset(i32* %121)
  %123 = call i32 @SVN_ERR(i32 %122)
  %124 = load i32*, i32** %22, align 8
  %125 = call i32 @svn_pool_destroy(i32* %124)
  %126 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %126, i32** %10, align 8
  br label %127

127:                                              ; preds = %120, %111
  %128 = load i32*, i32** %10, align 8
  ret i32* %128
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__exec_statements(i32, i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*, i32) #1

declare dso_local i32 @svn_sqlite__step(i64*, i32*) #1

declare dso_local i32 @svn_sqlite__column_int(i32*, i32) #1

declare dso_local i8* @svn_sqlite__column_text(i32*, i32, i32*) #1

declare dso_local i32 @svn_sqlite__column_token(i32*, i32, i32) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32* @create_tree_conflict(i32**, %struct.TYPE_5__*, i8*, i8*, i32*, i32*, i32*, i32, i32, i32, i8*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_relpath_prefix(i8*, i32, i32*) #1

declare dso_local i32* @update_move_list_add(%struct.TYPE_5__*, i8*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
