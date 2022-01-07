; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_txn_body_node_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_txn_body_node_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.node_prop_args = type { i32, i32**, i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_5__*)* @txn_body_node_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @txn_body_node_prop(i8* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.node_prop_args*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.node_prop_args*
  store %struct.node_prop_args* %9, %struct.node_prop_args** %5, align 8
  %10 = load %struct.node_prop_args*, %struct.node_prop_args** %5, align 8
  %11 = getelementptr inbounds %struct.node_prop_args, %struct.node_prop_args* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.node_prop_args*, %struct.node_prop_args** %5, align 8
  %14 = getelementptr inbounds %struct.node_prop_args, %struct.node_prop_args* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @get_dag(i32** %6, i32 %12, i32 %15, %struct.TYPE_5__* %16, i32 %19)
  %21 = call i32 @SVN_ERR(i32 %20)
  %22 = load i32*, i32** %6, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @svn_fs_base__dag_get_proplist(i32** %7, i32* %22, %struct.TYPE_5__* %23, i32 %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load %struct.node_prop_args*, %struct.node_prop_args** %5, align 8
  %30 = getelementptr inbounds %struct.node_prop_args, %struct.node_prop_args* %29, i32 0, i32 1
  %31 = load i32**, i32*** %30, align 8
  store i32* null, i32** %31, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %2
  %35 = load i32*, i32** %7, align 8
  %36 = load %struct.node_prop_args*, %struct.node_prop_args** %5, align 8
  %37 = getelementptr inbounds %struct.node_prop_args, %struct.node_prop_args* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32* @svn_hash_gets(i32* %35, i32 %38)
  %40 = load %struct.node_prop_args*, %struct.node_prop_args** %5, align 8
  %41 = getelementptr inbounds %struct.node_prop_args, %struct.node_prop_args* %40, i32 0, i32 1
  %42 = load i32**, i32*** %41, align 8
  store i32* %39, i32** %42, align 8
  br label %43

43:                                               ; preds = %34, %2
  %44 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %44
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_dag(i32**, i32, i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @svn_fs_base__dag_get_proplist(i32**, i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32* @svn_hash_gets(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
