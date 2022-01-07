; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_svn_fs_x__begin_txn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_svn_fs_x__begin_txn.c"
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
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__begin_txn(%struct.TYPE_9__** %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_9__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_8__, align 4
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = load i32*, i32** %12, align 8
  %17 = call i32* @apr_hash_make(i32* %16)
  store i32* %17, i32** %15, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* @TRUE, align 4
  %20 = call i32 @svn_fs__check_fs(i32* %18, i32 %19)
  %21 = call i32 @SVN_ERR(i32 %20)
  %22 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32*, i32** %11, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = call i32 @create_txn(%struct.TYPE_9__** %22, i32* %23, i32 %24, i32* %25, i32* %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = call i32 (...) @apr_time_now()
  %30 = load i32*, i32** %12, align 8
  %31 = call i32 @svn_time_to_cstring(i32 %29, i32* %30)
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @strlen(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = load i32*, i32** %15, align 8
  %38 = load i32, i32* @SVN_PROP_REVISION_DATE, align 4
  %39 = call i32 @svn_hash_sets(i32* %37, i32 %38, %struct.TYPE_8__* %13)
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @SVN_FS_TXN_CHECK_OOD, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %6
  %45 = load i32*, i32** %15, align 8
  %46 = load i32, i32* @SVN_FS__PROP_TXN_CHECK_OOD, align 4
  %47 = load i32*, i32** %12, align 8
  %48 = call %struct.TYPE_8__* @svn_string_create(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %47)
  %49 = call i32 @svn_hash_sets(i32* %45, i32 %46, %struct.TYPE_8__* %48)
  br label %50

50:                                               ; preds = %44, %6
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @SVN_FS_TXN_CHECK_LOCKS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i32*, i32** %15, align 8
  %57 = load i32, i32* @SVN_FS__PROP_TXN_CHECK_LOCKS, align 4
  %58 = load i32*, i32** %12, align 8
  %59 = call %struct.TYPE_8__* @svn_string_create(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %58)
  %60 = call i32 @svn_hash_sets(i32* %56, i32 %57, %struct.TYPE_8__* %59)
  br label %61

61:                                               ; preds = %55, %50
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @SVN_FS_TXN_CLIENT_DATE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i32*, i32** %15, align 8
  %68 = load i32, i32* @SVN_FS__PROP_TXN_CLIENT_DATE, align 4
  %69 = load i32*, i32** %12, align 8
  %70 = call %struct.TYPE_8__* @svn_string_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %69)
  %71 = call i32 @svn_hash_sets(i32* %67, i32 %68, %struct.TYPE_8__* %70)
  br label %72

72:                                               ; preds = %66, %61
  %73 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %7, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  store %struct.TYPE_10__* %76, %struct.TYPE_10__** %14, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %15, align 8
  %82 = load i32*, i32** %12, align 8
  %83 = call i32 @set_txn_proplist(i32* %77, i32 %80, i32* %81, i32* %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  %85 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %85
}

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs__check_fs(i32*, i32) #1

declare dso_local i32 @create_txn(%struct.TYPE_9__**, i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_time_to_cstring(i32, i32*) #1

declare dso_local i32 @apr_time_now(...) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, %struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @svn_string_create(i8*, i32*) #1

declare dso_local i32 @set_txn_proplist(i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
