; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_txn_body_merge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_txn_body_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.merge_args = type { i32, i32*, i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8*, i32* }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_12__*)* @txn_body_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @txn_body_merge(i8* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.merge_args*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.merge_args*
  store %struct.merge_args* %14, %struct.merge_args** %5, align 8
  %15 = load %struct.merge_args*, %struct.merge_args** %5, align 8
  %16 = getelementptr inbounds %struct.merge_args, %struct.merge_args* %15, i32 0, i32 3
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %10, align 8
  %20 = load %struct.merge_args*, %struct.merge_args** %5, align 8
  %21 = getelementptr inbounds %struct.merge_args, %struct.merge_args* %20, i32 0, i32 3
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %11, align 8
  %25 = load %struct.merge_args*, %struct.merge_args** %5, align 8
  %26 = getelementptr inbounds %struct.merge_args, %struct.merge_args* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %6, align 8
  %28 = load %struct.merge_args*, %struct.merge_args** %5, align 8
  %29 = getelementptr inbounds %struct.merge_args, %struct.merge_args* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %8, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i32* @svn_fs_base__dag_get_id(i32* %31)
  store i32* %32, i32** %9, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @svn_fs_base__dag_txn_root(i32** %7, i32* %33, i8* %34, %struct.TYPE_12__* %35, i32 %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load i32*, i32** %8, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %2
  %44 = load i32*, i32** %10, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @svn_fs_base__dag_txn_base_root(i32** %8, i32* %44, i8* %45, %struct.TYPE_12__* %46, i32 %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  br label %52

52:                                               ; preds = %43, %2
  %53 = load i32*, i32** %8, align 8
  %54 = call i32* @svn_fs_base__dag_get_id(i32* %53)
  %55 = load i32*, i32** %7, align 8
  %56 = call i32* @svn_fs_base__dag_get_id(i32* %55)
  %57 = call i64 @svn_fs_base__id_eq(i32* %54, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %78

59:                                               ; preds = %52
  %60 = load i32*, i32** %10, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @svn_fs_base__set_txn_base(i32* %60, i8* %61, i32* %62, %struct.TYPE_12__* %63, i32 %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  %69 = load i32*, i32** %10, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @svn_fs_base__set_txn_root(i32* %69, i8* %70, i32* %71, %struct.TYPE_12__* %72, i32 %75)
  %77 = call i32 @SVN_ERR(i32 %76)
  br label %120

78:                                               ; preds = %52
  %79 = load %struct.merge_args*, %struct.merge_args** %5, align 8
  %80 = getelementptr inbounds %struct.merge_args, %struct.merge_args* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = load i8*, i8** %11, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @merge(i32 %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %82, i32* %83, i32* %84, i8* %85, i32* null, %struct.TYPE_12__* %86, i32 %89)
  %91 = call i32 @SVN_ERR(i32 %90)
  %92 = load i32*, i32** %6, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @svn_fs_base__dag_get_predecessor_count(i32* %12, i32* %92, %struct.TYPE_12__* %93, i32 %96)
  %98 = call i32 @SVN_ERR(i32 %97)
  %99 = load i32*, i32** %10, align 8
  %100 = load i32*, i32** %9, align 8
  %101 = load i32*, i32** %7, align 8
  %102 = call i32* @svn_fs_base__dag_get_id(i32* %101)
  %103 = load i8*, i8** %11, align 8
  %104 = load i32, i32* %12, align 4
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @update_ancestry(i32* %99, i32* %100, i32* %102, i8* %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %104, %struct.TYPE_12__* %105, i32 %108)
  %110 = call i32 @SVN_ERR(i32 %109)
  %111 = load i32*, i32** %10, align 8
  %112 = load i8*, i8** %11, align 8
  %113 = load i32*, i32** %9, align 8
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @svn_fs_base__set_txn_base(i32* %111, i8* %112, i32* %113, %struct.TYPE_12__* %114, i32 %117)
  %119 = call i32 @SVN_ERR(i32 %118)
  br label %120

120:                                              ; preds = %78, %59
  %121 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %121
}

declare dso_local i32* @svn_fs_base__dag_get_id(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_base__dag_txn_root(i32**, i32*, i8*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @svn_fs_base__dag_txn_base_root(i32**, i32*, i8*, %struct.TYPE_12__*, i32) #1

declare dso_local i64 @svn_fs_base__id_eq(i32*, i32*) #1

declare dso_local i32 @svn_fs_base__set_txn_base(i32*, i8*, i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @svn_fs_base__set_txn_root(i32*, i8*, i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @merge(i32, i8*, i32*, i32*, i32*, i8*, i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @svn_fs_base__dag_get_predecessor_count(i32*, i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @update_ancestry(i32*, i32*, i32*, i8*, i8*, i32, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
