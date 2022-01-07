; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_svn_fs_x__open_txn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_svn_fs_x__open_txn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__*, i32*, i32, i32*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@svn_node_dir = common dso_local global i64 0, align 8
@SVN_ERR_FS_NO_SUCH_TRANSACTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"No such transaction '%s'\00", align 1
@txn_vtable = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__open_txn(%struct.TYPE_7__** %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @svn_fs_x__txn_by_name(i32* %14, i8* %15)
  %17 = call i32 @SVN_ERR(i32 %16)
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %14, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @svn_fs_x__path_txn_dir(i32* %18, i32 %19, i32* %20)
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @svn_io_check_path(i32 %21, i64* %12, i32* %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load i64, i64* %12, align 8
  %26 = load i64, i64* @svn_node_dir, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %4
  %29 = load i32, i32* @SVN_ERR_FS_NO_SUCH_TRANSACTION, align 4
  %30 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %31 = load i8*, i8** %8, align 8
  %32 = call i32* @svn_error_createf(i32 %29, i32* null, i32 %30, i8* %31)
  store i32* %32, i32** %5, align 8
  br label %69

33:                                               ; preds = %4
  %34 = load i32*, i32** %9, align 8
  %35 = call i8* @apr_pcalloc(i32* %34, i32 40)
  %36 = bitcast i8* %35 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %10, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i8* @apr_pcalloc(i32* %37, i32 4)
  %39 = bitcast i8* %38 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %11, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @apr_pstrdup(i32* %43, i8* %44)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 3
  store i32* %48, i32** %50, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %14, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @svn_fs_x__get_txn(%struct.TYPE_6__** %13, i32* %51, i32 %52, i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  store i32* @txn_vtable, i32** %62, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  store %struct.TYPE_8__* %63, %struct.TYPE_8__** %65, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %67 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  store %struct.TYPE_7__* %66, %struct.TYPE_7__** %67, align 8
  %68 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %68, i32** %5, align 8
  br label %69

69:                                               ; preds = %33, %28
  %70 = load i32*, i32** %5, align 8
  ret i32* %70
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__txn_by_name(i32*, i8*) #1

declare dso_local i32 @svn_io_check_path(i32, i64*, i32*) #1

declare dso_local i32 @svn_fs_x__path_txn_dir(i32*, i32, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @svn_fs_x__get_txn(%struct.TYPE_6__**, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
