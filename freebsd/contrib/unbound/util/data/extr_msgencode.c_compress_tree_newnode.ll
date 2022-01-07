; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgencode.c_compress_tree_newnode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgencode.c_compress_tree_newnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.compress_tree_node = type { i32, i64, i32*, i64, i64, i64 }
%struct.regional = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.compress_tree_node* (i32*, i32, i64, %struct.regional*)* @compress_tree_newnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.compress_tree_node* @compress_tree_newnode(i32* %0, i32 %1, i64 %2, %struct.regional* %3) #0 {
  %5 = alloca %struct.compress_tree_node*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.regional*, align 8
  %10 = alloca %struct.compress_tree_node*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.regional* %3, %struct.regional** %9, align 8
  %11 = load %struct.regional*, %struct.regional** %9, align 8
  %12 = call i64 @regional_alloc(%struct.regional* %11, i32 48)
  %13 = inttoptr i64 %12 to %struct.compress_tree_node*
  store %struct.compress_tree_node* %13, %struct.compress_tree_node** %10, align 8
  %14 = load %struct.compress_tree_node*, %struct.compress_tree_node** %10, align 8
  %15 = icmp ne %struct.compress_tree_node* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store %struct.compress_tree_node* null, %struct.compress_tree_node** %5, align 8
  br label %34

17:                                               ; preds = %4
  %18 = load %struct.compress_tree_node*, %struct.compress_tree_node** %10, align 8
  %19 = getelementptr inbounds %struct.compress_tree_node, %struct.compress_tree_node* %18, i32 0, i32 5
  store i64 0, i64* %19, align 8
  %20 = load %struct.compress_tree_node*, %struct.compress_tree_node** %10, align 8
  %21 = getelementptr inbounds %struct.compress_tree_node, %struct.compress_tree_node* %20, i32 0, i32 4
  store i64 0, i64* %21, align 8
  %22 = load %struct.compress_tree_node*, %struct.compress_tree_node** %10, align 8
  %23 = getelementptr inbounds %struct.compress_tree_node, %struct.compress_tree_node* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load %struct.compress_tree_node*, %struct.compress_tree_node** %10, align 8
  %26 = getelementptr inbounds %struct.compress_tree_node, %struct.compress_tree_node* %25, i32 0, i32 2
  store i32* %24, i32** %26, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.compress_tree_node*, %struct.compress_tree_node** %10, align 8
  %29 = getelementptr inbounds %struct.compress_tree_node, %struct.compress_tree_node* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load %struct.compress_tree_node*, %struct.compress_tree_node** %10, align 8
  %32 = getelementptr inbounds %struct.compress_tree_node, %struct.compress_tree_node* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  %33 = load %struct.compress_tree_node*, %struct.compress_tree_node** %10, align 8
  store %struct.compress_tree_node* %33, %struct.compress_tree_node** %5, align 8
  br label %34

34:                                               ; preds = %17, %16
  %35 = load %struct.compress_tree_node*, %struct.compress_tree_node** %5, align 8
  ret %struct.compress_tree_node* %35
}

declare dso_local i64 @regional_alloc(%struct.regional*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
