; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_repos.c_check_repos_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_repos.c_check_repos_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_REPOS__FORMAT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@SVN_REPOS__DB_DIR = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @check_repos_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_repos_path(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i32, i32* @SVN_REPOS__FORMAT, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @svn_dirent_join(i8* %8, i32 %9, i32* %10)
  %12 = load i32*, i32** %5, align 8
  %13 = call i32* @svn_io_check_path(i32 %11, i64* %6, i32* %12)
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @svn_error_clear(i32* %17)
  %19 = load i32, i32* @TRUE, align 4
  store i32 %19, i32* %3, align 4
  br label %47

20:                                               ; preds = %2
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @svn_node_file, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %3, align 4
  br label %47

26:                                               ; preds = %20
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* @SVN_REPOS__DB_DIR, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @svn_dirent_join(i8* %27, i32 %28, i32* %29)
  %31 = load i32*, i32** %5, align 8
  %32 = call i32* @svn_io_check_resolved_path(i32 %30, i64* %6, i32* %31)
  store i32* %32, i32** %7, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @svn_error_clear(i32* %36)
  %38 = load i32, i32* @TRUE, align 4
  store i32 %38, i32* %3, align 4
  br label %47

39:                                               ; preds = %26
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @svn_node_dir, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %3, align 4
  br label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @TRUE, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %43, %35, %24, %16
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32* @svn_io_check_path(i32, i64*, i32*) #1

declare dso_local i32 @svn_dirent_join(i8*, i32, i32*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i32* @svn_io_check_resolved_path(i32, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
