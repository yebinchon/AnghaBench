; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_dnstree.c_name_tree_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_dnstree.c_name_tree_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.name_tree_node = type { i64, i32, %struct.TYPE_2__, i32*, i32, i32* }
%struct.TYPE_2__ = type { %struct.name_tree_node* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @name_tree_insert(i32* %0, %struct.name_tree_node* %1, i32* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.name_tree_node*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.name_tree_node* %1, %struct.name_tree_node** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load %struct.name_tree_node*, %struct.name_tree_node** %8, align 8
  %14 = load %struct.name_tree_node*, %struct.name_tree_node** %8, align 8
  %15 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.name_tree_node* %13, %struct.name_tree_node** %16, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load %struct.name_tree_node*, %struct.name_tree_node** %8, align 8
  %19 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %18, i32 0, i32 5
  store i32* %17, i32** %19, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load %struct.name_tree_node*, %struct.name_tree_node** %8, align 8
  %22 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.name_tree_node*, %struct.name_tree_node** %8, align 8
  %25 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %12, align 4
  %27 = load %struct.name_tree_node*, %struct.name_tree_node** %8, align 8
  %28 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  %29 = load %struct.name_tree_node*, %struct.name_tree_node** %8, align 8
  %30 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %29, i32 0, i32 3
  store i32* null, i32** %30, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load %struct.name_tree_node*, %struct.name_tree_node** %8, align 8
  %33 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %32, i32 0, i32 2
  %34 = call i32* @rbtree_insert(i32* %31, %struct.TYPE_2__* %33)
  %35 = icmp ne i32* %34, null
  %36 = zext i1 %35 to i32
  ret i32 %36
}

declare dso_local i32* @rbtree_insert(i32*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
