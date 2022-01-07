; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_dag.c_svn_fs_fs__dag_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_dag.c_svn_fs_fs__dag_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32*, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__dag_copy(%struct.TYPE_15__* %0, i8* %1, %struct.TYPE_15__* %2, i64 %3, i32 %4, i8* %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_14__*, align 8
  %19 = alloca %struct.TYPE_14__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %9, align 8
  store i8* %1, i8** %10, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %23 = load i64, i64* %12, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %74

25:                                               ; preds = %8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %27 = call i32* @svn_fs_fs__dag_get_id(%struct.TYPE_15__* %26)
  store i32* %27, i32** %21, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %29 = call i32* @svn_fs_fs__dag_get_fs(%struct.TYPE_15__* %28)
  store i32* %29, i32** %22, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %31 = call i32 @get_node_revision(%struct.TYPE_14__** %18, %struct.TYPE_15__* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %34 = load i32*, i32** %16, align 8
  %35 = call %struct.TYPE_14__* @copy_node_revision(%struct.TYPE_14__* %33, i32* %34)
  store %struct.TYPE_14__* %35, %struct.TYPE_14__** %19, align 8
  %36 = load i32*, i32** %22, align 8
  %37 = load i32*, i32** %15, align 8
  %38 = load i32*, i32** %16, align 8
  %39 = call i32 @svn_fs_fs__reserve_copy_id(i32* %20, i32* %36, i32* %37, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load i32*, i32** %21, align 8
  %42 = load i32*, i32** %16, align 8
  %43 = call i32 @svn_fs_fs__id_copy(i32* %41, i32* %42)
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %51 = call i32 @svn_fs_fs__dag_get_created_path(%struct.TYPE_15__* %50)
  %52 = load i8*, i8** %10, align 8
  %53 = load i32*, i32** %16, align 8
  %54 = call i32 @svn_fspath__join(i32 %51, i8* %52, i32* %53)
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  %57 = load i32*, i32** %16, align 8
  %58 = load i8*, i8** %14, align 8
  %59 = call i32 @apr_pstrdup(i32* %57, i8* %58)
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  store i32* null, i32** %66, align 8
  %67 = load i32*, i32** %22, align 8
  %68 = load i32*, i32** %21, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %70 = load i32*, i32** %15, align 8
  %71 = load i32*, i32** %16, align 8
  %72 = call i32 @svn_fs_fs__create_successor(i32** %17, i32* %67, i32* %68, %struct.TYPE_14__* %69, i32* %20, i32* %70, i32* %71)
  %73 = call i32 @SVN_ERR(i32 %72)
  br label %77

74:                                               ; preds = %8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %76 = call i32* @svn_fs_fs__dag_get_id(%struct.TYPE_15__* %75)
  store i32* %76, i32** %17, align 8
  br label %77

77:                                               ; preds = %74, %25
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = load i32*, i32** %17, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %15, align 8
  %85 = load i32*, i32** %16, align 8
  %86 = call i32* @svn_fs_fs__dag_set_entry(%struct.TYPE_15__* %78, i8* %79, i32* %80, i32 %83, i32* %84, i32* %85)
  ret i32* %86
}

declare dso_local i32* @svn_fs_fs__dag_get_id(%struct.TYPE_15__*) #1

declare dso_local i32* @svn_fs_fs__dag_get_fs(%struct.TYPE_15__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_node_revision(%struct.TYPE_14__**, %struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_14__* @copy_node_revision(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @svn_fs_fs__reserve_copy_id(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_fs_fs__id_copy(i32*, i32*) #1

declare dso_local i32 @svn_fspath__join(i32, i8*, i32*) #1

declare dso_local i32 @svn_fs_fs__dag_get_created_path(%struct.TYPE_15__*) #1

declare dso_local i32 @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @svn_fs_fs__create_successor(i32**, i32*, i32*, %struct.TYPE_14__*, i32*, i32*, i32*) #1

declare dso_local i32* @svn_fs_fs__dag_set_entry(%struct.TYPE_15__*, i8*, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
