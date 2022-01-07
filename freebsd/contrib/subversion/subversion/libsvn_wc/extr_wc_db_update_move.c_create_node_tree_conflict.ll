; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_create_node_tree_conflict.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_create_node_tree_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_7__*, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, %struct.TYPE_6__*, i8*, i32, i32, i32, i32, i8*, i32*, i32*)* @create_node_tree_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_node_tree_conflict(i32** %0, %struct.TYPE_6__* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6, i8* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32**, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_5__*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  store i32** %0, i32*** %11, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %12, align 8
  store i8* %2, i8** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32* %9, i32** %20, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %21, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %20, align 8
  %34 = call i8* @svn_relpath_prefix(i8* %29, i32 %32, i32* %33)
  store i8* %34, i8** %23, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %23, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @svn_relpath_skip_ancestor(i8* %42, i8* %45)
  %47 = load i32*, i32** %20, align 8
  %48 = call i8* @svn_relpath_join(i32 %41, i32 %46, i32* %47)
  store i8* %48, i8** %22, align 8
  %49 = load i32**, i32*** %11, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = load i8*, i8** %13, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %20, align 8
  %59 = call i8* @svn_relpath_prefix(i8* %54, i32 %57, i32* %58)
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %15, align 4
  %74 = load i8*, i8** %22, align 8
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %17, align 4
  %77 = load i8*, i8** %18, align 8
  %78 = load i32*, i32** %19, align 8
  %79 = load i32*, i32** %20, align 8
  %80 = call i32 @create_tree_conflict(i32** %49, i32 %52, i8* %53, i8* %59, i32 %62, %struct.TYPE_7__* %65, i32 %68, i32 %71, i32 %72, i32 %73, i8* %74, i32 %75, i32 %76, i8* %77, i32* %78, i32* %79)
  %81 = call i32* @svn_error_trace(i32 %80)
  ret i32* %81
}

declare dso_local i8* @svn_relpath_prefix(i8*, i32, i32*) #1

declare dso_local i8* @svn_relpath_join(i32, i32, i32*) #1

declare dso_local i32 @svn_relpath_skip_ancestor(i8*, i8*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @create_tree_conflict(i32**, i32, i8*, i8*, i32, %struct.TYPE_7__*, i32, i32, i32, i32, i8*, i32, i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
