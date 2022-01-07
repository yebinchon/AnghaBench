; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_editor.c_revstart_func_wrapper.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_editor.c_revstart_func_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wrapped_replay_baton_t = type { i32, i32, i32, i32, i32, i32 (i32, i32, i32*, i32*, i32*)* }
%struct.fp_baton = type { i32, i32 }
%struct.svn_delta__extra_baton = type { i32 }

@fetch_props = common dso_local global i32 0, align 4
@fetch_base = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i8*, i32**, i8**, i32*, i32*)* @revstart_func_wrapper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @revstart_func_wrapper(i32 %0, i8* %1, i32** %2, i8** %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.wrapped_replay_baton_t*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.fp_baton*, align 8
  %19 = alloca %struct.svn_delta__extra_baton*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = bitcast i8* %20 to %struct.wrapped_replay_baton_t*
  store %struct.wrapped_replay_baton_t* %21, %struct.wrapped_replay_baton_t** %13, align 8
  %22 = load %struct.wrapped_replay_baton_t*, %struct.wrapped_replay_baton_t** %13, align 8
  %23 = getelementptr inbounds %struct.wrapped_replay_baton_t, %struct.wrapped_replay_baton_t* %22, i32 0, i32 5
  %24 = load i32 (i32, i32, i32*, i32*, i32*)*, i32 (i32, i32, i32*, i32*, i32*)** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.wrapped_replay_baton_t*, %struct.wrapped_replay_baton_t** %13, align 8
  %27 = getelementptr inbounds %struct.wrapped_replay_baton_t, %struct.wrapped_replay_baton_t* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.wrapped_replay_baton_t*, %struct.wrapped_replay_baton_t** %13, align 8
  %30 = getelementptr inbounds %struct.wrapped_replay_baton_t, %struct.wrapped_replay_baton_t* %29, i32 0, i32 1
  %31 = load i32*, i32** %11, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = call i32 %24(i32 %25, i32 %28, i32* %30, i32* %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load %struct.wrapped_replay_baton_t*, %struct.wrapped_replay_baton_t** %13, align 8
  %36 = getelementptr inbounds %struct.wrapped_replay_baton_t, %struct.wrapped_replay_baton_t* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %12, align 8
  %39 = call i32 @svn_ra_get_repos_root2(i32 %37, i8** %14, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load %struct.wrapped_replay_baton_t*, %struct.wrapped_replay_baton_t** %13, align 8
  %42 = getelementptr inbounds %struct.wrapped_replay_baton_t, %struct.wrapped_replay_baton_t* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %12, align 8
  %45 = call i32 @svn_ra_get_session_url(i32 %43, i8** %15, i32* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  %47 = load i8*, i8** %14, align 8
  %48 = load i8*, i8** %15, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = call i8* @svn_uri_skip_ancestor(i8* %47, i8* %48, i32* %49)
  store i8* %50, i8** %16, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = call i8* @apr_pcalloc(i32* %51, i32 4)
  %53 = bitcast i8* %52 to i32*
  store i32* %53, i32** %17, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = call %struct.fp_baton* @apr_palloc(i32* %54, i32 8)
  store %struct.fp_baton* %55, %struct.fp_baton** %18, align 8
  %56 = load %struct.wrapped_replay_baton_t*, %struct.wrapped_replay_baton_t** %13, align 8
  %57 = getelementptr inbounds %struct.wrapped_replay_baton_t, %struct.wrapped_replay_baton_t* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.fp_baton*, %struct.fp_baton** %18, align 8
  %60 = getelementptr inbounds %struct.fp_baton, %struct.fp_baton* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.wrapped_replay_baton_t*, %struct.wrapped_replay_baton_t** %13, align 8
  %62 = getelementptr inbounds %struct.wrapped_replay_baton_t, %struct.wrapped_replay_baton_t* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.fp_baton*, %struct.fp_baton** %18, align 8
  %65 = getelementptr inbounds %struct.fp_baton, %struct.fp_baton* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load i32*, i32** %12, align 8
  %67 = call i8* @apr_pcalloc(i32* %66, i32 4)
  %68 = bitcast i8* %67 to %struct.svn_delta__extra_baton*
  store %struct.svn_delta__extra_baton* %68, %struct.svn_delta__extra_baton** %19, align 8
  %69 = load i32**, i32*** %9, align 8
  %70 = load i8**, i8*** %10, align 8
  %71 = load %struct.wrapped_replay_baton_t*, %struct.wrapped_replay_baton_t** %13, align 8
  %72 = getelementptr inbounds %struct.wrapped_replay_baton_t, %struct.wrapped_replay_baton_t* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %17, align 8
  %75 = load i8*, i8** %14, align 8
  %76 = load i8*, i8** %16, align 8
  %77 = load i32, i32* @fetch_props, align 4
  %78 = load %struct.wrapped_replay_baton_t*, %struct.wrapped_replay_baton_t** %13, align 8
  %79 = getelementptr inbounds %struct.wrapped_replay_baton_t, %struct.wrapped_replay_baton_t* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @fetch_base, align 4
  %82 = load %struct.wrapped_replay_baton_t*, %struct.wrapped_replay_baton_t** %13, align 8
  %83 = getelementptr inbounds %struct.wrapped_replay_baton_t, %struct.wrapped_replay_baton_t* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.svn_delta__extra_baton*, %struct.svn_delta__extra_baton** %19, align 8
  %86 = load i32*, i32** %12, align 8
  %87 = call i32 @svn_delta__delta_from_editor(i32** %69, i8** %70, i32 %73, i32* null, i32* null, i32* %74, i8* %75, i8* %76, i32 %77, i32 %80, i32 %81, i32 %84, %struct.svn_delta__extra_baton* %85, i32* %86)
  %88 = call i32 @SVN_ERR(i32 %87)
  %89 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %89
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_ra_get_repos_root2(i32, i8**, i32*) #1

declare dso_local i32 @svn_ra_get_session_url(i32, i8**, i32*) #1

declare dso_local i8* @svn_uri_skip_ancestor(i8*, i8*, i32*) #1

declare dso_local i8* @apr_pcalloc(i32*, i32) #1

declare dso_local %struct.fp_baton* @apr_palloc(i32*, i32) #1

declare dso_local i32 @svn_delta__delta_from_editor(i32**, i8**, i32, i32*, i32*, i32*, i8*, i8*, i32, i32, i32, i32, %struct.svn_delta__extra_baton*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
