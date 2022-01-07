; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_txn_body_copied_from.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_txn_body_copied_from.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.copied_from_args = type { i32, i32*, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i64, i32, i32*, i32 }

@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@copy_kind_real = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_10__*)* @txn_body_copied_from to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @txn_body_copied_from(i8* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.copied_from_args*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.copied_from_args*
  store %struct.copied_from_args* %13, %struct.copied_from_args** %6, align 8
  %14 = load %struct.copied_from_args*, %struct.copied_from_args** %6, align 8
  %15 = getelementptr inbounds %struct.copied_from_args, %struct.copied_from_args* %14, i32 0, i32 3
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %10, align 8
  %19 = load %struct.copied_from_args*, %struct.copied_from_args** %6, align 8
  %20 = getelementptr inbounds %struct.copied_from_args, %struct.copied_from_args* %19, i32 0, i32 1
  store i32* null, i32** %20, align 8
  %21 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %22 = load %struct.copied_from_args*, %struct.copied_from_args** %6, align 8
  %23 = getelementptr inbounds %struct.copied_from_args, %struct.copied_from_args* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.copied_from_args*, %struct.copied_from_args** %6, align 8
  %25 = getelementptr inbounds %struct.copied_from_args, %struct.copied_from_args* %24, i32 0, i32 3
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = load %struct.copied_from_args*, %struct.copied_from_args** %6, align 8
  %28 = getelementptr inbounds %struct.copied_from_args, %struct.copied_from_args* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @get_dag(i32** %9, %struct.TYPE_12__* %26, i32 %29, %struct.TYPE_10__* %30, i32 %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load i32*, i32** %9, align 8
  %37 = call i32* @svn_fs_base__dag_get_id(i32* %36)
  store i32* %37, i32** %7, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @svn_fs_base__dag_get_predecessor_id(i32** %8, i32* %38, %struct.TYPE_10__* %39, i32 %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load i32*, i32** %8, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %2
  %48 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %48, i32** %3, align 8
  br label %99

49:                                               ; preds = %2
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @svn_fs_base__id_copy_id(i32* %50)
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @svn_fs_base__id_copy_id(i32* %52)
  %54 = call i64 @strcmp(i32 %51, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %97

56:                                               ; preds = %49
  %57 = load i32*, i32** %10, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @svn_fs_base__id_copy_id(i32* %58)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @svn_fs_bdb__get_copy(%struct.TYPE_11__** %11, i32* %57, i32 %59, %struct.TYPE_10__* %60, i32 %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @copy_kind_real, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %96

71:                                               ; preds = %56
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = call i64 @svn_fs_base__id_eq(i32 %74, i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %71
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.copied_from_args*, %struct.copied_from_args** %6, align 8
  %83 = getelementptr inbounds %struct.copied_from_args, %struct.copied_from_args* %82, i32 0, i32 1
  store i32* %81, i32** %83, align 8
  %84 = load %struct.copied_from_args*, %struct.copied_from_args** %6, align 8
  %85 = getelementptr inbounds %struct.copied_from_args, %struct.copied_from_args* %84, i32 0, i32 0
  %86 = load i32*, i32** %10, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @svn_fs_base__txn_get_revision(i32* %85, i32* %86, i32 %89, %struct.TYPE_10__* %90, i32 %93)
  %95 = call i32 @SVN_ERR(i32 %94)
  br label %96

96:                                               ; preds = %78, %71, %56
  br label %97

97:                                               ; preds = %96, %49
  %98 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %98, i32** %3, align 8
  br label %99

99:                                               ; preds = %97, %47
  %100 = load i32*, i32** %3, align 8
  ret i32* %100
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_dag(i32**, %struct.TYPE_12__*, i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32* @svn_fs_base__dag_get_id(i32*) #1

declare dso_local i32 @svn_fs_base__dag_get_predecessor_id(i32**, i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @svn_fs_base__id_copy_id(i32*) #1

declare dso_local i32 @svn_fs_bdb__get_copy(%struct.TYPE_11__**, i32*, i32, %struct.TYPE_10__*, i32) #1

declare dso_local i64 @svn_fs_base__id_eq(i32, i32*) #1

declare dso_local i32 @svn_fs_base__txn_get_revision(i32*, i32*, i32, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
