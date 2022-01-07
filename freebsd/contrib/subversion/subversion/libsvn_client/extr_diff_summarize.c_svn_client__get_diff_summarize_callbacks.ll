; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff_summarize.c_svn_client__get_diff_summarize_callbacks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff_summarize.c_svn_client__get_diff_summarize_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.summarize_baton_t = type { i8*, i8*, i32, i32* }

@diff_file_added = common dso_local global i32 0, align 4
@diff_file_deleted = common dso_local global i32 0, align 4
@diff_file_changed = common dso_local global i32 0, align 4
@diff_dir_opened = common dso_local global i32 0, align 4
@diff_dir_changed = common dso_local global i32 0, align 4
@diff_dir_deleted = common dso_local global i32 0, align 4
@diff_dir_added = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client__get_diff_summarize_callbacks(%struct.TYPE_4__** %0, i8*** %1, i32 %2, i8* %3, i8* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_4__**, align 8
  %9 = alloca i8***, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca %struct.summarize_baton_t*, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %8, align 8
  store i8*** %1, i8**** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %17 = load i32*, i32** %13, align 8
  %18 = call %struct.summarize_baton_t* @apr_pcalloc(i32* %17, i32 32)
  store %struct.summarize_baton_t* %18, %struct.summarize_baton_t** %16, align 8
  %19 = load i32*, i32** %13, align 8
  %20 = load %struct.summarize_baton_t*, %struct.summarize_baton_t** %16, align 8
  %21 = getelementptr inbounds %struct.summarize_baton_t, %struct.summarize_baton_t* %20, i32 0, i32 3
  store i32* %19, i32** %21, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.summarize_baton_t*, %struct.summarize_baton_t** %16, align 8
  %24 = getelementptr inbounds %struct.summarize_baton_t, %struct.summarize_baton_t* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = load %struct.summarize_baton_t*, %struct.summarize_baton_t** %16, align 8
  %27 = getelementptr inbounds %struct.summarize_baton_t, %struct.summarize_baton_t* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load %struct.summarize_baton_t*, %struct.summarize_baton_t** %16, align 8
  %29 = load i32*, i32** %13, align 8
  %30 = call %struct.TYPE_4__* @svn_diff__tree_processor_create(%struct.summarize_baton_t* %28, i32* %29)
  store %struct.TYPE_4__* %30, %struct.TYPE_4__** %15, align 8
  %31 = load i32, i32* @diff_file_added, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @diff_file_deleted, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @diff_file_changed, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @diff_dir_opened, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @diff_dir_changed, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @diff_dir_deleted, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @diff_dir_added, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %53 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  store %struct.TYPE_4__* %52, %struct.TYPE_4__** %53, align 8
  %54 = load %struct.summarize_baton_t*, %struct.summarize_baton_t** %16, align 8
  %55 = getelementptr inbounds %struct.summarize_baton_t, %struct.summarize_baton_t* %54, i32 0, i32 0
  %56 = load i8***, i8**** %9, align 8
  store i8** %55, i8*** %56, align 8
  %57 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %57
}

declare dso_local %struct.summarize_baton_t* @apr_pcalloc(i32*, i32) #1

declare dso_local %struct.TYPE_4__* @svn_diff__tree_processor_create(%struct.summarize_baton_t*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
