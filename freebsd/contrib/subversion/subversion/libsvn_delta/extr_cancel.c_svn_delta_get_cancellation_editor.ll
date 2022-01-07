; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_cancel.c_svn_delta_get_cancellation_editor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_cancel.c_svn_delta_get_cancellation_editor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.edit_baton = type { i8*, i64, i8*, %struct.TYPE_5__* }

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
@apply_textdelta_stream = common dso_local global i32 0, align 4
@change_file_prop = common dso_local global i32 0, align 4
@close_file = common dso_local global i32 0, align 4
@absent_file = common dso_local global i32 0, align 4
@close_edit = common dso_local global i32 0, align 4
@abort_edit = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_delta_get_cancellation_editor(i64 %0, i8* %1, %struct.TYPE_5__* %2, i8* %3, %struct.TYPE_5__** %4, i8** %5, i32* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_5__**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca %struct.edit_baton*, align 8
  store i64 %0, i64* %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.TYPE_5__** %4, %struct.TYPE_5__*** %12, align 8
  store i8** %5, i8*** %13, align 8
  store i32* %6, i32** %14, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %92

19:                                               ; preds = %7
  %20 = load i32*, i32** %14, align 8
  %21 = call %struct.TYPE_5__* @svn_delta_default_editor(i32* %20)
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %15, align 8
  %22 = load i32*, i32** %14, align 8
  %23 = call %struct.edit_baton* @apr_palloc(i32* %22, i32 32)
  store %struct.edit_baton* %23, %struct.edit_baton** %16, align 8
  %24 = load i32, i32* @set_target_revision, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 16
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @open_root, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 15
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @delete_entry, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 14
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @add_directory, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 13
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @open_directory, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 12
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @change_dir_prop, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 11
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @close_directory, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 10
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @absent_directory, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 9
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @add_file, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 8
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @open_file, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 7
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @apply_textdelta, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @apply_textdelta_stream, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @change_file_prop, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @close_file, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @absent_file, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @close_edit, align 4
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @abort_edit, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %76 = load %struct.edit_baton*, %struct.edit_baton** %16, align 8
  %77 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %76, i32 0, i32 3
  store %struct.TYPE_5__* %75, %struct.TYPE_5__** %77, align 8
  %78 = load i8*, i8** %11, align 8
  %79 = load %struct.edit_baton*, %struct.edit_baton** %16, align 8
  %80 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  %81 = load i64, i64* %8, align 8
  %82 = load %struct.edit_baton*, %struct.edit_baton** %16, align 8
  %83 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = load %struct.edit_baton*, %struct.edit_baton** %16, align 8
  %86 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %88 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %12, align 8
  store %struct.TYPE_5__* %87, %struct.TYPE_5__** %88, align 8
  %89 = load %struct.edit_baton*, %struct.edit_baton** %16, align 8
  %90 = bitcast %struct.edit_baton* %89 to i8*
  %91 = load i8**, i8*** %13, align 8
  store i8* %90, i8** %91, align 8
  br label %97

92:                                               ; preds = %7
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %94 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %12, align 8
  store %struct.TYPE_5__* %93, %struct.TYPE_5__** %94, align 8
  %95 = load i8*, i8** %11, align 8
  %96 = load i8**, i8*** %13, align 8
  store i8* %95, i8** %96, align 8
  br label %97

97:                                               ; preds = %92, %19
  %98 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %98
}

declare dso_local %struct.TYPE_5__* @svn_delta_default_editor(i32*) #1

declare dso_local %struct.edit_baton* @apr_palloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
