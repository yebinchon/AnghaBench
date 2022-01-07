; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_tc_editor_update_add_merge_dirprops.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_tc_editor_update_add_merge_dirprops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_12__*, i64 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i8*, i32, i64 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@svn_wc_notify_state_conflicted = common dso_local global i64 0, align 8
@svn_wc_notify_update_update = common dso_local global i32 0, align 4
@svn_wc_notify_state_inapplicable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_14__*, i32*, i32*, i32*)* @tc_editor_update_add_merge_dirprops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @tc_editor_update_add_merge_dirprops(%struct.TYPE_14__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %13, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i8* @svn_dirent_join(i32 %27, i32 %30, i32* %31)
  store i8* %32, i8** %15, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @update_local_add_mark_node_edited(%struct.TYPE_14__* %33, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %4
  %42 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %42, i32** %5, align 8
  br label %146

43:                                               ; preds = %4
  %44 = load i8*, i8** %15, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @svn_io_check_path(i8* %44, i64* %14, i32* %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  %48 = load i64, i64* %14, align 8
  %49 = load i64, i64* @svn_node_dir, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %43
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %53 = load i64, i64* @svn_node_dir, align 8
  %54 = load i64, i64* %14, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 @update_local_add_notify_obstructed_or_missing(%struct.TYPE_14__* %52, i64 %53, i64 %54, i32* %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  %58 = load i64, i64* @TRUE, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 2
  store i64 %58, i64* %60, align 8
  %61 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %61, i32** %5, align 8
  br label %146

62:                                               ; preds = %43
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %72, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = call i32 @update_incoming_add_merge_props(i64* %12, i32** %11, i32 %65, i32* %66, i32* %67, i32 %70, %struct.TYPE_15__* %73, i32* %74, i32* %75)
  %77 = call i32 @SVN_ERR(i32 %76)
  %78 = load i32*, i32** %11, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %126

80:                                               ; preds = %62
  %81 = load i64, i64* %12, align 8
  %82 = load i64, i64* @svn_wc_notify_state_conflicted, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %126

84:                                               ; preds = %80
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = call %struct.TYPE_13__* @svn_wc_conflict_version_dup(i32 %89, i32* %90)
  store %struct.TYPE_13__* %91, %struct.TYPE_13__** %16, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %93, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = load i32*, i32** %9, align 8
  %100 = call i32 @svn_wc__db_base_get_info_internal(i32* null, i64* %17, i32* %18, i8** %19, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, %struct.TYPE_15__* %94, i32 %97, i32* %98, i32* %99)
  %101 = call i32 @SVN_ERR(i32 %100)
  %102 = load i8*, i8** %19, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  store i8* %102, i8** %104, align 8
  %105 = load i64, i64* %17, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 2
  store i64 %105, i64* %107, align 8
  %108 = load i32, i32* %18, align 4
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 8
  %111 = load i32*, i32** %11, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %113 = load i32*, i32** %9, align 8
  %114 = load i32*, i32** %9, align 8
  %115 = call i32 @svn_wc__conflict_skel_set_op_update(i32* %111, i32* null, %struct.TYPE_13__* %112, i32* %113, i32* %114)
  %116 = call i32 @SVN_ERR(i32 %115)
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i8*, i8** %15, align 8
  %121 = load i32*, i32** %11, align 8
  %122 = load i32*, i32** %9, align 8
  %123 = load i32*, i32** %9, align 8
  %124 = call i32 @svn_wc__conflict_create_markers(i32** %13, i32 %119, i8* %120, i32* %121, i32* %122, i32* %123)
  %125 = call i32 @SVN_ERR(i32 %124)
  br label %126

126:                                              ; preds = %84, %80, %62
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %128, align 8
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @svn_wc_notify_update_update, align 4
  %137 = load i64, i64* @svn_node_dir, align 8
  %138 = load i32, i32* @svn_wc_notify_state_inapplicable, align 4
  %139 = load i64, i64* %12, align 8
  %140 = load i32*, i32** %11, align 8
  %141 = load i32*, i32** %13, align 8
  %142 = load i32*, i32** %9, align 8
  %143 = call i32 @update_move_list_add(%struct.TYPE_15__* %129, i32 %132, i32 %135, i32 %136, i64 %137, i32 %138, i64 %139, i32* %140, i32* %141, i32* %142)
  %144 = call i32 @SVN_ERR(i32 %143)
  %145 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %145, i32** %5, align 8
  br label %146

146:                                              ; preds = %126, %51, %41
  %147 = load i32*, i32** %5, align 8
  ret i32* %147
}

declare dso_local i8* @svn_dirent_join(i32, i32, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @update_local_add_mark_node_edited(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local i32 @update_local_add_notify_obstructed_or_missing(%struct.TYPE_14__*, i64, i64, i32*) #1

declare dso_local i32 @update_incoming_add_merge_props(i64*, i32**, i32, i32*, i32*, i32, %struct.TYPE_15__*, i32*, i32*) #1

declare dso_local %struct.TYPE_13__* @svn_wc_conflict_version_dup(i32, i32*) #1

declare dso_local i32 @svn_wc__db_base_get_info_internal(i32*, i64*, i32*, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_15__*, i32, i32*, i32*) #1

declare dso_local i32 @svn_wc__conflict_skel_set_op_update(i32*, i32*, %struct.TYPE_13__*, i32*, i32*) #1

declare dso_local i32 @svn_wc__conflict_create_markers(i32**, i32, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @update_move_list_add(%struct.TYPE_15__*, i32, i32, i32, i64, i32, i64, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
