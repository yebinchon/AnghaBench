; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_svn_fs_fs__begin_txn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_svn_fs_fs__begin_txn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@SVN_PROP_REVISION_DATE = common dso_local global i32 0, align 4
@SVN_FS_TXN_CHECK_OOD = common dso_local global i32 0, align 4
@SVN_FS__PROP_TXN_CHECK_OOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"true\00", align 1
@SVN_FS_TXN_CHECK_LOCKS = common dso_local global i32 0, align 4
@SVN_FS__PROP_TXN_CHECK_LOCKS = common dso_local global i32 0, align 4
@SVN_FS_TXN_CLIENT_DATE = common dso_local global i32 0, align 4
@SVN_FS__PROP_TXN_CLIENT_DATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__begin_txn(%struct.TYPE_9__** %0, i32* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_9__**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = call i32* @apr_hash_make(i32* %14)
  store i32* %15, i32** %13, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* @TRUE, align 4
  %18 = call i32 @svn_fs__check_fs(i32* %16, i32 %17)
  %19 = call i32 @SVN_ERR(i32 %18)
  %20 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32*, i32** %10, align 8
  %24 = call i32 @svn_fs_fs__create_txn(%struct.TYPE_9__** %20, i32* %21, i32 %22, i32* %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = call i32 (...) @apr_time_now()
  %27 = load i32*, i32** %10, align 8
  %28 = call i32 @svn_time_to_cstring(i32 %26, i32* %27)
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @strlen(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load i32*, i32** %13, align 8
  %35 = load i32, i32* @SVN_PROP_REVISION_DATE, align 4
  %36 = call i32 @svn_hash_sets(i32* %34, i32 %35, %struct.TYPE_8__* %11)
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @SVN_FS_TXN_CHECK_OOD, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %5
  %42 = load i32*, i32** %13, align 8
  %43 = load i32, i32* @SVN_FS__PROP_TXN_CHECK_OOD, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = call %struct.TYPE_8__* @svn_string_create(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %44)
  %46 = call i32 @svn_hash_sets(i32* %42, i32 %43, %struct.TYPE_8__* %45)
  br label %47

47:                                               ; preds = %41, %5
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @SVN_FS_TXN_CHECK_LOCKS, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i32*, i32** %13, align 8
  %54 = load i32, i32* @SVN_FS__PROP_TXN_CHECK_LOCKS, align 4
  %55 = load i32*, i32** %10, align 8
  %56 = call %struct.TYPE_8__* @svn_string_create(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %55)
  %57 = call i32 @svn_hash_sets(i32* %53, i32 %54, %struct.TYPE_8__* %56)
  br label %58

58:                                               ; preds = %52, %47
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @SVN_FS_TXN_CLIENT_DATE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load i32*, i32** %13, align 8
  %65 = load i32, i32* @SVN_FS__PROP_TXN_CLIENT_DATE, align 4
  %66 = load i32*, i32** %10, align 8
  %67 = call %struct.TYPE_8__* @svn_string_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %66)
  %68 = call i32 @svn_hash_sets(i32* %64, i32 %65, %struct.TYPE_8__* %67)
  br label %69

69:                                               ; preds = %63, %58
  %70 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  store %struct.TYPE_10__* %73, %struct.TYPE_10__** %12, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32*, i32** %13, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @set_txn_proplist(i32* %74, i32* %76, i32* %77, i32* %78)
  %80 = call i32* @svn_error_trace(i32 %79)
  ret i32* %80
}

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs__check_fs(i32*, i32) #1

declare dso_local i32 @svn_fs_fs__create_txn(%struct.TYPE_9__**, i32*, i32, i32*) #1

declare dso_local i32 @svn_time_to_cstring(i32, i32*) #1

declare dso_local i32 @apr_time_now(...) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, %struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @svn_string_create(i8*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @set_txn_proplist(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
