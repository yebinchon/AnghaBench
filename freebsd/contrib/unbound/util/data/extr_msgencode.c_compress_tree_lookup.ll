; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgencode.c_compress_tree_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgencode.c_compress_tree_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compress_tree_node = type { i32, %struct.compress_tree_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.compress_tree_node* (%struct.compress_tree_node**, i32*, i32, %struct.compress_tree_node***)* @compress_tree_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.compress_tree_node* @compress_tree_lookup(%struct.compress_tree_node** %0, i32* %1, i32 %2, %struct.compress_tree_node*** %3) #0 {
  %5 = alloca %struct.compress_tree_node*, align 8
  %6 = alloca %struct.compress_tree_node**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.compress_tree_node***, align 8
  %10 = alloca %struct.compress_tree_node*, align 8
  %11 = alloca i32, align 4
  store %struct.compress_tree_node** %0, %struct.compress_tree_node*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.compress_tree_node*** %3, %struct.compress_tree_node**** %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = icmp sle i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store %struct.compress_tree_node* null, %struct.compress_tree_node** %5, align 8
  br label %46

15:                                               ; preds = %4
  %16 = load %struct.compress_tree_node**, %struct.compress_tree_node*** %6, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.compress_tree_node***, %struct.compress_tree_node**** %9, align 8
  %20 = call i64 @compress_tree_search(%struct.compress_tree_node** %16, i32* %17, i32 %18, %struct.compress_tree_node** %10, i32* %11, %struct.compress_tree_node*** %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load %struct.compress_tree_node*, %struct.compress_tree_node** %10, align 8
  store %struct.compress_tree_node* %23, %struct.compress_tree_node** %5, align 8
  br label %46

24:                                               ; preds = %15
  %25 = load i32, i32* %11, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %45

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %39, %27
  %29 = load %struct.compress_tree_node*, %struct.compress_tree_node** %10, align 8
  %30 = icmp ne %struct.compress_tree_node* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load %struct.compress_tree_node*, %struct.compress_tree_node** %10, align 8
  %33 = getelementptr inbounds %struct.compress_tree_node, %struct.compress_tree_node* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %11, align 4
  %36 = icmp sgt i32 %34, %35
  br label %37

37:                                               ; preds = %31, %28
  %38 = phi i1 [ false, %28 ], [ %36, %31 ]
  br i1 %38, label %39, label %43

39:                                               ; preds = %37
  %40 = load %struct.compress_tree_node*, %struct.compress_tree_node** %10, align 8
  %41 = getelementptr inbounds %struct.compress_tree_node, %struct.compress_tree_node* %40, i32 0, i32 1
  %42 = load %struct.compress_tree_node*, %struct.compress_tree_node** %41, align 8
  store %struct.compress_tree_node* %42, %struct.compress_tree_node** %10, align 8
  br label %28

43:                                               ; preds = %37
  %44 = load %struct.compress_tree_node*, %struct.compress_tree_node** %10, align 8
  store %struct.compress_tree_node* %44, %struct.compress_tree_node** %5, align 8
  br label %46

45:                                               ; preds = %24
  store %struct.compress_tree_node* null, %struct.compress_tree_node** %5, align 8
  br label %46

46:                                               ; preds = %45, %43, %22, %14
  %47 = load %struct.compress_tree_node*, %struct.compress_tree_node** %5, align 8
  ret %struct.compress_tree_node* %47
}

declare dso_local i64 @compress_tree_search(%struct.compress_tree_node**, i32*, i32, %struct.compress_tree_node**, i32*, %struct.compress_tree_node***) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
