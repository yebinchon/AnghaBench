; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_get_diff_editor5.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_get_diff_editor5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_callbacks3_wrapper_baton = type { i32, i32, i32*, i8*, i32* }

@FALSE = common dso_local global i32 0, align 4
@diff_callbacks3_wrapper = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc_get_diff_editor5(i32* %0, i8* %1, i32* %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i8* %9, i32* %10, i32** %11, i8** %12, i32* %13) #0 {
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32**, align 8
  %27 = alloca i8**, align 8
  %28 = alloca i32*, align 8
  %29 = alloca %struct.diff_callbacks3_wrapper_baton*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  store i32* %0, i32** %15, align 8
  store i8* %1, i8** %16, align 8
  store i32* %2, i32** %17, align 8
  store i8* %3, i8** %18, align 8
  store i32 %4, i32* %19, align 4
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store i32 %7, i32* %22, align 4
  store i32 %8, i32* %23, align 4
  store i8* %9, i8** %24, align 8
  store i32* %10, i32** %25, align 8
  store i32** %11, i32*** %26, align 8
  store i8** %12, i8*** %27, align 8
  store i32* %13, i32** %28, align 8
  %32 = load i32*, i32** %28, align 8
  %33 = call %struct.diff_callbacks3_wrapper_baton* @apr_palloc(i32* %32, i32 32)
  store %struct.diff_callbacks3_wrapper_baton* %33, %struct.diff_callbacks3_wrapper_baton** %29, align 8
  %34 = load i32*, i32** %15, align 8
  %35 = call i32* @svn_wc__adm_get_db(i32* %34)
  store i32* %35, i32** %31, align 8
  %36 = load i32*, i32** %31, align 8
  %37 = load i32*, i32** %28, align 8
  %38 = call i32 @svn_wc__context_create_with_db(i32** %30, i32* null, i32* %36, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load i32*, i32** %17, align 8
  %41 = load %struct.diff_callbacks3_wrapper_baton*, %struct.diff_callbacks3_wrapper_baton** %29, align 8
  %42 = getelementptr inbounds %struct.diff_callbacks3_wrapper_baton, %struct.diff_callbacks3_wrapper_baton* %41, i32 0, i32 4
  store i32* %40, i32** %42, align 8
  %43 = load i8*, i8** %18, align 8
  %44 = load %struct.diff_callbacks3_wrapper_baton*, %struct.diff_callbacks3_wrapper_baton** %29, align 8
  %45 = getelementptr inbounds %struct.diff_callbacks3_wrapper_baton, %struct.diff_callbacks3_wrapper_baton* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load i32*, i32** %31, align 8
  %47 = load %struct.diff_callbacks3_wrapper_baton*, %struct.diff_callbacks3_wrapper_baton** %29, align 8
  %48 = getelementptr inbounds %struct.diff_callbacks3_wrapper_baton, %struct.diff_callbacks3_wrapper_baton* %47, i32 0, i32 2
  store i32* %46, i32** %48, align 8
  %49 = load i32*, i32** %15, align 8
  %50 = call i32 @svn_wc_adm_access_path(i32* %49)
  %51 = load %struct.diff_callbacks3_wrapper_baton*, %struct.diff_callbacks3_wrapper_baton** %29, align 8
  %52 = getelementptr inbounds %struct.diff_callbacks3_wrapper_baton, %struct.diff_callbacks3_wrapper_baton* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32*, i32** %15, align 8
  %54 = call i32 @svn_wc__adm_access_abspath(i32* %53)
  %55 = load %struct.diff_callbacks3_wrapper_baton*, %struct.diff_callbacks3_wrapper_baton** %29, align 8
  %56 = getelementptr inbounds %struct.diff_callbacks3_wrapper_baton, %struct.diff_callbacks3_wrapper_baton* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32**, i32*** %26, align 8
  %58 = load i8**, i8*** %27, align 8
  %59 = load i32*, i32** %30, align 8
  %60 = load %struct.diff_callbacks3_wrapper_baton*, %struct.diff_callbacks3_wrapper_baton** %29, align 8
  %61 = getelementptr inbounds %struct.diff_callbacks3_wrapper_baton, %struct.diff_callbacks3_wrapper_baton* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i8*, i8** %16, align 8
  %64 = load i32, i32* %19, align 4
  %65 = load i32, i32* %20, align 4
  %66 = load i32, i32* @FALSE, align 4
  %67 = load i32, i32* @FALSE, align 4
  %68 = load i32, i32* %21, align 4
  %69 = load i32, i32* %22, align 4
  %70 = load i32, i32* @FALSE, align 4
  %71 = load i32*, i32** %25, align 8
  %72 = load %struct.diff_callbacks3_wrapper_baton*, %struct.diff_callbacks3_wrapper_baton** %29, align 8
  %73 = load i32, i32* %23, align 4
  %74 = load i8*, i8** %24, align 8
  %75 = load i32*, i32** %28, align 8
  %76 = load i32*, i32** %28, align 8
  %77 = call i32 @svn_wc_get_diff_editor6(i32** %57, i8** %58, i32* %59, i32 %62, i8* %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70, i32* %71, i32* @diff_callbacks3_wrapper, %struct.diff_callbacks3_wrapper_baton* %72, i32 %73, i8* %74, i32* %75, i32* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  %79 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %79
}

declare dso_local %struct.diff_callbacks3_wrapper_baton* @apr_palloc(i32*, i32) #1

declare dso_local i32* @svn_wc__adm_get_db(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__context_create_with_db(i32**, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc_adm_access_path(i32*) #1

declare dso_local i32 @svn_wc__adm_access_abspath(i32*) #1

declare dso_local i32 @svn_wc_get_diff_editor6(i32**, i8**, i32*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, %struct.diff_callbacks3_wrapper_baton*, i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
