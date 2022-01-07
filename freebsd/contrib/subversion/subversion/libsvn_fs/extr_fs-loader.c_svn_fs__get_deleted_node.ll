; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_fs-loader.c_svn_fs__get_deleted_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_fs-loader.c_svn_fs__get_deleted_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs__get_deleted_node(i32** %0, i8** %1, i32* %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32** %0, i32*** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = call i32 @svn_fspath__split(i8** %13, i8** %14, i8* %22, i32* %23)
  %25 = load i32*, i32** %9, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = call i32 @svn_fs_closest_copy(i32** %15, i8** %16, i32* %25, i8* %26, i32* %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  %30 = load i32*, i32** %15, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %59

32:                                               ; preds = %6
  %33 = load i32*, i32** %15, align 8
  %34 = call i64 @svn_fs_revision_root_revision(i32* %33)
  %35 = load i32*, i32** %9, align 8
  %36 = call i64 @svn_fs_revision_root_revision(i32* %35)
  %37 = icmp eq i64 %34, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %32
  %39 = load i32*, i32** %15, align 8
  %40 = load i8*, i8** %16, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @svn_fs_copied_from(i64* %17, i8** %18, i32* %39, i8* %40, i32* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load i32**, i32*** %7, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @svn_fs_root_fs(i32* %45)
  %47 = load i64, i64* %17, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @svn_fs_revision_root(i32** %44, i32 %46, i64 %47, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load i8*, i8** %16, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = call i8* @svn_fspath__skip_ancestor(i8* %51, i8* %52)
  store i8* %53, i8** %19, align 8
  %54 = load i8*, i8** %18, align 8
  %55 = load i8*, i8** %19, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = call i8* @svn_fspath__join(i8* %54, i8* %55, i32* %56)
  %58 = load i8**, i8*** %8, align 8
  store i8* %57, i8** %58, align 8
  br label %83

59:                                               ; preds = %32, %6
  %60 = load i32*, i32** %9, align 8
  %61 = call i64 @svn_fs_revision_root_revision(i32* %60)
  store i64 %61, i64* %20, align 8
  %62 = load i64, i64* %20, align 8
  %63 = call i64 @SVN_IS_VALID_REVNUM(i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i64, i64* %20, align 8
  %67 = sub nsw i64 %66, 1
  store i64 %67, i64* %21, align 8
  br label %71

68:                                               ; preds = %59
  %69 = load i32*, i32** %9, align 8
  %70 = call i64 @svn_fs_txn_root_base_revision(i32* %69)
  store i64 %70, i64* %21, align 8
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i32**, i32*** %7, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = call i32 @svn_fs_root_fs(i32* %73)
  %75 = load i64, i64* %21, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = call i32 @svn_fs_revision_root(i32** %72, i32 %74, i64 %75, i32* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  %79 = load i32*, i32** %11, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = call i8* @apr_pstrdup(i32* %79, i8* %80)
  %82 = load i8**, i8*** %8, align 8
  store i8* %81, i8** %82, align 8
  br label %83

83:                                               ; preds = %71, %38
  %84 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %84
}

declare dso_local i32 @svn_fspath__split(i8**, i8**, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_closest_copy(i32**, i8**, i32*, i8*, i32*) #1

declare dso_local i64 @svn_fs_revision_root_revision(i32*) #1

declare dso_local i32 @svn_fs_copied_from(i64*, i8**, i32*, i8*, i32*) #1

declare dso_local i32 @svn_fs_revision_root(i32**, i32, i64, i32*) #1

declare dso_local i32 @svn_fs_root_fs(i32*) #1

declare dso_local i8* @svn_fspath__skip_ancestor(i8*, i8*) #1

declare dso_local i8* @svn_fspath__join(i8*, i8*, i32*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i64 @svn_fs_txn_root_base_revision(i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
