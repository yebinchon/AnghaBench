; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_rb.c___archive_rb_tree_insert_rebalance.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_rb.c___archive_rb_tree_insert_rebalance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_rb_tree = type { %struct.archive_rb_node* }
%struct.archive_rb_node = type { %struct.archive_rb_node**, %struct.archive_rb_node* }

@RB_DIR_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive_rb_tree*, %struct.archive_rb_node*)* @__archive_rb_tree_insert_rebalance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__archive_rb_tree_insert_rebalance(%struct.archive_rb_tree* %0, %struct.archive_rb_node* %1) #0 {
  %3 = alloca %struct.archive_rb_tree*, align 8
  %4 = alloca %struct.archive_rb_node*, align 8
  %5 = alloca %struct.archive_rb_node*, align 8
  %6 = alloca %struct.archive_rb_node*, align 8
  %7 = alloca %struct.archive_rb_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.archive_rb_tree* %0, %struct.archive_rb_tree** %3, align 8
  store %struct.archive_rb_node* %1, %struct.archive_rb_node** %4, align 8
  %10 = load %struct.archive_rb_node*, %struct.archive_rb_node** %4, align 8
  %11 = call %struct.archive_rb_node* @RB_FATHER(%struct.archive_rb_node* %10)
  store %struct.archive_rb_node* %11, %struct.archive_rb_node** %5, align 8
  br label %12

12:                                               ; preds = %55, %2
  %13 = load %struct.archive_rb_node*, %struct.archive_rb_node** %5, align 8
  %14 = call %struct.archive_rb_node* @RB_FATHER(%struct.archive_rb_node* %13)
  store %struct.archive_rb_node* %14, %struct.archive_rb_node** %6, align 8
  %15 = load %struct.archive_rb_node*, %struct.archive_rb_node** %5, align 8
  %16 = load %struct.archive_rb_node*, %struct.archive_rb_node** %6, align 8
  %17 = getelementptr inbounds %struct.archive_rb_node, %struct.archive_rb_node* %16, i32 0, i32 1
  %18 = load %struct.archive_rb_node*, %struct.archive_rb_node** %17, align 8
  %19 = icmp eq %struct.archive_rb_node* %15, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @RB_DIR_OTHER, align 4
  %23 = xor i32 %21, %22
  store i32 %23, i32* %9, align 4
  %24 = load %struct.archive_rb_node*, %struct.archive_rb_node** %6, align 8
  %25 = getelementptr inbounds %struct.archive_rb_node, %struct.archive_rb_node* %24, i32 0, i32 0
  %26 = load %struct.archive_rb_node**, %struct.archive_rb_node*** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.archive_rb_node*, %struct.archive_rb_node** %26, i64 %28
  %30 = load %struct.archive_rb_node*, %struct.archive_rb_node** %29, align 8
  store %struct.archive_rb_node* %30, %struct.archive_rb_node** %7, align 8
  %31 = load %struct.archive_rb_node*, %struct.archive_rb_node** %7, align 8
  %32 = call i64 @RB_BLACK_P(%struct.archive_rb_node* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %12
  br label %56

35:                                               ; preds = %12
  %36 = load %struct.archive_rb_node*, %struct.archive_rb_node** %7, align 8
  %37 = call i32 @RB_MARK_BLACK(%struct.archive_rb_node* %36)
  %38 = load %struct.archive_rb_node*, %struct.archive_rb_node** %5, align 8
  %39 = call i32 @RB_MARK_BLACK(%struct.archive_rb_node* %38)
  %40 = load %struct.archive_rb_tree*, %struct.archive_rb_tree** %3, align 8
  %41 = load %struct.archive_rb_node*, %struct.archive_rb_node** %6, align 8
  %42 = call i64 @RB_ROOT_P(%struct.archive_rb_tree* %40, %struct.archive_rb_node* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %78

45:                                               ; preds = %35
  %46 = load %struct.archive_rb_node*, %struct.archive_rb_node** %6, align 8
  %47 = call i32 @RB_MARK_RED(%struct.archive_rb_node* %46)
  %48 = load %struct.archive_rb_node*, %struct.archive_rb_node** %6, align 8
  store %struct.archive_rb_node* %48, %struct.archive_rb_node** %4, align 8
  %49 = load %struct.archive_rb_node*, %struct.archive_rb_node** %4, align 8
  %50 = call %struct.archive_rb_node* @RB_FATHER(%struct.archive_rb_node* %49)
  store %struct.archive_rb_node* %50, %struct.archive_rb_node** %5, align 8
  %51 = load %struct.archive_rb_node*, %struct.archive_rb_node** %5, align 8
  %52 = call i64 @RB_BLACK_P(%struct.archive_rb_node* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %78

55:                                               ; preds = %45
  br label %12

56:                                               ; preds = %34
  %57 = load %struct.archive_rb_node*, %struct.archive_rb_node** %4, align 8
  %58 = load %struct.archive_rb_node*, %struct.archive_rb_node** %5, align 8
  %59 = getelementptr inbounds %struct.archive_rb_node, %struct.archive_rb_node* %58, i32 0, i32 0
  %60 = load %struct.archive_rb_node**, %struct.archive_rb_node*** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.archive_rb_node*, %struct.archive_rb_node** %60, i64 %62
  %64 = load %struct.archive_rb_node*, %struct.archive_rb_node** %63, align 8
  %65 = icmp eq %struct.archive_rb_node* %57, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %56
  %67 = load %struct.archive_rb_node*, %struct.archive_rb_node** %5, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @__archive_rb_tree_reparent_nodes(%struct.archive_rb_node* %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %56
  %71 = load %struct.archive_rb_node*, %struct.archive_rb_node** %6, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @__archive_rb_tree_reparent_nodes(%struct.archive_rb_node* %71, i32 %72)
  %74 = load %struct.archive_rb_tree*, %struct.archive_rb_tree** %3, align 8
  %75 = getelementptr inbounds %struct.archive_rb_tree, %struct.archive_rb_tree* %74, i32 0, i32 0
  %76 = load %struct.archive_rb_node*, %struct.archive_rb_node** %75, align 8
  %77 = call i32 @RB_MARK_BLACK(%struct.archive_rb_node* %76)
  br label %78

78:                                               ; preds = %70, %54, %44
  ret void
}

declare dso_local %struct.archive_rb_node* @RB_FATHER(%struct.archive_rb_node*) #1

declare dso_local i64 @RB_BLACK_P(%struct.archive_rb_node*) #1

declare dso_local i32 @RB_MARK_BLACK(%struct.archive_rb_node*) #1

declare dso_local i64 @RB_ROOT_P(%struct.archive_rb_tree*, %struct.archive_rb_node*) #1

declare dso_local i32 @RB_MARK_RED(%struct.archive_rb_node*) #1

declare dso_local i32 @__archive_rb_tree_reparent_nodes(%struct.archive_rb_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
