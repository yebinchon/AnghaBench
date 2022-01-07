; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_rb.c___archive_rb_tree_prune_blackred_branch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_rb.c___archive_rb_tree_prune_blackred_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_rb_node = type { %struct.archive_rb_node** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive_rb_node*, i32)* @__archive_rb_tree_prune_blackred_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__archive_rb_tree_prune_blackred_branch(%struct.archive_rb_node* %0, i32 %1) #0 {
  %3 = alloca %struct.archive_rb_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_rb_node*, align 8
  %6 = alloca %struct.archive_rb_node*, align 8
  store %struct.archive_rb_node* %0, %struct.archive_rb_node** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.archive_rb_node*, %struct.archive_rb_node** %3, align 8
  %8 = call %struct.archive_rb_node* @RB_FATHER(%struct.archive_rb_node* %7)
  store %struct.archive_rb_node* %8, %struct.archive_rb_node** %5, align 8
  %9 = load %struct.archive_rb_node*, %struct.archive_rb_node** %3, align 8
  %10 = getelementptr inbounds %struct.archive_rb_node, %struct.archive_rb_node* %9, i32 0, i32 0
  %11 = load %struct.archive_rb_node**, %struct.archive_rb_node*** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.archive_rb_node*, %struct.archive_rb_node** %11, i64 %13
  %15 = load %struct.archive_rb_node*, %struct.archive_rb_node** %14, align 8
  store %struct.archive_rb_node* %15, %struct.archive_rb_node** %6, align 8
  %16 = load %struct.archive_rb_node*, %struct.archive_rb_node** %6, align 8
  %17 = load %struct.archive_rb_node*, %struct.archive_rb_node** %3, align 8
  %18 = call i32 @RB_COPY_PROPERTIES(%struct.archive_rb_node* %16, %struct.archive_rb_node* %17)
  %19 = load %struct.archive_rb_node*, %struct.archive_rb_node** %6, align 8
  %20 = load %struct.archive_rb_node*, %struct.archive_rb_node** %5, align 8
  %21 = getelementptr inbounds %struct.archive_rb_node, %struct.archive_rb_node* %20, i32 0, i32 0
  %22 = load %struct.archive_rb_node**, %struct.archive_rb_node*** %21, align 8
  %23 = load %struct.archive_rb_node*, %struct.archive_rb_node** %6, align 8
  %24 = call i64 @RB_POSITION(%struct.archive_rb_node* %23)
  %25 = getelementptr inbounds %struct.archive_rb_node*, %struct.archive_rb_node** %22, i64 %24
  store %struct.archive_rb_node* %19, %struct.archive_rb_node** %25, align 8
  %26 = load %struct.archive_rb_node*, %struct.archive_rb_node** %6, align 8
  %27 = load %struct.archive_rb_node*, %struct.archive_rb_node** %5, align 8
  %28 = call i32 @RB_SET_FATHER(%struct.archive_rb_node* %26, %struct.archive_rb_node* %27)
  ret void
}

declare dso_local %struct.archive_rb_node* @RB_FATHER(%struct.archive_rb_node*) #1

declare dso_local i32 @RB_COPY_PROPERTIES(%struct.archive_rb_node*, %struct.archive_rb_node*) #1

declare dso_local i64 @RB_POSITION(%struct.archive_rb_node*) #1

declare dso_local i32 @RB_SET_FATHER(%struct.archive_rb_node*, %struct.archive_rb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
