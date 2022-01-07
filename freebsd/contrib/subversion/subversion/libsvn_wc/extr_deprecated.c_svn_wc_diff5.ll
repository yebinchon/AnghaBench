; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_diff5.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_diff5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_callbacks3_wrapper_baton = type { i32, i32, i8*, i32* }

@diff_callbacks3_wrapper = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc_diff5(i32* %0, i8* %1, i32* %2, i8* %3, i32 %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.diff_callbacks3_wrapper_baton*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32* %2, i32** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %20 = load i32*, i32** %16, align 8
  %21 = call %struct.diff_callbacks3_wrapper_baton* @apr_palloc(i32* %20, i32 24)
  store %struct.diff_callbacks3_wrapper_baton* %21, %struct.diff_callbacks3_wrapper_baton** %17, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = call i32* @svn_wc__adm_get_db(i32* %22)
  store i32* %23, i32** %19, align 8
  %24 = load i32*, i32** %19, align 8
  %25 = load i32*, i32** %16, align 8
  %26 = call i32 @svn_wc__context_create_with_db(i32** %18, i32* null, i32* %24, i32* %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  %28 = load i32*, i32** %11, align 8
  %29 = load %struct.diff_callbacks3_wrapper_baton*, %struct.diff_callbacks3_wrapper_baton** %17, align 8
  %30 = getelementptr inbounds %struct.diff_callbacks3_wrapper_baton, %struct.diff_callbacks3_wrapper_baton* %29, i32 0, i32 3
  store i32* %28, i32** %30, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = load %struct.diff_callbacks3_wrapper_baton*, %struct.diff_callbacks3_wrapper_baton** %17, align 8
  %33 = getelementptr inbounds %struct.diff_callbacks3_wrapper_baton, %struct.diff_callbacks3_wrapper_baton* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @svn_wc_adm_access_path(i32* %34)
  %36 = load %struct.diff_callbacks3_wrapper_baton*, %struct.diff_callbacks3_wrapper_baton** %17, align 8
  %37 = getelementptr inbounds %struct.diff_callbacks3_wrapper_baton, %struct.diff_callbacks3_wrapper_baton* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @svn_wc__adm_access_abspath(i32* %38)
  %40 = load %struct.diff_callbacks3_wrapper_baton*, %struct.diff_callbacks3_wrapper_baton** %17, align 8
  %41 = getelementptr inbounds %struct.diff_callbacks3_wrapper_baton, %struct.diff_callbacks3_wrapper_baton* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32*, i32** %18, align 8
  %43 = load %struct.diff_callbacks3_wrapper_baton*, %struct.diff_callbacks3_wrapper_baton** %17, align 8
  %44 = getelementptr inbounds %struct.diff_callbacks3_wrapper_baton, %struct.diff_callbacks3_wrapper_baton* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load i32*, i32** %16, align 8
  %48 = call i32 @svn_dirent_join(i32 %45, i8* %46, i32* %47)
  %49 = load %struct.diff_callbacks3_wrapper_baton*, %struct.diff_callbacks3_wrapper_baton** %17, align 8
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* @FALSE, align 4
  %53 = load i32, i32* @FALSE, align 4
  %54 = load i32*, i32** %15, align 8
  %55 = load i32*, i32** %16, align 8
  %56 = call i32 @svn_wc_diff6(i32* %42, i32 %48, i32* @diff_callbacks3_wrapper, %struct.diff_callbacks3_wrapper_baton* %49, i32 %50, i32 %51, i32 %52, i32 %53, i32* %54, i32* null, i32* null, i32* %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  %58 = load i32*, i32** %18, align 8
  %59 = call i32 @svn_wc_context_destroy(i32* %58)
  %60 = call i32* @svn_error_trace(i32 %59)
  ret i32* %60
}

declare dso_local %struct.diff_callbacks3_wrapper_baton* @apr_palloc(i32*, i32) #1

declare dso_local i32* @svn_wc__adm_get_db(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__context_create_with_db(i32**, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc_adm_access_path(i32*) #1

declare dso_local i32 @svn_wc__adm_access_abspath(i32*) #1

declare dso_local i32 @svn_wc_diff6(i32*, i32, i32*, %struct.diff_callbacks3_wrapper_baton*, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_wc_context_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
