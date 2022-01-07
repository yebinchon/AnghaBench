; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_repos.c_svn_repos_find_root_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_repos.c_svn_repos_find_root_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @svn_repos_find_root_path(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %6, align 8
  br label %10

10:                                               ; preds = %2, %35
  %11 = load i8*, i8** %6, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32* @svn_path_cstring_from_utf8(i8** %7, i8* %11, i32* %12)
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = load i8*, i8** %6, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i64 @check_repos_path(i8* %17, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %39

22:                                               ; preds = %16, %10
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @svn_error_clear(i32* %23)
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @svn_path_is_empty(i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = call i64 @svn_dirent_is_root(i8* %29, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %22
  store i8* null, i8** %3, align 8
  br label %41

35:                                               ; preds = %28
  %36 = load i8*, i8** %6, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i8* @svn_dirent_dirname(i8* %36, i32* %37)
  store i8* %38, i8** %6, align 8
  br label %10

39:                                               ; preds = %21
  %40 = load i8*, i8** %6, align 8
  store i8* %40, i8** %3, align 8
  br label %41

41:                                               ; preds = %39, %34
  %42 = load i8*, i8** %3, align 8
  ret i8* %42
}

declare dso_local i32* @svn_path_cstring_from_utf8(i8**, i8*, i32*) #1

declare dso_local i64 @check_repos_path(i8*, i32*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i64 @svn_path_is_empty(i8*) #1

declare dso_local i64 @svn_dirent_is_root(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
