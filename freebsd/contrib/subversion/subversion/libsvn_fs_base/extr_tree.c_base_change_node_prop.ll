; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_base_change_node_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_base_change_node_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.change_node_prop_args = type { i8*, i8*, i32*, %struct.TYPE_4__* }

@txn_body_change_node_prop = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*, i8*, i8*, i32*, i32*)* @base_change_node_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @base_change_node_prop(%struct.TYPE_4__* %0, i8* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.change_node_prop_args, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %19 = call i32* @SVN_FS__NOT_TXN(%struct.TYPE_4__* %18)
  store i32* %19, i32** %6, align 8
  br label %36

20:                                               ; preds = %5
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %22 = getelementptr inbounds %struct.change_node_prop_args, %struct.change_node_prop_args* %12, i32 0, i32 3
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %22, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds %struct.change_node_prop_args, %struct.change_node_prop_args* %12, i32 0, i32 0
  store i8* %23, i8** %24, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = getelementptr inbounds %struct.change_node_prop_args, %struct.change_node_prop_args* %12, i32 0, i32 1
  store i8* %25, i8** %26, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = getelementptr inbounds %struct.change_node_prop_args, %struct.change_node_prop_args* %12, i32 0, i32 2
  store i32* %27, i32** %28, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @txn_body_change_node_prop, align 4
  %33 = load i32, i32* @TRUE, align 4
  %34 = load i32*, i32** %11, align 8
  %35 = call i32* @svn_fs_base__retry_txn(i32 %31, i32 %32, %struct.change_node_prop_args* %12, i32 %33, i32* %34)
  store i32* %35, i32** %6, align 8
  br label %36

36:                                               ; preds = %20, %17
  %37 = load i32*, i32** %6, align 8
  ret i32* %37
}

declare dso_local i32* @SVN_FS__NOT_TXN(%struct.TYPE_4__*) #1

declare dso_local i32* @svn_fs_base__retry_txn(i32, i32, %struct.change_node_prop_args*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
