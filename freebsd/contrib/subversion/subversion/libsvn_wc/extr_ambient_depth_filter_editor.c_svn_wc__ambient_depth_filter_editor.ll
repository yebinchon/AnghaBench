; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_ambient_depth_filter_editor.c_svn_wc__ambient_depth_filter_editor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_ambient_depth_filter_editor.c_svn_wc__ambient_depth_filter_editor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.edit_baton = type { i8*, i8*, i32*, i8*, %struct.TYPE_5__* }

@set_target_revision = common dso_local global i32 0, align 4
@open_root = common dso_local global i32 0, align 4
@delete_entry = common dso_local global i32 0, align 4
@add_directory = common dso_local global i32 0, align 4
@open_directory = common dso_local global i32 0, align 4
@change_dir_prop = common dso_local global i32 0, align 4
@close_directory = common dso_local global i32 0, align 4
@absent_directory = common dso_local global i32 0, align 4
@add_file = common dso_local global i32 0, align 4
@open_file = common dso_local global i32 0, align 4
@apply_textdelta = common dso_local global i32 0, align 4
@change_file_prop = common dso_local global i32 0, align 4
@close_file = common dso_local global i32 0, align 4
@absent_file = common dso_local global i32 0, align 4
@close_edit = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__ambient_depth_filter_editor(%struct.TYPE_5__** %0, i8** %1, i32* %2, i8* %3, i8* %4, %struct.TYPE_5__* %5, i8* %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_5__**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_5__*, align 8
  %18 = alloca %struct.edit_baton*, align 8
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i32* %2, i32** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32* %7, i32** %16, align 8
  %19 = load i8*, i8** %12, align 8
  %20 = call i32 @svn_dirent_is_absolute(i8* %19)
  %21 = call i32 @SVN_ERR_ASSERT(i32 %20)
  %22 = load i32*, i32** %16, align 8
  %23 = call %struct.TYPE_5__* @svn_delta_default_editor(i32* %22)
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %17, align 8
  %24 = load i32, i32* @set_target_revision, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 14
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @open_root, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 13
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @delete_entry, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 12
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @add_directory, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 11
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @open_directory, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 10
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @change_dir_prop, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 9
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @close_directory, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 8
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @absent_directory, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 7
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @add_file, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 6
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @open_file, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @apply_textdelta, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @change_file_prop, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @close_file, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @absent_file, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @close_edit, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load i32*, i32** %16, align 8
  %70 = call %struct.edit_baton* @apr_pcalloc(i32* %69, i32 40)
  store %struct.edit_baton* %70, %struct.edit_baton** %18, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %72 = load %struct.edit_baton*, %struct.edit_baton** %18, align 8
  %73 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %72, i32 0, i32 4
  store %struct.TYPE_5__* %71, %struct.TYPE_5__** %73, align 8
  %74 = load i8*, i8** %15, align 8
  %75 = load %struct.edit_baton*, %struct.edit_baton** %18, align 8
  %76 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %75, i32 0, i32 3
  store i8* %74, i8** %76, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = load %struct.edit_baton*, %struct.edit_baton** %18, align 8
  %79 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %78, i32 0, i32 2
  store i32* %77, i32** %79, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = load %struct.edit_baton*, %struct.edit_baton** %18, align 8
  %82 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  %83 = load i8*, i8** %13, align 8
  %84 = load %struct.edit_baton*, %struct.edit_baton** %18, align 8
  %85 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %84, i32 0, i32 1
  store i8* %83, i8** %85, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %87 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  store %struct.TYPE_5__* %86, %struct.TYPE_5__** %87, align 8
  %88 = load %struct.edit_baton*, %struct.edit_baton** %18, align 8
  %89 = bitcast %struct.edit_baton* %88 to i8*
  %90 = load i8**, i8*** %10, align 8
  store i8* %89, i8** %90, align 8
  %91 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %91
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local %struct.TYPE_5__* @svn_delta_default_editor(i32*) #1

declare dso_local %struct.edit_baton* @apr_pcalloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
