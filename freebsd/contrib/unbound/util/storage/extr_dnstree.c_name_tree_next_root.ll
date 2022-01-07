; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_dnstree.c_name_tree_next_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_dnstree.c_name_tree_next_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.name_tree_node = type { i64, i32, i32*, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.name_tree_node* }

@RBTREE_NULL = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @name_tree_next_root(i32* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.name_tree_node, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.name_tree_node*, align 8
  store i32* %0, i32** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load i64*, i64** %5, align 8
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = call i32* @rbtree_first(i32* %13)
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32*, i32** @RBTREE_NULL, align 8
  %17 = icmp eq i32* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %91

19:                                               ; preds = %12
  %20 = load i32*, i32** %7, align 8
  %21 = bitcast i32* %20 to %struct.name_tree_node*
  store %struct.name_tree_node* %21, %struct.name_tree_node** %8, align 8
  %22 = load %struct.name_tree_node*, %struct.name_tree_node** %8, align 8
  %23 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = call i64 @dname_is_root(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load %struct.name_tree_node*, %struct.name_tree_node** %8, align 8
  %29 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64*, i64** %5, align 8
  store i64 %30, i64* %31, align 8
  store i32 1, i32* %3, align 4
  br label %91

32:                                               ; preds = %19
  %33 = load %struct.name_tree_node*, %struct.name_tree_node** %8, align 8
  %34 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  %37 = load i64*, i64** %5, align 8
  store i64 %36, i64* %37, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = load i64*, i64** %5, align 8
  %40 = call i32 @name_tree_next_root(i32* %38, i64* %39)
  store i32 %40, i32* %3, align 4
  br label %91

41:                                               ; preds = %2
  %42 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %6, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store %struct.name_tree_node* %6, %struct.name_tree_node** %43, align 8
  %44 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %6, i32 0, i32 2
  store i32* bitcast ([2 x i8]* @.str to i32*), i32** %44, align 8
  %45 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %6, i32 0, i32 1
  store i32 1, i32* %45, align 8
  %46 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %6, i32 0, i32 3
  store i64 0, i64* %46, align 8
  %47 = load i64*, i64** %5, align 8
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %6, i32 0, i32 0
  store i64 %48, i64* %49, align 8
  store i32* null, i32** %7, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = call i64 @rbtree_find_less_equal(i32* %50, %struct.name_tree_node* %6, i32** %7)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  store i32 1, i32* %3, align 4
  br label %91

54:                                               ; preds = %41
  %55 = load i32*, i32** %7, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32*, i32** %7, align 8
  %59 = load i32*, i32** @RBTREE_NULL, align 8
  %60 = icmp eq i32* %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57, %54
  store i32 0, i32* %3, align 4
  br label %91

62:                                               ; preds = %57
  %63 = load i32*, i32** %7, align 8
  %64 = call i32* @rbtree_next(i32* %63)
  store i32* %64, i32** %7, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = load i32*, i32** @RBTREE_NULL, align 8
  %67 = icmp eq i32* %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %91

69:                                               ; preds = %62
  %70 = load i32*, i32** %7, align 8
  %71 = bitcast i32* %70 to %struct.name_tree_node*
  store %struct.name_tree_node* %71, %struct.name_tree_node** %8, align 8
  %72 = load %struct.name_tree_node*, %struct.name_tree_node** %8, align 8
  %73 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = call i64 @dname_is_root(i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %69
  %78 = load %struct.name_tree_node*, %struct.name_tree_node** %8, align 8
  %79 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64*, i64** %5, align 8
  store i64 %80, i64* %81, align 8
  store i32 1, i32* %3, align 4
  br label %91

82:                                               ; preds = %69
  %83 = load %struct.name_tree_node*, %struct.name_tree_node** %8, align 8
  %84 = getelementptr inbounds %struct.name_tree_node, %struct.name_tree_node* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 1
  %87 = load i64*, i64** %5, align 8
  store i64 %86, i64* %87, align 8
  %88 = load i32*, i32** %4, align 8
  %89 = load i64*, i64** %5, align 8
  %90 = call i32 @name_tree_next_root(i32* %88, i64* %89)
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %82, %77, %68, %61, %53, %32, %27, %18
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32* @rbtree_first(i32*) #1

declare dso_local i64 @dname_is_root(i32*) #1

declare dso_local i64 @rbtree_find_less_equal(i32*, %struct.name_tree_node*, i32**) #1

declare dso_local i32* @rbtree_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
