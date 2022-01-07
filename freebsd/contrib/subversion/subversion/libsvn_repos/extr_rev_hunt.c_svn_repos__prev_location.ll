; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_rev_hunt.c_svn_repos__prev_location.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_rev_hunt.c_svn_repos__prev_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos__prev_location(i32* %0, i8** %1, i32* %2, i32* %3, i32 %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %7
  %25 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %26 = load i32*, i32** %9, align 8
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %7
  %28 = load i32*, i32** %11, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %32 = load i32*, i32** %11, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i8**, i8*** %10, align 8
  %35 = icmp ne i8** %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i8**, i8*** %10, align 8
  store i8* null, i8** %37, align 8
  br label %38

38:                                               ; preds = %36, %33
  %39 = load i32*, i32** %12, align 8
  %40 = load i32, i32* %13, align 4
  %41 = load i32*, i32** %15, align 8
  %42 = call i32 @svn_fs_revision_root(i32** %16, i32* %39, i32 %40, i32* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load i32*, i32** %16, align 8
  %45 = load i8*, i8** %14, align 8
  %46 = load i32*, i32** %15, align 8
  %47 = call i32 @svn_fs_closest_copy(i32** %17, i8** %18, i32* %44, i8* %45, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load i32*, i32** %17, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %38
  %52 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %52, i32** %8, align 8
  br label %85

53:                                               ; preds = %38
  %54 = load i32*, i32** %17, align 8
  %55 = load i8*, i8** %18, align 8
  %56 = load i32*, i32** %15, align 8
  %57 = call i32 @svn_fs_copied_from(i32* %21, i8** %19, i32* %54, i8* %55, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load i8*, i8** %18, align 8
  %60 = load i8*, i8** %14, align 8
  %61 = call i8* @svn_fspath__skip_ancestor(i8* %59, i8* %60)
  store i8* %61, i8** %20, align 8
  %62 = load i8**, i8*** %10, align 8
  %63 = icmp ne i8** %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %53
  %65 = load i8*, i8** %19, align 8
  %66 = load i8*, i8** %20, align 8
  %67 = load i32*, i32** %15, align 8
  %68 = call i8* @svn_fspath__join(i8* %65, i8* %66, i32* %67)
  %69 = load i8**, i8*** %10, align 8
  store i8* %68, i8** %69, align 8
  br label %70

70:                                               ; preds = %64, %53
  %71 = load i32*, i32** %9, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32*, i32** %17, align 8
  %75 = call i32 @svn_fs_revision_root_revision(i32* %74)
  %76 = load i32*, i32** %9, align 8
  store i32 %75, i32* %76, align 4
  br label %77

77:                                               ; preds = %73, %70
  %78 = load i32*, i32** %11, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* %21, align 4
  %82 = load i32*, i32** %11, align 8
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %84, i32** %8, align 8
  br label %85

85:                                               ; preds = %83, %51
  %86 = load i32*, i32** %8, align 8
  ret i32* %86
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_revision_root(i32**, i32*, i32, i32*) #1

declare dso_local i32 @svn_fs_closest_copy(i32**, i8**, i32*, i8*, i32*) #1

declare dso_local i32 @svn_fs_copied_from(i32*, i8**, i32*, i8*, i32*) #1

declare dso_local i8* @svn_fspath__skip_ancestor(i8*, i8*) #1

declare dso_local i8* @svn_fspath__join(i8*, i8*, i32*) #1

declare dso_local i32 @svn_fs_revision_root_revision(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
