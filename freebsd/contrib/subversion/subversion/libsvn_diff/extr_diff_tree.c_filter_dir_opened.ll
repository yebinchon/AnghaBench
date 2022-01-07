; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff_tree.c_filter_dir_opened.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff_tree.c_filter_dir_opened.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.filter_tree_baton_t* }
%struct.filter_tree_baton_t = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 (i8**, i32*, i32*, i8*, i32*, i32*, i32*, i8*, %struct.TYPE_5__*, i32*, i32*)* }

@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i32*, i32*, i8*, i32*, i32*, i32*, i8*, %struct.TYPE_4__*, i32*, i32*)* @filter_dir_opened to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @filter_dir_opened(i8** %0, i32* %1, i32* %2, i8* %3, i32* %4, i32* %5, i32* %6, i8* %7, %struct.TYPE_4__* %8, i32* %9, i32* %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_4__*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.filter_tree_baton_t*, align 8
  store i8** %0, i8*** %13, align 8
  store i32* %1, i32** %14, align 8
  store i32* %2, i32** %15, align 8
  store i8* %3, i8** %16, align 8
  store i32* %4, i32** %17, align 8
  store i32* %5, i32** %18, align 8
  store i32* %6, i32** %19, align 8
  store i8* %7, i8** %20, align 8
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %21, align 8
  store i32* %9, i32** %22, align 8
  store i32* %10, i32** %23, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.filter_tree_baton_t*, %struct.filter_tree_baton_t** %26, align 8
  store %struct.filter_tree_baton_t* %27, %struct.filter_tree_baton_t** %24, align 8
  %28 = load %struct.filter_tree_baton_t*, %struct.filter_tree_baton_t** %24, align 8
  %29 = getelementptr inbounds %struct.filter_tree_baton_t, %struct.filter_tree_baton_t* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i8*, i8** %16, align 8
  %32 = call i8* @svn_relpath_skip_ancestor(i32 %30, i8* %31)
  store i8* %32, i8** %16, align 8
  %33 = load i8*, i8** %16, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %11
  %36 = load i32, i32* @TRUE, align 4
  %37 = load i32*, i32** %14, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %38, i32** %12, align 8
  br label %61

39:                                               ; preds = %11
  %40 = load %struct.filter_tree_baton_t*, %struct.filter_tree_baton_t** %24, align 8
  %41 = getelementptr inbounds %struct.filter_tree_baton_t, %struct.filter_tree_baton_t* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32 (i8**, i32*, i32*, i8*, i32*, i32*, i32*, i8*, %struct.TYPE_5__*, i32*, i32*)*, i32 (i8**, i32*, i32*, i8*, i32*, i32*, i32*, i8*, %struct.TYPE_5__*, i32*, i32*)** %43, align 8
  %45 = load i8**, i8*** %13, align 8
  %46 = load i32*, i32** %14, align 8
  %47 = load i32*, i32** %15, align 8
  %48 = load i8*, i8** %16, align 8
  %49 = load i32*, i32** %17, align 8
  %50 = load i32*, i32** %18, align 8
  %51 = load i32*, i32** %19, align 8
  %52 = load i8*, i8** %20, align 8
  %53 = load %struct.filter_tree_baton_t*, %struct.filter_tree_baton_t** %24, align 8
  %54 = getelementptr inbounds %struct.filter_tree_baton_t, %struct.filter_tree_baton_t* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load i32*, i32** %22, align 8
  %57 = load i32*, i32** %23, align 8
  %58 = call i32 %44(i8** %45, i32* %46, i32* %47, i8* %48, i32* %49, i32* %50, i32* %51, i8* %52, %struct.TYPE_5__* %55, i32* %56, i32* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %60, i32** %12, align 8
  br label %61

61:                                               ; preds = %39, %35
  %62 = load i32*, i32** %12, align 8
  ret i32* %62
}

declare dso_local i8* @svn_relpath_skip_ancestor(i32, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
