; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_attr_counter_set_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_attr_counter_set_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtree_writer = type { %struct.att_counter_set }
%struct.att_counter_set = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtree_writer*)* @attr_counter_set_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @attr_counter_set_free(%struct.mtree_writer* %0) #0 {
  %2 = alloca %struct.mtree_writer*, align 8
  %3 = alloca %struct.att_counter_set*, align 8
  store %struct.mtree_writer* %0, %struct.mtree_writer** %2, align 8
  %4 = load %struct.mtree_writer*, %struct.mtree_writer** %2, align 8
  %5 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %4, i32 0, i32 0
  store %struct.att_counter_set* %5, %struct.att_counter_set** %3, align 8
  %6 = load %struct.att_counter_set*, %struct.att_counter_set** %3, align 8
  %7 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %6, i32 0, i32 3
  %8 = call i32 @attr_counter_free(i32* %7)
  %9 = load %struct.att_counter_set*, %struct.att_counter_set** %3, align 8
  %10 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %9, i32 0, i32 2
  %11 = call i32 @attr_counter_free(i32* %10)
  %12 = load %struct.att_counter_set*, %struct.att_counter_set** %3, align 8
  %13 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %12, i32 0, i32 1
  %14 = call i32 @attr_counter_free(i32* %13)
  %15 = load %struct.att_counter_set*, %struct.att_counter_set** %3, align 8
  %16 = getelementptr inbounds %struct.att_counter_set, %struct.att_counter_set* %15, i32 0, i32 0
  %17 = call i32 @attr_counter_free(i32* %16)
  ret void
}

declare dso_local i32 @attr_counter_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
