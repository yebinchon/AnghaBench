; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_mtree_entry_register_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_mtree_entry_register_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtree_writer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mtree_entry* }
%struct.mtree_entry = type { %struct.mtree_entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtree_writer*)* @mtree_entry_register_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtree_entry_register_free(%struct.mtree_writer* %0) #0 {
  %2 = alloca %struct.mtree_writer*, align 8
  %3 = alloca %struct.mtree_entry*, align 8
  %4 = alloca %struct.mtree_entry*, align 8
  store %struct.mtree_writer* %0, %struct.mtree_writer** %2, align 8
  %5 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %6 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.mtree_entry*, %struct.mtree_entry** %7, align 8
  store %struct.mtree_entry* %8, %struct.mtree_entry** %3, align 8
  br label %9

9:                                                ; preds = %12, %1
  %10 = load %struct.mtree_entry*, %struct.mtree_entry** %3, align 8
  %11 = icmp ne %struct.mtree_entry* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = load %struct.mtree_entry*, %struct.mtree_entry** %3, align 8
  %14 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %13, i32 0, i32 0
  %15 = load %struct.mtree_entry*, %struct.mtree_entry** %14, align 8
  store %struct.mtree_entry* %15, %struct.mtree_entry** %4, align 8
  %16 = load %struct.mtree_entry*, %struct.mtree_entry** %3, align 8
  %17 = call i32 @mtree_entry_free(%struct.mtree_entry* %16)
  %18 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  store %struct.mtree_entry* %18, %struct.mtree_entry** %3, align 8
  br label %9

19:                                               ; preds = %9
  ret void
}

declare dso_local i32 @mtree_entry_free(%struct.mtree_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
