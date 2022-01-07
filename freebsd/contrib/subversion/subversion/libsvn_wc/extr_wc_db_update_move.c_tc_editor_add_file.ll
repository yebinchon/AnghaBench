; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_tc_editor_add_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_tc_editor_add_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@svn_wc_conflict_reason_unversioned = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_wc__db_status_deleted = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_deleted = common dso_local global i32 0, align 4
@svn_wc__db_status_added = common dso_local global i64 0, align 8
@svn_node_none = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_added = common dso_local global i32 0, align 4
@svn_wc_conflict_reason_replaced = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i32 0, align 4
@svn_wc_conflict_action_add = common dso_local global i32 0, align 4
@svn_wc_conflict_action_replace = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@svn_wc_notify_update_add = common dso_local global i32 0, align 4
@svn_wc_notify_update_replace = common dso_local global i32 0, align 4
@svn_wc_notify_state_inapplicable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__*, i8*, i64, i32*, i32*, i32*)* @tc_editor_add_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @tc_editor_add_file(%struct.TYPE_9__* %0, i8* %1, i64 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %14, align 8
  %24 = load i32, i32* @svn_wc_conflict_reason_unversioned, align 4
  store i32 %24, i32* %15, align 4
  store i32* null, i32** %18, align 8
  store i32* null, i32** %19, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %26 = load i32*, i32** %13, align 8
  %27 = call i32 @mark_parent_edited(%struct.TYPE_9__* %25, i32* %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %6
  %34 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %34, i32** %7, align 8
  br label %169

35:                                               ; preds = %6
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %71

40:                                               ; preds = %35
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = load i32*, i32** %13, align 8
  %47 = call i32 @svn_wc__db_read_info_internal(i64* %20, i64* %16, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, %struct.TYPE_10__* %43, i8* %44, i32* %45, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load i64, i64* %20, align 8
  %50 = load i64, i64* @svn_wc__db_status_deleted, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = load i32, i32* @svn_wc_conflict_reason_deleted, align 4
  store i32 %53, i32* %15, align 4
  br label %70

54:                                               ; preds = %40
  %55 = load i64, i64* %20, align 8
  %56 = load i64, i64* @svn_wc__db_status_added, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i64, i64* @svn_node_none, align 8
  store i64 %59, i64* %16, align 8
  br label %69

60:                                               ; preds = %54
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* @svn_node_none, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @svn_wc_conflict_reason_added, align 4
  store i32 %65, i32* %15, align 4
  br label %68

66:                                               ; preds = %60
  %67 = load i32, i32* @svn_wc_conflict_reason_replaced, align 4
  store i32 %67, i32* %15, align 4
  br label %68

68:                                               ; preds = %66, %64
  br label %69

69:                                               ; preds = %68, %58
  br label %70

70:                                               ; preds = %69, %52
  br label %73

71:                                               ; preds = %35
  %72 = load i64, i64* @svn_node_none, align 8
  store i64 %72, i64* %16, align 8
  br label %73

73:                                               ; preds = %71, %70
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i8*, i8** %9, align 8
  %80 = load i32*, i32** %13, align 8
  %81 = call i8* @svn_dirent_join(i32 %78, i8* %79, i32* %80)
  store i8* %81, i8** %17, align 8
  %82 = load i64, i64* %16, align 8
  %83 = load i64, i64* @svn_node_none, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %73
  %86 = load i8*, i8** %17, align 8
  %87 = load i32*, i32** %13, align 8
  %88 = call i32 @svn_io_check_path(i8* %86, i64* %16, i32* %87)
  %89 = call i32 @SVN_ERR(i32 %88)
  br label %90

90:                                               ; preds = %85, %73
  %91 = load i64, i64* %16, align 8
  %92 = load i64, i64* @svn_node_none, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %125

94:                                               ; preds = %90
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %94
  %100 = load i64, i64* %16, align 8
  %101 = load i64, i64* %10, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %125

103:                                              ; preds = %99, %94
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %105 = load i8*, i8** %9, align 8
  %106 = load i64, i64* %10, align 8
  %107 = load i32, i32* @svn_node_file, align 4
  %108 = load i32, i32* %15, align 4
  %109 = load i64, i64* %10, align 8
  %110 = load i64, i64* @svn_node_none, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %103
  %113 = load i32, i32* @svn_wc_conflict_action_add, align 4
  br label %116

114:                                              ; preds = %103
  %115 = load i32, i32* @svn_wc_conflict_action_replace, align 4
  br label %116

116:                                              ; preds = %114, %112
  %117 = phi i32 [ %113, %112 ], [ %115, %114 ]
  %118 = load i32*, i32** %13, align 8
  %119 = load i32*, i32** %13, align 8
  %120 = call i32 @create_node_tree_conflict(i32** %19, %struct.TYPE_9__* %104, i8* %105, i64 %106, i32 %107, i32 %108, i32 %117, i32* null, i32* %118, i32* %119)
  %121 = call i32 @SVN_ERR(i32 %120)
  %122 = load i64, i64* @TRUE, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  br label %143

125:                                              ; preds = %99, %90
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i8*, i8** %9, align 8
  %135 = load i32*, i32** %13, align 8
  %136 = call i8* @svn_dirent_join(i32 %133, i8* %134, i32* %135)
  %137 = load i32, i32* @FALSE, align 4
  %138 = load i64, i64* @TRUE, align 8
  %139 = load i32*, i32** %13, align 8
  %140 = load i32*, i32** %13, align 8
  %141 = call i32 @svn_wc__wq_build_file_install(i32** %18, i32 %128, i8* %136, i32* null, i32 %137, i64 %138, i32* %139, i32* %140)
  %142 = call i32 @SVN_ERR(i32 %141)
  br label %143

143:                                              ; preds = %125, %116
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %145, align 8
  %147 = load i8*, i8** %9, align 8
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i64, i64* %10, align 8
  %152 = load i64, i64* @svn_node_none, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %143
  %155 = load i32, i32* @svn_wc_notify_update_add, align 4
  br label %158

156:                                              ; preds = %143
  %157 = load i32, i32* @svn_wc_notify_update_replace, align 4
  br label %158

158:                                              ; preds = %156, %154
  %159 = phi i32 [ %155, %154 ], [ %157, %156 ]
  %160 = load i32, i32* @svn_node_file, align 4
  %161 = load i32, i32* @svn_wc_notify_state_inapplicable, align 4
  %162 = load i32, i32* @svn_wc_notify_state_inapplicable, align 4
  %163 = load i32*, i32** %19, align 8
  %164 = load i32*, i32** %18, align 8
  %165 = load i32*, i32** %13, align 8
  %166 = call i32 @update_move_list_add(%struct.TYPE_10__* %146, i8* %147, i32 %150, i32 %159, i32 %160, i32 %161, i32 %162, i32* %163, i32* %164, i32* %165)
  %167 = call i32 @SVN_ERR(i32 %166)
  %168 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %168, i32** %7, align 8
  br label %169

169:                                              ; preds = %158, %33
  %170 = load i32*, i32** %7, align 8
  ret i32* %170
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @mark_parent_edited(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @svn_wc__db_read_info_internal(i64*, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_10__*, i8*, i32*, i32*) #1

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i32 @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local i32 @create_node_tree_conflict(i32**, %struct.TYPE_9__*, i8*, i64, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__wq_build_file_install(i32**, i32, i8*, i32*, i32, i64, i32*, i32*) #1

declare dso_local i32 @update_move_list_add(%struct.TYPE_10__*, i8*, i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
