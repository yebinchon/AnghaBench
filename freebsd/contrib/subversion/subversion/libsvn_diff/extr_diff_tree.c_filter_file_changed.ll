; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff_tree.c_filter_file_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff_tree.c_filter_file_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.filter_tree_baton_t* }
%struct.filter_tree_baton_t = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 (i8*, i32*, i32*, i8*, i8*, i32*, i32*, i32, i32*, i8*, %struct.TYPE_5__*, i32*)* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, i32*, i8*, i8*, i32*, i32*, i32, i32*, i8*, %struct.TYPE_4__*, i32*)* @filter_file_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @filter_file_changed(i8* %0, i32* %1, i32* %2, i8* %3, i8* %4, i32* %5, i32* %6, i32 %7, i32* %8, i8* %9, %struct.TYPE_4__* %10, i32* %11) #0 {
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.TYPE_4__*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.filter_tree_baton_t*, align 8
  store i8* %0, i8** %13, align 8
  store i32* %1, i32** %14, align 8
  store i32* %2, i32** %15, align 8
  store i8* %3, i8** %16, align 8
  store i8* %4, i8** %17, align 8
  store i32* %5, i32** %18, align 8
  store i32* %6, i32** %19, align 8
  store i32 %7, i32* %20, align 4
  store i32* %8, i32** %21, align 8
  store i8* %9, i8** %22, align 8
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %23, align 8
  store i32* %11, i32** %24, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.filter_tree_baton_t*, %struct.filter_tree_baton_t** %27, align 8
  store %struct.filter_tree_baton_t* %28, %struct.filter_tree_baton_t** %25, align 8
  %29 = load %struct.filter_tree_baton_t*, %struct.filter_tree_baton_t** %25, align 8
  %30 = getelementptr inbounds %struct.filter_tree_baton_t, %struct.filter_tree_baton_t* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %13, align 8
  %33 = call i8* @svn_relpath_skip_ancestor(i32 %31, i8* %32)
  store i8* %33, i8** %13, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = icmp ne i8* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.filter_tree_baton_t*, %struct.filter_tree_baton_t** %25, align 8
  %39 = getelementptr inbounds %struct.filter_tree_baton_t, %struct.filter_tree_baton_t* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32 (i8*, i32*, i32*, i8*, i8*, i32*, i32*, i32, i32*, i8*, %struct.TYPE_5__*, i32*)*, i32 (i8*, i32*, i32*, i8*, i8*, i32*, i32*, i32, i32*, i8*, %struct.TYPE_5__*, i32*)** %41, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = load i32*, i32** %14, align 8
  %45 = load i32*, i32** %15, align 8
  %46 = load i8*, i8** %16, align 8
  %47 = load i8*, i8** %17, align 8
  %48 = load i32*, i32** %18, align 8
  %49 = load i32*, i32** %19, align 8
  %50 = load i32, i32* %20, align 4
  %51 = load i32*, i32** %21, align 8
  %52 = load i8*, i8** %22, align 8
  %53 = load %struct.filter_tree_baton_t*, %struct.filter_tree_baton_t** %25, align 8
  %54 = getelementptr inbounds %struct.filter_tree_baton_t, %struct.filter_tree_baton_t* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load i32*, i32** %24, align 8
  %57 = call i32 %42(i8* %43, i32* %44, i32* %45, i8* %46, i8* %47, i32* %48, i32* %49, i32 %50, i32* %51, i8* %52, %struct.TYPE_5__* %55, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %59
}

declare dso_local i8* @svn_relpath_skip_ancestor(i32, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
