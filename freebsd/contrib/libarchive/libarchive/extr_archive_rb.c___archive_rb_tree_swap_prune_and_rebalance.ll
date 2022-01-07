; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_rb.c___archive_rb_tree_swap_prune_and_rebalance.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_rb.c___archive_rb_tree_swap_prune_and_rebalance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_rb_tree = type { i32 }
%struct.archive_rb_node = type { %struct.archive_rb_node** }

@RB_DIR_OTHER = common dso_local global i32 0, align 4
@F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive_rb_tree*, %struct.archive_rb_node*, %struct.archive_rb_node*)* @__archive_rb_tree_swap_prune_and_rebalance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__archive_rb_tree_swap_prune_and_rebalance(%struct.archive_rb_tree* %0, %struct.archive_rb_node* %1, %struct.archive_rb_node* %2) #0 {
  %4 = alloca %struct.archive_rb_tree*, align 8
  %5 = alloca %struct.archive_rb_node*, align 8
  %6 = alloca %struct.archive_rb_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.archive_rb_node*, align 8
  %10 = alloca %struct.archive_rb_node*, align 8
  %11 = alloca i32, align 4
  store %struct.archive_rb_tree* %0, %struct.archive_rb_tree** %4, align 8
  store %struct.archive_rb_node* %1, %struct.archive_rb_node** %5, align 8
  store %struct.archive_rb_node* %2, %struct.archive_rb_node** %6, align 8
  %12 = load %struct.archive_rb_node*, %struct.archive_rb_node** %6, align 8
  %13 = call i64 @RB_POSITION(%struct.archive_rb_node* %12)
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @RB_DIR_OTHER, align 4
  %17 = xor i32 %15, %16
  store i32 %17, i32* %8, align 4
  %18 = load %struct.archive_rb_node*, %struct.archive_rb_node** %6, align 8
  %19 = call %struct.archive_rb_node* @RB_FATHER(%struct.archive_rb_node* %18)
  store %struct.archive_rb_node* %19, %struct.archive_rb_node** %10, align 8
  %20 = load %struct.archive_rb_node*, %struct.archive_rb_node** %6, align 8
  %21 = call i32 @RB_BLACK_P(%struct.archive_rb_node* %20)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.archive_rb_node*, %struct.archive_rb_node** %10, align 8
  %23 = load %struct.archive_rb_node*, %struct.archive_rb_node** %5, align 8
  %24 = icmp eq %struct.archive_rb_node* %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %3
  %26 = load %struct.archive_rb_node*, %struct.archive_rb_node** %6, align 8
  %27 = getelementptr inbounds %struct.archive_rb_node, %struct.archive_rb_node* %26, i32 0, i32 0
  %28 = load %struct.archive_rb_node**, %struct.archive_rb_node*** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.archive_rb_node*, %struct.archive_rb_node** %28, i64 %30
  %32 = load %struct.archive_rb_node*, %struct.archive_rb_node** %31, align 8
  store %struct.archive_rb_node* %32, %struct.archive_rb_node** %9, align 8
  br label %41

33:                                               ; preds = %3
  %34 = load %struct.archive_rb_node*, %struct.archive_rb_node** %6, align 8
  %35 = getelementptr inbounds %struct.archive_rb_node, %struct.archive_rb_node* %34, i32 0, i32 0
  %36 = load %struct.archive_rb_node**, %struct.archive_rb_node*** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.archive_rb_node*, %struct.archive_rb_node** %36, i64 %38
  %40 = load %struct.archive_rb_node*, %struct.archive_rb_node** %39, align 8
  store %struct.archive_rb_node* %40, %struct.archive_rb_node** %9, align 8
  br label %41

