; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_dnstree.c_addr_tree_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_dnstree.c_addr_tree_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addr_tree_node = type { i64, i32, %struct.addr_tree_node*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.addr_tree_node* }
%struct.sockaddr_storage = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.addr_tree_node* @addr_tree_lookup(i32* %0, %struct.sockaddr_storage* %1, i64 %2) #0 {
  %4 = alloca %struct.addr_tree_node*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sockaddr_storage*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.addr_tree_node*, align 8
  %10 = alloca %struct.addr_tree_node, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* null, i32** %8, align 8
  %12 = getelementptr inbounds %struct.addr_tree_node, %struct.addr_tree_node* %10, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.addr_tree_node* %10, %struct.addr_tree_node** %13, align 8
  %14 = getelementptr inbounds %struct.addr_tree_node, %struct.addr_tree_node* %10, i32 0, i32 3
  %15 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @memcpy(i32* %14, %struct.sockaddr_storage* %15, i64 %16)
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds %struct.addr_tree_node, %struct.addr_tree_node* %10, i32 0, i32 0
  store i64 %18, i64* %19, align 8
  %20 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i64 @addr_is_ip6(%struct.sockaddr_storage* %20, i64 %21)
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 128, i32 32
  %26 = getelementptr inbounds %struct.addr_tree_node, %struct.addr_tree_node* %10, i32 0, i32 1
  store i32 %25, i32* %26, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i64 @rbtree_find_less_equal(i32* %27, %struct.addr_tree_node* %10, i32** %8)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32*, i32** %8, align 8
  %32 = bitcast i32* %31 to %struct.addr_tree_node*
  store %struct.addr_tree_node* %32, %struct.addr_tree_node** %4, align 8
  br label %73

33:                                               ; preds = %3
  %34 = load i32*, i32** %8, align 8
  %35 = bitcast i32* %34 to %struct.addr_tree_node*
  store %struct.addr_tree_node* %35, %struct.addr_tree_node** %9, align 8
  %36 = load %struct.addr_tree_node*, %struct.addr_tree_node** %9, align 8
  %37 = icmp ne %struct.addr_tree_node* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.addr_tree_node*, %struct.addr_tree_node** %9, align 8
  %40 = getelementptr inbounds %struct.addr_tree_node, %struct.addr_tree_node* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38, %33
  store %struct.addr_tree_node* null, %struct.addr_tree_node** %4, align 8
  br label %73

45:                                               ; preds = %38
  %46 = load %struct.addr_tree_node*, %struct.addr_tree_node** %9, align 8
  %47 = getelementptr inbounds %struct.addr_tree_node, %struct.addr_tree_node* %46, i32 0, i32 3
  %48 = load %struct.addr_tree_node*, %struct.addr_tree_node** %9, align 8
  %49 = getelementptr inbounds %struct.addr_tree_node, %struct.addr_tree_node* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %52 = getelementptr inbounds %struct.addr_tree_node, %struct.addr_tree_node* %10, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @addr_in_common(i32* %47, i32 %50, %struct.sockaddr_storage* %51, i32 %53, i64 %54)
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %66, %45
  %57 = load %struct.addr_tree_node*, %struct.addr_tree_node** %9, align 8
  %58 = icmp ne %struct.addr_tree_node* %57, null
  br i1 %58, label %59, label %70

59:                                               ; preds = %56
  %60 = load %struct.addr_tree_node*, %struct.addr_tree_node** %9, align 8
  %61 = getelementptr inbounds %struct.addr_tree_node, %struct.addr_tree_node* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = icmp sle i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %70

66:                                               ; preds = %59
  %67 = load %struct.addr_tree_node*, %struct.addr_tree_node** %9, align 8
  %68 = getelementptr inbounds %struct.addr_tree_node, %struct.addr_tree_node* %67, i32 0, i32 2
  %69 = load %struct.addr_tree_node*, %struct.addr_tree_node** %68, align 8
  store %struct.addr_tree_node* %69, %struct.addr_tree_node** %9, align 8
  br label %56

70:                                               ; preds = %65, %56
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.addr_tree_node*, %struct.addr_tree_node** %9, align 8
  store %struct.addr_tree_node* %72, %struct.addr_tree_node** %4, align 8
  br label %73

73:                                               ; preds = %71, %44, %30
  %74 = load %struct.addr_tree_node*, %struct.addr_tree_node** %4, align 8
  ret %struct.addr_tree_node* %74
}

declare dso_local i32 @memcpy(i32*, %struct.sockaddr_storage*, i64) #1

declare dso_local i64 @addr_is_ip6(%struct.sockaddr_storage*, i64) #1

declare dso_local i64 @rbtree_find_less_equal(i32*, %struct.addr_tree_node*, i32**) #1

declare dso_local i32 @addr_in_common(i32*, i32, %struct.sockaddr_storage*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
