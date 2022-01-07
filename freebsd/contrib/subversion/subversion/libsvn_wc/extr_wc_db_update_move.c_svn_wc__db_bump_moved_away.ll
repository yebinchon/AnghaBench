; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_svn_wc__db_bump_moved_away.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_svn_wc__db_bump_moved_away.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32 }

@STMT_CREATE_UPDATE_MOVE_LIST = common dso_local global i32 0, align 4
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_15__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @svn_wc__db_bump_moved_away(%struct.TYPE_14__* %0, i8* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @STMT_CREATE_UPDATE_MOVE_LIST, align 4
  %21 = call i32 @svn_sqlite__exec_statements(i32 %19, i32 %20)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %79

28:                                               ; preds = %5
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = call %struct.TYPE_15__* @svn_wc__db_scan_moved_to_internal(i8** %13, i8** %12, i8** %14, %struct.TYPE_14__* %29, i8* %30, i32 0, i32* %31, i32* %32)
  store %struct.TYPE_15__* %33, %struct.TYPE_15__** %15, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %35 = icmp ne %struct.TYPE_15__* %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %28
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %44 = call %struct.TYPE_15__* @svn_error_trace(%struct.TYPE_15__* %43)
  store %struct.TYPE_15__* %44, %struct.TYPE_15__** %6, align 8
  br label %88

45:                                               ; preds = %36
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %47 = call i32 @svn_error_clear(%struct.TYPE_15__* %46)
  br label %78

48:                                               ; preds = %28
  %49 = load i8*, i8** %13, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %77

51:                                               ; preds = %48
  %52 = load i8*, i8** %13, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = call i64 @strcmp(i8* %52, i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %51
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = load i32, i32* @FALSE, align 4
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @svn_wc__db_wclock_owns_lock_internal(i64* %16, %struct.TYPE_14__* %57, i8* %58, i32 %59, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load i64, i64* %16, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %56
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = load i8*, i8** %14, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = call i32 @bump_mark_tree_conflict(%struct.TYPE_14__* %66, i8* %67, i32 0, i8* %68, i8* %69, i32* %70, i32* %71)
  %73 = call i32 @SVN_ERR(i32 %72)
  br label %74

74:                                               ; preds = %65, %56
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_15__* %75, %struct.TYPE_15__** %6, align 8
  br label %88

76:                                               ; preds = %51
  br label %77

77:                                               ; preds = %76, %48
  br label %78

78:                                               ; preds = %77, %45
  br label %79

79:                                               ; preds = %78, %5
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i32*, i32** %10, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = call i32 @bump_moved_away(%struct.TYPE_14__* %80, i8* %81, i32 0, i32 %82, i32* %83, i32* %84)
  %86 = call i32 @SVN_ERR(i32 %85)
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_15__* %87, %struct.TYPE_15__** %6, align 8
  br label %88

88:                                               ; preds = %79, %74, %42
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  ret %struct.TYPE_15__* %89
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__exec_statements(i32, i32) #1

declare dso_local %struct.TYPE_15__* @svn_wc__db_scan_moved_to_internal(i8**, i8**, i8**, %struct.TYPE_14__*, i8*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_15__* @svn_error_trace(%struct.TYPE_15__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_15__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @svn_wc__db_wclock_owns_lock_internal(i64*, %struct.TYPE_14__*, i8*, i32, i32*) #1

declare dso_local i32 @bump_mark_tree_conflict(%struct.TYPE_14__*, i8*, i32, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @bump_moved_away(%struct.TYPE_14__*, i8*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
