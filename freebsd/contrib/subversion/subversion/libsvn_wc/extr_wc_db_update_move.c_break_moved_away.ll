; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_break_moved_away.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_break_moved_away.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@STMT_CREATE_UPDATE_MOVE_LIST = common dso_local global i32 0, align 4
@STMT_SELECT_MOVED_DESCENDANTS_SRC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"isd\00", align 1
@kind_map = common dso_local global i32 0, align 4
@svn_wc_notify_move_broken = common dso_local global i32 0, align 4
@svn_wc_notify_state_inapplicable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*, i32*, i8*, i32, i32*)* @break_moved_away to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @break_moved_away(%struct.TYPE_6__* %0, i32* %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32* null, i32** %14, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @STMT_CREATE_UPDATE_MOVE_LIST, align 4
  %23 = call i32 @svn_sqlite__exec_statements(i32 %21, i32 %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @STMT_SELECT_MOVED_DESCENDANTS_SRC, align 4
  %29 = call i32 @svn_sqlite__get_statement(i32** %11, i32 %27, i32 %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  %31 = load i32*, i32** %11, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @svn_sqlite__bindf(i32* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %34, i8* %35, i32 %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @svn_sqlite__step(i64* %12, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load i32*, i32** %10, align 8
  %43 = call i32* @svn_pool_create(i32* %42)
  store i32* %43, i32** %13, align 8
  br label %44

44:                                               ; preds = %99, %5
  %45 = load i64, i64* %12, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %103

47:                                               ; preds = %44
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @svn_sqlite__column_int(i32* %48, i32 0)
  store i32 %49, i32* %15, align 4
  %50 = load i32*, i32** %11, align 8
  %51 = call i8* @svn_sqlite__column_text(i32* %50, i32 1, i32* null)
  store i8* %51, i8** %16, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* @kind_map, align 4
  %54 = call i32 @svn_sqlite__column_token(i32* %52, i32 2, i32 %53)
  store i32 %54, i32* %17, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = call i8* @svn_sqlite__column_text(i32* %55, i32 4, i32* null)
  store i8* %56, i8** %18, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = call i32 @svn_pool_clear(i32* %57)
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %60 = load i8*, i8** %16, align 8
  %61 = load i32*, i32** %13, align 8
  %62 = call i32* @verify_write_lock(%struct.TYPE_6__* %59, i8* %60, i32* %61)
  store i32* %62, i32** %14, align 8
  %63 = load i32*, i32** %14, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %47
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %67 = load i8*, i8** %18, align 8
  %68 = load i32*, i32** %13, align 8
  %69 = call i32* @verify_write_lock(%struct.TYPE_6__* %66, i8* %67, i32* %68)
  store i32* %69, i32** %14, align 8
  br label %70

70:                                               ; preds = %65, %47
  %71 = load i32*, i32** %14, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %103

74:                                               ; preds = %70
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %76 = load i8*, i8** %16, align 8
  %77 = load i32, i32* %15, align 4
  %78 = load i8*, i8** %18, align 8
  %79 = load i32*, i32** %13, align 8
  %80 = call i32 @svn_wc__db_op_break_move_internal(%struct.TYPE_6__* %75, i8* %76, i32 %77, i8* %78, i32* null, i32* %79)
  %81 = call i32* @svn_error_trace(i32 %80)
  store i32* %81, i32** %14, align 8
  %82 = load i32*, i32** %14, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  br label %103

85:                                               ; preds = %74
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %87 = load i8*, i8** %16, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = load i32, i32* @svn_wc_notify_move_broken, align 4
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* @svn_wc_notify_state_inapplicable, align 4
  %92 = load i32, i32* @svn_wc_notify_state_inapplicable, align 4
  %93 = load i32*, i32** %10, align 8
  %94 = call i32 @update_move_list_add(%struct.TYPE_6__* %86, i8* %87, i32* %88, i32 %89, i32 %90, i32 %91, i32 %92, i32* null, i32* null, i32* %93)
  %95 = call i32* @svn_error_trace(i32 %94)
  store i32* %95, i32** %14, align 8
  %96 = load i32*, i32** %14, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %85
  br label %103

99:                                               ; preds = %85
  %100 = load i32*, i32** %11, align 8
  %101 = call i32 @svn_sqlite__step(i64* %12, i32* %100)
  %102 = call i32 @SVN_ERR(i32 %101)
  br label %44

103:                                              ; preds = %98, %84, %73, %44
  %104 = load i32*, i32** %13, align 8
  %105 = call i32 @svn_pool_destroy(i32* %104)
  %106 = load i32*, i32** %14, align 8
  %107 = load i32*, i32** %11, align 8
  %108 = call i32 @svn_sqlite__reset(i32* %107)
  %109 = call i32* @svn_error_compose_create(i32* %106, i32 %108)
  ret i32* %109
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__exec_statements(i32, i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*, i32) #1

declare dso_local i32 @svn_sqlite__step(i64*, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_sqlite__column_int(i32*, i32) #1

declare dso_local i8* @svn_sqlite__column_text(i32*, i32, i32*) #1

declare dso_local i32 @svn_sqlite__column_token(i32*, i32, i32) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32* @verify_write_lock(%struct.TYPE_6__*, i8*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_wc__db_op_break_move_internal(%struct.TYPE_6__*, i8*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @update_move_list_add(%struct.TYPE_6__*, i8*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
