; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_tc_editor_incoming_add_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_tc_editor_incoming_add_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@svn_wc_conflict_reason_unversioned = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_node_none = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i32 0, align 4
@svn_wc_conflict_action_add = common dso_local global i32 0, align 4
@svn_wc_conflict_action_replace = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@svn_wc_notify_update_add = common dso_local global i32 0, align 4
@svn_wc_notify_update_replace = common dso_local global i32 0, align 4
@svn_wc_notify_state_inapplicable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__*, i8*, i64, i32*, i32*, i8*, i8*, i32*)* @tc_editor_incoming_add_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @tc_editor_incoming_add_file(%struct.TYPE_9__* %0, i8* %1, i64 %2, i32* %3, i32* %4, i8* %5, i8* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_8__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %10, align 8
  store i8* %1, i8** %11, align 8
  store i64 %2, i64* %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %18, align 8
  %29 = load i32, i32* @svn_wc_conflict_reason_unversioned, align 4
  store i32 %29, i32* %19, align 4
  store i32* null, i32** %22, align 8
  store i32* null, i32** %23, align 8
  store i32* null, i32** %24, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %31 = load i32*, i32** %17, align 8
  %32 = call i32 @mark_parent_edited(%struct.TYPE_9__* %30, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %8
  %39 = load i8*, i8** %16, align 8
  %40 = load i64, i64* @TRUE, align 8
  %41 = load i32*, i32** %17, align 8
  %42 = call i32 @svn_io_remove_file2(i8* %39, i64 %40, i32* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %44, i32** %9, align 8
  br label %167

45:                                               ; preds = %8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %11, align 8
  %52 = load i32*, i32** %17, align 8
  %53 = call i8* @svn_dirent_join(i32 %50, i8* %51, i32* %52)
  store i8* %53, i8** %21, align 8
  %54 = load i8*, i8** %21, align 8
  %55 = load i32*, i32** %17, align 8
  %56 = call i32 @svn_io_check_path(i8* %54, i64* %20, i32* %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  %58 = load i64, i64* %20, align 8
  %59 = load i64, i64* @svn_node_none, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %92

61:                                               ; preds = %45
  %62 = load i64, i64* %20, align 8
  %63 = load i64, i64* %12, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %92

65:                                               ; preds = %61
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = load i64, i64* %12, align 8
  %69 = load i32, i32* @svn_node_file, align 4
  %70 = load i32, i32* %19, align 4
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* @svn_node_none, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %65
  %75 = load i32, i32* @svn_wc_conflict_action_add, align 4
  br label %78

76:                                               ; preds = %65
  %77 = load i32, i32* @svn_wc_conflict_action_replace, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  %80 = load i32*, i32** %17, align 8
  %81 = load i32*, i32** %17, align 8
  %82 = call i32 @create_node_tree_conflict(i32** %24, %struct.TYPE_9__* %66, i8* %67, i64 %68, i32 %69, i32 %70, i32 %79, i32* null, i32* %80, i32* %81)
  %83 = call i32 @SVN_ERR(i32 %82)
  %84 = load i64, i64* @TRUE, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load i8*, i8** %16, align 8
  %88 = load i64, i64* @TRUE, align 8
  %89 = load i32*, i32** %17, align 8
  %90 = call i32 @svn_io_remove_file2(i8* %87, i64 %88, i32* %89)
  %91 = call i32 @SVN_ERR(i32 %90)
  br label %141

92:                                               ; preds = %61, %45
  %93 = load i8*, i8** %15, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = load i32*, i32** %17, align 8
  %99 = call i32 @copy_working_node(i8* %93, i8* %94, %struct.TYPE_10__* %97, i32* %98)
  %100 = call i32 @SVN_ERR(i32 %99)
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i8*, i8** %15, align 8
  %107 = load i32*, i32** %17, align 8
  %108 = call i8* @svn_dirent_join(i32 %105, i8* %106, i32* %107)
  store i8* %108, i8** %25, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i8*, i8** %21, align 8
  %113 = load i8*, i8** %25, align 8
  %114 = load i32, i32* @FALSE, align 4
  %115 = load i64, i64* @TRUE, align 8
  %116 = load i32*, i32** %17, align 8
  %117 = load i32*, i32** %17, align 8
  %118 = call i32 @svn_wc__wq_build_file_install(i32** %23, i32 %111, i8* %112, i8* %113, i32 %114, i64 %115, i32* %116, i32* %117)
  %119 = call i32 @SVN_ERR(i32 %118)
  %120 = load i32*, i32** %22, align 8
  %121 = load i32*, i32** %23, align 8
  %122 = load i32*, i32** %17, align 8
  %123 = call i32* @svn_wc__wq_merge(i32* %120, i32* %121, i32* %122)
  store i32* %123, i32** %22, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i8*, i8** %25, align 8
  %133 = load i32*, i32** %17, align 8
  %134 = load i32*, i32** %17, align 8
  %135 = call i32 @svn_wc__wq_build_file_remove(i32** %23, i32 %126, i32 %131, i8* %132, i32* %133, i32* %134)
  %136 = call i32 @SVN_ERR(i32 %135)
  %137 = load i32*, i32** %22, align 8
  %138 = load i32*, i32** %23, align 8
  %139 = load i32*, i32** %17, align 8
  %140 = call i32* @svn_wc__wq_merge(i32* %137, i32* %138, i32* %139)
  store i32* %140, i32** %22, align 8
  br label %141

141:                                              ; preds = %92, %78
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %143, align 8
  %145 = load i8*, i8** %11, align 8
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i64, i64* %12, align 8
  %150 = load i64, i64* @svn_node_none, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %141
  %153 = load i32, i32* @svn_wc_notify_update_add, align 4
  br label %156

154:                                              ; preds = %141
  %155 = load i32, i32* @svn_wc_notify_update_replace, align 4
  br label %156

156:                                              ; preds = %154, %152
  %157 = phi i32 [ %153, %152 ], [ %155, %154 ]
  %158 = load i32, i32* @svn_node_file, align 4
  %159 = load i32, i32* @svn_wc_notify_state_inapplicable, align 4
  %160 = load i32, i32* @svn_wc_notify_state_inapplicable, align 4
  %161 = load i32*, i32** %24, align 8
  %162 = load i32*, i32** %22, align 8
  %163 = load i32*, i32** %17, align 8
  %164 = call i32 @update_move_list_add(%struct.TYPE_10__* %144, i8* %145, i32 %148, i32 %157, i32 %158, i32 %159, i32 %160, i32* %161, i32* %162, i32* %163)
  %165 = call i32 @SVN_ERR(i32 %164)
  %166 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %166, i32** %9, align 8
  br label %167

167:                                              ; preds = %156, %38
  %168 = load i32*, i32** %9, align 8
  ret i32* %168
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @mark_parent_edited(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @svn_io_remove_file2(i8*, i64, i32*) #1

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i32 @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local i32 @create_node_tree_conflict(i32**, %struct.TYPE_9__*, i8*, i64, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @copy_working_node(i8*, i8*, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @svn_wc__wq_build_file_install(i32**, i32, i8*, i8*, i32, i64, i32*, i32*) #1

declare dso_local i32* @svn_wc__wq_merge(i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__wq_build_file_remove(i32**, i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @update_move_list_add(%struct.TYPE_10__*, i8*, i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
