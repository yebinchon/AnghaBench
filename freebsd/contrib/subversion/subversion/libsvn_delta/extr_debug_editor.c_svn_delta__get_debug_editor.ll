; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_debug_editor.c_svn_delta__get_debug_editor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_debug_editor.c_svn_delta__get_debug_editor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.edit_baton = type { i32, i64, i32*, i8*, %struct.TYPE_4__* }

@.str = private unnamed_addr constant [23 x i8] c"Problem opening stderr\00", align 1
@TRUE = common dso_local global i32 0, align 4
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
@abort_edit = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"DBG: \00", align 1
@SVN_VA_NULL = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_delta__get_debug_editor(%struct.TYPE_4__** %0, i8** %1, %struct.TYPE_4__* %2, i8* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca %struct.edit_baton*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %8, align 8
  store i8** %1, i8*** %9, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = load i32*, i32** %13, align 8
  %20 = call i8* @apr_palloc(i32* %19, i32 64)
  %21 = bitcast i8* %20 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %14, align 8
  %22 = load i32*, i32** %13, align 8
  %23 = call i8* @apr_palloc(i32* %22, i32 40)
  %24 = bitcast i8* %23 to %struct.edit_baton*
  store %struct.edit_baton* %24, %struct.edit_baton** %15, align 8
  %25 = load i32*, i32** %13, align 8
  %26 = call i64 @apr_file_open_stdout(i32** %16, i32* %25)
  store i64 %26, i64* %18, align 8
  %27 = load i64, i64* %18, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %6
  %30 = load i64, i64* %18, align 8
  %31 = call i32* @svn_error_wrap_apr(i64 %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32* %31, i32** %7, align 8
  br label %108

32:                                               ; preds = %6
  %33 = load i32*, i32** %16, align 8
  %34 = load i32, i32* @TRUE, align 4
  %35 = load i32*, i32** %13, align 8
  %36 = call i32* @svn_stream_from_aprfile2(i32* %33, i32 %34, i32* %35)
  store i32* %36, i32** %17, align 8
  %37 = load i32, i32* @set_target_revision, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 15
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @open_root, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 14
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @delete_entry, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 13
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @add_directory, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 12
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @open_directory, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 11
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @change_dir_prop, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 10
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @close_directory, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 9
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @absent_directory, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 8
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @add_file, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 7
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @open_file, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @apply_textdelta, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @change_file_prop, align 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @close_file, align 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @absent_file, align 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @close_edit, align 4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @abort_edit, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %86 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %87 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %86, i32 0, i32 4
  store %struct.TYPE_4__* %85, %struct.TYPE_4__** %87, align 8
  %88 = load i8*, i8** %11, align 8
  %89 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %90 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %89, i32 0, i32 3
  store i8* %88, i8** %90, align 8
  %91 = load i32*, i32** %17, align 8
  %92 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %93 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %92, i32 0, i32 2
  store i32* %91, i32** %93, align 8
  %94 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %95 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %94, i32 0, i32 1
  store i64 0, i64* %95, align 8
  %96 = load i32*, i32** %13, align 8
  %97 = load i8*, i8** %12, align 8
  %98 = load i32, i32* @SVN_VA_NULL, align 4
  %99 = call i32 @apr_pstrcat(i32* %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %97, i32 %98)
  %100 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %101 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %103 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  store %struct.TYPE_4__* %102, %struct.TYPE_4__** %103, align 8
  %104 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %105 = bitcast %struct.edit_baton* %104 to i8*
  %106 = load i8**, i8*** %9, align 8
  store i8* %105, i8** %106, align 8
  %107 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %107, i32** %7, align 8
  br label %108

108:                                              ; preds = %32, %29
  %109 = load i32*, i32** %7, align 8
  ret i32* %109
}

declare dso_local i8* @apr_palloc(i32*, i32) #1

declare dso_local i64 @apr_file_open_stdout(i32**, i32*) #1

declare dso_local i32* @svn_error_wrap_apr(i64, i8*) #1

declare dso_local i32* @svn_stream_from_aprfile2(i32*, i32, i32*) #1

declare dso_local i32 @apr_pstrcat(i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
