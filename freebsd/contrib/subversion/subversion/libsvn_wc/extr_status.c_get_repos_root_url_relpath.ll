; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_get_repos_root_url_relpath.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_get_repos_root_url_relpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svn_wc__db_info_t = type { i8*, i8*, i8* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i8**, i8**, %struct.svn_wc__db_info_t*, i8*, i8*, i8*, i32*, i8*, i32*, i32*)* @get_repos_root_url_relpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_repos_root_url_relpath(i8** %0, i8** %1, i8** %2, %struct.svn_wc__db_info_t* %3, i8* %4, i8* %5, i8* %6, i32* %7, i8* %8, i32* %9, i32* %10) #0 {
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca %struct.svn_wc__db_info_t*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  store i8** %0, i8*** %12, align 8
  store i8** %1, i8*** %13, align 8
  store i8** %2, i8*** %14, align 8
  store %struct.svn_wc__db_info_t* %3, %struct.svn_wc__db_info_t** %15, align 8
  store i8* %4, i8** %16, align 8
  store i8* %5, i8** %17, align 8
  store i8* %6, i8** %18, align 8
  store i32* %7, i32** %19, align 8
  store i8* %8, i8** %20, align 8
  store i32* %9, i32** %21, align 8
  store i32* %10, i32** %22, align 8
  %23 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %15, align 8
  %24 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %51

27:                                               ; preds = %11
  %28 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %15, align 8
  %29 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %51

32:                                               ; preds = %27
  %33 = load i32*, i32** %21, align 8
  %34 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %15, align 8
  %35 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i8* @apr_pstrdup(i32* %33, i8* %36)
  %38 = load i8**, i8*** %12, align 8
  store i8* %37, i8** %38, align 8
  %39 = load i32*, i32** %21, align 8
  %40 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %15, align 8
  %41 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i8* @apr_pstrdup(i32* %39, i8* %42)
  %44 = load i8**, i8*** %13, align 8
  store i8* %43, i8** %44, align 8
  %45 = load i32*, i32** %21, align 8
  %46 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %15, align 8
  %47 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %46, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  %49 = call i8* @apr_pstrdup(i32* %45, i8* %48)
  %50 = load i8**, i8*** %14, align 8
  store i8* %49, i8** %50, align 8
  br label %83

51:                                               ; preds = %27, %11
  %52 = load i8*, i8** %16, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %72

54:                                               ; preds = %51
  %55 = load i8*, i8** %17, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %72

57:                                               ; preds = %54
  %58 = load i8*, i8** %16, align 8
  %59 = load i8*, i8** %20, align 8
  %60 = call i32 @svn_dirent_basename(i8* %59, i32* null)
  %61 = load i32*, i32** %21, align 8
  %62 = call i8* @svn_relpath_join(i8* %58, i32 %60, i32* %61)
  %63 = load i8**, i8*** %12, align 8
  store i8* %62, i8** %63, align 8
  %64 = load i32*, i32** %21, align 8
  %65 = load i8*, i8** %17, align 8
  %66 = call i8* @apr_pstrdup(i32* %64, i8* %65)
  %67 = load i8**, i8*** %13, align 8
  store i8* %66, i8** %67, align 8
  %68 = load i32*, i32** %21, align 8
  %69 = load i8*, i8** %18, align 8
  %70 = call i8* @apr_pstrdup(i32* %68, i8* %69)
  %71 = load i8**, i8*** %14, align 8
  store i8* %70, i8** %71, align 8
  br label %82

72:                                               ; preds = %54, %51
  %73 = load i8**, i8*** %12, align 8
  %74 = load i8**, i8*** %13, align 8
  %75 = load i8**, i8*** %14, align 8
  %76 = load i32*, i32** %19, align 8
  %77 = load i8*, i8** %20, align 8
  %78 = load i32*, i32** %21, align 8
  %79 = load i32*, i32** %22, align 8
  %80 = call i32 @svn_wc__db_read_repos_info(i32* null, i8** %73, i8** %74, i8** %75, i32* %76, i8* %77, i32* %78, i32* %79)
  %81 = call i32 @SVN_ERR(i32 %80)
  br label %82

82:                                               ; preds = %72, %57
  br label %83

83:                                               ; preds = %82, %32
  %84 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %84
}

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i8* @svn_relpath_join(i8*, i32, i32*) #1

declare dso_local i32 @svn_dirent_basename(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_read_repos_info(i32*, i8**, i8**, i8**, i32*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
