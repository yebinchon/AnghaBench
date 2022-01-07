; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_dnstree.c_name_tree_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_dnstree.c_name_tree_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.name_tree_node = type { i64, i32, i64, %struct.name_tree_node*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.name_tree_node* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.name_tree_node* @name_tree_lookup(i32* %0, i32* %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.name_tree_node*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.name_tree_node*, align 8
  %14 = alloca %struct.name_tree_node, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32* null, i32** %12, align 8
  %16 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %14, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.name_tree_node* %14, %struct.name_tree_node** %17, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %14, i32 0, i32 4
  store i32* %18, i32** %19, align 8
  %20 = load i64, i64* %9, align 8
  %21 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %14, i32 0, i32 0
  store i64 %20, i64* %21, align 8
  %22 = load i32, i32* %10, align 4
  %23 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %14, i32 0, i32 1
  store i32 %22, i32* %23, align 8
  %24 = load i64, i64* %11, align 8
  %25 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %14, i32 0, i32 2
  store i64 %24, i64* %25, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call i64 @rbtree_find_less_equal(i32* %26, %struct.name_tree_node* %14, i32** %12)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %5
  %30 = load i32*, i32** %12, align 8
  %31 = bitcast i32* %30 to %struct.name_tree_node*
  store %struct.name_tree_node* %31, %struct.name_tree_node** %13, align 8
  br label %71

32:                                               ; preds = %5
  %33 = load i32*, i32** %12, align 8
  %34 = bitcast i32* %33 to %struct.name_tree_node*
  store %struct.name_tree_node* %34, %struct.name_tree_node** %13, align 8
  %35 = load %struct.name_tree_node*, %struct.name_tree_node** %13, align 8
  %36 = icmp ne %struct.name_tree_node* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.name_tree_node*, %struct.name_tree_node** %13, align 8
  %39 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %11, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37, %32
  store %struct.name_tree_node* null, %struct.name_tree_node** %6, align 8
  br label %73

44:                                               ; preds = %37
  %45 = load %struct.name_tree_node*, %struct.name_tree_node** %13, align 8
  %46 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.name_tree_node*, %struct.name_tree_node** %13, align 8
  %49 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %14, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %14, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @dname_lab_cmp(i32* %47, i32 %50, i32* %52, i32 %54, i32* %15)
  br label %56

56:                                               ; preds = %66, %44
  %57 = load %struct.name_tree_node*, %struct.name_tree_node** %13, align 8
  %58 = icmp ne %struct.name_tree_node* %57, null
  br i1 %58, label %59, label %70

59:                                               ; preds = %56
  %60 = load %struct.name_tree_node*, %struct.name_tree_node** %13, align 8
  %61 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %15, align 4
  %64 = icmp sle i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %70

66:                                               ; preds = %59
  %67 = load %struct.name_tree_node*, %struct.name_tree_node** %13, align 8
  %68 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %67, i32 0, i32 3
  %69 = load %struct.name_tree_node*, %struct.name_tree_node** %68, align 8
  store %struct.name_tree_node* %69, %struct.name_tree_node** %13, align 8
  br label %56

70:                                               ; preds = %65, %56
  br label %71

71:                                               ; preds = %70, %29
  %72 = load %struct.name_tree_node*, %struct.name_tree_node** %13, align 8
  store %struct.name_tree_node* %72, %struct.name_tree_node** %6, align 8
  br label %73

73:                                               ; preds = %71, %43
  %74 = load %struct.name_tree_node*, %struct.name_tree_node** %6, align 8
  ret %struct.name_tree_node* %74
}

declare dso_local i64 @rbtree_find_less_equal(i32*, %struct.name_tree_node*, i32**) #1

declare dso_local i32 @dname_lab_cmp(i32*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
