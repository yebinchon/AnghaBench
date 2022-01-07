; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_tc_incoming_editor_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_tc_incoming_editor_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_10__*, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_wc_conflict_action_delete = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@svn_wc_conflict_reason_edited = common dso_local global i32 0, align 4
@svn_node_none = common dso_local global i32 0, align 4
@svn_wc_conflict_action_replace = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@STMT_INSERT_DELETE_FROM_NODE_RECURSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"isdd\00", align 1
@svn_wc_notify_update_delete = common dso_local global i32 0, align 4
@svn_wc_notify_state_inapplicable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_11__*, i8*, i32, i32, i32*)* @tc_incoming_editor_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @tc_incoming_editor_delete(%struct.TYPE_11__* %0, i8* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %12, align 8
  store i32* null, i32** %17, align 8
  store i32* null, i32** %18, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = call i32 @mark_parent_edited(%struct.TYPE_11__* %23, i32* %24)
  %26 = call i32 @SVN_ERR(i32 %25)
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %5
  %32 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %32, i32** %6, align 8
  br label %160

33:                                               ; preds = %5
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @svn_wc_conflict_action_delete, align 4
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @mark_tc_on_op_root(%struct.TYPE_11__* %39, i32 %40, i32 %41, i32 %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %46, i32** %6, align 8
  br label %160

47:                                               ; preds = %33
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %8, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = call i8* @svn_dirent_join(i32 %52, i8* %53, i32* %54)
  store i8* %55, i8** %14, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i8*, i8** %14, align 8
  %62 = load i32, i32* @FALSE, align 4
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 @svn_wc__node_has_local_mods(i64* %15, i64* %16, i32 %60, i8* %61, i32 %62, i32* null, i32* null, i32* %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  %66 = load i64, i64* %15, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %99

68:                                               ; preds = %47
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = load i32, i32* @FALSE, align 4
  %74 = load i32*, i32** %11, align 8
  %75 = call i32 @svn_wc__db_op_make_copy_internal(%struct.TYPE_12__* %71, i8* %72, i32 %73, i32* null, i32* null, i32* %74)
  %76 = call i32 @SVN_ERR(i32 %75)
  %77 = load i32, i32* @svn_wc_conflict_reason_edited, align 4
  store i32 %77, i32* %19, align 4
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %19, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @svn_node_none, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %68
  %87 = load i32, i32* @svn_wc_conflict_action_delete, align 4
  br label %90

88:                                               ; preds = %68
  %89 = load i32, i32* @svn_wc_conflict_action_replace, align 4
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i32 [ %87, %86 ], [ %89, %88 ]
  %92 = load i32*, i32** %11, align 8
  %93 = load i32*, i32** %11, align 8
  %94 = call i32 @create_node_tree_conflict(i32** %18, %struct.TYPE_11__* %78, i8* %79, i32 %80, i32 %81, i32 %82, i32 %91, i32* null, i32* %92, i32* %93)
  %95 = call i32 @SVN_ERR(i32 %94)
  %96 = load i64, i64* @TRUE, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  br label %122

99:                                               ; preds = %47
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @STMT_INSERT_DELETE_FROM_NODE_RECURSIVE, align 4
  %106 = call i32 @svn_sqlite__get_statement(i32** %13, i32 %104, i32 %105)
  %107 = call i32 @SVN_ERR(i32 %106)
  %108 = load i32*, i32** %13, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i8*, i8** %8, align 8
  %115 = load i8*, i8** %8, align 8
  %116 = call i32 @relpath_depth(i8* %115)
  %117 = call i32 @svn_sqlite__bindf(i32* %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %113, i8* %114, i32 0, i32 %116)
  %118 = call i32 @SVN_ERR(i32 %117)
  %119 = load i32*, i32** %13, align 8
  %120 = call i32 @svn_sqlite__step_done(i32* %119)
  %121 = call i32 @SVN_ERR(i32 %120)
  br label %122

122:                                              ; preds = %99, %90
  %123 = load i32*, i32** %18, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %129, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* @svn_node_none, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %146

129:                                              ; preds = %125, %122
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %131, align 8
  %133 = load i8*, i8** %8, align 8
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @svn_wc_notify_update_delete, align 4
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* @svn_wc_notify_state_inapplicable, align 4
  %140 = load i32, i32* @svn_wc_notify_state_inapplicable, align 4
  %141 = load i32*, i32** %18, align 8
  %142 = load i32*, i32** %17, align 8
  %143 = load i32*, i32** %11, align 8
  %144 = call i32 @update_move_list_add(%struct.TYPE_12__* %132, i8* %133, i32 %136, i32 %137, i32 %138, i32 %139, i32 %140, i32* %141, i32* %142, i32* %143)
  %145 = call i32 @SVN_ERR(i32 %144)
  br label %158

146:                                              ; preds = %125
  %147 = load i32*, i32** %17, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %157

149:                                              ; preds = %146
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %151, align 8
  %153 = load i32*, i32** %17, align 8
  %154 = load i32*, i32** %11, align 8
  %155 = call i32 @svn_wc__db_wq_add_internal(%struct.TYPE_12__* %152, i32* %153, i32* %154)
  %156 = call i32 @SVN_ERR(i32 %155)
  br label %157

157:                                              ; preds = %149, %146
  br label %158

158:                                              ; preds = %157, %129
  %159 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %159, i32** %6, align 8
  br label %160

160:                                              ; preds = %158, %38, %31
  %161 = load i32*, i32** %6, align 8
  ret i32* %161
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @mark_parent_edited(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @mark_tc_on_op_root(%struct.TYPE_11__*, i32, i32, i32, i32*) #1

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i32 @svn_wc__node_has_local_mods(i64*, i64*, i32, i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_op_make_copy_internal(%struct.TYPE_12__*, i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @create_node_tree_conflict(i32**, %struct.TYPE_11__*, i8*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @relpath_depth(i8*) #1

declare dso_local i32 @svn_sqlite__step_done(i32*) #1

declare dso_local i32 @update_move_list_add(%struct.TYPE_12__*, i8*, i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_wq_add_internal(%struct.TYPE_12__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
