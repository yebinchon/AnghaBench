; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_revs-txns.c_txn_body_get_dirents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_revs-txns.c_txn_body_get_dirents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.get_dirents_args = type { i32**, i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_5__*)* @txn_body_get_dirents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @txn_body_get_dirents(i8* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.get_dirents_args*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.get_dirents_args*
  store %struct.get_dirents_args* %9, %struct.get_dirents_args** %6, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.get_dirents_args*, %struct.get_dirents_args** %6, align 8
  %14 = getelementptr inbounds %struct.get_dirents_args, %struct.get_dirents_args* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @svn_fs_base__dag_get_node(i32** %7, i32 %12, i32 %15, %struct.TYPE_5__* %16, i32 %19)
  %21 = call i32 @SVN_ERR(i32 %20)
  %22 = load i32*, i32** %7, align 8
  %23 = load %struct.get_dirents_args*, %struct.get_dirents_args** %6, align 8
  %24 = getelementptr inbounds %struct.get_dirents_args, %struct.get_dirents_args* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @svn_fs_base__dag_check_mutable(i32* %22, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %2
  %29 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %29, i32** %3, align 8
  br label %50

30:                                               ; preds = %2
  %31 = load %struct.get_dirents_args*, %struct.get_dirents_args** %6, align 8
  %32 = getelementptr inbounds %struct.get_dirents_args, %struct.get_dirents_args* %31, i32 0, i32 0
  %33 = load i32**, i32*** %32, align 8
  store i32* null, i32** %33, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i64 @svn_fs_base__dag_node_kind(i32* %34)
  %36 = load i64, i64* @svn_node_dir, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %39, i32** %3, align 8
  br label %50

40:                                               ; preds = %30
  %41 = load %struct.get_dirents_args*, %struct.get_dirents_args** %6, align 8
  %42 = getelementptr inbounds %struct.get_dirents_args, %struct.get_dirents_args* %41, i32 0, i32 0
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32* @svn_fs_base__dag_dir_entries(i32** %43, i32* %44, %struct.TYPE_5__* %45, i32 %48)
  store i32* %49, i32** %3, align 8
  br label %50

50:                                               ; preds = %40, %38, %28
  %51 = load i32*, i32** %3, align 8
  ret i32* %51
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_base__dag_get_node(i32**, i32, i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @svn_fs_base__dag_check_mutable(i32*, i32) #1

declare dso_local i64 @svn_fs_base__dag_node_kind(i32*) #1

declare dso_local i32* @svn_fs_base__dag_dir_entries(i32**, i32*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
