; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_dnstree.c_addr_tree_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_dnstree.c_addr_tree_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addr_tree_node = type { i32, %struct.TYPE_2__, i32*, i32, i32 }
%struct.TYPE_2__ = type { %struct.addr_tree_node* }
%struct.sockaddr_storage = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @addr_tree_insert(i32* %0, %struct.addr_tree_node* %1, %struct.sockaddr_storage* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.addr_tree_node*, align 8
  %8 = alloca %struct.sockaddr_storage*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.addr_tree_node* %1, %struct.addr_tree_node** %7, align 8
  store %struct.sockaddr_storage* %2, %struct.sockaddr_storage** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.addr_tree_node*, %struct.addr_tree_node** %7, align 8
  %12 = load %struct.addr_tree_node*, %struct.addr_tree_node** %7, align 8
  %13 = getelementptr inbounds %struct.addr_tree_node, %struct.addr_tree_node* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.addr_tree_node* %11, %struct.addr_tree_node** %14, align 8
  %15 = load %struct.addr_tree_node*, %struct.addr_tree_node** %7, align 8
  %16 = getelementptr inbounds %struct.addr_tree_node, %struct.addr_tree_node* %15, i32 0, i32 4
  %17 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @memcpy(i32* %16, %struct.sockaddr_storage* %17, i32 %18)
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.addr_tree_node*, %struct.addr_tree_node** %7, align 8
  %22 = getelementptr inbounds %struct.addr_tree_node, %struct.addr_tree_node* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.addr_tree_node*, %struct.addr_tree_node** %7, align 8
  %25 = getelementptr inbounds %struct.addr_tree_node, %struct.addr_tree_node* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.addr_tree_node*, %struct.addr_tree_node** %7, align 8
  %27 = getelementptr inbounds %struct.addr_tree_node, %struct.addr_tree_node* %26, i32 0, i32 2
  store i32* null, i32** %27, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load %struct.addr_tree_node*, %struct.addr_tree_node** %7, align 8
  %30 = getelementptr inbounds %struct.addr_tree_node, %struct.addr_tree_node* %29, i32 0, i32 1
  %31 = call i32* @rbtree_insert(i32* %28, %struct.TYPE_2__* %30)
  %32 = icmp ne i32* %31, null
  %33 = zext i1 %32 to i32
  ret i32 %33
}

declare dso_local i32 @memcpy(i32*, %struct.sockaddr_storage*, i32) #1

declare dso_local i32* @rbtree_insert(i32*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
