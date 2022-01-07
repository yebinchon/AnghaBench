; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_canonicalize_access_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_canonicalize_access_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, %struct.TYPE_3__*, i8*, i32*)* @canonicalize_access_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @canonicalize_access_file(i8** %0, %struct.TYPE_3__* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = call i64 @svn_path_is_url(i8* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %4
  %15 = load i8**, i8*** %5, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i8* @svn_uri_canonicalize(i8* %16, i32* %17)
  %19 = load i8**, i8*** %5, align 8
  store i8* %18, i8** %19, align 8
  br label %57

20:                                               ; preds = %4
  %21 = load i8**, i8*** %5, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @svn_path_is_repos_relative_url(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %20
  %26 = load i8*, i8** %7, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @svn_uri_get_file_url_from_dirent(i8** %9, i8* %26, i32* %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  %30 = load i8**, i8*** %5, align 8
  %31 = load i8**, i8*** %5, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = call i32 @svn_path_resolve_repos_relative_url(i8** %30, i8* %32, i8* %33, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load i8**, i8*** %5, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = call i8* @svn_uri_canonicalize(i8* %38, i32* %39)
  %41 = load i8**, i8*** %5, align 8
  store i8* %40, i8** %41, align 8
  br label %56

42:                                               ; preds = %20
  %43 = load i8**, i8*** %5, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i8* @svn_dirent_internal_style(i8* %44, i32* %45)
  %47 = load i8**, i8*** %5, align 8
  store i8* %46, i8** %47, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i8**, i8*** %5, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = call i8* @svn_dirent_join(i32 %50, i8* %52, i32* %53)
  %55 = load i8**, i8*** %5, align 8
  store i8* %54, i8** %55, align 8
  br label %56

56:                                               ; preds = %42, %25
  br label %57

57:                                               ; preds = %56, %14
  %58 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %58
}

declare dso_local i64 @svn_path_is_url(i8*) #1

declare dso_local i8* @svn_uri_canonicalize(i8*, i32*) #1

declare dso_local i64 @svn_path_is_repos_relative_url(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_uri_get_file_url_from_dirent(i8**, i8*, i32*) #1

declare dso_local i32 @svn_path_resolve_repos_relative_url(i8**, i8*, i8*, i32*) #1

declare dso_local i8* @svn_dirent_internal_style(i8*, i32*) #1

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
