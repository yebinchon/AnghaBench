; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_get_copy_inheritance.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_get_copy_inheritance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@copy_id_inherit_self = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@copy_id_inherit_parent = common dso_local global i32 0, align 4
@svn_fs_node_unrelated = common dso_local global i64 0, align 8
@copy_id_inherit_new = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8**, i32*, %struct.TYPE_8__*, i8*, i32*, i32*)* @get_copy_inheritance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_copy_inheritance(i32* %0, i8** %1, i32* %2, %struct.TYPE_8__* %3, i8* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i32* %2, i32** %11, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i8* null, i8** %20, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %23 = icmp ne %struct.TYPE_8__* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %7
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = icmp ne %struct.TYPE_7__* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i8*, i8** %13, align 8
  %31 = icmp ne i8* %30, null
  br label %32

32:                                               ; preds = %29, %24, %7
  %33 = phi i1 [ false, %24 ], [ false, %7 ], [ %31, %29 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @SVN_ERR_ASSERT(i32 %34)
  %36 = load i32, i32* @copy_id_inherit_self, align 4
  %37 = load i32*, i32** %9, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i8**, i8*** %10, align 8
  store i8* null, i8** %38, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32* @svn_fs_base__dag_get_id(i32 %41)
  store i32* %42, i32** %16, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32* @svn_fs_base__dag_get_id(i32 %47)
  store i32* %48, i32** %17, align 8
  %49 = load i32*, i32** %16, align 8
  %50 = call i8* @svn_fs_base__id_copy_id(i32* %49)
  store i8* %50, i8** %18, align 8
  %51 = load i32*, i32** %17, align 8
  %52 = call i8* @svn_fs_base__id_copy_id(i32* %51)
  store i8* %52, i8** %19, align 8
  %53 = load i32*, i32** %16, align 8
  %54 = call i8* @svn_fs_base__id_txn_id(i32* %53)
  %55 = load i8*, i8** %13, align 8
  %56 = call i64 @strcmp(i8* %54, i8* %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %32
  %59 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %59, i32** %8, align 8
  br label %111

60:                                               ; preds = %32
  %61 = load i8*, i8** %18, align 8
  %62 = call i64 @strcmp(i8* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %60
  %65 = load i8*, i8** %18, align 8
  %66 = load i8*, i8** %19, align 8
  %67 = call i64 @strcmp(i8* %65, i8* %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64, %60
  %70 = load i32, i32* @copy_id_inherit_parent, align 4
  %71 = load i32*, i32** %9, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %72, i32** %8, align 8
  br label %111

73:                                               ; preds = %64
  %74 = load i32*, i32** %11, align 8
  %75 = load i8*, i8** %18, align 8
  %76 = load i32*, i32** %14, align 8
  %77 = load i32*, i32** %15, align 8
  %78 = call i32 @svn_fs_bdb__get_copy(%struct.TYPE_9__** %21, i32* %74, i8* %75, i32* %76, i32* %77)
  %79 = call i32 @SVN_ERR(i32 %78)
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %16, align 8
  %84 = call i64 @svn_fs_base__id_compare(i32 %82, i32* %83)
  %85 = load i64, i64* @svn_fs_node_unrelated, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %73
  %88 = load i32, i32* @copy_id_inherit_parent, align 4
  %89 = load i32*, i32** %9, align 8
  store i32 %88, i32* %89, align 4
  %90 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %90, i32** %8, align 8
  br label %111

91:                                               ; preds = %73
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i8* @svn_fs_base__dag_get_created_path(i32 %95)
  store i8* %96, i8** %20, align 8
  %97 = load i8*, i8** %20, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %99 = load i32*, i32** %15, align 8
  %100 = call i8* @parent_path_path(%struct.TYPE_8__* %98, i32* %99)
  %101 = call i64 @strcmp(i8* %97, i8* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %92
  %104 = load i32, i32* @copy_id_inherit_new, align 4
  %105 = load i32*, i32** %9, align 8
  store i32 %104, i32* %105, align 4
  %106 = load i8*, i8** %20, align 8
  %107 = load i8**, i8*** %10, align 8
  store i8* %106, i8** %107, align 8
  %108 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %108, i32** %8, align 8
  br label %111

109:                                              ; preds = %92
  %110 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %110, i32** %8, align 8
  br label %111

111:                                              ; preds = %109, %103, %87, %69, %58
  %112 = load i32*, i32** %8, align 8
  ret i32* %112
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32* @svn_fs_base__dag_get_id(i32) #1

declare dso_local i8* @svn_fs_base__id_copy_id(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @svn_fs_base__id_txn_id(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_bdb__get_copy(%struct.TYPE_9__**, i32*, i8*, i32*, i32*) #1

declare dso_local i64 @svn_fs_base__id_compare(i32, i32*) #1

declare dso_local i8* @svn_fs_base__dag_get_created_path(i32) #1

declare dso_local i8* @parent_path_path(%struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
