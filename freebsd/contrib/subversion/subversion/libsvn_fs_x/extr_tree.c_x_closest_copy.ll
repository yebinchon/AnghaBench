; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_tree.c_x_closest_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_tree.c_x_closest_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i32* }

@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_fs_x__dag_path_allow_null = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_10__**, i8**, %struct.TYPE_10__*, i8*, i32*)* @x_closest_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @x_closest_copy(%struct.TYPE_10__** %0, i8** %1, %struct.TYPE_10__* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_10__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store %struct.TYPE_10__** %0, %struct.TYPE_10__*** %7, align 8
  store i8** %1, i8*** %8, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %12, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = call i32* @svn_pool_create(i32* %24)
  store i32* %25, i32** %20, align 8
  %26 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %26, align 8
  %27 = load i8**, i8*** %8, align 8
  store i8* null, i8** %27, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i32, i32* @FALSE, align 4
  %31 = load i32*, i32** %20, align 8
  %32 = load i32*, i32** %20, align 8
  %33 = call i32 @svn_fs_x__get_dag_path(%struct.TYPE_9__** %13, %struct.TYPE_10__* %28, i8* %29, i32 0, i32 %30, i32* %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load i32*, i32** %12, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %37 = call i32 @find_youngest_copyroot(i64* %15, i8** %17, i32* %35, %struct.TYPE_9__* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load i64, i64* %15, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %5
  %42 = load i32*, i32** %20, align 8
  %43 = call i32 @svn_pool_destroy(i32* %42)
  %44 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %44, i32** %6, align 8
  br label %105

45:                                               ; preds = %5
  %46 = load i32*, i32** %12, align 8
  %47 = load i64, i64* %15, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @svn_fs_x__revision_root(%struct.TYPE_10__** %18, i32* %46, i64 %47, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = load i32, i32* @svn_fs_x__dag_path_allow_null, align 4
  %54 = load i32, i32* @FALSE, align 4
  %55 = load i32*, i32** %20, align 8
  %56 = load i32*, i32** %20, align 8
  %57 = call i32 @svn_fs_x__get_dag_path(%struct.TYPE_9__** %14, %struct.TYPE_10__* %51, i8* %52, i32 %53, i32 %54, i32* %55, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %60 = icmp eq %struct.TYPE_9__* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %45
  %62 = load i32*, i32** %20, align 8
  %63 = call i32 @svn_pool_destroy(i32* %62)
  %64 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %64, i32** %6, align 8
  br label %105

65:                                               ; preds = %45
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  store i32* %68, i32** %19, align 8
  %69 = load i32*, i32** %19, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @svn_fs_x__dag_related_node(i32* %69, i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %65
  %76 = load i32*, i32** %20, align 8
  %77 = call i32 @svn_pool_destroy(i32* %76)
  %78 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %78, i32** %6, align 8
  br label %105

79:                                               ; preds = %65
  %80 = load i32*, i32** %19, align 8
  %81 = call i64 @svn_fs_x__dag_get_revision(i32* %80)
  store i64 %81, i64* %16, align 8
  %82 = load i64, i64* %16, align 8
  %83 = load i64, i64* %15, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %79
  %86 = load i32*, i32** %19, align 8
  %87 = call i32 @svn_fs_x__dag_get_predecessor_id(i32* %86)
  %88 = call i32 @svn_fs_x__id_used(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %85
  %91 = load i32*, i32** %20, align 8
  %92 = call i32 @svn_pool_destroy(i32* %91)
  %93 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %93, i32** %6, align 8
  br label %105

94:                                               ; preds = %85
  br label %95

95:                                               ; preds = %94, %79
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %97 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  store %struct.TYPE_10__* %96, %struct.TYPE_10__** %97, align 8
  %98 = load i32*, i32** %11, align 8
  %99 = load i8*, i8** %17, align 8
  %100 = call i8* @apr_pstrdup(i32* %98, i8* %99)
  %101 = load i8**, i8*** %8, align 8
  store i8* %100, i8** %101, align 8
  %102 = load i32*, i32** %20, align 8
  %103 = call i32 @svn_pool_destroy(i32* %102)
  %104 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %104, i32** %6, align 8
  br label %105

105:                                              ; preds = %95, %90, %75, %61, %41
  %106 = load i32*, i32** %6, align 8
  ret i32* %106
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__get_dag_path(%struct.TYPE_9__**, %struct.TYPE_10__*, i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @find_youngest_copyroot(i64*, i8**, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32 @svn_fs_x__revision_root(%struct.TYPE_10__**, i32*, i64, i32*) #1

declare dso_local i32 @svn_fs_x__dag_related_node(i32*, i32*) #1

declare dso_local i64 @svn_fs_x__dag_get_revision(i32*) #1

declare dso_local i32 @svn_fs_x__id_used(i32) #1

declare dso_local i32 @svn_fs_x__dag_get_predecessor_id(i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