41:                                               ; preds = %33, %25
  %42 = load %struct.archive_rb_node*, %struct.archive_rb_node** %9, align 8
  %43 = call i64 @RB_RED_P(%struct.archive_rb_node* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %41
  %46 = load %struct.archive_rb_node*, %struct.archive_rb_node** %9, align 8
  %47 = call i32 @RB_MARK_BLACK(%struct.archive_rb_node* %46)
  %48 = load i32, i32* @F, align 4
  store i32 %48, i32* %11, align 4
  %49 = load %struct.archive_rb_node*, %struct.archive_rb_node** %10, align 8
  %50 = load %struct.archive_rb_node*, %struct.archive_rb_node** %5, align 8
  %51 = icmp ne %struct.archive_rb_node* %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load %struct.archive_rb_node*, %struct.archive_rb_node** %9, align 8
  %54 = load %struct.archive_rb_node*, %struct.archive_rb_node** %10, align 8
  %55 = call i32 @RB_SET_FATHER(%struct.archive_rb_node* %53, %struct.archive_rb_node* %54)
  %56 = load %struct.archive_rb_node*, %struct.archive_rb_node** %9, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @RB_SET_POSITION(%struct.archive_rb_node* %56, i32 %57)
  br label %59

59:                                               ; preds = %52, %45
  br label %60

60:                                               ; preds = %59, %41
  %61 = load %struct.archive_rb_node*, %struct.archive_rb_node** %10, align 8
  %62 = load %struct.archive_rb_node*, %struct.archive_rb_node** %5, align 8
  %63 = icmp eq %struct.archive_rb_node* %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load %struct.archive_rb_node*, %struct.archive_rb_node** %6, align 8
  store %struct.archive_rb_node* %65, %struct.archive_rb_node** %10, align 8
  br label %97

66:                                               ; preds = %60
  %67 = load %struct.archive_rb_node*, %struct.archive_rb_node** %9, align 8
  %68 = load %struct.archive_rb_node*, %struct.archive_rb_node** %10, align 8
  %69 = getelementptr inbounds %struct.archive_rb_node, %struct.archive_rb_node* %68, i32 0, i32 0
  %70 = load %struct.archive_rb_node**, %struct.archive_rb_node*** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.archive_rb_node*, %struct.archive_rb_node** %70, i64 %72
  store %struct.archive_rb_node* %67, %struct.archive_rb_node** %73, align 8
  %74 = load %struct.archive_rb_node*, %struct.archive_rb_node** %5, align 8
  %75 = getelementptr inbounds %struct.archive_rb_node, %struct.archive_rb_node* %74, i32 0, i32 0
  %76 = load %struct.archive_rb_node**, %struct.archive_rb_node*** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.archive_rb_node*, %struct.archive_rb_node** %76, i64 %78
  %80 = load %struct.archive_rb_node*, %struct.archive_rb_node** %79, align 8
  %81 = load %struct.archive_rb_node*, %struct.archive_rb_node** %6, align 8
  %82 = getelementptr inbounds %struct.archive_rb_node, %struct.archive_rb_node* %81, i32 0, i32 0
  %83 = load %struct.archive_rb_node**, %struct.archive_rb_node*** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.archive_rb_node*, %struct.archive_rb_node** %83, i64 %85
  store %struct.archive_rb_node* %80, %struct.archive_rb_node** %86, align 8
  %87 = load %struct.archive_rb_node*, %struct.archive_rb_node** %6, align 8
  %88 = getelementptr inbounds %struct.archive_rb_node, %struct.archive_rb_node* %87, i32 0, i32 0
  %89 = load %struct.archive_rb_node**, %struct.archive_rb_node*** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.archive_rb_node*, %struct.archive_rb_node** %89, i64 %91
  %93 = load %struct.archive_rb_node*, %struct.archive_rb_node** %92, align 8
  %94 = load %struct.archive_rb_node*, %struct.archive_rb_node** %6, align 8
  %95 = call i32 @RB_SET_FATHER(%struct.archive_rb_node* %93, %struct.archive_rb_node* %94)
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %8, align 4
  br label %97

97:                                               ; preds = %66, %64
  %98 = load %struct.archive_rb_node*, %struct.archive_rb_node** %5, align 8
  %99 = getelementptr inbounds %struct.archive_rb_node, %struct.archive_rb_node* %98, i32 0, i32 0
  %100 = load %struct.archive_rb_node**, %struct.archive_rb_node*** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.archive_rb_node*, %struct.archive_rb_node** %100, i64 %102
  %104 = load %struct.archive_rb_node*, %struct.archive_rb_node** %103, align 8
  %105 = load %struct.archive_rb_node*, %struct.archive_rb_node** %6, align 8
  %106 = getelementptr inbounds %struct.archive_rb_node, %struct.archive_rb_node* %105, i32 0, i32 0
  %107 = load %struct.archive_rb_node**, %struct.archive_rb_node*** %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.archive_rb_node*, %struct.archive_rb_node** %107, i64 %109
  store %struct.archive_rb_node* %104, %struct.archive_rb_node** %110, align 8
  %111 = load %struct.archive_rb_node*, %struct.archive_rb_node** %6, align 8
  %112 = getelementptr inbounds %struct.archive_rb_node, %struct.archive_rb_node* %111, i32 0, i32 0
  %113 = load %struct.archive_rb_node**, %struct.archive_rb_node*** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.archive_rb_node*, %struct.archive_rb_node** %113, i64 %115
  %117 = load %struct.archive_rb_node*, %struct.archive_rb_node** %116, align 8
  %118 = load %struct.archive_rb_node*, %struct.archive_rb_node** %6, align 8
  %119 = call i32 @RB_SET_FATHER(%struct.archive_rb_node* %117, %struct.archive_rb_node* %118)
  %120 = load %struct.archive_rb_node*, %struct.archive_rb_node** %6, align 8
  %121 = load %struct.archive_rb_node*, %struct.archive_rb_node** %5, align 8
  %122 = call i32 @RB_COPY_PROPERTIES(%struct.archive_rb_node* %120, %struct.archive_rb_node* %121)
  %123 = load %struct.archive_rb_node*, %struct.archive_rb_node** %6, align 8
  %124 = load %struct.archive_rb_node*, %struct.archive_rb_node** %5, align 8
  %125 = call %struct.archive_rb_node* @RB_FATHER(%struct.archive_rb_node* %124)
  %126 = call i32 @RB_SET_FATHER(%struct.archive_rb_node* %123, %struct.archive_rb_node* %125)
  %127 = load %struct.archive_rb_node*, %struct.archive_rb_node** %6, align 8
  %128 = load %struct.archive_rb_node*, %struct.archive_rb_node** %6, align 8
  %129 = call %struct.archive_rb_node* @RB_FATHER(%struct.archive_rb_node* %128)
  %130 = getelementptr inbounds %struct.archive_rb_node, %struct.archive_rb_node* %129, i32 0, i32 0
  %131 = load %struct.archive_rb_node**, %struct.archive_rb_node*** %130, align 8
  %132 = load %struct.archive_rb_node*, %struct.archive_rb_node** %6, align 8
  %133 = call i64 @RB_POSITION(%struct.archive_rb_node* %132)
  %134 = getelementptr inbounds %struct.archive_rb_node*, %struct.archive_rb_node** %131, i64 %133
  store %struct.archive_rb_node* %127, %struct.archive_rb_node** %134, align 8
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %97
  %138 = load %struct.archive_rb_tree*, %struct.archive_rb_tree** %4, align 8
  %139 = load %struct.archive_rb_node*, %struct.archive_rb_node** %10, align 8
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @__archive_rb_tree_removal_rebalance(%struct.archive_rb_tree* %138, %struct.archive_rb_node* %139, i32 %140)
  br label %142

142:                                              ; preds = %137, %97
  ret void
}

declare dso_local i64 @RB_POSITION(%struct.archive_rb_node*) #1

declare dso_local %struct.archive_rb_node* @RB_FATHER(%struct.archive_rb_node*) #1

declare dso_local i32 @RB_BLACK_P(%struct.archive_rb_node*) #1

declare dso_local i64 @RB_RED_P(%struct.archive_rb_node*) #1

declare dso_local i32 @RB_MARK_BLACK(%struct.archive_rb_node*) #1

declare dso_local i32 @RB_SET_FATHER(%struct.archive_rb_node*, %struct.archive_rb_node*) #1

declare dso_local i32 @RB_SET_POSITION(%struct.archive_rb_node*, i32) #1

declare dso_local i32 @RB_COPY_PROPERTIES(%struct.archive_rb_node*, %struct.archive_rb_node*) #1

declare dso_local i32 @__archive_rb_tree_removal_rebalance(%struct.archive_rb_tree*, %struct.archive_rb_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
