; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_mtree.c_mtree_cmp_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_mtree.c_mtree_cmp_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_rb_node = type { i32 }
%struct.mtree_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_rb_node*, %struct.archive_rb_node*)* @mtree_cmp_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtree_cmp_node(%struct.archive_rb_node* %0, %struct.archive_rb_node* %1) #0 {
  %3 = alloca %struct.archive_rb_node*, align 8
  %4 = alloca %struct.archive_rb_node*, align 8
  %5 = alloca %struct.mtree_entry*, align 8
  %6 = alloca %struct.mtree_entry*, align 8
  store %struct.archive_rb_node* %0, %struct.archive_rb_node** %3, align 8
  store %struct.archive_rb_node* %1, %struct.archive_rb_node** %4, align 8
  %7 = load %struct.archive_rb_node*, %struct.archive_rb_node** %3, align 8
  %8 = bitcast %struct.archive_rb_node* %7 to %struct.mtree_entry*
  store %struct.mtree_entry* %8, %struct.mtree_entry** %5, align 8
  %9 = load %struct.archive_rb_node*, %struct.archive_rb_node** %4, align 8
  %10 = bitcast %struct.archive_rb_node* %9 to %struct.mtree_entry*
  store %struct.mtree_entry* %10, %struct.mtree_entry** %6, align 8
  %11 = load %struct.mtree_entry*, %struct.mtree_entry** %5, align 8
  %12 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mtree_entry*, %struct.mtree_entry** %6, align 8
  %15 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @strcmp(i32 %13, i32 %16)
  ret i32 %17
}

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
