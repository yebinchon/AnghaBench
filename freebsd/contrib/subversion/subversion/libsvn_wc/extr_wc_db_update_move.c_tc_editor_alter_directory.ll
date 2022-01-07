; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_tc_editor_alter_directory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_tc_editor_alter_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_17__*, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_14__ = type { i32*, i32*, i32 }

@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_node_none = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_obstructed = common dso_local global i32 0, align 4
@svn_wc_conflict_action_edit = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_wc_notify_state_conflicted = common dso_local global i64 0, align 8
@svn_wc_notify_update_update = common dso_local global i32 0, align 4
@svn_wc_notify_state_inapplicable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_16__*, i8*, i32*, i32*, i32*)* @tc_editor_alter_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @tc_editor_alter_directory(%struct.TYPE_16__* %0, i8* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_14__, align 8
  %14 = alloca %struct.TYPE_14__, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  store %struct.TYPE_15__* %26, %struct.TYPE_15__** %12, align 8
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = call i8* @svn_dirent_join(i32 %31, i8* %32, i32* %33)
  store i8* %34, i8** %17, align 8
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %22, align 4
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @mark_node_edited(%struct.TYPE_16__* %36, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %5
  %45 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %45, i32** %6, align 8
  br label %142

46:                                               ; preds = %5
  %47 = load i8*, i8** %17, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @svn_io_check_path(i8* %47, i64* %21, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load i64, i64* %21, align 8
  %52 = load i64, i64* @svn_node_none, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %46
  %55 = load i64, i64* %21, align 8
  %56 = load i64, i64* @svn_node_dir, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load i64, i64* @svn_node_dir, align 8
  %62 = load i64, i64* @svn_node_dir, align 8
  %63 = load i32, i32* @svn_wc_conflict_reason_obstructed, align 4
  %64 = load i32, i32* @svn_wc_conflict_action_edit, align 4
  %65 = load i32*, i32** %11, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = call i32 @create_node_tree_conflict(i32** %16, %struct.TYPE_16__* %59, i8* %60, i64 %61, i64 %62, i32 %63, i32 %64, i32* null, i32* %65, i32* %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  %69 = load i32, i32* @TRUE, align 4
  store i32 %69, i32* %22, align 4
  br label %70

70:                                               ; preds = %58, %54, %46
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 2
  store i32 %73, i32* %74, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 2
  store i32 %77, i32* %78, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  store i32* null, i32** %79, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  store i32* %80, i32** %81, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  store i32* null, i32** %82, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  store i32* %83, i32** %84, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = load i32*, i32** %11, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = call i32 @update_working_props(i64* %18, i32** %16, i32** %20, i32** %19, %struct.TYPE_15__* %85, i8* %86, %struct.TYPE_14__* %13, %struct.TYPE_14__* %14, i32* %87, i32* %88)
  %90 = call i32 @SVN_ERR(i32 %89)
  %91 = load i64, i64* %18, align 8
  %92 = load i64, i64* @svn_wc_notify_state_conflicted, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %124

94:                                               ; preds = %70
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %96, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %11, align 8
  %103 = load i32*, i32** %11, align 8
  %104 = call i32 @svn_wc__db_depth_get_info(i32* null, i32* null, i32* null, i8** %23, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, %struct.TYPE_17__* %97, i8* %98, i32 %101, i32* %102, i32* %103)
  %105 = call i32 @SVN_ERR(i32 %104)
  %106 = load i8*, i8** %17, align 8
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i8*, i8** %23, align 8
  %111 = load i32*, i32** %16, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i64, i64* @svn_node_dir, align 8
  %116 = load i32, i32* %22, align 4
  %117 = icmp ne i32 %116, 0
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  %120 = load i32*, i32** %11, align 8
  %121 = load i32*, i32** %11, align 8
  %122 = call i32 @create_conflict_markers(i32** %15, i8* %106, i32 %109, i8* %110, i32* %111, i32 %114, %struct.TYPE_14__* %13, %struct.TYPE_14__* %14, i64 %115, i32 %119, i32* %120, i32* %121)
  %123 = call i32 @SVN_ERR(i32 %122)
  br label %124

124:                                              ; preds = %94, %70
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %126, align 8
  %128 = load i8*, i8** %8, align 8
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @svn_wc_notify_update_update, align 4
  %133 = load i64, i64* @svn_node_dir, align 8
  %134 = load i32, i32* @svn_wc_notify_state_inapplicable, align 4
  %135 = load i64, i64* %18, align 8
  %136 = load i32*, i32** %16, align 8
  %137 = load i32*, i32** %15, align 8
  %138 = load i32*, i32** %11, align 8
  %139 = call i32 @update_move_list_add(%struct.TYPE_17__* %127, i8* %128, i32 %131, i32 %132, i64 %133, i32 %134, i64 %135, i32* %136, i32* %137, i32* %138)
  %140 = call i32 @SVN_ERR(i32 %139)
  %141 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %141, i32** %6, align 8
  br label %142

142:                                              ; preds = %124, %44
  %143 = load i32*, i32** %6, align 8
  ret i32* %143
}

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @mark_node_edited(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local i32 @create_node_tree_conflict(i32**, %struct.TYPE_16__*, i8*, i64, i64, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @update_working_props(i64*, i32**, i32**, i32**, %struct.TYPE_15__*, i8*, %struct.TYPE_14__*, %struct.TYPE_14__*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_depth_get_info(i32*, i32*, i32*, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_17__*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @create_conflict_markers(i32**, i8*, i32, i8*, i32*, i32, %struct.TYPE_14__*, %struct.TYPE_14__*, i64, i32, i32*, i32*) #1

declare dso_local i32 @update_move_list_add(%struct.TYPE_17__*, i8*, i32, i32, i64, i32, i64, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
