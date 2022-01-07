; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_svn_fs_fs__open_txn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_svn_fs_fs__open_txn.c"
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
define dso_local i32* @svn_fs_fs__open_txn(%struct.TYPE_7__** %0, i32* %1, i8* %2, i32* %3) #0 {
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
  %16 = call i32 @svn_fs_fs__id_txn_parse(i32* %14, i8* %15)
  %17 = call i32 @SVN_ERR(i32 %16)
  %18 = load i32*, i32** %7, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = call i32 @svn_fs_fs__path_txn_dir(i32* %18, i32* %14, i32* %19)
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @svn_io_check_path(i32 %20, i64* %12, i32* %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  %24 = load i64, i64* %12, align 8
  %25 = load i64, i64* @svn_node_dir, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %4
  %28 = load i32, i32* @SVN_ERR_FS_NO_SUCH_TRANSACTION, align 4
  %29 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %30 = load i8*, i8** %8, align 8
  %31 = call i32* @svn_error_createf(i32 %28, i32* null, i32 %29, i8* %30)
  store i32* %31, i32** %5, align 8
  br label %68

32:                                               ; preds = %4
  %33 = load i32*, i32** %9, align 8
  %34 = call i8* @apr_pcalloc(i32* %33, i32 40)
  %35 = bitcast i8* %34 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %10, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = call i8* @apr_pcalloc(i32* %36, i32 4)
  %38 = bitcast i8* %37 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %38, %struct.TYPE_8__** %11, align 8
  %39 = load i32, i32* %14, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @apr_pstrdup(i32* %42, i8* %43)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 3
  store i32* %47, i32** %49, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @svn_fs_fs__get_txn(%struct.TYPE_6__** %13, i32* %50, i32* %14, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @svn_fs_fs__id_rev(i32 %56)
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  store i32* @txn_vtable, i32** %61, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  store %struct.TYPE_8__* %62, %struct.TYPE_8__** %64, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %66 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  store %struct.TYPE_7__* %65, %struct.TYPE_7__** %66, align 8
  %67 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %67, i32** %5, align 8
  br label %68

68:                                               ; preds = %32, %27
  %69 = load i32*, i32** %5, align 8
  ret i32* %69
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_fs__id_txn_parse(i32*, i8*) #1

declare dso_local i32 @svn_io_check_path(i32, i64*, i32*) #1

declare dso_local i32 @svn_fs_fs__path_txn_dir(i32*, i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @svn_fs_fs__get_txn(%struct.TYPE_6__**, i32*, i32*, i32*) #1

declare dso_local i32 @svn_fs_fs__id_rev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
