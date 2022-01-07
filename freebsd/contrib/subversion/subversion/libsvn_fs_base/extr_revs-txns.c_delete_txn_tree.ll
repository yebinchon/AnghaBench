; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_revs-txns.c_delete_txn_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_revs-txns.c_delete_txn_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.get_dirents_args = type { i8*, i32*, i32** }
%struct.remove_node_args = type { i8*, i32*, i32** }
%struct.TYPE_8__ = type { i32* }

@SVN_NO_ERROR = common dso_local global %struct.TYPE_9__* null, align 8
@txn_body_get_dirents = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_ERR_FS_ID_NOT_FOUND = common dso_local global i64 0, align 8
@txn_body_remove_node = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (i32*, i32*, i8*, i32*)* @delete_txn_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @delete_txn_tree(i32* %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.get_dirents_args, align 8
  %11 = alloca %struct.remove_node_args, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* null, i32** %12, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @svn_fs_base__id_txn_id(i32* %18)
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @strcmp(i32 %19, i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %5, align 8
  br label %94

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.get_dirents_args, %struct.get_dirents_args* %10, i32 0, i32 2
  store i32** %12, i32*** %26, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = getelementptr inbounds %struct.get_dirents_args, %struct.get_dirents_args* %10, i32 0, i32 1
  store i32* %27, i32** %28, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds %struct.get_dirents_args, %struct.get_dirents_args* %10, i32 0, i32 0
  store i8* %29, i8** %30, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* @txn_body_get_dirents, align 4
  %33 = bitcast %struct.get_dirents_args* %10 to %struct.remove_node_args*
  %34 = load i32, i32* @FALSE, align 4
  %35 = load i32*, i32** %9, align 8
  %36 = call %struct.TYPE_9__* @svn_fs_base__retry_txn(i32* %31, i32 %32, %struct.remove_node_args* %33, i32 %34, i32* %35)
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %14, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %38 = icmp ne %struct.TYPE_9__* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %25
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SVN_ERR_FS_ID_NOT_FOUND, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %47 = call i32 @svn_error_clear(%struct.TYPE_9__* %46)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_9__* %48, %struct.TYPE_9__** %5, align 8
  br label %94

49:                                               ; preds = %39, %25
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %51 = call i32 @SVN_ERR(%struct.TYPE_9__* %50)
  %52 = load i32*, i32** %12, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %84

54:                                               ; preds = %49
  %55 = load i32*, i32** %9, align 8
  %56 = call i32* @svn_pool_create(i32* %55)
  store i32* %56, i32** %15, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = call i32* @apr_hash_first(i32* %57, i32* %58)
  store i32* %59, i32** %13, align 8
  br label %60

60:                                               ; preds = %78, %54
  %61 = load i32*, i32** %13, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %81

63:                                               ; preds = %60
  %64 = load i32*, i32** %15, align 8
  %65 = call i32 @svn_pool_clear(i32* %64)
  %66 = load i32*, i32** %13, align 8
  %67 = call i32 @apr_hash_this(i32* %66, i32* null, i32* null, i8** %16)
  %68 = load i8*, i8** %16, align 8
  %69 = bitcast i8* %68 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %69, %struct.TYPE_8__** %17, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load i32*, i32** %15, align 8
  %76 = call %struct.TYPE_9__* @delete_txn_tree(i32* %70, i32* %73, i8* %74, i32* %75)
  %77 = call i32 @SVN_ERR(%struct.TYPE_9__* %76)
  br label %78

78:                                               ; preds = %63
  %79 = load i32*, i32** %13, align 8
  %80 = call i32* @apr_hash_next(i32* %79)
  store i32* %80, i32** %13, align 8
  br label %60

81:                                               ; preds = %60
  %82 = load i32*, i32** %15, align 8
  %83 = call i32 @svn_pool_destroy(i32* %82)
  br label %84

84:                                               ; preds = %81, %49
  %85 = load i32*, i32** %7, align 8
  %86 = getelementptr inbounds %struct.remove_node_args, %struct.remove_node_args* %11, i32 0, i32 1
  store i32* %85, i32** %86, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = getelementptr inbounds %struct.remove_node_args, %struct.remove_node_args* %11, i32 0, i32 0
  store i8* %87, i8** %88, align 8
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* @txn_body_remove_node, align 4
  %91 = load i32, i32* @TRUE, align 4
  %92 = load i32*, i32** %9, align 8
  %93 = call %struct.TYPE_9__* @svn_fs_base__retry_txn(i32* %89, i32 %90, %struct.remove_node_args* %11, i32 %91, i32* %92)
  store %struct.TYPE_9__* %93, %struct.TYPE_9__** %5, align 8
  br label %94

94:                                               ; preds = %84, %45, %23
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  ret %struct.TYPE_9__* %95
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @svn_fs_base__id_txn_id(i32*) #1

declare dso_local %struct.TYPE_9__* @svn_fs_base__retry_txn(i32*, i32, %struct.remove_node_args*, i32, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_9__*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_9__*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @apr_hash_this(i32*, i32*, i32*, i8**) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
