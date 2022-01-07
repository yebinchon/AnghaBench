; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_rb.c___archive_rb_tree_insert_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_rb.c___archive_rb_tree_insert_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_rb_tree = type { %struct.archive_rb_node*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.archive_rb_node*, %struct.archive_rb_node*)* }
%struct.archive_rb_node = type { %struct.archive_rb_node**, %struct.archive_rb_node*, %struct.archive_rb_node* }

@RB_DIR_LEFT = common dso_local global i32 0, align 4
@F = common dso_local global i32 0, align 4
@T = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__archive_rb_tree_insert_node(%struct.archive_rb_tree* %0, %struct.archive_rb_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_rb_tree*, align 8
  %5 = alloca %struct.archive_rb_node*, align 8
  %6 = alloca i32 (%struct.archive_rb_node*, %struct.archive_rb_node*)*, align 8
  %7 = alloca %struct.archive_rb_node*, align 8
  %8 = alloca %struct.archive_rb_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.archive_rb_tree* %0, %struct.archive_rb_tree** %4, align 8
  store %struct.archive_rb_node* %1, %struct.archive_rb_node** %5, align 8
  %12 = load %struct.archive_rb_tree*, %struct.archive_rb_tree** %4, align 8
  %13 = getelementptr inbounds %struct.archive_rb_tree, %struct.archive_rb_tree* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.archive_rb_node*, %struct.archive_rb_node*)*, i32 (%struct.archive_rb_node*, %struct.archive_rb_node*)** %15, align 8
  store i32 (%struct.archive_rb_node*, %struct.archive_rb_node*)* %16, i32 (%struct.archive_rb_node*, %struct.archive_rb_node*)** %6, align 8
  %17 = load %struct.archive_rb_tree*, %struct.archive_rb_tree** %4, align 8
  %18 = getelementptr inbounds %struct.archive_rb_tree, %struct.archive_rb_tree* %17, i32 0, i32 0
  %19 = load %struct.archive_rb_node*, %struct.archive_rb_node** %18, align 8
  store %struct.archive_rb_node* %19, %struct.archive_rb_node** %8, align 8
  %20 = load %struct.archive_rb_tree*, %struct.archive_rb_tree** %4, align 8
  %21 = getelementptr inbounds %struct.archive_rb_tree, %struct.archive_rb_tree* %20, i32 0, i32 0
  %22 = bitcast %struct.archive_rb_node** %21 to i8*
  %23 = bitcast i8* %22 to %struct.archive_rb_node*
  store %struct.archive_rb_node* %23, %struct.archive_rb_node** %7, align 8
  %24 = load i32, i32* @RB_DIR_LEFT, align 4
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %39, %2
  %26 = load %struct.archive_rb_node*, %struct.archive_rb_node** %8, align 8
  %27 = call i32 @RB_SENTINEL_P(%struct.archive_rb_node* %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br i1 %29, label %30, label %51

30:                                               ; preds = %25
  %31 = load i32 (%struct.archive_rb_node*, %struct.archive_rb_node*)*, i32 (%struct.archive_rb_node*, %struct.archive_rb_node*)** %6, align 8
  %32 = load %struct.archive_rb_node*, %struct.archive_rb_node** %8, align 8
  %33 = load %struct.archive_rb_node*, %struct.archive_rb_node** %5, align 8
  %34 = call i32 %31(%struct.archive_rb_node* %32, %struct.archive_rb_node* %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @F, align 4
  store i32 %38, i32* %3, align 4
  br label %107

39:                                               ; preds = %30
  %40 = load %struct.archive_rb_node*, %struct.archive_rb_node** %8, align 8
  store %struct.archive_rb_node* %40, %struct.archive_rb_node** %7, align 8
  %41 = load i32, i32* %11, align 4
  %42 = icmp sgt i32 %41, 0
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %9, align 4
  %44 = load %struct.archive_rb_node*, %struct.archive_rb_node** %7, align 8
  %45 = getelementptr inbounds %struct.archive_rb_node, %struct.archive_rb_node* %44, i32 0, i32 0
  %46 = load %struct.archive_rb_node**, %struct.archive_rb_node*** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.archive_rb_node*, %struct.archive_rb_node** %46, i64 %48
  %50 = load %struct.archive_rb_node*, %struct.archive_rb_node** %49, align 8
  store %struct.archive_rb_node* %50, %struct.archive_rb_node** %8, align 8
  br label %25

51:                                               ; preds = %25
  %52 = load %struct.archive_rb_node*, %struct.archive_rb_node** %5, align 8
  %53 = load %struct.archive_rb_node*, %struct.archive_rb_node** %7, align 8
  %54 = call i32 @RB_SET_FATHER(%struct.archive_rb_node* %52, %struct.archive_rb_node* %53)
  %55 = load %struct.archive_rb_node*, %struct.archive_rb_node** %5, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @RB_SET_POSITION(%struct.archive_rb_node* %55, i32 %56)
  %58 = load %struct.archive_rb_node*, %struct.archive_rb_node** %7, align 8
  %59 = load %struct.archive_rb_tree*, %struct.archive_rb_tree** %4, align 8
  %60 = getelementptr inbounds %struct.archive_rb_tree, %struct.archive_rb_tree* %59, i32 0, i32 0
  %61 = bitcast %struct.archive_rb_node** %60 to i8*
  %62 = bitcast i8* %61 to %struct.archive_rb_node*
  %63 = icmp eq %struct.archive_rb_node* %58, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %51
  %65 = load %struct.archive_rb_node*, %struct.archive_rb_node** %5, align 8
  %66 = call i32 @RB_MARK_BLACK(%struct.archive_rb_node* %65)
  %67 = load i32, i32* @F, align 4
  store i32 %67, i32* %10, align 4
  br label %73

68:                                               ; preds = %51
  %69 = load %struct.archive_rb_node*, %struct.archive_rb_node** %5, align 8
  %70 = call i32 @RB_MARK_RED(%struct.archive_rb_node* %69)
  %71 = load %struct.archive_rb_node*, %struct.archive_rb_node** %7, align 8
  %72 = call i32 @RB_RED_P(%struct.archive_rb_node* %71)
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %68, %64
  %74 = load %struct.archive_rb_node*, %struct.archive_rb_node** %7, align 8
  %75 = getelementptr inbounds %struct.archive_rb_node, %struct.archive_rb_node* %74, i32 0, i32 0
  %76 = load %struct.archive_rb_node**, %struct.archive_rb_node*** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.archive_rb_node*, %struct.archive_rb_node** %76, i64 %78
  %80 = load %struct.archive_rb_node*, %struct.archive_rb_node** %79, align 8
  %81 = load %struct.archive_rb_node*, %struct.archive_rb_node** %5, align 8
  %82 = getelementptr inbounds %struct.archive_rb_node, %struct.archive_rb_node* %81, i32 0, i32 2
  store %struct.archive_rb_node* %80, %struct.archive_rb_node** %82, align 8
  %83 = load %struct.archive_rb_node*, %struct.archive_rb_node** %7, align 8
  %84 = getelementptr inbounds %struct.archive_rb_node, %struct.archive_rb_node* %83, i32 0, i32 0
  %85 = load %struct.archive_rb_node**, %struct.archive_rb_node*** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.archive_rb_node*, %struct.archive_rb_node** %85, i64 %87
  %89 = load %struct.archive_rb_node*, %struct.archive_rb_node** %88, align 8
  %90 = load %struct.archive_rb_node*, %struct.archive_rb_node** %5, align 8
  %91 = getelementptr inbounds %struct.archive_rb_node, %struct.archive_rb_node* %90, i32 0, i32 1
  store %struct.archive_rb_node* %89, %struct.archive_rb_node** %91, align 8
  %92 = load %struct.archive_rb_node*, %struct.archive_rb_node** %5, align 8
  %93 = load %struct.archive_rb_node*, %struct.archive_rb_node** %7, align 8
  %94 = getelementptr inbounds %struct.archive_rb_node, %struct.archive_rb_node* %93, i32 0, i32 0
  %95 = load %struct.archive_rb_node**, %struct.archive_rb_node*** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.archive_rb_node*, %struct.archive_rb_node** %95, i64 %97
  store %struct.archive_rb_node* %92, %struct.archive_rb_node** %98, align 8
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %73
  %102 = load %struct.archive_rb_tree*, %struct.archive_rb_tree** %4, align 8
  %103 = load %struct.archive_rb_node*, %struct.archive_rb_node** %5, align 8
  %104 = call i32 @__archive_rb_tree_insert_rebalance(%struct.archive_rb_tree* %102, %struct.archive_rb_node* %103)
  br label %105

105:                                              ; preds = %101, %73
  %106 = load i32, i32* @T, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %105, %37
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @RB_SENTINEL_P(%struct.archive_rb_node*) #1

declare dso_local i32 @RB_SET_FATHER(%struct.archive_rb_node*, %struct.archive_rb_node*) #1

declare dso_local i32 @RB_SET_POSITION(%struct.archive_rb_node*, i32) #1

declare dso_local i32 @RB_MARK_BLACK(%struct.archive_rb_node*) #1

declare dso_local i32 @RB_MARK_RED(%struct.archive_rb_node*) #1

declare dso_local i32 @RB_RED_P(%struct.archive_rb_node*) #1

declare dso_local i32 @__archive_rb_tree_insert_rebalance(%struct.archive_rb_tree*, %struct.archive_rb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
