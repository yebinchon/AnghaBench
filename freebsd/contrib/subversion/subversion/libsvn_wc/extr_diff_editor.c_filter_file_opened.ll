; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_filter_file_opened.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_filter_file_opened.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.filter_tree_baton_t* }
%struct.filter_tree_baton_t = type { %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 (i8**, i32*, i8*, i32*, i32*, i32*, i8*, %struct.TYPE_5__*, i32*, i32*)* }

@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i32*, i8*, i32*, i32*, i32*, i8*, %struct.TYPE_4__*, i32*, i32*)* @filter_file_opened to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @filter_file_opened(i8** %0, i32* %1, i8* %2, i32* %3, i32* %4, i32* %5, i8* %6, %struct.TYPE_4__* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_4__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.filter_tree_baton_t*, align 8
  %23 = alloca i8*, align 8
  store i8** %0, i8*** %12, align 8
  store i32* %1, i32** %13, align 8
  store i8* %2, i8** %14, align 8
  store i32* %3, i32** %15, align 8
  store i32* %4, i32** %16, align 8
  store i32* %5, i32** %17, align 8
  store i8* %6, i8** %18, align 8
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.filter_tree_baton_t*, %struct.filter_tree_baton_t** %25, align 8
  store %struct.filter_tree_baton_t* %26, %struct.filter_tree_baton_t** %22, align 8
  %27 = load %struct.filter_tree_baton_t*, %struct.filter_tree_baton_t** %22, align 8
  %28 = getelementptr inbounds %struct.filter_tree_baton_t, %struct.filter_tree_baton_t* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = load i32*, i32** %21, align 8
  %32 = call i8* @svn_dirent_join(i32 %29, i8* %30, i32* %31)
  store i8* %32, i8** %23, align 8
  %33 = load %struct.filter_tree_baton_t*, %struct.filter_tree_baton_t** %22, align 8
  %34 = getelementptr inbounds %struct.filter_tree_baton_t, %struct.filter_tree_baton_t* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %23, align 8
  %37 = load %struct.filter_tree_baton_t*, %struct.filter_tree_baton_t** %22, align 8
  %38 = getelementptr inbounds %struct.filter_tree_baton_t, %struct.filter_tree_baton_t* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %21, align 8
  %41 = call i32 @svn_wc__changelist_match(i32 %35, i8* %36, i32 %39, i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %10
  %44 = load i32, i32* @TRUE, align 4
  %45 = load i32*, i32** %13, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %46, i32** %11, align 8
  br label %68

47:                                               ; preds = %10
  %48 = load %struct.filter_tree_baton_t*, %struct.filter_tree_baton_t** %22, align 8
  %49 = getelementptr inbounds %struct.filter_tree_baton_t, %struct.filter_tree_baton_t* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32 (i8**, i32*, i8*, i32*, i32*, i32*, i8*, %struct.TYPE_5__*, i32*, i32*)*, i32 (i8**, i32*, i8*, i32*, i32*, i32*, i8*, %struct.TYPE_5__*, i32*, i32*)** %51, align 8
  %53 = load i8**, i8*** %12, align 8
  %54 = load i32*, i32** %13, align 8
  %55 = load i8*, i8** %14, align 8
  %56 = load i32*, i32** %15, align 8
  %57 = load i32*, i32** %16, align 8
  %58 = load i32*, i32** %17, align 8
  %59 = load i8*, i8** %18, align 8
  %60 = load %struct.filter_tree_baton_t*, %struct.filter_tree_baton_t** %22, align 8
  %61 = getelementptr inbounds %struct.filter_tree_baton_t, %struct.filter_tree_baton_t* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = load i32*, i32** %20, align 8
  %64 = load i32*, i32** %21, align 8
  %65 = call i32 %52(i8** %53, i32* %54, i8* %55, i32* %56, i32* %57, i32* %58, i8* %59, %struct.TYPE_5__* %62, i32* %63, i32* %64)
  %66 = call i32 @SVN_ERR(i32 %65)
  %67 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %67, i32** %11, align 8
  br label %68

68:                                               ; preds = %47, %43
  %69 = load i32*, i32** %11, align 8
  ret i32* %69
}

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i32 @svn_wc__changelist_match(i32, i8*, i32, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
