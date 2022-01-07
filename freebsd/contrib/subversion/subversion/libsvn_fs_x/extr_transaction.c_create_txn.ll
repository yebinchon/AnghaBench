; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_create_txn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_create_txn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__*, i32*, i32, i32*, i32 }
%struct.TYPE_5__ = type { i32 }

@txn_vtable = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"0 0\0A\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__**, i32*, i32, i32*, i32*)* @create_txn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_txn(%struct.TYPE_4__** %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_4__**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = call i8* @apr_pcalloc(i32* %14, i32 40)
  %16 = bitcast i8* %15 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %11, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = call i8* @apr_pcalloc(i32* %17, i32 4)
  %19 = bitcast i8* %18 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %12, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = call i32 @svn_fs_x__ensure_revision_exists(i32 %20, i32* %21, i32* %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32*, i32** %7, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 @create_txn_dir(i32* %26, i32* %28, i32* %29, i32* %30, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load i32*, i32** %7, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  store i32* %34, i32** %36, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32* @txn_vtable, i32** %41, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %44, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %46 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %46, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @svn_fs_x__init_rev_root(i32* %13, i32 %47)
  %49 = load i32*, i32** %7, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %10, align 8
  %54 = call i32 @create_new_txn_noderev_from_rev(i32* %49, i32 %52, i32* %13, i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  %56 = load i32*, i32** %7, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @svn_fs_x__path_txn_proto_rev(i32* %56, i32 %59, i32* %60)
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @svn_io_file_create_empty(i32 %61, i32* %62)
  %64 = call i32 @SVN_ERR(i32 %63)
  %65 = load i32*, i32** %7, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %10, align 8
  %70 = call i32 @svn_fs_x__path_txn_proto_rev_lock(i32* %65, i32 %68, i32* %69)
  %71 = load i32*, i32** %10, align 8
  %72 = call i32 @svn_io_file_create_empty(i32 %70, i32* %71)
  %73 = call i32 @SVN_ERR(i32 %72)
  %74 = load i32*, i32** %7, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %10, align 8
  %79 = call i32 @svn_fs_x__path_txn_changes(i32* %74, i32 %77, i32* %78)
  %80 = load i32*, i32** %10, align 8
  %81 = call i32 @svn_io_file_create_empty(i32 %79, i32* %80)
  %82 = call i32 @SVN_ERR(i32 %81)
  %83 = load i32*, i32** %7, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %10, align 8
  %88 = call i32 @svn_fs_x__path_txn_next_ids(i32* %83, i32 %86, i32* %87)
  %89 = load i32*, i32** %10, align 8
  %90 = call i32 @svn_io_file_create(i32 %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %89)
  %91 = call i32 @SVN_ERR(i32 %90)
  %92 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %92
}

declare dso_local i8* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__ensure_revision_exists(i32, i32*, i32*) #1

declare dso_local i32 @create_txn_dir(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_fs_x__init_rev_root(i32*, i32) #1

declare dso_local i32 @create_new_txn_noderev_from_rev(i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_io_file_create_empty(i32, i32*) #1

declare dso_local i32 @svn_fs_x__path_txn_proto_rev(i32*, i32, i32*) #1

declare dso_local i32 @svn_fs_x__path_txn_proto_rev_lock(i32*, i32, i32*) #1

declare dso_local i32 @svn_fs_x__path_txn_changes(i32*, i32, i32*) #1

declare dso_local i32 @svn_io_file_create(i32, i8*, i32*) #1

declare dso_local i32 @svn_fs_x__path_txn_next_ids(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
