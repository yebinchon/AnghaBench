; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_tc_editor_incoming_add_directory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_tc_editor_incoming_add_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@svn_wc_conflict_reason_unversioned = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_node_none = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i32 0, align 4
@svn_wc_conflict_action_add = common dso_local global i32 0, align 4
@svn_wc_conflict_action_replace = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@svn_wc_notify_update_add = common dso_local global i32 0, align 4
@svn_wc_notify_update_replace = common dso_local global i32 0, align 4
@svn_wc_notify_state_inapplicable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__*, i8*, i64, i32*, i8*, i32*)* @tc_editor_incoming_add_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @tc_editor_incoming_add_directory(%struct.TYPE_9__* %0, i8* %1, i64 %2, i32* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %14, align 8
  store i32* null, i32** %17, align 8
  store i32* null, i32** %18, align 8
  %23 = load i32, i32* @svn_wc_conflict_reason_unversioned, align 4
  store i32 %23, i32* %19, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %25 = load i32*, i32** %13, align 8
  %26 = call i32 @mark_parent_edited(%struct.TYPE_9__* %24, i32* %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %6
  %33 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %33, i32** %7, align 8
  br label %125

34:                                               ; preds = %6
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = load i32*, i32** %13, align 8
  %42 = call i8* @svn_dirent_join(i32 %39, i8* %40, i32* %41)
  store i8* %42, i8** %15, align 8
  %43 = load i8*, i8** %15, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = call i32 @svn_io_check_path(i8* %43, i64* %16, i32* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  %47 = load i64, i64* %16, align 8
  %48 = load i64, i64* %10, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %34
  %51 = load i64, i64* @svn_node_none, align 8
  store i64 %51, i64* %16, align 8
  br label %52

52:                                               ; preds = %50, %34
  %53 = load i64, i64* %16, align 8
  %54 = load i64, i64* @svn_node_none, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %82

56:                                               ; preds = %52
  %57 = load i64, i64* %16, align 8
  %58 = load i64, i64* %10, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %82

60:                                               ; preds = %56
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load i64, i64* %10, align 8
  %64 = load i32, i32* @svn_node_dir, align 4
  %65 = load i32, i32* %19, align 4
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* @svn_node_none, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load i32, i32* @svn_wc_conflict_action_add, align 4
  br label %73

71:                                               ; preds = %60
  %72 = load i32, i32* @svn_wc_conflict_action_replace, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  %75 = load i32*, i32** %13, align 8
  %76 = load i32*, i32** %13, align 8
  %77 = call i32 @create_node_tree_conflict(i32** %18, %struct.TYPE_9__* %61, i8* %62, i64 %63, i32 %64, i32 %65, i32 %74, i32* null, i32* %75, i32* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  %79 = load i64, i64* @TRUE, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  br label %99

82:                                               ; preds = %56, %52
  %83 = load i8*, i8** %12, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = load i32*, i32** %13, align 8
  %89 = call i32 @copy_working_node(i8* %83, i8* %84, %struct.TYPE_10__* %87, i32* %88)
  %90 = call i32 @SVN_ERR(i32 %89)
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i8*, i8** %15, align 8
  %95 = load i32*, i32** %13, align 8
  %96 = load i32*, i32** %13, align 8
  %97 = call i32 @svn_wc__wq_build_dir_install(i32** %17, i32 %93, i8* %94, i32* %95, i32* %96)
  %98 = call i32 @SVN_ERR(i32 %97)
  br label %99

99:                                               ; preds = %82, %73
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i64, i64* %10, align 8
  %108 = load i64, i64* @svn_node_none, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %99
  %111 = load i32, i32* @svn_wc_notify_update_add, align 4
  br label %114

112:                                              ; preds = %99
  %113 = load i32, i32* @svn_wc_notify_update_replace, align 4
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi i32 [ %111, %110 ], [ %113, %112 ]
  %116 = load i32, i32* @svn_node_dir, align 4
  %117 = load i32, i32* @svn_wc_notify_state_inapplicable, align 4
  %118 = load i32, i32* @svn_wc_notify_state_inapplicable, align 4
  %119 = load i32*, i32** %18, align 8
  %120 = load i32*, i32** %17, align 8
  %121 = load i32*, i32** %13, align 8
  %122 = call i32 @update_move_list_add(%struct.TYPE_10__* %102, i8* %103, i32 %106, i32 %115, i32 %116, i32 %117, i32 %118, i32* %119, i32* %120, i32* %121)
  %123 = call i32 @SVN_ERR(i32 %122)
  %124 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %124, i32** %7, align 8
  br label %125

125:                                              ; preds = %114, %32
  %126 = load i32*, i32** %7, align 8
  ret i32* %126
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @mark_parent_edited(%struct.TYPE_9__*, i32*) #1

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i32 @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local i32 @create_node_tree_conflict(i32**, %struct.TYPE_9__*, i8*, i64, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @copy_working_node(i8*, i8*, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @svn_wc__wq_build_dir_install(i32**, i32, i8*, i32*, i32*) #1

declare dso_local i32 @update_move_list_add(%struct.TYPE_10__*, i8*, i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
