; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_tc_editor_add_directory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_tc_editor_add_directory.c"
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
@svn_node_dir = common dso_local global i32 0, align 4
@svn_wc_conflict_action_add = common dso_local global i32 0, align 4
@svn_wc_conflict_action_replace = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@svn_wc_notify_update_add = common dso_local global i32 0, align 4
@svn_wc_notify_update_replace = common dso_local global i32 0, align 4
@svn_wc_notify_state_inapplicable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__*, i8*, i64, i32*, i32*)* @tc_editor_add_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @tc_editor_add_directory(%struct.TYPE_9__* %0, i8* %1, i64 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %12, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  %22 = load i32, i32* @svn_wc_conflict_reason_unversioned, align 4
  store i32 %22, i32* %17, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = call i32 @mark_parent_edited(%struct.TYPE_9__* %23, i32* %24)
  %26 = call i32 @SVN_ERR(i32 %25)
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %5
  %32 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %32, i32** %6, align 8
  br label %169

33:                                               ; preds = %5
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %69

38:                                               ; preds = %33
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @svn_wc__db_read_info_internal(i64* %18, i64* %14, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, %struct.TYPE_10__* %41, i8* %42, i32* %43, i32* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  %47 = load i64, i64* %18, align 8
  %48 = load i64, i64* @svn_wc__db_status_deleted, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = load i32, i32* @svn_wc_conflict_reason_deleted, align 4
  store i32 %51, i32* %17, align 4
  br label %68

52:                                               ; preds = %38
  %53 = load i64, i64* %18, align 8
  %54 = load i64, i64* @svn_wc__db_status_added, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i64, i64* @svn_node_none, align 8
  store i64 %57, i64* %14, align 8
  br label %67

58:                                               ; preds = %52
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* @svn_node_none, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* @svn_wc_conflict_reason_added, align 4
  store i32 %63, i32* %17, align 4
  br label %66

64:                                               ; preds = %58
  %65 = load i32, i32* @svn_wc_conflict_reason_replaced, align 4
  store i32 %65, i32* %17, align 4
  br label %66

66:                                               ; preds = %64, %62
  br label %67

67:                                               ; preds = %66, %56
  br label %68

68:                                               ; preds = %67, %50
  br label %71

69:                                               ; preds = %33
  %70 = load i64, i64* @svn_node_none, align 8
  store i64 %70, i64* %14, align 8
  br label %71

71:                                               ; preds = %69, %68
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i8*, i8** %8, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = call i8* @svn_dirent_join(i32 %76, i8* %77, i32* %78)
  store i8* %79, i8** %13, align 8
  %80 = load i64, i64* %14, align 8
  %81 = load i64, i64* @svn_node_none, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %71
  %84 = load i8*, i8** %13, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = call i32 @svn_io_check_path(i8* %84, i64* %14, i32* %85)
  %87 = call i32 @SVN_ERR(i32 %86)
  br label %88

88:                                               ; preds = %83, %71
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %88
  %94 = load i64, i64* %14, align 8
  %95 = load i64, i64* %9, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i64, i64* @svn_node_none, align 8
  store i64 %98, i64* %14, align 8
  br label %99

99:                                               ; preds = %97, %93, %88
  %100 = load i64, i64* %14, align 8
  %101 = load i64, i64* @svn_node_none, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %134

103:                                              ; preds = %99
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %103
  %109 = load i64, i64* %14, align 8
  %110 = load i64, i64* %9, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %134

112:                                              ; preds = %108, %103
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %114 = load i8*, i8** %8, align 8
  %115 = load i64, i64* %9, align 8
  %116 = load i32, i32* @svn_node_dir, align 4
  %117 = load i32, i32* %17, align 4
  %118 = load i64, i64* %9, align 8
  %119 = load i64, i64* @svn_node_none, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %112
  %122 = load i32, i32* @svn_wc_conflict_action_add, align 4
  br label %125

123:                                              ; preds = %112
  %124 = load i32, i32* @svn_wc_conflict_action_replace, align 4
  br label %125

125:                                              ; preds = %123, %121
  %126 = phi i32 [ %122, %121 ], [ %124, %123 ]
  %127 = load i32*, i32** %11, align 8
  %128 = load i32*, i32** %11, align 8
  %129 = call i32 @create_node_tree_conflict(i32** %16, %struct.TYPE_9__* %113, i8* %114, i64 %115, i32 %116, i32 %117, i32 %126, i32* null, i32* %127, i32* %128)
  %130 = call i32 @SVN_ERR(i32 %129)
  %131 = load i64, i64* @TRUE, align 8
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  store i64 %131, i64* %133, align 8
  br label %143

134:                                              ; preds = %108, %99
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i8*, i8** %13, align 8
  %139 = load i32*, i32** %11, align 8
  %140 = load i32*, i32** %11, align 8
  %141 = call i32 @svn_wc__wq_build_dir_install(i32** %15, i32 %137, i8* %138, i32* %139, i32* %140)
  %142 = call i32 @SVN_ERR(i32 %141)
  br label %143

143:                                              ; preds = %134, %125
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %145, align 8
  %147 = load i8*, i8** %8, align 8
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i64, i64* %9, align 8
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
  %160 = load i32, i32* @svn_node_dir, align 4
  %161 = load i32, i32* @svn_wc_notify_state_inapplicable, align 4
  %162 = load i32, i32* @svn_wc_notify_state_inapplicable, align 4
  %163 = load i32*, i32** %16, align 8
  %164 = load i32*, i32** %15, align 8
  %165 = load i32*, i32** %11, align 8
  %166 = call i32 @update_move_list_add(%struct.TYPE_10__* %146, i8* %147, i32 %150, i32 %159, i32 %160, i32 %161, i32 %162, i32* %163, i32* %164, i32* %165)
  %167 = call i32 @SVN_ERR(i32 %166)
  %168 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %168, i32** %6, align 8
  br label %169

169:                                              ; preds = %158, %31
  %170 = load i32*, i32** %6, align 8
  ret i32* %170
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @mark_parent_edited(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @svn_wc__db_read_info_internal(i64*, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_10__*, i8*, i32*, i32*) #1

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i32 @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local i32 @create_node_tree_conflict(i32**, %struct.TYPE_9__*, i8*, i64, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__wq_build_dir_install(i32**, i32, i8*, i32*, i32*) #1

declare dso_local i32 @update_move_list_add(%struct.TYPE_10__*, i8*, i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
