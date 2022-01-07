; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_dag.c_svn_fs_base__dag_clone_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_dag.c_svn_fs_base__dag_clone_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_base__dag_clone_root(i32** %0, i32* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i8*, align 8
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = call i32 @svn_fs_base__get_txn_ids(i32** %12, i32** %11, i32* %15, i8* %16, i32* %17, i32* %18)
  %20 = call i32 @SVN_ERR(i32 %19)
  %21 = load i32*, i32** %12, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = call i64 @svn_fs_base__id_eq(i32* %21, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %65

25:                                               ; preds = %5
  %26 = load i32*, i32** %11, align 8
  %27 = call i8* @svn_fs_base__id_copy_id(i32* %26)
  store i8* %27, i8** %14, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 @svn_fs_bdb__get_node_revision(%struct.TYPE_4__** %13, i32* %28, i32* %29, i32* %30, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load i32*, i32** %11, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @svn_fs_base__id_copy(i32* %34, i32* %35)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, -1
  br i1 %42, label %43, label %48

43:                                               ; preds = %25
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %43, %25
  %49 = load i32*, i32** %7, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %52 = load i8*, i8** %14, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @svn_fs_base__create_successor(i32** %12, i32* %49, i32* %50, %struct.TYPE_4__* %51, i8* %52, i8* %53, i32* %54, i32* %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  %58 = load i32*, i32** %7, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @svn_fs_base__set_txn_root(i32* %58, i8* %59, i32* %60, i32* %61, i32* %62)
  %64 = call i32 @SVN_ERR(i32 %63)
  br label %65

65:                                               ; preds = %48, %5
  %66 = load i32**, i32*** %6, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = call i32* @svn_fs_base__dag_get_node(i32** %66, i32* %67, i32* %68, i32* %69, i32* %70)
  ret i32* %71
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_base__get_txn_ids(i32**, i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i64 @svn_fs_base__id_eq(i32*, i32*) #1

declare dso_local i8* @svn_fs_base__id_copy_id(i32*) #1

declare dso_local i32 @svn_fs_bdb__get_node_revision(%struct.TYPE_4__**, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_fs_base__id_copy(i32*, i32*) #1

declare dso_local i32 @svn_fs_base__create_successor(i32**, i32*, i32*, %struct.TYPE_4__*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_fs_base__set_txn_root(i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i32* @svn_fs_base__dag_get_node(i32**, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
