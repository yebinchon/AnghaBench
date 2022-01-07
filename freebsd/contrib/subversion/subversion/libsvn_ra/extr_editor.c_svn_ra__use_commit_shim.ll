; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_editor.c_svn_ra__use_commit_shim.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_editor.c_svn_ra__use_commit_shim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*, i32**, i8**, i32*, i32, i8*, i32*, i32, i32*)* }
%struct.svn_delta__extra_baton = type { i32, i32 (i32, i32)* }
%struct.fp_baton = type { i8*, i32 }

@fetch_props = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_ra__use_commit_shim(i32** %0, %struct.TYPE_8__* %1, i32* %2, i32 %3, i8* %4, i32* %5, i32 %6, i32 %7, i32 %8, i32 %9, i8* %10, i32 %11, i8* %12, i32* %13, i32* %14) #0 {
  %16 = alloca i32**, align 8
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca %struct.svn_delta__extra_baton*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i8*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i32*, align 8
  %40 = alloca %struct.fp_baton*, align 8
  store i32** %0, i32*** %16, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %17, align 8
  store i32* %2, i32** %18, align 8
  store i32 %3, i32* %19, align 4
  store i8* %4, i8** %20, align 8
  store i32* %5, i32** %21, align 8
  store i32 %6, i32* %22, align 4
  store i32 %7, i32* %23, align 4
  store i32 %8, i32* %24, align 4
  store i32 %9, i32* %25, align 4
  store i8* %10, i8** %26, align 8
  store i32 %11, i32* %27, align 4
  store i8* %12, i8** %28, align 8
  store i32* %13, i32** %29, align 8
  store i32* %14, i32** %30, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32 (%struct.TYPE_8__*, i32**, i8**, i32*, i32, i8*, i32*, i32, i32*)*, i32 (%struct.TYPE_8__*, i32**, i8**, i32*, i32, i8*, i32*, i32, i32*)** %44, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %47 = load i32*, i32** %18, align 8
  %48 = load i32, i32* %19, align 4
  %49 = load i8*, i8** %20, align 8
  %50 = load i32*, i32** %21, align 8
  %51 = load i32, i32* %22, align 4
  %52 = load i32*, i32** %29, align 8
  %53 = call i32 %45(%struct.TYPE_8__* %46, i32** %31, i8** %32, i32* %47, i32 %48, i8* %49, i32* %50, i32 %51, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %56 = load i32*, i32** %30, align 8
  %57 = call i32 @svn_ra_get_repos_root2(%struct.TYPE_8__* %55, i8** %36, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %60 = load i32*, i32** %30, align 8
  %61 = call i32 @svn_ra_get_session_url(%struct.TYPE_8__* %59, i8** %37, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load i8*, i8** %36, align 8
  %64 = load i8*, i8** %37, align 8
  %65 = load i32*, i32** %30, align 8
  %66 = call i8* @svn_uri_skip_ancestor(i8* %63, i8* %64, i32* %65)
  store i8* %66, i8** %38, align 8
  %67 = load i32*, i32** %29, align 8
  %68 = call i32* @apr_pcalloc(i32* %67, i32 4)
  store i32* %68, i32** %39, align 8
  %69 = load i32*, i32** %29, align 8
  %70 = call %struct.fp_baton* @apr_palloc(i32* %69, i32 16)
  store %struct.fp_baton* %70, %struct.fp_baton** %40, align 8
  %71 = load i32, i32* %24, align 4
  %72 = load %struct.fp_baton*, %struct.fp_baton** %40, align 8
  %73 = getelementptr inbounds %struct.fp_baton, %struct.fp_baton* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = load i8*, i8** %26, align 8
  %75 = load %struct.fp_baton*, %struct.fp_baton** %40, align 8
  %76 = getelementptr inbounds %struct.fp_baton, %struct.fp_baton* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  %77 = load i32**, i32*** %16, align 8
  %78 = load i32*, i32** %31, align 8
  %79 = load i8*, i8** %32, align 8
  %80 = load i32*, i32** %39, align 8
  %81 = load i8*, i8** %36, align 8
  %82 = load i8*, i8** %38, align 8
  %83 = load i32, i32* %27, align 4
  %84 = load i8*, i8** %28, align 8
  %85 = load i32, i32* %25, align 4
  %86 = load i8*, i8** %26, align 8
  %87 = load i32, i32* @fetch_props, align 4
  %88 = load %struct.fp_baton*, %struct.fp_baton** %40, align 8
  %89 = load i32*, i32** %29, align 8
  %90 = load i32*, i32** %30, align 8
  %91 = call i32 @svn_delta__editor_from_delta(i32** %77, %struct.svn_delta__extra_baton** %33, i32* %34, i8** %35, i32* %78, i8* %79, i32* %80, i8* %81, i8* %82, i32 %83, i8* %84, i32 %85, i8* %86, i32 %87, %struct.fp_baton* %88, i32* %89, i32* %90)
  %92 = call i32 @SVN_ERR(i32 %91)
  %93 = load %struct.svn_delta__extra_baton*, %struct.svn_delta__extra_baton** %33, align 8
  %94 = getelementptr inbounds %struct.svn_delta__extra_baton, %struct.svn_delta__extra_baton* %93, i32 0, i32 1
  %95 = load i32 (i32, i32)*, i32 (i32, i32)** %94, align 8
  %96 = icmp ne i32 (i32, i32)* %95, null
  br i1 %96, label %97, label %107

97:                                               ; preds = %15
  %98 = load %struct.svn_delta__extra_baton*, %struct.svn_delta__extra_baton** %33, align 8
  %99 = getelementptr inbounds %struct.svn_delta__extra_baton, %struct.svn_delta__extra_baton* %98, i32 0, i32 1
  %100 = load i32 (i32, i32)*, i32 (i32, i32)** %99, align 8
  %101 = load %struct.svn_delta__extra_baton*, %struct.svn_delta__extra_baton** %33, align 8
  %102 = getelementptr inbounds %struct.svn_delta__extra_baton, %struct.svn_delta__extra_baton* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %105 = call i32 %100(i32 %103, i32 %104)
  %106 = call i32 @SVN_ERR(i32 %105)
  br label %107

107:                                              ; preds = %97, %15
  %108 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %108
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_get_repos_root2(%struct.TYPE_8__*, i8**, i32*) #1

declare dso_local i32 @svn_ra_get_session_url(%struct.TYPE_8__*, i8**, i32*) #1

declare dso_local i8* @svn_uri_skip_ancestor(i8*, i8*, i32*) #1

declare dso_local i32* @apr_pcalloc(i32*, i32) #1

declare dso_local %struct.fp_baton* @apr_palloc(i32*, i32) #1

declare dso_local i32 @svn_delta__editor_from_delta(i32**, %struct.svn_delta__extra_baton**, i32*, i8**, i32*, i8*, i32*, i8*, i8*, i32, i8*, i32, i8*, i32, %struct.fp_baton*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
