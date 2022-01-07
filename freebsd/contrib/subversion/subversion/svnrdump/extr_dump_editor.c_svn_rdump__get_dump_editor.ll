; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_dump_editor.c_svn_rdump__get_dump_editor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnrdump/extr_dump_editor.c_svn_rdump__get_dump_editor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dump_edit_baton = type { i8*, i32, i32, i32, i32*, i32, i32*, i32* }
%struct.TYPE_11__ = type { %struct.dump_edit_baton*, i32, i32, i32 }

@svn_io_file_del_on_close = common dso_local global i32 0, align 4
@open_root = common dso_local global i32 0, align 4
@delete_entry = common dso_local global i32 0, align 4
@add_directory = common dso_local global i32 0, align 4
@open_directory = common dso_local global i32 0, align 4
@close_directory = common dso_local global i32 0, align 4
@change_dir_prop = common dso_local global i32 0, align 4
@change_file_prop = common dso_local global i32 0, align 4
@apply_textdelta = common dso_local global i32 0, align 4
@add_file = common dso_local global i32 0, align 4
@open_file = common dso_local global i32 0, align 4
@close_file = common dso_local global i32 0, align 4
@close_edit = common dso_local global i32 0, align 4
@fetch_base_func = common dso_local global i32 0, align 4
@fetch_props_func = common dso_local global i32 0, align 4
@fetch_kind_func = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_rdump__get_dump_editor(%struct.TYPE_12__** %0, i8** %1, i32 %2, i32* %3, i32* %4, i8* %5, i32 %6, i8* %7, i32* %8) #0 {
  %10 = alloca %struct.TYPE_12__**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.dump_edit_baton*, align 8
  %20 = alloca %struct.TYPE_12__*, align 8
  %21 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__** %0, %struct.TYPE_12__*** %10, align 8
  store i8** %1, i8*** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  store i32* %8, i32** %18, align 8
  %22 = load i32*, i32** %18, align 8
  %23 = call %struct.TYPE_11__* @svn_delta_shim_callbacks_default(i32* %22)
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %21, align 8
  %24 = load i32*, i32** %18, align 8
  %25 = call %struct.dump_edit_baton* @apr_pcalloc(i32* %24, i32 56)
  store %struct.dump_edit_baton* %25, %struct.dump_edit_baton** %19, align 8
  %26 = load i32*, i32** %13, align 8
  %27 = load %struct.dump_edit_baton*, %struct.dump_edit_baton** %19, align 8
  %28 = getelementptr inbounds %struct.dump_edit_baton, %struct.dump_edit_baton* %27, i32 0, i32 7
  store i32* %26, i32** %28, align 8
  %29 = load i32*, i32** %14, align 8
  %30 = load %struct.dump_edit_baton*, %struct.dump_edit_baton** %19, align 8
  %31 = getelementptr inbounds %struct.dump_edit_baton, %struct.dump_edit_baton* %30, i32 0, i32 6
  store i32* %29, i32** %31, align 8
  %32 = load i8*, i8** %15, align 8
  %33 = load %struct.dump_edit_baton*, %struct.dump_edit_baton** %19, align 8
  %34 = getelementptr inbounds %struct.dump_edit_baton, %struct.dump_edit_baton* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.dump_edit_baton*, %struct.dump_edit_baton** %19, align 8
  %37 = getelementptr inbounds %struct.dump_edit_baton, %struct.dump_edit_baton* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 8
  %38 = load %struct.dump_edit_baton*, %struct.dump_edit_baton** %19, align 8
  %39 = getelementptr inbounds %struct.dump_edit_baton, %struct.dump_edit_baton* %38, i32 0, i32 4
  store i32* null, i32** %39, align 8
  %40 = load i32*, i32** %18, align 8
  %41 = call i32 @svn_pool_create(i32* %40)
  %42 = load %struct.dump_edit_baton*, %struct.dump_edit_baton** %19, align 8
  %43 = getelementptr inbounds %struct.dump_edit_baton, %struct.dump_edit_baton* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load %struct.dump_edit_baton*, %struct.dump_edit_baton** %19, align 8
  %45 = getelementptr inbounds %struct.dump_edit_baton, %struct.dump_edit_baton* %44, i32 0, i32 2
  %46 = load %struct.dump_edit_baton*, %struct.dump_edit_baton** %19, align 8
  %47 = getelementptr inbounds %struct.dump_edit_baton, %struct.dump_edit_baton* %46, i32 0, i32 1
  %48 = load i32, i32* @svn_io_file_del_on_close, align 4
  %49 = load i32*, i32** %18, align 8
  %50 = load i32*, i32** %18, align 8
  %51 = call i32 @svn_io_open_unique_file3(i32* %45, i32* %47, i32* null, i32 %48, i32* %49, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = load i32*, i32** %18, align 8
  %54 = call %struct.TYPE_12__* @svn_delta_default_editor(i32* %53)
  store %struct.TYPE_12__* %54, %struct.TYPE_12__** %20, align 8
  %55 = load i32, i32* @open_root, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 11
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @delete_entry, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 10
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @add_directory, align 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 9
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @open_directory, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 8
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @close_directory, align 4
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 7
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @change_dir_prop, align 4
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 6
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @change_file_prop, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 5
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @apply_textdelta, align 4
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @add_file, align 4
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @open_file, align 4
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @close_file, align 4
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @close_edit, align 4
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  %91 = load %struct.dump_edit_baton*, %struct.dump_edit_baton** %19, align 8
  %92 = bitcast %struct.dump_edit_baton* %91 to i8*
  %93 = load i8**, i8*** %11, align 8
  store i8* %92, i8** %93, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %95 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %10, align 8
  store %struct.TYPE_12__* %94, %struct.TYPE_12__** %95, align 8
  %96 = load i32, i32* %16, align 4
  %97 = load i8*, i8** %17, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %99 = load %struct.dump_edit_baton*, %struct.dump_edit_baton** %19, align 8
  %100 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %10, align 8
  %101 = load i8**, i8*** %11, align 8
  %102 = load i32*, i32** %18, align 8
  %103 = call i32 @svn_delta_get_cancellation_editor(i32 %96, i8* %97, %struct.TYPE_12__* %98, %struct.dump_edit_baton* %99, %struct.TYPE_12__** %100, i8** %101, i32* %102)
  %104 = call i32 @SVN_ERR(i32 %103)
  %105 = load i32, i32* @fetch_base_func, align 4
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* @fetch_props_func, align 4
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* @fetch_kind_func, align 4
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 8
  %114 = load %struct.dump_edit_baton*, %struct.dump_edit_baton** %19, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  store %struct.dump_edit_baton* %114, %struct.dump_edit_baton** %116, align 8
  %117 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %10, align 8
  %118 = load i8**, i8*** %11, align 8
  %119 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %10, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %119, align 8
  %121 = load i8**, i8*** %11, align 8
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %124 = load i32*, i32** %18, align 8
  %125 = load i32*, i32** %18, align 8
  %126 = call i32 @svn_editor__insert_shims(%struct.TYPE_12__** %117, i8** %118, %struct.TYPE_12__* %120, i8* %122, i32* null, i32* null, %struct.TYPE_11__* %123, i32* %124, i32* %125)
  %127 = call i32 @SVN_ERR(i32 %126)
  %128 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %128
}

declare dso_local %struct.TYPE_11__* @svn_delta_shim_callbacks_default(i32*) #1

declare dso_local %struct.dump_edit_baton* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_open_unique_file3(i32*, i32*, i32*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_12__* @svn_delta_default_editor(i32*) #1

declare dso_local i32 @svn_delta_get_cancellation_editor(i32, i8*, %struct.TYPE_12__*, %struct.dump_edit_baton*, %struct.TYPE_12__**, i8**, i32*) #1

declare dso_local i32 @svn_editor__insert_shims(%struct.TYPE_12__**, i8**, %struct.TYPE_12__*, i8*, i32*, i32*, %struct.TYPE_11__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
