; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_tc_editor_update_add_new_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_tc_editor_update_add_new_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32, i8* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_node_none = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_added = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@svn_wc_notify_update_add = common dso_local global i32 0, align 4
@svn_wc_notify_state_inapplicable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__*, i64, i32*, i32*, i64, i32*, i32*, i32*)* @tc_editor_update_add_new_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @tc_editor_update_add_new_file(%struct.TYPE_9__* %0, i64 %1, i32* %2, i32* %3, i64 %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %10, align 8
  store i64 %1, i64* %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i64 %4, i64* %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %21 = load i32*, i32** %17, align 8
  %22 = call i32 @update_local_add_mark_parent_edited(%struct.TYPE_9__* %20, i32* %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %8
  %29 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %29, i32** %9, align 8
  br label %100

30:                                               ; preds = %8
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* @svn_node_none, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* @svn_node_file, align 8
  %38 = load i32, i32* @svn_wc_conflict_reason_added, align 4
  %39 = load i32*, i32** %17, align 8
  %40 = load i32*, i32** %17, align 8
  %41 = call i32 @mark_update_add_add_tree_conflict(%struct.TYPE_9__* %35, i64 %36, i64 %37, i32 %38, i32* %39, i32* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  %43 = load i8*, i8** @TRUE, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %46, i32** %9, align 8
  br label %100

47:                                               ; preds = %30
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32*, i32** %17, align 8
  %59 = call i8* @svn_dirent_join(i32 %54, i32 %57, i32* %58)
  store i8* %59, i8** %18, align 8
  %60 = load i8*, i8** %18, align 8
  %61 = load i32*, i32** %17, align 8
  %62 = call i32 @svn_io_check_path(i8* %60, i64* %19, i32* %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  %64 = load i64, i64* %19, align 8
  %65 = load i64, i64* @svn_node_file, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %47
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %69 = load i64, i64* %14, align 8
  %70 = load i64, i64* %19, align 8
  %71 = load i32*, i32** %17, align 8
  %72 = call i32 @update_local_add_notify_obstructed_or_missing(%struct.TYPE_9__* %68, i64 %69, i64 %70, i32* %71)
  %73 = call i32 @SVN_ERR(i32 %72)
  %74 = load i8*, i8** @TRUE, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  store i8* %74, i8** %76, align 8
  %77 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %77, i32** %9, align 8
  br label %100

78:                                               ; preds = %47
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @svn_wc_notify_update_add, align 4
  %93 = load i64, i64* @svn_node_file, align 8
  %94 = load i32, i32* @svn_wc_notify_state_inapplicable, align 4
  %95 = load i32, i32* @svn_wc_notify_state_inapplicable, align 4
  %96 = load i32*, i32** %17, align 8
  %97 = call i32 @update_move_list_add(%struct.TYPE_10__* %83, i32 %86, i32 %91, i32 %92, i64 %93, i32 %94, i32 %95, i32* null, i32* null, i32* %96)
  %98 = call i32 @SVN_ERR(i32 %97)
  %99 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %99, i32** %9, align 8
  br label %100

100:                                              ; preds = %78, %67, %34, %28
  %101 = load i32*, i32** %9, align 8
  ret i32* %101
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @update_local_add_mark_parent_edited(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @mark_update_add_add_tree_conflict(%struct.TYPE_9__*, i64, i64, i32, i32*, i32*) #1

declare dso_local i8* @svn_dirent_join(i32, i32, i32*) #1

declare dso_local i32 @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local i32 @update_local_add_notify_obstructed_or_missing(%struct.TYPE_9__*, i64, i64, i32*) #1

declare dso_local i32 @update_move_list_add(%struct.TYPE_10__*, i32, i32, i32, i64, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
