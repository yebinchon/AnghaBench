; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_base_node_created_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_base_node_created_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.node_created_path_args = type { i8**, i8*, %struct.TYPE_3__* }

@txn_body_node_created_path = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, %struct.TYPE_3__*, i8*, i32*)* @base_node_created_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @base_node_created_path(i8** %0, %struct.TYPE_3__* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.node_created_path_args, align 8
  %10 = alloca i32*, align 8
  store i8** %0, i8*** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = call i32* @svn_pool_create(i32* %11)
  store i32* %12, i32** %10, align 8
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds %struct.node_created_path_args, %struct.node_created_path_args* %9, i32 0, i32 0
  store i8** %13, i8*** %14, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.node_created_path_args, %struct.node_created_path_args* %9, i32 0, i32 2
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %16, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds %struct.node_created_path_args, %struct.node_created_path_args* %9, i32 0, i32 1
  store i8* %17, i8** %18, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @txn_body_node_created_path, align 4
  %23 = load i32, i32* @FALSE, align 4
  %24 = load i32*, i32** %10, align 8
  %25 = call i32 @svn_fs_base__retry_txn(i32 %21, i32 %22, %struct.node_created_path_args* %9, i32 %23, i32* %24)
  %26 = call i32 @SVN_ERR(i32 %25)
  %27 = load i8**, i8*** %5, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %4
  %31 = load i32*, i32** %8, align 8
  %32 = load i8**, i8*** %5, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = call i8* @apr_pstrdup(i32* %31, i8* %33)
  %35 = load i8**, i8*** %5, align 8
  store i8* %34, i8** %35, align 8
  br label %36

36:                                               ; preds = %30, %4
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @svn_pool_destroy(i32* %37)
  %39 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %39
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_base__retry_txn(i32, i32, %struct.node_created_path_args*, i32, i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
