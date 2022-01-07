; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff_tree.c_copy_as_changed_dir_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff_tree.c_copy_as_changed_dir_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svn_diff_tree_processor_t = type { %struct.copy_as_changed_baton_t* }
%struct.copy_as_changed_baton_t = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i8*, i32*, i32*, i32*, i32*, i32*, i8*, %struct.TYPE_2__*, i32*)* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, i32*, i32*, i32*, i32*, i8*, %struct.svn_diff_tree_processor_t*, i32*)* @copy_as_changed_dir_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @copy_as_changed_dir_changed(i8* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i8* %6, %struct.svn_diff_tree_processor_t* %7, i32* %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.svn_diff_tree_processor_t*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.copy_as_changed_baton_t*, align 8
  store i8* %0, i8** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i8* %6, i8** %16, align 8
  store %struct.svn_diff_tree_processor_t* %7, %struct.svn_diff_tree_processor_t** %17, align 8
  store i32* %8, i32** %18, align 8
  %20 = load %struct.svn_diff_tree_processor_t*, %struct.svn_diff_tree_processor_t** %17, align 8
  %21 = getelementptr inbounds %struct.svn_diff_tree_processor_t, %struct.svn_diff_tree_processor_t* %20, i32 0, i32 0
  %22 = load %struct.copy_as_changed_baton_t*, %struct.copy_as_changed_baton_t** %21, align 8
  store %struct.copy_as_changed_baton_t* %22, %struct.copy_as_changed_baton_t** %19, align 8
  %23 = load %struct.copy_as_changed_baton_t*, %struct.copy_as_changed_baton_t** %19, align 8
  %24 = getelementptr inbounds %struct.copy_as_changed_baton_t, %struct.copy_as_changed_baton_t* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (i8*, i32*, i32*, i32*, i32*, i32*, i8*, %struct.TYPE_2__*, i32*)*, i32 (i8*, i32*, i32*, i32*, i32*, i32*, i8*, %struct.TYPE_2__*, i32*)** %26, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = load i32*, i32** %15, align 8
  %34 = load i8*, i8** %16, align 8
  %35 = load %struct.copy_as_changed_baton_t*, %struct.copy_as_changed_baton_t** %19, align 8
  %36 = getelementptr inbounds %struct.copy_as_changed_baton_t, %struct.copy_as_changed_baton_t* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32*, i32** %18, align 8
  %39 = call i32 %27(i8* %28, i32* %29, i32* %30, i32* %31, i32* %32, i32* %33, i8* %34, %struct.TYPE_2__* %37, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %41
}

declare dso_local i32 @SVN_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
