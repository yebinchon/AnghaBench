; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_rb.c___archive_rb_tree_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_rb.c___archive_rb_tree_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_rb_node = type { i32 }
%struct.archive_rb_tree = type { i32, %struct.archive_rb_tree_ops* }
%struct.archive_rb_tree_ops = type { i32 }

@RB_SENTINEL_NODE = common dso_local global %struct.archive_rb_node* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__archive_rb_tree_init(%struct.archive_rb_tree* %0, %struct.archive_rb_tree_ops* %1) #0 {
  %3 = alloca %struct.archive_rb_tree*, align 8
  %4 = alloca %struct.archive_rb_tree_ops*, align 8
  store %struct.archive_rb_tree* %0, %struct.archive_rb_tree** %3, align 8
  store %struct.archive_rb_tree_ops* %1, %struct.archive_rb_tree_ops** %4, align 8
  %5 = load %struct.archive_rb_tree_ops*, %struct.archive_rb_tree_ops** %4, align 8
  %6 = load %struct.archive_rb_tree*, %struct.archive_rb_tree** %3, align 8
  %7 = getelementptr inbounds %struct.archive_rb_tree, %struct.archive_rb_tree* %6, i32 0, i32 1
  store %struct.archive_rb_tree_ops* %5, %struct.archive_rb_tree_ops** %7, align 8
  %8 = load %struct.archive_rb_node*, %struct.archive_rb_node** @RB_SENTINEL_NODE, align 8
  %9 = load %struct.archive_rb_tree*, %struct.archive_rb_tree** %3, align 8
  %10 = getelementptr inbounds %struct.archive_rb_tree, %struct.archive_rb_tree* %9, i32 0, i32 0
  %11 = bitcast i32* %10 to %struct.archive_rb_node**
  store %struct.archive_rb_node* %8, %struct.archive_rb_node** %11, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
