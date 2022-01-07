; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_dag.c_svn_fs_base__dag_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_dag.c_svn_fs_base__dag_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }

@copy_kind_real = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_base__dag_copy(%struct.TYPE_12__* %0, i8* %1, %struct.TYPE_12__* %2, i64 %3, i32 %4, i8* %5, i8* %6, i32* %7, i32* %8) #0 {
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_11__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %10, align 8
  store i8* %1, i8** %11, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %12, align 8
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %25 = load i64, i64* %13, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %101

27:                                               ; preds = %9
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %29 = call i32* @svn_fs_base__dag_get_fs(%struct.TYPE_12__* %28)
  store i32* %29, i32** %22, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %31 = call i32* @svn_fs_base__dag_get_id(%struct.TYPE_12__* %30)
  store i32* %31, i32** %23, align 8
  store i8* null, i8** %24, align 8
  %32 = load i32*, i32** %22, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %17, align 8
  %37 = load i32*, i32** %18, align 8
  %38 = call i32 @svn_fs_bdb__get_node_revision(%struct.TYPE_11__** %20, i32* %32, i32 %35, i32* %36, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load i32*, i32** %22, align 8
  %41 = load i32*, i32** %17, align 8
  %42 = load i32*, i32** %18, align 8
  %43 = call i32 @svn_fs_bdb__reserve_copy_id(i8** %21, i32* %40, i32* %41, i32* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load i32*, i32** %23, align 8
  %46 = load i32*, i32** %18, align 8
  %47 = call i32 @svn_fs_base__id_copy(i32* %45, i32* %46)
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, -1
  br i1 %53, label %54, label %59

54:                                               ; preds = %27
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %54, %27
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %61 = call i32 @svn_fs_base__dag_get_created_path(%struct.TYPE_12__* %60)
  %62 = load i8*, i8** %11, align 8
  %63 = load i32*, i32** %18, align 8
  %64 = call i32 @svn_fspath__join(i32 %61, i8* %62, i32* %63)
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i32*, i32** %22, align 8
  %68 = load i32*, i32** %23, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %70 = load i8*, i8** %21, align 8
  %71 = load i8*, i8** %16, align 8
  %72 = load i32*, i32** %17, align 8
  %73 = load i32*, i32** %18, align 8
  %74 = call i32 @svn_fs_base__create_successor(i32** %19, i32* %67, i32* %68, %struct.TYPE_11__* %69, i8* %70, i8* %71, i32* %72, i32* %73)
  %75 = call i32 @SVN_ERR(i32 %74)
  %76 = load i32*, i32** %22, align 8
  %77 = load i32, i32* %14, align 4
  %78 = load i32*, i32** %17, align 8
  %79 = load i32*, i32** %18, align 8
  %80 = call i32 @svn_fs_base__rev_get_txn_id(i8** %24, i32* %76, i32 %77, i32* %78, i32* %79)
  %81 = call i32 @SVN_ERR(i32 %80)
  %82 = load i32*, i32** %22, align 8
  %83 = load i8*, i8** %21, align 8
  %84 = load i8*, i8** %15, align 8
  %85 = load i32*, i32** %18, align 8
  %86 = call i32 @svn_fs__canonicalize_abspath(i8* %84, i32* %85)
  %87 = load i8*, i8** %24, align 8
  %88 = load i32*, i32** %19, align 8
  %89 = load i32, i32* @copy_kind_real, align 4
  %90 = load i32*, i32** %17, align 8
  %91 = load i32*, i32** %18, align 8
  %92 = call i32 @svn_fs_bdb__create_copy(i32* %82, i8* %83, i32 %86, i8* %87, i32* %88, i32 %89, i32* %90, i32* %91)
  %93 = call i32 @SVN_ERR(i32 %92)
  %94 = load i32*, i32** %22, align 8
  %95 = load i8*, i8** %16, align 8
  %96 = load i8*, i8** %21, align 8
  %97 = load i32*, i32** %17, align 8
  %98 = load i32*, i32** %18, align 8
  %99 = call i32 @svn_fs_base__add_txn_copy(i32* %94, i8* %95, i8* %96, i32* %97, i32* %98)
  %100 = call i32 @SVN_ERR(i32 %99)
  br label %104

101:                                              ; preds = %9
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %103 = call i32* @svn_fs_base__dag_get_id(%struct.TYPE_12__* %102)
  store i32* %103, i32** %19, align 8
  br label %104

104:                                              ; preds = %101, %59
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %106 = load i8*, i8** %11, align 8
  %107 = load i32*, i32** %19, align 8
  %108 = load i8*, i8** %16, align 8
  %109 = load i32*, i32** %17, align 8
  %110 = load i32*, i32** %18, align 8
  %111 = call i32* @svn_fs_base__dag_set_entry(%struct.TYPE_12__* %105, i8* %106, i32* %107, i8* %108, i32* %109, i32* %110)
  ret i32* %111
}

declare dso_local i32* @svn_fs_base__dag_get_fs(%struct.TYPE_12__*) #1

declare dso_local i32* @svn_fs_base__dag_get_id(%struct.TYPE_12__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_bdb__get_node_revision(%struct.TYPE_11__**, i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_fs_bdb__reserve_copy_id(i8**, i32*, i32*, i32*) #1

declare dso_local i32 @svn_fs_base__id_copy(i32*, i32*) #1

declare dso_local i32 @svn_fspath__join(i32, i8*, i32*) #1

declare dso_local i32 @svn_fs_base__dag_get_created_path(%struct.TYPE_12__*) #1

declare dso_local i32 @svn_fs_base__create_successor(i32**, i32*, i32*, %struct.TYPE_11__*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_fs_base__rev_get_txn_id(i8**, i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_fs_bdb__create_copy(i32*, i8*, i32, i8*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_fs__canonicalize_abspath(i8*, i32*) #1

declare dso_local i32 @svn_fs_base__add_txn_copy(i32*, i8*, i8*, i32*, i32*) #1

declare dso_local i32* @svn_fs_base__dag_set_entry(%struct.TYPE_12__*, i8*, i32*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
