; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_create_txn_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_create_txn_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.get_and_increment_txn_key_baton = type { i32, i32*, i32* }

@get_and_increment_txn_key_body = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, %struct.TYPE_5__*, i32*, i32, i32*)* @create_txn_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_txn_dir(i8** %0, %struct.TYPE_5__* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.get_and_increment_txn_key_baton, align 8
  %12 = alloca i8*, align 8
  store i8** %0, i8*** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %13 = load i32*, i32** %10, align 8
  %14 = getelementptr inbounds %struct.get_and_increment_txn_key_baton, %struct.get_and_increment_txn_key_baton* %11, i32 0, i32 2
  store i32* %13, i32** %14, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = getelementptr inbounds %struct.get_and_increment_txn_key_baton, %struct.get_and_increment_txn_key_baton* %11, i32 0, i32 1
  store i32* %15, i32** %16, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* @get_and_increment_txn_key_body, align 4
  %19 = load i32*, i32** %10, align 8
  %20 = call i32 @svn_fs_fs__with_txn_current_lock(i32* %17, i32 %18, %struct.get_and_increment_txn_key_baton* %11, i32* %19)
  %21 = call i32 @SVN_ERR(i32 %20)
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = getelementptr inbounds %struct.get_and_increment_txn_key_baton, %struct.get_and_increment_txn_key_baton* %11, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = call i8* @svn_fs_fs__id_txn_unparse(%struct.TYPE_5__* %29, i32* %30)
  %32 = load i8**, i8*** %6, align 8
  store i8* %31, i8** %32, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = call i8* @svn_fs_fs__path_txn_dir(i32* %33, %struct.TYPE_5__* %34, i32* %35)
  store i8* %36, i8** %12, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = load i32, i32* @APR_OS_DEFAULT, align 4
  %39 = load i32*, i32** %10, align 8
  %40 = call i32* @svn_io_dir_make(i8* %37, i32 %38, i32* %39)
  ret i32* %40
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_fs__with_txn_current_lock(i32*, i32, %struct.get_and_increment_txn_key_baton*, i32*) #1

declare dso_local i8* @svn_fs_fs__id_txn_unparse(%struct.TYPE_5__*, i32*) #1

declare dso_local i8* @svn_fs_fs__path_txn_dir(i32*, %struct.TYPE_5__*, i32*) #1

declare dso_local i32* @svn_io_dir_make(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
