; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_svn_wc__db_op_raise_moved_away.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_svn_wc__db_op_raise_moved_away.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_op_raise_moved_away(i32* %0, i8* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = call i32 @svn_wc__db_wcroot_parse_local_abspath(i32** %11, i8** %12, i32* %19, i8* %20, i32* %21, i32* %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load i32*, i32** %11, align 8
  %26 = call i32 @VERIFY_USABLE_WCROOT(i32* %25)
  %27 = load i32*, i32** %11, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @svn_wc__db_read_conflict_internal(i32** %18, i32* null, i32* null, i32* %27, i8* %28, i32* %29, i32* %30)
  %32 = load i32*, i32** %11, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = load i32*, i32** %18, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @fetch_conflict_details(i32* %17, i32* %13, i32* %14, %struct.TYPE_6__** %15, %struct.TYPE_6__** %16, i32* %32, i32* %33, i8* %34, i32* %35, i32* %36, i32* %37)
  %39 = load i32*, i32** %11, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* @FALSE, align 4
  %43 = load i32, i32* @FALSE, align 4
  %44 = load i32, i32* @TRUE, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @svn_wc__db_op_mark_resolved_internal(i32* %39, i8* %40, i32* %41, i32 %42, i32 %43, i32 %44, i32* null, i32* %45)
  %47 = load i32*, i32** %11, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = load i32, i32* %17, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @svn_wc__db_op_raise_moved_away_internal(i32* %47, i8* %48, i32 %49, i32* %50, i32 %51, i32 %52, %struct.TYPE_6__* %53, %struct.TYPE_6__* %54, i32* %55)
  %57 = load i32*, i32** %11, align 8
  %58 = call i32 @SVN_WC__DB_WITH_TXN4(i32 %31, i32 %38, i32 %46, i32 %56, i32* %57)
  %59 = load i32*, i32** %11, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %61 = icmp ne %struct.TYPE_6__* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %5
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  br label %68

66:                                               ; preds = %5
  %67 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  br label %68

68:                                               ; preds = %66, %62
  %69 = phi i32 [ %65, %62 ], [ %67, %66 ]
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %71 = icmp ne %struct.TYPE_6__* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  br label %78

76:                                               ; preds = %68
  %77 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  br label %78

78:                                               ; preds = %76, %72
  %79 = phi i32 [ %75, %72 ], [ %77, %76 ]
  %80 = load i32, i32* %8, align 4
  %81 = load i8*, i8** %9, align 8
  %82 = load i32*, i32** %10, align 8
  %83 = call i32 @svn_wc__db_update_move_list_notify(i32* %59, i32 %69, i32 %79, i32 %80, i8* %81, i32* %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  %85 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %85
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_wcroot_parse_local_abspath(i32**, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @VERIFY_USABLE_WCROOT(i32*) #1

declare dso_local i32 @SVN_WC__DB_WITH_TXN4(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_wc__db_read_conflict_internal(i32**, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @fetch_conflict_details(i32*, i32*, i32*, %struct.TYPE_6__**, %struct.TYPE_6__**, i32*, i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_op_mark_resolved_internal(i32*, i8*, i32*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_op_raise_moved_away_internal(i32*, i8*, i32, i32*, i32, i32, %struct.TYPE_6__*, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @svn_wc__db_update_move_list_notify(i32*, i32, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
