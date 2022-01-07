; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_mark_update_add_add_tree_conflict.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_mark_update_add_add_tree_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32*, i32* }
%struct.TYPE_8__ = type { i32, i32, i32 }

@svn_wc_operation_update = common dso_local global i32 0, align 4
@svn_node_none = common dso_local global i32 0, align 4
@svn_wc_conflict_action_add = common dso_local global i32 0, align 4
@svn_wc_notify_tree_conflict = common dso_local global i32 0, align 4
@svn_wc_notify_state_inapplicable = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__*, i32, i32, i32, i32*, i32*)* @mark_update_add_add_tree_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @mark_update_add_add_tree_conflict(%struct.TYPE_9__* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %13, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %14, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = call %struct.TYPE_8__* @svn_wc_conflict_version_dup(i32 %31, i32* %32)
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %15, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32*, i32** %14, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = call i32 @svn_wc__db_base_get_info_internal(i32* null, i32* null, i32* %35, i32* %37, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %38, i32 %41, i32* %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i32*, i32** %14, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %58 = load i32, i32* @svn_wc_operation_update, align 4
  %59 = load i32, i32* @svn_node_none, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @svn_wc_conflict_action_add, align 4
  %63 = load i32*, i32** %12, align 8
  %64 = load i32*, i32** %12, align 8
  %65 = call i32 @create_tree_conflict(i32** %16, i32* %49, i32 %52, i32 %55, i32* %56, i32* null, %struct.TYPE_8__* %57, i32 %58, i32 %59, i32 %60, i32* null, i32 %61, i32 %62, i32* null, i32* %63, i32* %64)
  %66 = call i32 @SVN_ERR(i32 %65)
  %67 = load i32*, i32** %14, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32*, i32** %13, align 8
  %72 = load i32, i32* @svn_wc_notify_tree_conflict, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @svn_wc_notify_state_inapplicable, align 4
  %75 = load i32, i32* @svn_wc_notify_state_inapplicable, align 4
  %76 = load i32*, i32** %16, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = call i32 @update_move_list_add(i32* %67, i32 %70, i32* %71, i32 %72, i32 %73, i32 %74, i32 %75, i32* %76, i32* null, i32* %77)
  %79 = call i32 @SVN_ERR(i32 %78)
  %80 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %80
}

declare dso_local %struct.TYPE_8__* @svn_wc_conflict_version_dup(i32, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_base_get_info_internal(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @create_tree_conflict(i32**, i32*, i32, i32, i32*, i32*, %struct.TYPE_8__*, i32, i32, i32, i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @update_move_list_add(i32*, i32, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
