; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_node_tree.c_svn_repos_node_editor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_node_tree.c_svn_repos_node_editor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.edit_baton = type { i32*, i32*, i32, i32* }

@open_root = common dso_local global i32 0, align 4
@delete_entry = common dso_local global i32 0, align 4
@add_directory = common dso_local global i32 0, align 4
@open_directory = common dso_local global i32 0, align 4
@add_file = common dso_local global i32 0, align 4
@open_file = common dso_local global i32 0, align 4
@apply_textdelta = common dso_local global i32 0, align 4
@change_node_prop = common dso_local global i8* null, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos_node_editor(%struct.TYPE_7__** %0, i8** %1, %struct.TYPE_6__* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_7__**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca %struct.edit_baton*, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %8, align 8
  store i8** %1, i8*** %9, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %17 = load i32*, i32** %14, align 8
  %18 = call %struct.TYPE_7__* @svn_delta_default_editor(i32* %17)
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %15, align 8
  %19 = load i32, i32* @open_root, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 8
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @delete_entry, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 7
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @add_directory, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @open_directory, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @add_file, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @open_file, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @apply_textdelta, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load i8*, i8** @change_node_prop, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** @change_node_prop, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load i32*, i32** %14, align 8
  %47 = call %struct.edit_baton* @apr_pcalloc(i32* %46, i32 32)
  store %struct.edit_baton* %47, %struct.edit_baton** %16, align 8
  %48 = load i32*, i32** %13, align 8
  %49 = load %struct.edit_baton*, %struct.edit_baton** %16, align 8
  %50 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %49, i32 0, i32 3
  store i32* %48, i32** %50, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.edit_baton*, %struct.edit_baton** %16, align 8
  %55 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load i32*, i32** %12, align 8
  %57 = load %struct.edit_baton*, %struct.edit_baton** %16, align 8
  %58 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %57, i32 0, i32 1
  store i32* %56, i32** %58, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = load %struct.edit_baton*, %struct.edit_baton** %16, align 8
  %61 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %60, i32 0, i32 0
  store i32* %59, i32** %61, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %63 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %8, align 8
  store %struct.TYPE_7__* %62, %struct.TYPE_7__** %63, align 8
  %64 = load %struct.edit_baton*, %struct.edit_baton** %16, align 8
  %65 = bitcast %struct.edit_baton* %64 to i8*
  %66 = load i8**, i8*** %9, align 8
  store i8* %65, i8** %66, align 8
  %67 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %67
}

declare dso_local %struct.TYPE_7__* @svn_delta_default_editor(i32*) #1

declare dso_local %struct.edit_baton* @apr_pcalloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
