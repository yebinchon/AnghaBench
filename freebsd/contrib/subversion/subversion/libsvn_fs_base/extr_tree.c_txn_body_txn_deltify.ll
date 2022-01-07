; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_txn_body_txn_deltify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_txn_body_txn_deltify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.txn_deltify_args = type { i32, i32, i64, i64 }

@SVN_FS_BASE__MIN_REP_SHARING_FORMAT = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_8__*)* @txn_body_txn_deltify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @txn_body_txn_deltify(i8* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.txn_deltify_args*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.txn_deltify_args*
  store %struct.txn_deltify_args* %10, %struct.txn_deltify_args** %5, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %8, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = load %struct.txn_deltify_args*, %struct.txn_deltify_args** %5, align 8
  %20 = getelementptr inbounds %struct.txn_deltify_args, %struct.txn_deltify_args* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @svn_fs_base__dag_get_node(i32** %6, %struct.TYPE_10__* %18, i64 %21, %struct.TYPE_8__* %22, i32 %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  %28 = load %struct.txn_deltify_args*, %struct.txn_deltify_args** %5, align 8
  %29 = getelementptr inbounds %struct.txn_deltify_args, %struct.txn_deltify_args* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %59

32:                                               ; preds = %2
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = load %struct.txn_deltify_args*, %struct.txn_deltify_args** %5, align 8
  %37 = getelementptr inbounds %struct.txn_deltify_args, %struct.txn_deltify_args* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @svn_fs_base__dag_get_node(i32** %7, %struct.TYPE_10__* %35, i64 %38, %struct.TYPE_8__* %39, i32 %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load i32*, i32** %6, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = load %struct.txn_deltify_args*, %struct.txn_deltify_args** %5, align 8
  %48 = getelementptr inbounds %struct.txn_deltify_args, %struct.txn_deltify_args* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.txn_deltify_args*, %struct.txn_deltify_args** %5, align 8
  %51 = getelementptr inbounds %struct.txn_deltify_args, %struct.txn_deltify_args* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @svn_fs_base__dag_deltify(i32* %45, i32* %46, i32 %49, i32 %52, %struct.TYPE_8__* %53, i32 %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  br label %59

59:                                               ; preds = %32, %2
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SVN_FS_BASE__MIN_REP_SHARING_FORMAT, align 8
  %64 = icmp sge i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load i32*, i32** %6, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @svn_fs_base__dag_index_checksums(i32* %66, %struct.TYPE_8__* %67, i32 %70)
  %72 = call i32 @SVN_ERR(i32 %71)
  br label %73

73:                                               ; preds = %65, %59
  %74 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %74
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_base__dag_get_node(i32**, %struct.TYPE_10__*, i64, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @svn_fs_base__dag_deltify(i32*, i32*, i32, i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @svn_fs_base__dag_index_checksums(i32*, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
