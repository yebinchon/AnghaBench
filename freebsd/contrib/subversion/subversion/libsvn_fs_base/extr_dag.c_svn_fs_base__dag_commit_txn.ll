; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_dag.c_svn_fs_base__dag_commit_txn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_dag.c_svn_fs_base__dag_commit_txn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i32* }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_8__ = type { i32, i32 }

@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_FS__PROP_TXN_CHECK_OOD = common dso_local global i32 0, align 4
@SVN_FS__PROP_TXN_CHECK_LOCKS = common dso_local global i32 0, align 4
@SVN_FS__PROP_TXN_CLIENT_DATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@SVN_PROP_REVISION_DATE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_base__dag_commit_txn(i32* %0, %struct.TYPE_9__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca %struct.TYPE_8__, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %11, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %12, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @svn_fs_base__txn_proplist_in_trail(i32** %10, i8* %21, i32* %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load i8*, i8** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  store i8* %25, i8** %26, align 8
  %27 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %28 = load i32*, i32** %5, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @svn_fs_bdb__put_rev(i32* %29, i32* %30, %struct.TYPE_10__* %9, i32* %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* @SVN_FS__PROP_TXN_CHECK_OOD, align 4
  %37 = call %struct.TYPE_8__* @svn_hash_gets(i32* %35, i32 %36)
  %38 = icmp ne %struct.TYPE_8__* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %4
  %40 = load i32*, i32** %11, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = load i32, i32* @SVN_FS__PROP_TXN_CHECK_OOD, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @svn_fs_base__set_txn_prop(i32* %40, i8* %41, i32 %42, i32* null, i32* %43, i32* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  br label %47

47:                                               ; preds = %39, %4
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* @SVN_FS__PROP_TXN_CHECK_LOCKS, align 4
  %50 = call %struct.TYPE_8__* @svn_hash_gets(i32* %48, i32 %49)
  %51 = icmp ne %struct.TYPE_8__* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load i32*, i32** %11, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = load i32, i32* @SVN_FS__PROP_TXN_CHECK_LOCKS, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @svn_fs_base__set_txn_prop(i32* %53, i8* %54, i32 %55, i32* null, i32* %56, i32* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  br label %60

60:                                               ; preds = %52, %47
  %61 = load i32*, i32** %10, align 8
  %62 = load i32, i32* @SVN_FS__PROP_TXN_CLIENT_DATE, align 4
  %63 = call %struct.TYPE_8__* @svn_hash_gets(i32* %61, i32 %62)
  store %struct.TYPE_8__* %63, %struct.TYPE_8__** %13, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %65 = icmp ne %struct.TYPE_8__* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = load i32*, i32** %11, align 8
  %68 = load i8*, i8** %12, align 8
  %69 = load i32, i32* @SVN_FS__PROP_TXN_CLIENT_DATE, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @svn_fs_base__set_txn_prop(i32* %67, i8* %68, i32 %69, i32* null, i32* %70, i32* %71)
  %73 = call i32 @SVN_ERR(i32 %72)
  br label %74

74:                                               ; preds = %66, %60
  %75 = load i32*, i32** %11, align 8
  %76 = load i8*, i8** %12, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %7, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @svn_fs_base__txn_make_committed(i32* %75, i8* %76, i32 %78, i32* %79, i32* %80)
  %82 = call i32 @SVN_ERR(i32 %81)
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %84 = icmp ne %struct.TYPE_8__* %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %74
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @strcmp(i32 %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %108

91:                                               ; preds = %85, %74
  %92 = call i32 (...) @apr_time_now()
  %93 = load i32*, i32** %8, align 8
  %94 = call i32 @svn_time_to_cstring(i32 %92, i32* %93)
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store i32 %94, i32* %95, align 4
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @strlen(i32 %97)
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  store i32 %98, i32* %99, align 4
  %100 = load i32*, i32** %11, align 8
  %101 = load i32*, i32** %5, align 8
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @SVN_PROP_REVISION_DATE, align 4
  %104 = load i32*, i32** %7, align 8
  %105 = load i32*, i32** %8, align 8
  %106 = call i32 @svn_fs_base__set_rev_prop(i32* %100, i32 %102, i32 %103, i32* null, %struct.TYPE_8__* %14, i32* %104, i32* %105)
  %107 = call i32 @SVN_ERR(i32 %106)
  br label %108

108:                                              ; preds = %91, %85
  %109 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %109
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_base__txn_proplist_in_trail(i32**, i8*, i32*) #1

declare dso_local i32 @svn_fs_bdb__put_rev(i32*, i32*, %struct.TYPE_10__*, i32*, i32*) #1

declare dso_local %struct.TYPE_8__* @svn_hash_gets(i32*, i32) #1

declare dso_local i32 @svn_fs_base__set_txn_prop(i32*, i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_fs_base__txn_make_committed(i32*, i8*, i32, i32*, i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @svn_time_to_cstring(i32, i32*) #1

declare dso_local i32 @apr_time_now(...) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @svn_fs_base__set_rev_prop(i32*, i32, i32, i32*, %struct.TYPE_8__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
