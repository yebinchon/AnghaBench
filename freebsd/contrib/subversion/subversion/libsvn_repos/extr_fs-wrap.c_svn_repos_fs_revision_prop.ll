; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_fs-wrap.c_svn_repos_fs_revision_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_fs-wrap.c_svn_repos_fs_revision_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@svn_repos_revision_access_none = common dso_local global i64 0, align 8
@svn_repos_revision_access_partial = common dso_local global i64 0, align 8
@SVN_PROP_REVISION_AUTHOR = common dso_local global i32 0, align 4
@SVN_PROP_REVISION_DATE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos_fs_revision_prop(i32** %0, %struct.TYPE_4__* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32**, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store i32** %0, i32*** %8, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32* %6, i32** %14, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %12, align 4
  %19 = load i8*, i8** %13, align 8
  %20 = load i32*, i32** %14, align 8
  %21 = call i32 @svn_repos_check_revision_access(i64* %15, %struct.TYPE_4__* %16, i32 %17, i32 %18, i8* %19, i32* %20)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load i64, i64* %15, align 8
  %24 = load i64, i64* @svn_repos_revision_access_none, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %7
  %27 = load i32**, i32*** %8, align 8
  store i32* null, i32** %27, align 8
  br label %70

28:                                               ; preds = %7
  %29 = load i64, i64* %15, align 8
  %30 = load i64, i64* @svn_repos_revision_access_partial, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %57

32:                                               ; preds = %28
  %33 = load i8*, i8** %11, align 8
  %34 = load i32, i32* @SVN_PROP_REVISION_AUTHOR, align 4
  %35 = call i64 @strcmp(i8* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load i8*, i8** %11, align 8
  %39 = load i32, i32* @SVN_PROP_REVISION_DATE, align 4
  %40 = call i64 @strcmp(i8* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32**, i32*** %8, align 8
  store i32* null, i32** %43, align 8
  br label %56

44:                                               ; preds = %37, %32
  %45 = load i32**, i32*** %8, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i8*, i8** %11, align 8
  %51 = load i32, i32* @TRUE, align 4
  %52 = load i32*, i32** %14, align 8
  %53 = load i32*, i32** %14, align 8
  %54 = call i32 @svn_fs_revision_prop2(i32** %45, i32 %48, i32 %49, i8* %50, i32 %51, i32* %52, i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  br label %56

56:                                               ; preds = %44, %42
  br label %69

57:                                               ; preds = %28
  %58 = load i32**, i32*** %8, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i8*, i8** %11, align 8
  %64 = load i32, i32* @TRUE, align 4
  %65 = load i32*, i32** %14, align 8
  %66 = load i32*, i32** %14, align 8
  %67 = call i32 @svn_fs_revision_prop2(i32** %58, i32 %61, i32 %62, i8* %63, i32 %64, i32* %65, i32* %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  br label %69

69:                                               ; preds = %57, %56
  br label %70

70:                                               ; preds = %69, %26
  %71 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %71
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_repos_check_revision_access(i64*, %struct.TYPE_4__*, i32, i32, i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @svn_fs_revision_prop2(i32**, i32, i32, i8*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
