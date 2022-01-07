; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_depth_filter_editor.c_svn_delta_depth_filter_editor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_depth_filter_editor.c_svn_delta_depth_filter_editor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.edit_baton = type { i64, i32, i8*, %struct.TYPE_5__* }

@svn_depth_unknown = common dso_local global i64 0, align 8
@svn_depth_infinity = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_delta_depth_filter_editor(%struct.TYPE_5__** %0, i8** %1, %struct.TYPE_5__* %2, i8* %3, i64 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca %struct.edit_baton*, align 8
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %9, align 8
  store i8** %1, i8*** %10, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %18 = load i64, i64* %13, align 8
  %19 = load i64, i64* @svn_depth_unknown, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %7
  %22 = load i64, i64* %13, align 8
  %23 = load i64, i64* @svn_depth_infinity, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21, %7
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %27 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %27, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = load i8**, i8*** %10, align 8
  store i8* %28, i8** %29, align 8
  %30 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %30, i32** %8, align 8
  br label %99

31:                                               ; preds = %21
  %32 = load i32*, i32** %15, align 8
  %33 = call %struct.TYPE_5__* @svn_delta_default_editor(i32* %32)
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %16, align 8
  %34 = load i32, i32* @set_target_revision, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 14
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @open_root, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 13
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @delete_entry, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 12
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @add_directory, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 11
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @open_directory, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 10
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @change_dir_prop, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 9
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @close_directory, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 8
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @absent_directory, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 7
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @add_file, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 6
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @open_file, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @apply_textdelta, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @change_file_prop, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @close_file, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @absent_file, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @close_edit, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load i32*, i32** %15, align 8
  %80 = call %struct.edit_baton* @apr_palloc(i32* %79, i32 32)
  store %struct.edit_baton* %80, %struct.edit_baton** %17, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %82 = load %struct.edit_baton*, %struct.edit_baton** %17, align 8
  %83 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %82, i32 0, i32 3
  store %struct.TYPE_5__* %81, %struct.TYPE_5__** %83, align 8
  %84 = load i8*, i8** %12, align 8
  %85 = load %struct.edit_baton*, %struct.edit_baton** %17, align 8
  %86 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %85, i32 0, i32 2
  store i8* %84, i8** %86, align 8
  %87 = load i32, i32* %14, align 4
  %88 = load %struct.edit_baton*, %struct.edit_baton** %17, align 8
  %89 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 8
  %90 = load i64, i64* %13, align 8
  %91 = load %struct.edit_baton*, %struct.edit_baton** %17, align 8
  %92 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %94 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  store %struct.TYPE_5__* %93, %struct.TYPE_5__** %94, align 8
  %95 = load %struct.edit_baton*, %struct.edit_baton** %17, align 8
  %96 = bitcast %struct.edit_baton* %95 to i8*
  %97 = load i8**, i8*** %10, align 8
  store i8* %96, i8** %97, align 8
  %98 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %98, i32** %8, align 8
  br label %99

99:                                               ; preds = %31, %25
  %100 = load i32*, i32** %8, align 8
  ret i32* %100
}

declare dso_local %struct.TYPE_5__* @svn_delta_default_editor(i32*) #1

declare dso_local %struct.edit_baton* @apr_palloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
