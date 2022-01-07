; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_mtree_entry_register_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_mtree_entry_register_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtree_writer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mtree_entry** }
%struct.mtree_entry = type { %struct.mtree_entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtree_writer*, %struct.mtree_entry*)* @mtree_entry_register_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtree_entry_register_add(%struct.mtree_writer* %0, %struct.mtree_entry* %1) #0 {
  %3 = alloca %struct.mtree_writer*, align 8
  %4 = alloca %struct.mtree_entry*, align 8
  store %struct.mtree_writer* %0, %struct.mtree_writer** %3, align 8
  store %struct.mtree_entry* %1, %struct.mtree_entry** %4, align 8
  %5 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %6 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %5, i32 0, i32 0
  store %struct.mtree_entry* null, %struct.mtree_entry** %6, align 8
  %7 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %8 = load %struct.mtree_writer*, %struct.mtree_writer** %3, align 8
  %9 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.mtree_entry**, %struct.mtree_entry*** %10, align 8
  store %struct.mtree_entry* %7, %struct.mtree_entry** %11, align 8
  %12 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %13 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %12, i32 0, i32 0
  %14 = load %struct.mtree_writer*, %struct.mtree_writer** %3, align 8
  %15 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.mtree_entry** %13, %struct.mtree_entry*** %16, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
