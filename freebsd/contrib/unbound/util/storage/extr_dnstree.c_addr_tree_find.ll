; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_dnstree.c_addr_tree_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_dnstree.c_addr_tree_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addr_tree_node = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.addr_tree_node* }
%struct.sockaddr_storage = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.addr_tree_node* @addr_tree_find(i32* %0, %struct.sockaddr_storage* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sockaddr_storage*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.addr_tree_node, align 8
  store i32* %0, i32** %5, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32* null, i32** %9, align 8
  %11 = getelementptr inbounds %struct.addr_tree_node, %struct.addr_tree_node* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.addr_tree_node* %10, %struct.addr_tree_node** %12, align 8
  %13 = getelementptr inbounds %struct.addr_tree_node, %struct.addr_tree_node* %10, i32 0, i32 2
  %14 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @memcpy(i32* %13, %struct.sockaddr_storage* %14, i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = getelementptr inbounds %struct.addr_tree_node, %struct.addr_tree_node* %10, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %8, align 4
  %20 = getelementptr inbounds %struct.addr_tree_node, %struct.addr_tree_node* %10, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32* @rbtree_search(i32* %21, %struct.addr_tree_node* %10)
  store i32* %22, i32** %9, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = bitcast i32* %23 to %struct.addr_tree_node*
  ret %struct.addr_tree_node* %24
}

declare dso_local i32 @memcpy(i32*, %struct.sockaddr_storage*, i32) #1

declare dso_local i32* @rbtree_search(i32*, %struct.addr_tree_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
