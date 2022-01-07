; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_fs_closest_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_fs_closest_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.TYPE_10__ = type { i32* }

@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@open_path_node_only = common dso_local global i32 0, align 4
@open_path_allow_null = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__**, i8**, %struct.TYPE_9__*, i8*, i32*)* @fs_closest_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fs_closest_copy(%struct.TYPE_9__** %0, i8** %1, %struct.TYPE_9__* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_9__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %7, align 8
  store i8** %1, i8*** %8, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %12, align 8
  %24 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %24, align 8
  %25 = load i8**, i8*** %8, align 8
  store i8* null, i8** %25, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = call i8* @svn_fs__canonicalize_abspath(i8* %26, i32* %27)
  store i8* %28, i8** %10, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load i32, i32* @FALSE, align 4
  %32 = load i32*, i32** %11, align 8
  %33 = call i32 @open_path(%struct.TYPE_10__** %13, %struct.TYPE_9__* %29, i8* %30, i32 0, i32 %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load i32*, i32** %12, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @find_youngest_copyroot(i64* %15, i8** %17, i32* %35, %struct.TYPE_10__* %36, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load i64, i64* %15, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %5
  %43 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %43, i32** %6, align 8
  br label %100

44:                                               ; preds = %5
  %45 = load i32*, i32** %12, align 8
  %46 = load i64, i64* %15, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @svn_fs_fs__revision_root(%struct.TYPE_9__** %18, i32* %45, i64 %46, i32* %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = load i32, i32* @open_path_node_only, align 4
  %53 = load i32, i32* @open_path_allow_null, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @FALSE, align 4
  %56 = load i32*, i32** %11, align 8
  %57 = call i32 @open_path(%struct.TYPE_10__** %14, %struct.TYPE_9__* %50, i8* %51, i32 %54, i32 %55, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %60 = icmp eq %struct.TYPE_10__* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %44
  %62 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %62, i32** %6, align 8
  br label %100

63:                                               ; preds = %44
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  store i32* %66, i32** %19, align 8
  %67 = load i32*, i32** %19, align 8
  %68 = call i32 @svn_fs_fs__dag_get_id(i32* %67)
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @svn_fs_fs__dag_get_id(i32* %71)
  %73 = call i32 @svn_fs_fs__id_check_related(i32 %68, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %63
  %76 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %76, i32** %6, align 8
  br label %100

77:                                               ; preds = %63
  %78 = load i32*, i32** %19, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = call i32 @svn_fs_fs__dag_get_revision(i64* %16, i32* %78, i32* %79)
  %81 = call i32 @SVN_ERR(i32 %80)
  %82 = load i64, i64* %16, align 8
  %83 = load i64, i64* %15, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %77
  %86 = load i32*, i32** %19, align 8
  %87 = call i32 @svn_fs_fs__dag_get_predecessor_id(i32** %20, i32* %86)
  %88 = call i32 @SVN_ERR(i32 %87)
  %89 = load i32*, i32** %20, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %85
  %92 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %92, i32** %6, align 8
  br label %100

93:                                               ; preds = %85
  br label %94

94:                                               ; preds = %93, %77
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %96 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  store %struct.TYPE_9__* %95, %struct.TYPE_9__** %96, align 8
  %97 = load i8*, i8** %17, align 8
  %98 = load i8**, i8*** %8, align 8
  store i8* %97, i8** %98, align 8
  %99 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %99, i32** %6, align 8
  br label %100

100:                                              ; preds = %94, %91, %75, %61, %42
  %101 = load i32*, i32** %6, align 8
  ret i32* %101
}

declare dso_local i8* @svn_fs__canonicalize_abspath(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @open_path(%struct.TYPE_10__**, %struct.TYPE_9__*, i8*, i32, i32, i32*) #1

declare dso_local i32 @find_youngest_copyroot(i64*, i8**, i32*, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @svn_fs_fs__revision_root(%struct.TYPE_9__**, i32*, i64, i32*) #1

declare dso_local i32 @svn_fs_fs__id_check_related(i32, i32) #1

declare dso_local i32 @svn_fs_fs__dag_get_id(i32*) #1

declare dso_local i32 @svn_fs_fs__dag_get_revision(i64*, i32*, i32*) #1

declare dso_local i32 @svn_fs_fs__dag_get_predecessor_id(i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
