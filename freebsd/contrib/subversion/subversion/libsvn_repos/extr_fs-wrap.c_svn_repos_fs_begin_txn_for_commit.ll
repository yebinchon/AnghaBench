; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_fs-wrap.c_svn_repos_fs_begin_txn_for_commit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_fs-wrap.c_svn_repos_fs_begin_txn_for_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_PROP_REVISION_AUTHOR = common dso_local global i32 0, align 4
@SVN_PROP_REVISION_LOG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos_fs_begin_txn_for_commit(i32** %0, i32* %1, i32 %2, i8* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32** %0, i32*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load i32*, i32** %12, align 8
  %15 = call i32* @apr_hash_make(i32* %14)
  store i32* %15, i32** %13, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %6
  %19 = load i32*, i32** %13, align 8
  %20 = load i32, i32* @SVN_PROP_REVISION_AUTHOR, align 4
  %21 = load i8*, i8** %10, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = call i32 @svn_string_create(i8* %21, i32* %22)
  %24 = call i32 @svn_hash_sets(i32* %19, i32 %20, i32 %23)
  br label %25

25:                                               ; preds = %18, %6
  %26 = load i8*, i8** %11, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i32*, i32** %13, align 8
  %30 = load i32, i32* @SVN_PROP_REVISION_LOG, align 4
  %31 = load i8*, i8** %11, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = call i32 @svn_string_create(i8* %31, i32* %32)
  %34 = call i32 @svn_hash_sets(i32* %29, i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %28, %25
  %36 = load i32**, i32*** %7, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32*, i32** %13, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = call i32* @svn_repos_fs_begin_txn_for_commit2(i32** %36, i32* %37, i32 %38, i32* %39, i32* %40)
  ret i32* %41
}

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, i32) #1

declare dso_local i32 @svn_string_create(i8*, i32*) #1

declare dso_local i32* @svn_repos_fs_begin_txn_for_commit2(i32**, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
