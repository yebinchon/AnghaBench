; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_fs-loader.c_svn_fs_txn_proplist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_fs-loader.c_svn_fs_txn_proplist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32**, %struct.TYPE_6__*, i32*)* }

@SVN_FS__PROP_TXN_CHECK_LOCKS = common dso_local global i32 0, align 4
@SVN_FS__PROP_TXN_CHECK_OOD = common dso_local global i32 0, align 4
@SVN_FS__PROP_TXN_CLIENT_DATE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_txn_proplist(i32** %0, %struct.TYPE_6__* %1, i32* %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  store i32** %0, i32*** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32 (i32**, %struct.TYPE_6__*, i32*)*, i32 (i32**, %struct.TYPE_6__*, i32*)** %10, align 8
  %12 = load i32**, i32*** %4, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 %11(i32** %12, %struct.TYPE_6__* %13, i32* %14)
  %16 = call i32 @SVN_ERR(i32 %15)
  %17 = load i32**, i32*** %4, align 8
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* @SVN_FS__PROP_TXN_CHECK_LOCKS, align 4
  %20 = call i32 @svn_hash_sets(i32* %18, i32 %19, i32* null)
  %21 = load i32**, i32*** %4, align 8
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* @SVN_FS__PROP_TXN_CHECK_OOD, align 4
  %24 = call i32 @svn_hash_sets(i32* %22, i32 %23, i32* null)
  %25 = load i32**, i32*** %4, align 8
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* @SVN_FS__PROP_TXN_CLIENT_DATE, align 4
  %28 = call i32 @svn_hash_sets(i32* %26, i32 %27, i32* null)
  %29 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %29
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
