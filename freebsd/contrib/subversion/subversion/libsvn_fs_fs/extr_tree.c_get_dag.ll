; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_get_dag.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_get_dag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@open_path_uncached = common dso_local global i32 0, align 4
@open_path_node_only = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32*, i8*, i32*)* @get_dag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_dag(i32** %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32*, align 8
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32* null, i32** %10, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 47
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load i32*, i32** %6, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @dag_node_cache_get(i32** %10, i32* %16, i8* %17, i32* %18)
  %20 = call i32 @SVN_ERR(i32 %19)
  br label %21

21:                                               ; preds = %15, %4
  %22 = load i32*, i32** %10, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %59, label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** %7, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 47
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @svn_fs__is_canonical_abspath(i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %29, %24
  %34 = load i8*, i8** %7, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i8* @svn_fs__canonicalize_abspath(i8* %34, i32* %35)
  store i8* %36, i8** %7, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @dag_node_cache_get(i32** %10, i32* %37, i8* %38, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  br label %42

42:                                               ; preds = %33, %29
  %43 = load i32*, i32** %10, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %58, label %45

45:                                               ; preds = %42
  %46 = load i32*, i32** %6, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* @open_path_uncached, align 4
  %49 = load i32, i32* @open_path_node_only, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @FALSE, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @open_path(%struct.TYPE_3__** %9, i32* %46, i8* %47, i32 %50, i32 %51, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** %10, align 8
  br label %58

58:                                               ; preds = %45, %42
  br label %59

59:                                               ; preds = %58, %21
  %60 = load i32*, i32** %10, align 8
  %61 = load i32**, i32*** %5, align 8
  store i32* %60, i32** %61, align 8
  %62 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %62
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @dag_node_cache_get(i32**, i32*, i8*, i32*) #1

declare dso_local i32 @svn_fs__is_canonical_abspath(i8*) #1

declare dso_local i8* @svn_fs__canonicalize_abspath(i8*, i32*) #1

declare dso_local i32 @open_path(%struct.TYPE_3__**, i32*, i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
