; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_mergeinfo.c_svn_mergeinfo_diff2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_mergeinfo.c_svn_mergeinfo_diff2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_mergeinfo_diff2(i32** %0, i32** %1, i32* %2, i32* %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32** %0, i32*** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %7
  %18 = load i32*, i32** %11, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load i32*, i32** %10, align 8
  %22 = load i32*, i32** %13, align 8
  %23 = call i32* @svn_mergeinfo_dup(i32* %21, i32* %22)
  %24 = load i32**, i32*** %8, align 8
  store i32* %23, i32** %24, align 8
  %25 = load i32*, i32** %13, align 8
  %26 = call i32* @svn_hash__make(i32* %25)
  %27 = load i32**, i32*** %9, align 8
  store i32* %26, i32** %27, align 8
  br label %68

28:                                               ; preds = %17, %7
  %29 = load i32*, i32** %10, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load i32*, i32** %11, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i32*, i32** %13, align 8
  %36 = call i32* @svn_hash__make(i32* %35)
  %37 = load i32**, i32*** %8, align 8
  store i32* %36, i32** %37, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = call i32* @svn_mergeinfo_dup(i32* %38, i32* %39)
  %41 = load i32**, i32*** %9, align 8
  store i32* %40, i32** %41, align 8
  br label %67

42:                                               ; preds = %31, %28
  %43 = load i32*, i32** %13, align 8
  %44 = call i32* @svn_hash__make(i32* %43)
  %45 = load i32**, i32*** %8, align 8
  store i32* %44, i32** %45, align 8
  %46 = load i32*, i32** %13, align 8
  %47 = call i32* @svn_hash__make(i32* %46)
  %48 = load i32**, i32*** %9, align 8
  store i32* %47, i32** %48, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %66

51:                                               ; preds = %42
  %52 = load i32*, i32** %11, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %66

54:                                               ; preds = %51
  %55 = load i32*, i32** %10, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = load i32**, i32*** %8, align 8
  %58 = load i32*, i32** %57, align 8
  %59 = load i32**, i32*** %9, align 8
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load i32*, i32** %13, align 8
  %63 = load i32*, i32** %14, align 8
  %64 = call i32 @walk_mergeinfo_hash_for_diff(i32* %55, i32* %56, i32* %58, i32* %60, i32 %61, i32* %62, i32* %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  br label %66

66:                                               ; preds = %54, %51, %42
  br label %67

67:                                               ; preds = %66, %34
  br label %68

68:                                               ; preds = %67, %20
  %69 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %69
}

declare dso_local i32* @svn_mergeinfo_dup(i32*, i32*) #1

declare dso_local i32* @svn_hash__make(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @walk_mergeinfo_hash_for_diff(i32*, i32*, i32*, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
