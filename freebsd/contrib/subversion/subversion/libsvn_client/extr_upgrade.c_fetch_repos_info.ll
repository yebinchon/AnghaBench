; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_upgrade.c_fetch_repos_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_upgrade.c_fetch_repos_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repos_info_baton = type { i8*, i8*, i32*, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i8**, i8*, i8*, i32*, i32*)* @fetch_repos_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fetch_repos_info(i8** %0, i8** %1, i8* %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.repos_info_baton*, align 8
  store i8** %0, i8*** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = bitcast i8* %15 to %struct.repos_info_baton*
  store %struct.repos_info_baton* %16, %struct.repos_info_baton** %14, align 8
  %17 = load %struct.repos_info_baton*, %struct.repos_info_baton** %14, align 8
  %18 = getelementptr inbounds %struct.repos_info_baton, %struct.repos_info_baton* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %42

21:                                               ; preds = %6
  %22 = load %struct.repos_info_baton*, %struct.repos_info_baton** %14, align 8
  %23 = getelementptr inbounds %struct.repos_info_baton, %struct.repos_info_baton* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = call i64 @svn_uri__is_ancestor(i8* %24, i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %21
  %29 = load i32*, i32** %12, align 8
  %30 = load %struct.repos_info_baton*, %struct.repos_info_baton** %14, align 8
  %31 = getelementptr inbounds %struct.repos_info_baton, %struct.repos_info_baton* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i8* @apr_pstrdup(i32* %29, i8* %32)
  %34 = load i8**, i8*** %8, align 8
  store i8* %33, i8** %34, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = load %struct.repos_info_baton*, %struct.repos_info_baton** %14, align 8
  %37 = getelementptr inbounds %struct.repos_info_baton, %struct.repos_info_baton* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i8* @apr_pstrdup(i32* %35, i8* %38)
  %40 = load i8**, i8*** %9, align 8
  store i8* %39, i8** %40, align 8
  %41 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %41, i32** %7, align 8
  br label %70

42:                                               ; preds = %21, %6
  %43 = load i8**, i8*** %8, align 8
  %44 = load i8**, i8*** %9, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load %struct.repos_info_baton*, %struct.repos_info_baton** %14, align 8
  %47 = getelementptr inbounds %struct.repos_info_baton, %struct.repos_info_baton* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = call i32 @svn_client_get_repos_root(i8** %43, i8** %44, i8* %45, i32 %48, i32* %49, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = load %struct.repos_info_baton*, %struct.repos_info_baton** %14, align 8
  %54 = getelementptr inbounds %struct.repos_info_baton, %struct.repos_info_baton* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load i8**, i8*** %8, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = call i8* @apr_pstrdup(i32* %55, i8* %57)
  %59 = load %struct.repos_info_baton*, %struct.repos_info_baton** %14, align 8
  %60 = getelementptr inbounds %struct.repos_info_baton, %struct.repos_info_baton* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load %struct.repos_info_baton*, %struct.repos_info_baton** %14, align 8
  %62 = getelementptr inbounds %struct.repos_info_baton, %struct.repos_info_baton* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i8**, i8*** %9, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = call i8* @apr_pstrdup(i32* %63, i8* %65)
  %67 = load %struct.repos_info_baton*, %struct.repos_info_baton** %14, align 8
  %68 = getelementptr inbounds %struct.repos_info_baton, %struct.repos_info_baton* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %69, i32** %7, align 8
  br label %70

70:                                               ; preds = %42, %28
  %71 = load i32*, i32** %7, align 8
  ret i32* %71
}

declare dso_local i64 @svn_uri__is_ancestor(i8*, i8*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client_get_repos_root(i8**, i8**, i8*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
