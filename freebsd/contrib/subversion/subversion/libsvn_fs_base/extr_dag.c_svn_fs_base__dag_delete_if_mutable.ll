; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_dag.c_svn_fs_base__dag_delete_if_mutable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_dag.c_svn_fs_base__dag_delete_if_mutable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_node_dir = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_base__dag_delete_if_mutable(i32* %0, i32* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = call i32* @svn_fs_base__dag_get_node(%struct.TYPE_7__** %12, i32* %18, i32* %19, i32* %20, i32* %21)
  %23 = call i32 @SVN_ERR(i32* %22)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @svn_fs_base__dag_check_mutable(%struct.TYPE_7__* %24, i8* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %5
  %29 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %29, i32** %6, align 8
  br label %83

30:                                               ; preds = %5
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @svn_node_dir, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %76

36:                                               ; preds = %30
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = call i32* @svn_fs_base__dag_dir_entries(i32** %13, %struct.TYPE_7__* %37, i32* %38, i32* %39)
  %41 = call i32 @SVN_ERR(i32* %40)
  %42 = load i32*, i32** %13, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %75

44:                                               ; preds = %36
  %45 = load i32*, i32** %11, align 8
  %46 = call i32* @svn_pool_create(i32* %45)
  store i32* %46, i32** %15, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = load i32*, i32** %13, align 8
  %49 = call i32* @apr_hash_first(i32* %47, i32* %48)
  store i32* %49, i32** %14, align 8
  br label %50

50:                                               ; preds = %69, %44
  %51 = load i32*, i32** %14, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %72

53:                                               ; preds = %50
  %54 = load i32*, i32** %15, align 8
  %55 = call i32 @svn_pool_clear(i32* %54)
  %56 = load i32*, i32** %14, align 8
  %57 = call i32 @apr_hash_this(i32* %56, i32* null, i32* null, i8** %16)
  %58 = load i8*, i8** %16, align 8
  %59 = bitcast i8* %58 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %59, %struct.TYPE_6__** %17, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = load i32*, i32** %15, align 8
  %67 = call i32* @svn_fs_base__dag_delete_if_mutable(i32* %60, i32* %63, i8* %64, i32* %65, i32* %66)
  %68 = call i32 @SVN_ERR(i32* %67)
  br label %69

69:                                               ; preds = %53
  %70 = load i32*, i32** %14, align 8
  %71 = call i32* @apr_hash_next(i32* %70)
  store i32* %71, i32** %14, align 8
  br label %50

72:                                               ; preds = %50
  %73 = load i32*, i32** %15, align 8
  %74 = call i32 @svn_pool_destroy(i32* %73)
  br label %75

75:                                               ; preds = %72, %36
  br label %76

76:                                               ; preds = %75, %30
  %77 = load i32*, i32** %7, align 8
  %78 = load i32*, i32** %8, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = call i32* @svn_fs_base__dag_remove_node(i32* %77, i32* %78, i8* %79, i32* %80, i32* %81)
  store i32* %82, i32** %6, align 8
  br label %83

83:                                               ; preds = %76, %28
  %84 = load i32*, i32** %6, align 8
  ret i32* %84
}

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_fs_base__dag_get_node(%struct.TYPE_7__**, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_fs_base__dag_check_mutable(%struct.TYPE_7__*, i8*) #1

declare dso_local i32* @svn_fs_base__dag_dir_entries(i32**, %struct.TYPE_7__*, i32*, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @apr_hash_this(i32*, i32*, i32*, i8**) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32* @svn_fs_base__dag_remove_node(i32*, i32*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
