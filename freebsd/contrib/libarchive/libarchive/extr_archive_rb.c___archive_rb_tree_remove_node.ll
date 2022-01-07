; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_rb.c___archive_rb_tree_remove_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_rb.c___archive_rb_tree_remove_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_rb_tree = type { i32 }
%struct.archive_rb_node = type { i32 }

@RB_DIR_RIGHT = common dso_local global i32 0, align 4
@RB_DIR_LEFT = common dso_local global i32 0, align 4
@RB_DIR_OTHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__archive_rb_tree_remove_node(%struct.archive_rb_tree* %0, %struct.archive_rb_node* %1) #0 {
  %3 = alloca %struct.archive_rb_tree*, align 8
  %4 = alloca %struct.archive_rb_node*, align 8
  %5 = alloca %struct.archive_rb_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.archive_rb_tree* %0, %struct.archive_rb_tree** %3, align 8
  store %struct.archive_rb_node* %1, %struct.archive_rb_node** %4, align 8
  %8 = load %struct.archive_rb_node*, %struct.archive_rb_node** %4, align 8
  %9 = call i64 @RB_CHILDLESS_P(%struct.archive_rb_node* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = load %struct.archive_rb_node*, %struct.archive_rb_node** %4, align 8
  %13 = call i64 @RB_BLACK_P(%struct.archive_rb_node* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = load %struct.archive_rb_tree*, %struct.archive_rb_tree** %3, align 8
  %17 = load %struct.archive_rb_node*, %struct.archive_rb_node** %4, align 8
  %18 = call i32 @RB_ROOT_P(%struct.archive_rb_tree* %16, %struct.archive_rb_node* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %15, %11
  %22 = phi i1 [ false, %11 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load %struct.archive_rb_tree*, %struct.archive_rb_tree** %3, align 8
  %25 = load %struct.archive_rb_node*, %struct.archive_rb_node** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @__archive_rb_tree_prune_node(%struct.archive_rb_tree* %24, %struct.archive_rb_node* %25, i32 %26)
  br label %58

28:                                               ; preds = %2
  %29 = load %struct.archive_rb_node*, %struct.archive_rb_node** %4, align 8
  %30 = call i32 @RB_TWOCHILDREN_P(%struct.archive_rb_node* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %28
  %33 = load %struct.archive_rb_node*, %struct.archive_rb_node** %4, align 8
  %34 = call i64 @RB_LEFT_SENTINEL_P(%struct.archive_rb_node* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @RB_DIR_RIGHT, align 4
  br label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @RB_DIR_LEFT, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* %6, align 4
  %42 = load %struct.archive_rb_node*, %struct.archive_rb_node** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @__archive_rb_tree_prune_blackred_branch(%struct.archive_rb_node* %42, i32 %43)
  br label %58

45:                                               ; preds = %28
  %46 = load %struct.archive_rb_node*, %struct.archive_rb_node** %4, align 8
  %47 = call i32 @RB_POSITION(%struct.archive_rb_node* %46)
  %48 = load i32, i32* @RB_DIR_OTHER, align 4
  %49 = xor i32 %47, %48
  store i32 %49, i32* %6, align 4
  %50 = load %struct.archive_rb_tree*, %struct.archive_rb_tree** %3, align 8
  %51 = load %struct.archive_rb_node*, %struct.archive_rb_node** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call %struct.archive_rb_node* @__archive_rb_tree_iterate(%struct.archive_rb_tree* %50, %struct.archive_rb_node* %51, i32 %52)
  store %struct.archive_rb_node* %53, %struct.archive_rb_node** %5, align 8
  %54 = load %struct.archive_rb_tree*, %struct.archive_rb_tree** %3, align 8
  %55 = load %struct.archive_rb_node*, %struct.archive_rb_node** %4, align 8
  %56 = load %struct.archive_rb_node*, %struct.archive_rb_node** %5, align 8
  %57 = call i32 @__archive_rb_tree_swap_prune_and_rebalance(%struct.archive_rb_tree* %54, %struct.archive_rb_node* %55, %struct.archive_rb_node* %56)
  br label %58

58:                                               ; preds = %45, %40, %21
  ret void
}

declare dso_local i64 @RB_CHILDLESS_P(%struct.archive_rb_node*) #1

declare dso_local i64 @RB_BLACK_P(%struct.archive_rb_node*) #1

declare dso_local i32 @RB_ROOT_P(%struct.archive_rb_tree*, %struct.archive_rb_node*) #1

declare dso_local i32 @__archive_rb_tree_prune_node(%struct.archive_rb_tree*, %struct.archive_rb_node*, i32) #1

declare dso_local i32 @RB_TWOCHILDREN_P(%struct.archive_rb_node*) #1

declare dso_local i64 @RB_LEFT_SENTINEL_P(%struct.archive_rb_node*) #1

declare dso_local i32 @__archive_rb_tree_prune_blackred_branch(%struct.archive_rb_node*, i32) #1

declare dso_local i32 @RB_POSITION(%struct.archive_rb_node*) #1

declare dso_local %struct.archive_rb_node* @__archive_rb_tree_iterate(%struct.archive_rb_tree*, %struct.archive_rb_node*, i32) #1

declare dso_local i32 @__archive_rb_tree_swap_prune_and_rebalance(%struct.archive_rb_tree*, %struct.archive_rb_node*, %struct.archive_rb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
