; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_tc_editor_update_add_new_directory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_tc_editor_update_add_new_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32, i8* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_node_none = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_added = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@svn_wc_notify_update_add = common dso_local global i32 0, align 4
@svn_wc_notify_state_inapplicable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__*, i64, i32*, i32*, i32*)* @tc_editor_update_add_new_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @tc_editor_update_add_new_directory(%struct.TYPE_9__* %0, i64 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %15 = load i32*, i32** %11, align 8
  %16 = call i32 @update_local_add_mark_parent_edited(%struct.TYPE_9__* %14, i32* %15)
  %17 = call i32 @SVN_ERR(i32 %16)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %23, i32** %6, align 8
  br label %94

24:                                               ; preds = %5
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @svn_node_none, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @svn_node_dir, align 8
  %32 = load i32, i32* @svn_wc_conflict_reason_added, align 4
  %33 = load i32*, i32** %11, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = call i32 @mark_update_add_add_tree_conflict(%struct.TYPE_9__* %29, i64 %30, i64 %31, i32 %32, i32* %33, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load i8*, i8** @TRUE, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %40, i32** %6, align 8
  br label %94

41:                                               ; preds = %24
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = call i8* @svn_dirent_join(i32 %48, i32 %51, i32* %52)
  store i8* %53, i8** %12, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = call i32 @svn_io_check_path(i8* %54, i64* %13, i32* %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  %58 = load i64, i64* %13, align 8
  %59 = load i64, i64* @svn_node_dir, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %41
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %63 = load i64, i64* @svn_node_dir, align 8
  %64 = load i64, i64* %13, align 8
  %65 = load i32*, i32** %11, align 8
  %66 = call i32 @update_local_add_notify_obstructed_or_missing(%struct.TYPE_9__* %62, i64 %63, i64 %64, i32* %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  %68 = load i8*, i8** @TRUE, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %71, i32** %6, align 8
  br label %94

72:                                               ; preds = %41
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @svn_wc_notify_update_add, align 4
  %87 = load i64, i64* @svn_node_dir, align 8
  %88 = load i32, i32* @svn_wc_notify_state_inapplicable, align 4
  %89 = load i32, i32* @svn_wc_notify_state_inapplicable, align 4
  %90 = load i32*, i32** %11, align 8
  %91 = call i32 @update_move_list_add(%struct.TYPE_10__* %77, i32 %80, i32 %85, i32 %86, i64 %87, i32 %88, i32 %89, i32* null, i32* null, i32* %90)
  %92 = call i32 @SVN_ERR(i32 %91)
  %93 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %93, i32** %6, align 8
  br label %94

94:                                               ; preds = %72, %61, %28, %22
  %95 = load i32*, i32** %6, align 8
  ret i32* %95
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
