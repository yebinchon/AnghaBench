; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_get_copy_inheritance.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_get_copy_inheritance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }

@copy_id_inherit_self = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@copy_id_inherit_parent = common dso_local global i32 0, align 4
@svn_fs_node_unrelated = common dso_local global i64 0, align 8
@copy_id_inherit_new = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8**, i32*, %struct.TYPE_6__*, i32*)* @get_copy_inheritance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_copy_inheritance(i32* %0, i8** %1, i32* %2, %struct.TYPE_6__* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i8* null, i8** %17, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %23 = icmp ne %struct.TYPE_6__* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %5
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = icmp ne %struct.TYPE_5__* %27, null
  br label %29

29:                                               ; preds = %24, %5
  %30 = phi i1 [ false, %5 ], [ %28, %24 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @SVN_ERR_ASSERT(i32 %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32* @svn_fs_fs__dag_get_id(i32* %35)
  store i32* %36, i32** %12, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32* @svn_fs_fs__dag_get_id(i32* %41)
  store i32* %42, i32** %13, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = call i32* @svn_fs_fs__id_copy_id(i32* %43)
  store i32* %44, i32** %15, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = call i32* @svn_fs_fs__id_copy_id(i32* %45)
  store i32* %46, i32** %16, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = call i64 @svn_fs_fs__id_is_txn(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %29
  %51 = load i32, i32* @copy_id_inherit_self, align 4
  %52 = load i32*, i32** %7, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i8**, i8*** %8, align 8
  store i8* null, i8** %53, align 8
  %54 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %54, i32** %6, align 8
  br label %117

55:                                               ; preds = %29
  %56 = load i32, i32* @copy_id_inherit_parent, align 4
  %57 = load i32*, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i8**, i8*** %8, align 8
  store i8* null, i8** %58, align 8
  %59 = load i32*, i32** %15, align 8
  %60 = call i64 @svn_fs_fs__id_part_is_root(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %63, i32** %6, align 8
  br label %117

64:                                               ; preds = %55
  %65 = load i32*, i32** %15, align 8
  %66 = load i32*, i32** %16, align 8
  %67 = call i64 @svn_fs_fs__id_part_eq(i32* %65, i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %70, i32** %6, align 8
  br label %117

71:                                               ; preds = %64
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @svn_fs_fs__dag_get_copyroot(i32* %20, i8** %21, i32* %74)
  %76 = call i32 @SVN_ERR(i32 %75)
  %77 = load i32*, i32** %9, align 8
  %78 = load i32, i32* %20, align 4
  %79 = load i32*, i32** %11, align 8
  %80 = call i32 @svn_fs_fs__revision_root(i32** %18, i32* %77, i32 %78, i32* %79)
  %81 = call i32 @SVN_ERR(i32 %80)
  %82 = load i32*, i32** %18, align 8
  %83 = load i8*, i8** %21, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = call i32 @get_dag(i32** %19, i32* %82, i8* %83, i32* %84)
  %86 = call i32 @SVN_ERR(i32 %85)
  %87 = load i32*, i32** %19, align 8
  %88 = call i32* @svn_fs_fs__dag_get_id(i32* %87)
  store i32* %88, i32** %14, align 8
  %89 = load i32*, i32** %14, align 8
  %90 = load i32*, i32** %12, align 8
  %91 = call i64 @svn_fs_fs__id_compare(i32* %89, i32* %90)
  %92 = load i64, i64* @svn_fs_node_unrelated, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %71
  %95 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %95, i32** %6, align 8
  br label %117

96:                                               ; preds = %71
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = call i8* @svn_fs_fs__dag_get_created_path(i32* %99)
  store i8* %100, i8** %17, align 8
  %101 = load i8*, i8** %17, align 8
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %103 = load i32*, i32** %11, align 8
  %104 = call i32 @parent_path_path(%struct.TYPE_6__* %102, i32* %103)
  %105 = call i64 @strcmp(i8* %101, i32 %104)
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %96
  %108 = load i32, i32* @copy_id_inherit_self, align 4
  %109 = load i32*, i32** %7, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %110, i32** %6, align 8
  br label %117

111:                                              ; preds = %96
  %112 = load i32, i32* @copy_id_inherit_new, align 4
  %113 = load i32*, i32** %7, align 8
  store i32 %112, i32* %113, align 4
  %114 = load i8*, i8** %17, align 8
  %115 = load i8**, i8*** %8, align 8
  store i8* %114, i8** %115, align 8
  %116 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %116, i32** %6, align 8
  br label %117

117:                                              ; preds = %111, %107, %94, %69, %62, %50
  %118 = load i32*, i32** %6, align 8
  ret i32* %118
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32* @svn_fs_fs__dag_get_id(i32*) #1

declare dso_local i32* @svn_fs_fs__id_copy_id(i32*) #1

declare dso_local i64 @svn_fs_fs__id_is_txn(i32*) #1

declare dso_local i64 @svn_fs_fs__id_part_is_root(i32*) #1

declare dso_local i64 @svn_fs_fs__id_part_eq(i32*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_fs__dag_get_copyroot(i32*, i8**, i32*) #1

declare dso_local i32 @svn_fs_fs__revision_root(i32**, i32*, i32, i32*) #1

declare dso_local i32 @get_dag(i32**, i32*, i8*, i32*) #1

declare dso_local i64 @svn_fs_fs__id_compare(i32*, i32*) #1

declare dso_local i8* @svn_fs_fs__dag_get_created_path(i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @parent_path_path(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
