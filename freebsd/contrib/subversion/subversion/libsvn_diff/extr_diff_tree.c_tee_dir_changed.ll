; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff_tree.c_tee_dir_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff_tree.c_tee_dir_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svn_diff_tree_processor_t = type { %struct.tee_baton_t* }
%struct.tee_baton_t = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 (i8*, i32*, i32*, i32*, i32*, i32*, i32, %struct.TYPE_3__*, i32*)* }
%struct.TYPE_4__ = type { i32 (i8*, i32*, i32*, i32*, i32*, i32*, i32, %struct.TYPE_4__*, i32*)* }
%struct.tee_node_baton_t = type { i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, i32*, i32*, i32*, i32*, i8*, %struct.svn_diff_tree_processor_t*, i32*)* @tee_dir_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @tee_dir_changed(i8* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i8* %6, %struct.svn_diff_tree_processor_t* %7, i32* %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.svn_diff_tree_processor_t*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.tee_baton_t*, align 8
  %20 = alloca %struct.tee_node_baton_t*, align 8
  store i8* %0, i8** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i8* %6, i8** %16, align 8
  store %struct.svn_diff_tree_processor_t* %7, %struct.svn_diff_tree_processor_t** %17, align 8
  store i32* %8, i32** %18, align 8
  %21 = load %struct.svn_diff_tree_processor_t*, %struct.svn_diff_tree_processor_t** %17, align 8
  %22 = getelementptr inbounds %struct.svn_diff_tree_processor_t, %struct.svn_diff_tree_processor_t* %21, i32 0, i32 0
  %23 = load %struct.tee_baton_t*, %struct.tee_baton_t** %22, align 8
  store %struct.tee_baton_t* %23, %struct.tee_baton_t** %19, align 8
  %24 = load i8*, i8** %16, align 8
  %25 = bitcast i8* %24 to %struct.tee_node_baton_t*
  store %struct.tee_node_baton_t* %25, %struct.tee_node_baton_t** %20, align 8
  %26 = load %struct.tee_baton_t*, %struct.tee_baton_t** %19, align 8
  %27 = getelementptr inbounds %struct.tee_baton_t, %struct.tee_baton_t* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32 (i8*, i32*, i32*, i32*, i32*, i32*, i32, %struct.TYPE_4__*, i32*)*, i32 (i8*, i32*, i32*, i32*, i32*, i32*, i32, %struct.TYPE_4__*, i32*)** %29, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = load i32*, i32** %13, align 8
  %35 = load i32*, i32** %14, align 8
  %36 = load i32*, i32** %15, align 8
  %37 = load %struct.tee_node_baton_t*, %struct.tee_node_baton_t** %20, align 8
  %38 = getelementptr inbounds %struct.tee_node_baton_t, %struct.tee_node_baton_t* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.tee_baton_t*, %struct.tee_baton_t** %19, align 8
  %41 = getelementptr inbounds %struct.tee_baton_t, %struct.tee_baton_t* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i32*, i32** %18, align 8
  %44 = call i32 %30(i8* %31, i32* %32, i32* %33, i32* %34, i32* %35, i32* %36, i32 %39, %struct.TYPE_4__* %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load %struct.tee_baton_t*, %struct.tee_baton_t** %19, align 8
  %47 = getelementptr inbounds %struct.tee_baton_t, %struct.tee_baton_t* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32 (i8*, i32*, i32*, i32*, i32*, i32*, i32, %struct.TYPE_3__*, i32*)*, i32 (i8*, i32*, i32*, i32*, i32*, i32*, i32, %struct.TYPE_3__*, i32*)** %49, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = load i32*, i32** %13, align 8
  %55 = load i32*, i32** %14, align 8
  %56 = load i32*, i32** %15, align 8
  %57 = load %struct.tee_node_baton_t*, %struct.tee_node_baton_t** %20, align 8
  %58 = getelementptr inbounds %struct.tee_node_baton_t, %struct.tee_node_baton_t* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.tee_baton_t*, %struct.tee_baton_t** %19, align 8
  %61 = getelementptr inbounds %struct.tee_baton_t, %struct.tee_baton_t* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = load i32*, i32** %18, align 8
  %64 = call i32 %50(i8* %51, i32* %52, i32* %53, i32* %54, i32* %55, i32* %56, i32 %59, %struct.TYPE_3__* %62, i32* %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  %66 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %66
}

declare dso_local i32 @SVN_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
