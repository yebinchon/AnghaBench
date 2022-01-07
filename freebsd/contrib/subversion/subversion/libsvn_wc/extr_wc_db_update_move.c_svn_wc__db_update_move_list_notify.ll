; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_svn_wc__db_update_move_list_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_svn_wc__db_update_move_list_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i8*, i8*, i8*, i8*, i32 }

@STMT_SELECT_UPDATE_MOVE_LIST = common dso_local global i32 0, align 4
@kind_map_none = common dso_local global i32 0, align 4
@STMT_FINALIZE_UPDATE_MOVE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_update_move_list_notify(%struct.TYPE_8__* %0, i8* %1, i8* %2, i32 (i8*, %struct.TYPE_7__*, i32*)* %3, i8* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32 (i8*, %struct.TYPE_7__*, i32*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 (i8*, %struct.TYPE_7__*, i32*)* %3, i32 (i8*, %struct.TYPE_7__*, i32*)** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32* %5, i32** %12, align 8
  %19 = load i32 (i8*, %struct.TYPE_7__*, i32*)*, i32 (i8*, %struct.TYPE_7__*, i32*)** %10, align 8
  %20 = icmp ne i32 (i8*, %struct.TYPE_7__*, i32*)* %19, null
  br i1 %20, label %21, label %85

21:                                               ; preds = %6
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @STMT_SELECT_UPDATE_MOVE_LIST, align 4
  %26 = call i32 @svn_sqlite__get_statement(i32** %13, i32 %24, i32 %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  %28 = load i32*, i32** %13, align 8
  %29 = call i32 @svn_sqlite__step(i64* %15, i32* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  %31 = load i32*, i32** %12, align 8
  %32 = call i32* @svn_pool_create(i32* %31)
  store i32* %32, i32** %14, align 8
  br label %33

33:                                               ; preds = %36, %21
  %34 = load i64, i64* %15, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %79

36:                                               ; preds = %33
  %37 = load i32*, i32** %14, align 8
  %38 = call i32 @svn_pool_clear(i32* %37)
  %39 = load i32*, i32** %13, align 8
  %40 = call i8* @svn_sqlite__column_text(i32* %39, i32 0, i32* null)
  store i8* %40, i8** %16, align 8
  %41 = load i32*, i32** %13, align 8
  %42 = call i8* @svn_sqlite__column_int(i32* %41, i32 1)
  store i8* %42, i8** %17, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %16, align 8
  %47 = load i32*, i32** %14, align 8
  %48 = call i32 @svn_dirent_join(i32 %45, i8* %46, i32* %47)
  %49 = load i8*, i8** %17, align 8
  %50 = load i32*, i32** %14, align 8
  %51 = call %struct.TYPE_7__* @svn_wc_create_notify(i32 %48, i8* %49, i32* %50)
  store %struct.TYPE_7__* %51, %struct.TYPE_7__** %18, align 8
  %52 = load i32*, i32** %13, align 8
  %53 = load i32, i32* @kind_map_none, align 4
  %54 = call i32 @svn_sqlite__column_token(i32* %52, i32 2, i32 %53)
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = call i8* @svn_sqlite__column_int(i32* %57, i32 3)
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  %61 = load i32*, i32** %13, align 8
  %62 = call i8* @svn_sqlite__column_int(i32* %61, i32 4)
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  %71 = load i32 (i8*, %struct.TYPE_7__*, i32*)*, i32 (i8*, %struct.TYPE_7__*, i32*)** %10, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %74 = load i32*, i32** %12, align 8
  %75 = call i32 %71(i8* %72, %struct.TYPE_7__* %73, i32* %74)
  %76 = load i32*, i32** %13, align 8
  %77 = call i32 @svn_sqlite__step(i64* %15, i32* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  br label %33

79:                                               ; preds = %33
  %80 = load i32*, i32** %14, align 8
  %81 = call i32 @svn_pool_destroy(i32* %80)
  %82 = load i32*, i32** %13, align 8
  %83 = call i32 @svn_sqlite__reset(i32* %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  br label %85

85:                                               ; preds = %79, %6
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @STMT_FINALIZE_UPDATE_MOVE, align 4
  %90 = call i32 @svn_sqlite__get_statement(i32** %13, i32 %88, i32 %89)
  %91 = call i32 @SVN_ERR(i32 %90)
  %92 = load i32*, i32** %13, align 8
  %93 = call i32 @svn_sqlite__step_done(i32* %92)
  %94 = call i32 @SVN_ERR(i32 %93)
  %95 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %95
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__step(i64*, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i8* @svn_sqlite__column_text(i32*, i32, i32*) #1

declare dso_local i8* @svn_sqlite__column_int(i32*, i32) #1

declare dso_local %struct.TYPE_7__* @svn_wc_create_notify(i32, i8*, i32*) #1

declare dso_local i32 @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i32 @svn_sqlite__column_token(i32*, i32, i32) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i32 @svn_sqlite__step_done(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
