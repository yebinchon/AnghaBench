; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_make_txn_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_make_txn_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__*, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@svn_fs_fs__dag_serialize = common dso_local global i32 0, align 4
@svn_fs_fs__dag_deserialize = common dso_local global i32 0, align 4
@APR_HASH_KEY_STRING = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c":TXN\00", align 1
@SVN_VA_NULL = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__**, i32*, i32*, i32, i32, i32*)* @make_txn_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @make_txn_root(%struct.TYPE_6__** %0, i32* %1, i32* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_6__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32*, i32** %12, align 8
  %17 = call %struct.TYPE_6__* @make_root(i32* %15, i32* %16)
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %13, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.TYPE_7__* @apr_pcalloc(i32 %20, i32 8)
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %14, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @TRUE, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @svn_fs_fs__id_txn_unparse(i32* %29, i32 %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* @svn_fs_fs__dag_serialize, align 4
  %45 = load i32, i32* @svn_fs_fs__dag_deserialize, align 4
  %46 = load i32, i32* @APR_HASH_KEY_STRING, align 4
  %47 = load i32, i32* @FALSE, align 4
  %48 = load i32*, i32** %12, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* @SVN_VA_NULL, align 4
  %51 = call i32 @apr_pstrcat(i32* %48, i32* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @svn_cache__create_inprocess(i32* %43, i32 %44, i32 %45, i32 %46, i32 32, i32 20, i32 %47, i32 %51, i32 %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load i32*, i32** %8, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @svn_fs_fs__initialize_txn_caches(i32* %57, i32 %60, i32 %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  store %struct.TYPE_7__* %66, %struct.TYPE_7__** %68, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %70 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  store %struct.TYPE_6__* %69, %struct.TYPE_6__** %70, align 8
  %71 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %71
}

declare dso_local %struct.TYPE_6__* @make_root(i32*, i32*) #1

declare dso_local %struct.TYPE_7__* @apr_pcalloc(i32, i32) #1

declare dso_local i32 @svn_fs_fs__id_txn_unparse(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cache__create_inprocess(i32*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @apr_pstrcat(i32*, i32*, i8*, i32) #1

declare dso_local i32 @svn_fs_fs__initialize_txn_caches(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
