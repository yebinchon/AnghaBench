; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_update_move_list_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_update_move_list_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@svn_wc_notify_tree_conflict = common dso_local global i32 0, align 4
@svn_wc_notify_state_inapplicable = common dso_local global i32 0, align 4
@STMT_INSERT_UPDATE_MOVE_LIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"sdtdd\00", align 1
@kind_map_none = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*, i8*, i32*, i32, i32, i32, i32, i32*, i32*, i32*)* @update_move_list_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @update_move_list_add(%struct.TYPE_5__* %0, i8* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7, i32* %8, i32* %9) #0 {
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32* %9, i32** %20, align 8
  %23 = load i32*, i32** %18, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %42

25:                                               ; preds = %10
  %26 = load i32*, i32** %13, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %18, align 8
  %31 = load i32*, i32** %20, align 8
  %32 = load i32*, i32** %20, align 8
  %33 = call i32 @svn_wc__conflict_read_info(i32* null, i32* null, i32* null, i32* null, i64* %22, i32* %26, i32 %29, i32* %30, i32* %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load i64, i64* %22, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %25
  %38 = load i32, i32* @svn_wc_notify_tree_conflict, align 4
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* @svn_wc_notify_state_inapplicable, align 4
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* @svn_wc_notify_state_inapplicable, align 4
  store i32 %40, i32* %17, align 4
  br label %41

41:                                               ; preds = %37, %25
  br label %42

42:                                               ; preds = %41, %10
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @STMT_INSERT_UPDATE_MOVE_LIST, align 4
  %47 = call i32 @svn_sqlite__get_statement(i32** %21, i32 %45, i32 %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load i32*, i32** %21, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* @kind_map_none, align 4
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* %17, align 4
  %56 = call i32 @svn_sqlite__bindf(i32* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  %58 = load i32*, i32** %21, align 8
  %59 = call i32 @svn_sqlite__step_done(i32* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  %61 = load i32*, i32** %18, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %42
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = load i32*, i32** %18, align 8
  %67 = load i32*, i32** %20, align 8
  %68 = call i32 @svn_wc__db_mark_conflict_internal(%struct.TYPE_5__* %64, i8* %65, i32* %66, i32* %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  br label %70

70:                                               ; preds = %63, %42
  %71 = load i32*, i32** %19, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %75 = load i32*, i32** %19, align 8
  %76 = load i32*, i32** %20, align 8
  %77 = call i32 @svn_wc__db_wq_add_internal(%struct.TYPE_5__* %74, i32* %75, i32* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  br label %79

79:                                               ; preds = %73, %70
  %80 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %80
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__conflict_read_info(i32*, i32*, i32*, i32*, i64*, i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @svn_sqlite__step_done(i32*) #1

declare dso_local i32 @svn_wc__db_mark_conflict_internal(%struct.TYPE_5__*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_wq_add_internal(%struct.TYPE_5__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
