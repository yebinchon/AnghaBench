; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_fs-wrap.c_svn_repos_fs_revision_proplist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_fs-wrap.c_svn_repos_fs_revision_proplist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@svn_repos_revision_access_none = common dso_local global i64 0, align 8
@svn_repos_revision_access_partial = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@SVN_PROP_REVISION_AUTHOR = common dso_local global i32 0, align 4
@SVN_PROP_REVISION_DATE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos_fs_revision_proplist(i32** %0, %struct.TYPE_4__* %1, i32 %2, i32 %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i32** %0, i32*** %7, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i8*, i8** %11, align 8
  %20 = load i32*, i32** %12, align 8
  %21 = call i32 @svn_repos_check_revision_access(i64* %13, %struct.TYPE_4__* %16, i32 %17, i32 %18, i8* %19, i32* %20)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load i64, i64* %13, align 8
  %24 = load i64, i64* @svn_repos_revision_access_none, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %6
  %27 = load i32*, i32** %12, align 8
  %28 = call i32* @apr_hash_make(i32* %27)
  %29 = load i32**, i32*** %7, align 8
  store i32* %28, i32** %29, align 8
  br label %83

30:                                               ; preds = %6
  %31 = load i64, i64* %13, align 8
  %32 = load i64, i64* @svn_repos_revision_access_partial, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %71

34:                                               ; preds = %30
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @TRUE, align 4
  %40 = load i32*, i32** %12, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @svn_fs_revision_proplist2(i32** %14, i32 %37, i32 %38, i32 %39, i32* %40, i32* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load i32*, i32** %12, align 8
  %45 = call i32* @apr_hash_make(i32* %44)
  %46 = load i32**, i32*** %7, align 8
  store i32* %45, i32** %46, align 8
  %47 = load i32*, i32** %14, align 8
  %48 = load i32, i32* @SVN_PROP_REVISION_AUTHOR, align 4
  %49 = call i32* @svn_hash_gets(i32* %47, i32 %48)
  store i32* %49, i32** %15, align 8
  %50 = load i32*, i32** %15, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %34
  %53 = load i32**, i32*** %7, align 8
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* @SVN_PROP_REVISION_AUTHOR, align 4
  %56 = load i32*, i32** %15, align 8
  %57 = call i32 @svn_hash_sets(i32* %54, i32 %55, i32* %56)
  br label %58

58:                                               ; preds = %52, %34
  %59 = load i32*, i32** %14, align 8
  %60 = load i32, i32* @SVN_PROP_REVISION_DATE, align 4
  %61 = call i32* @svn_hash_gets(i32* %59, i32 %60)
  store i32* %61, i32** %15, align 8
  %62 = load i32*, i32** %15, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load i32**, i32*** %7, align 8
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* @SVN_PROP_REVISION_DATE, align 4
  %68 = load i32*, i32** %15, align 8
  %69 = call i32 @svn_hash_sets(i32* %66, i32 %67, i32* %68)
  br label %70

70:                                               ; preds = %64, %58
  br label %82

71:                                               ; preds = %30
  %72 = load i32**, i32*** %7, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @TRUE, align 4
  %78 = load i32*, i32** %12, align 8
  %79 = load i32*, i32** %12, align 8
  %80 = call i32 @svn_fs_revision_proplist2(i32** %72, i32 %75, i32 %76, i32 %77, i32* %78, i32* %79)
  %81 = call i32 @SVN_ERR(i32 %80)
  br label %82

82:                                               ; preds = %71, %70
  br label %83

83:                                               ; preds = %82, %26
  %84 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %84
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_repos_check_revision_access(i64*, %struct.TYPE_4__*, i32, i32, i8*, i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_fs_revision_proplist2(i32**, i32, i32, i32, i32*, i32*) #1

declare dso_local i32* @svn_hash_gets(i32*, i32) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
