; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_svn_fs_x__txn_changes_fetch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_svn_fs_x__txn_changes_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32* }

@APR_READ = common dso_local global i32 0, align 4
@APR_BUFFERED = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@process_changes = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__txn_changes_fetch(i32** %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_3__, align 8
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = call i8* @apr_hash_make(i32* %13)
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = call i32* @svn_pool_create(i32* %16)
  store i32* %17, i32** %11, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  store i32* %18, i32** %19, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = call i8* @apr_hash_make(i32* %20)
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i8* %21, i8** %22, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32*, i32** %11, align 8
  %26 = call i32 @svn_fs_x__path_txn_changes(i32* %23, i32 %24, i32* %25)
  %27 = load i32, i32* @APR_READ, align 4
  %28 = load i32, i32* @APR_BUFFERED, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @APR_OS_DEFAULT, align 4
  %31 = load i32*, i32** %11, align 8
  %32 = call i32 @svn_io_file_open(i32** %9, i32 %26, i32 %29, i32 %30, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* @TRUE, align 4
  %36 = load i32*, i32** %11, align 8
  %37 = call i32 @svn_stream_from_aprfile2(i32* %34, i32 %35, i32* %36)
  %38 = load i32, i32* @process_changes, align 4
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @svn_fs_x__read_changes_incrementally(i32 %37, i32 %38, %struct.TYPE_3__* %12, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load i32*, i32** %11, align 8
  %43 = call i32 @svn_pool_destroy(i32* %42)
  %44 = load i32*, i32** %10, align 8
  %45 = load i32**, i32*** %5, align 8
  store i32* %44, i32** %45, align 8
  %46 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %46
}

declare dso_local i8* @apr_hash_make(i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_file_open(i32**, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_fs_x__path_txn_changes(i32*, i32, i32*) #1

declare dso_local i32 @svn_fs_x__read_changes_incrementally(i32, i32, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @svn_stream_from_aprfile2(i32*, i32, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
