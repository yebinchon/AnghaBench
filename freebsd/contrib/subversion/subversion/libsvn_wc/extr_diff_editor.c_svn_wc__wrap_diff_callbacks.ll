; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_svn_wc__wrap_diff_callbacks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_svn_wc__wrap_diff_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32*, i8*, i32*, i32* }

@wrap_dir_opened = common dso_local global i32 0, align 4
@wrap_dir_added = common dso_local global i32 0, align 4
@wrap_dir_deleted = common dso_local global i32 0, align 4
@wrap_dir_changed = common dso_local global i32 0, align 4
@wrap_dir_closed = common dso_local global i32 0, align 4
@wrap_file_opened = common dso_local global i32 0, align 4
@wrap_file_added = common dso_local global i32 0, align 4
@wrap_file_deleted = common dso_local global i32 0, align 4
@wrap_file_changed = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__wrap_diff_callbacks(%struct.TYPE_8__** %0, i32* %1, i8* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_8__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__** %0, %struct.TYPE_8__*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %15 = load i32*, i32** %11, align 8
  %16 = call %struct.TYPE_7__* @apr_pcalloc(i32* %15, i32 40)
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %13, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 4
  store i32* %17, i32** %19, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 3
  store i32* %20, i32** %22, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = call %struct.TYPE_8__* @svn_diff__tree_processor_create(%struct.TYPE_7__* %31, i32* %32)
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %14, align 8
  %34 = load i32, i32* @wrap_dir_opened, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 8
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @wrap_dir_added, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 7
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @wrap_dir_deleted, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @wrap_dir_changed, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @wrap_dir_closed, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @wrap_file_opened, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @wrap_file_added, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @wrap_file_deleted, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @wrap_file_changed, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %62 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %7, align 8
  store %struct.TYPE_8__* %61, %struct.TYPE_8__** %62, align 8
  %63 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %63
}

declare dso_local %struct.TYPE_7__* @apr_pcalloc(i32*, i32) #1

declare dso_local %struct.TYPE_8__* @svn_diff__tree_processor_create(%struct.TYPE_7__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
