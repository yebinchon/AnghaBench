; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_svn_wc__db_op_break_moved_away.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_svn_wc__db_op_break_moved_away.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_op_break_moved_away(i32* %0, i8* %1, i8* %2, i64 %3, i32 %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32* %6, i32** %14, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = load i32*, i32** %14, align 8
  %22 = load i32*, i32** %14, align 8
  %23 = call i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_9__** %15, i8** %16, i32* %19, i8* %20, i32* %21, i32* %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %26 = call i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_9__* %25)
  %27 = load i8*, i8** %10, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %7
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %10, align 8
  %34 = call i8* @svn_dirent_skip_ancestor(i32 %32, i8* %33)
  store i8* %34, i8** %17, align 8
  br label %36

35:                                               ; preds = %7
  store i8* null, i8** %17, align 8
  br label %36

36:                                               ; preds = %35, %29
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %38 = load i8*, i8** %16, align 8
  %39 = load i8*, i8** %17, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i8*, i8** %17, align 8
  %43 = call i32 @relpath_depth(i8* %42)
  br label %47

44:                                               ; preds = %36
  %45 = load i8*, i8** %16, align 8
  %46 = call i32 @relpath_depth(i8* %45)
  br label %47

47:                                               ; preds = %44, %41
  %48 = phi i32 [ %43, %41 ], [ %46, %44 ]
  %49 = load i32*, i32** %14, align 8
  %50 = call i32 @find_src_op_depth(i32* %18, %struct.TYPE_9__* %37, i8* %38, i32 %48, i32* %49)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = load i8*, i8** %16, align 8
  %54 = load i32, i32* %18, align 4
  %55 = load i32*, i32** %14, align 8
  %56 = call i32 @break_moved_away(%struct.TYPE_9__* %51, i32* %52, i8* %53, i32 %54, i32* %55)
  %57 = load i64, i64* %11, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %47
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %61 = load i8*, i8** %16, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* @FALSE, align 4
  %64 = load i32, i32* @FALSE, align 4
  %65 = load i32, i32* @TRUE, align 4
  %66 = load i32*, i32** %14, align 8
  %67 = call i32* @svn_wc__db_op_mark_resolved_internal(%struct.TYPE_9__* %60, i8* %61, i32* %62, i32 %63, i32 %64, i32 %65, i32* null, i32* %66)
  br label %70

68:                                               ; preds = %47
  %69 = load i32*, i32** @SVN_NO_ERROR, align 8
  br label %70

70:                                               ; preds = %68, %59
  %71 = phi i32* [ %67, %59 ], [ %69, %68 ]
  %72 = load i32*, i32** @SVN_NO_ERROR, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %74 = call i32 @SVN_WC__DB_WITH_TXN4(i32 %50, i32 %56, i32* %71, i32* %72, %struct.TYPE_9__* %73)
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %76 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %77 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i8*, i8** %13, align 8
  %80 = load i32*, i32** %14, align 8
  %81 = call i32 @svn_wc__db_update_move_list_notify(%struct.TYPE_9__* %75, i32 %76, i32 %77, i32 %78, i8* %79, i32* %80)
  %82 = call i32 @SVN_ERR(i32 %81)
  %83 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %83
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_9__**, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_9__*) #1

declare dso_local i8* @svn_dirent_skip_ancestor(i32, i8*) #1

declare dso_local i32 @SVN_WC__DB_WITH_TXN4(i32, i32, i32*, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @find_src_op_depth(i32*, %struct.TYPE_9__*, i8*, i32, i32*) #1

declare dso_local i32 @relpath_depth(i8*) #1

declare dso_local i32 @break_moved_away(%struct.TYPE_9__*, i32*, i8*, i32, i32*) #1

declare dso_local i32* @svn_wc__db_op_mark_resolved_internal(%struct.TYPE_9__*, i8*, i32*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_update_move_list_notify(%struct.TYPE_9__*, i32, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
