; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_tree.c_svn_fs_x__txn_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_tree.c_svn_fs_x__txn_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@SVN_FS__PROP_TXN_CHECK_OOD = common dso_local global i32 0, align 4
@SVN_FS_TXN_CHECK_OOD = common dso_local global i32 0, align 4
@SVN_FS__PROP_TXN_CHECK_LOCKS = common dso_local global i32 0, align 4
@SVN_FS_TXN_CHECK_LOCKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__txn_root(i32** %0, %struct.TYPE_5__* %1, i32* %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32** %0, i32*** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i32 @svn_fs_x__txn_proplist(i32** %8, %struct.TYPE_5__* %9, i32* %10)
  %12 = call i32 @SVN_ERR(i32 %11)
  %13 = load i32*, i32** %8, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %34

15:                                               ; preds = %3
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* @SVN_FS__PROP_TXN_CHECK_OOD, align 4
  %18 = call i64 @svn_hash_gets(i32* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* @SVN_FS_TXN_CHECK_OOD, align 4
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %20, %15
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* @SVN_FS__PROP_TXN_CHECK_LOCKS, align 4
  %27 = call i64 @svn_hash_gets(i32* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* @SVN_FS_TXN_CHECK_LOCKS, align 4
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %29, %24
  br label %34

34:                                               ; preds = %33, %3
  %35 = load i32**, i32*** %4, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %40 = call i32 @svn_fs_x__txn_get_id(%struct.TYPE_5__* %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = call i32* @make_txn_root(i32** %35, i32 %38, i32 %40, i32 %43, i32 %44, i32* %45)
  ret i32* %46
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__txn_proplist(i32**, %struct.TYPE_5__*, i32*) #1

declare dso_local i64 @svn_hash_gets(i32*, i32) #1

declare dso_local i32* @make_txn_root(i32**, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_fs_x__txn_get_id(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
