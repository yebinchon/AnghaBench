; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmc/pmu-events/extr_list.h_hlist_add_before.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmc/pmu-events/extr_list.h_hlist_add_before.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlist_node = type { %struct.hlist_node**, %struct.hlist_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hlist_node*, %struct.hlist_node*)* @hlist_add_before to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hlist_add_before(%struct.hlist_node* %0, %struct.hlist_node* %1) #0 {
  %3 = alloca %struct.hlist_node*, align 8
  %4 = alloca %struct.hlist_node*, align 8
  store %struct.hlist_node* %0, %struct.hlist_node** %3, align 8
  store %struct.hlist_node* %1, %struct.hlist_node** %4, align 8
  %5 = load %struct.hlist_node*, %struct.hlist_node** %4, align 8
  %6 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %5, i32 0, i32 0
  %7 = load %struct.hlist_node**, %struct.hlist_node*** %6, align 8
  %8 = load %struct.hlist_node*, %struct.hlist_node** %3, align 8
  %9 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %8, i32 0, i32 0
  store %struct.hlist_node** %7, %struct.hlist_node*** %9, align 8
  %10 = load %struct.hlist_node*, %struct.hlist_node** %4, align 8
  %11 = load %struct.hlist_node*, %struct.hlist_node** %3, align 8
  %12 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %11, i32 0, i32 1
  store %struct.hlist_node* %10, %struct.hlist_node** %12, align 8
  %13 = load %struct.hlist_node*, %struct.hlist_node** %3, align 8
  %14 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %13, i32 0, i32 1
  %15 = load %struct.hlist_node*, %struct.hlist_node** %4, align 8
  %16 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %15, i32 0, i32 0
  store %struct.hlist_node** %14, %struct.hlist_node*** %16, align 8
  %17 = load %struct.hlist_node*, %struct.hlist_node** %3, align 8
  %18 = load %struct.hlist_node*, %struct.hlist_node** %3, align 8
  %19 = getelementptr inbounds %struct.hlist_node, %struct.hlist_node* %18, i32 0, i32 0
  %20 = load %struct.hlist_node**, %struct.hlist_node*** %19, align 8
  store %struct.hlist_node* %17, %struct.hlist_node** %20, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
