; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_editorp.c_svn_ra_svn_get_editor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_svn/extr_editorp.c_svn_ra_svn_get_editor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, i64, i8*, i32, %struct.TYPE_10__* }

@FALSE = common dso_local global i32 0, align 4
@ra_svn_target_rev = common dso_local global i32 0, align 4
@ra_svn_open_root = common dso_local global i32 0, align 4
@ra_svn_delete_entry = common dso_local global i32 0, align 4
@ra_svn_add_dir = common dso_local global i32 0, align 4
@ra_svn_open_dir = common dso_local global i32 0, align 4
@ra_svn_change_dir_prop = common dso_local global i32 0, align 4
@ra_svn_close_dir = common dso_local global i32 0, align 4
@ra_svn_absent_dir = common dso_local global i32 0, align 4
@ra_svn_add_file = common dso_local global i32 0, align 4
@ra_svn_open_file = common dso_local global i32 0, align 4
@ra_svn_apply_textdelta = common dso_local global i32 0, align 4
@ra_svn_change_file_prop = common dso_local global i32 0, align 4
@ra_svn_close_file = common dso_local global i32 0, align 4
@ra_svn_absent_file = common dso_local global i32 0, align 4
@ra_svn_close_edit = common dso_local global i32 0, align 4
@ra_svn_abort_edit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svn_ra_svn_get_editor(%struct.TYPE_11__** %0, i8** %1, %struct.TYPE_10__* %2, i32* %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_11__**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__** %0, %struct.TYPE_11__*** %7, align 8
  store i8** %1, i8*** %8, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = call %struct.TYPE_11__* @svn_delta_default_editor(i32* %15)
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %13, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = call %struct.TYPE_12__* @apr_palloc(i32* %17, i32 40)
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %14, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 4
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %21, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* @FALSE, align 4
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @ra_svn_target_rev, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 15
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @ra_svn_open_root, align 4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 14
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @ra_svn_delete_entry, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 13
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @ra_svn_add_dir, align 4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 12
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @ra_svn_open_dir, align 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 11
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @ra_svn_change_dir_prop, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 10
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @ra_svn_close_dir, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 9
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @ra_svn_absent_dir, align 4
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 8
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @ra_svn_add_file, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @ra_svn_open_file, align 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @ra_svn_apply_textdelta, align 4
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @ra_svn_change_file_prop, align 4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @ra_svn_close_file, align 4
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @ra_svn_absent_file, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @ra_svn_close_edit, align 4
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @ra_svn_abort_edit, align 4
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %82 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  store %struct.TYPE_11__* %81, %struct.TYPE_11__** %82, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %84 = bitcast %struct.TYPE_12__* %83 to i8*
  %85 = load i8**, i8*** %8, align 8
  store i8* %84, i8** %85, align 8
  %86 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %87 = load i8**, i8*** %8, align 8
  %88 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = load i8**, i8*** %8, align 8
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %10, align 8
  %96 = load i32*, i32** %10, align 8
  %97 = call i32 @svn_editor__insert_shims(%struct.TYPE_11__** %86, i8** %87, %struct.TYPE_11__* %89, i8* %91, i32* null, i32* null, i32 %94, i32* %95, i32* %96)
  %98 = call i32 @svn_error_clear(i32 %97)
  ret void
}

declare dso_local %struct.TYPE_11__* @svn_delta_default_editor(i32*) #1

declare dso_local %struct.TYPE_12__* @apr_palloc(i32*, i32) #1

declare dso_local i32 @svn_error_clear(i32) #1

declare dso_local i32 @svn_editor__insert_shims(%struct.TYPE_11__**, i8**, %struct.TYPE_11__*, i8*, i32*, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
