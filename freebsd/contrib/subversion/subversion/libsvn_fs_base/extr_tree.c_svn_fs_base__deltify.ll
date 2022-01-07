; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_svn_fs_base__deltify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_svn_fs_base__deltify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.rev_get_txn_id_args = type { i8**, i64 }

@SVN_FS_BASE__MIN_MISCELLANY_FORMAT = common dso_local global i64 0, align 8
@SVN_FS_BASE__MISC_FORWARD_DELTA_UPGRADE = common dso_local global i32 0, align 4
@SVN_ERR_UNSUPPORTED_FEATURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Cannot deltify revisions prior to r%ld\00", align 1
@txn_body_rev_get_txn_id = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@svn_node_dir = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_base__deltify(%struct.TYPE_8__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.rev_get_txn_id_args, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %11, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SVN_FS_BASE__MIN_MISCELLANY_FORMAT, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %3
  store i64 0, i64* %13, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = load i32, i32* @SVN_FS_BASE__MISC_FORWARD_DELTA_UPGRADE, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @svn_fs_base__miscellaneous_get(i8** %12, %struct.TYPE_8__* %23, i32 %24, i32* %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  %28 = load i8*, i8** %12, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load i8*, i8** %12, align 8
  %32 = call i32 @svn_revnum_parse(i64* %13, i8* %31, i32* null)
  %33 = call i32 @SVN_ERR(i32 %32)
  br label %34

34:                                               ; preds = %30, %22
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %13, align 8
  %37 = icmp sle i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32, i32* @SVN_ERR_UNSUPPORTED_FEATURE, align 4
  %40 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %41 = load i64, i64* %13, align 8
  %42 = add nsw i64 %41, 1
  %43 = call i32* @svn_error_createf(i32 %39, i32* null, i32 %40, i64 %42)
  store i32* %43, i32** %4, align 8
  br label %66

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %3
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @svn_fs_base__revision_root(i32** %8, %struct.TYPE_8__* %46, i64 %47, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = getelementptr inbounds %struct.rev_get_txn_id_args, %struct.rev_get_txn_id_args* %10, i32 0, i32 0
  store i8** %9, i8*** %51, align 8
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds %struct.rev_get_txn_id_args, %struct.rev_get_txn_id_args* %10, i32 0, i32 1
  store i64 %52, i64* %53, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = load i32, i32* @txn_body_rev_get_txn_id, align 4
  %56 = load i32, i32* @FALSE, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @svn_fs_base__retry_txn(%struct.TYPE_8__* %54, i32 %55, %struct.rev_get_txn_id_args* %10, i32 %56, i32* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* @svn_node_dir, align 4
  %63 = load i8*, i8** %9, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = call i32* @deltify_mutable(%struct.TYPE_8__* %60, i32* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %62, i8* %63, i32* %64)
  store i32* %65, i32** %4, align 8
  br label %66

66:                                               ; preds = %45, %38
  %67 = load i32*, i32** %4, align 8
  ret i32* %67
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_base__miscellaneous_get(i8**, %struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @svn_revnum_parse(i64*, i8*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i64) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_fs_base__revision_root(i32**, %struct.TYPE_8__*, i64, i32*) #1

declare dso_local i32 @svn_fs_base__retry_txn(%struct.TYPE_8__*, i32, %struct.rev_get_txn_id_args*, i32, i32*) #1

declare dso_local i32* @deltify_mutable(%struct.TYPE_8__*, i32*, i8*, i32*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
