; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_dag_cache.c_get_copy_inheritance.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_dag_cache.c_get_copy_inheritance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@svn_fs_x__copy_id_inherit_self = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_fs_x__copy_id_inherit_parent = common dso_local global i32 0, align 4
@svn_fs_x__copy_id_inherit_new = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8**, i32*, %struct.TYPE_6__*, i32*)* @get_copy_inheritance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_copy_inheritance(i32* %0, i8** %1, i32* %2, %struct.TYPE_6__* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i8* null, i8** %14, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %20 = icmp ne %struct.TYPE_6__* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %5
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = icmp ne %struct.TYPE_5__* %24, null
  br label %26

26:                                               ; preds = %21, %5
  %27 = phi i1 [ false, %5 ], [ %25, %21 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @SVN_ERR_ASSERT(i32 %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32* @svn_fs_x__dag_get_copy_id(i32 %32)
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %12, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32* @svn_fs_x__dag_get_copy_id(i32 %39)
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %13, align 4
  %42 = load i8**, i8*** %8, align 8
  store i8* null, i8** %42, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @svn_fs_x__dag_check_mutable(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %26
  %49 = load i32, i32* @svn_fs_x__copy_id_inherit_self, align 4
  %50 = load i32*, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %51, i32** %6, align 8
  br label %108

52:                                               ; preds = %26
  %53 = load i32, i32* @svn_fs_x__copy_id_inherit_parent, align 4
  %54 = load i32*, i32** %7, align 8
  store i32 %53, i32* %54, align 4
  %55 = call i64 @svn_fs_x__id_is_root(i32* %12)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %58, i32** %6, align 8
  br label %108

59:                                               ; preds = %52
  %60 = call i64 @svn_fs_x__id_eq(i32* %12, i32* %13)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %63, i32** %6, align 8
  br label %108

64:                                               ; preds = %59
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @svn_fs_x__dag_get_copyroot(i32* %17, i8** %18, i32 %67)
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %17, align 4
  %71 = load i32*, i32** %11, align 8
  %72 = call i32 @svn_fs_x__revision_root(i32** %15, i32* %69, i32 %70, i32* %71)
  %73 = call i32 @SVN_ERR(i32 %72)
  %74 = load i32*, i32** %15, align 8
  %75 = load i8*, i8** %18, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = call i32 @svn_fs_x__get_temp_dag_node(i32** %16, i32* %74, i8* %75, i32* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  %79 = load i32*, i32** %16, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @svn_fs_x__dag_related_node(i32* %79, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %64
  %86 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %86, i32** %6, align 8
  br label %108

87:                                               ; preds = %64
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i8* @svn_fs_x__dag_get_created_path(i32 %90)
  store i8* %91, i8** %14, align 8
  %92 = load i8*, i8** %14, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %94 = load i32*, i32** %11, align 8
  %95 = call i32 @parent_path_path(%struct.TYPE_6__* %93, i32* %94)
  %96 = call i64 @strcmp(i8* %92, i32 %95)
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %87
  %99 = load i32, i32* @svn_fs_x__copy_id_inherit_self, align 4
  %100 = load i32*, i32** %7, align 8
  store i32 %99, i32* %100, align 4
  %101 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %101, i32** %6, align 8
  br label %108

102:                                              ; preds = %87
  %103 = load i32, i32* @svn_fs_x__copy_id_inherit_new, align 4
  %104 = load i32*, i32** %7, align 8
  store i32 %103, i32* %104, align 4
  %105 = load i8*, i8** %14, align 8
  %106 = load i8**, i8*** %8, align 8
  store i8* %105, i8** %106, align 8
  %107 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %107, i32** %6, align 8
  br label %108

108:                                              ; preds = %102, %98, %85, %62, %57, %48
  %109 = load i32*, i32** %6, align 8
  ret i32* %109
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32* @svn_fs_x__dag_get_copy_id(i32) #1

declare dso_local i64 @svn_fs_x__dag_check_mutable(i32) #1

declare dso_local i64 @svn_fs_x__id_is_root(i32*) #1

declare dso_local i64 @svn_fs_x__id_eq(i32*, i32*) #1

declare dso_local i32 @svn_fs_x__dag_get_copyroot(i32*, i8**, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__revision_root(i32**, i32*, i32, i32*) #1

declare dso_local i32 @svn_fs_x__get_temp_dag_node(i32**, i32*, i8*, i32*) #1

declare dso_local i32 @svn_fs_x__dag_related_node(i32*, i32) #1

declare dso_local i8* @svn_fs_x__dag_get_created_path(i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @parent_path_path(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
