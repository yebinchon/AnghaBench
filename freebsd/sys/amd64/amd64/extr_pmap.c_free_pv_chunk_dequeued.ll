; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_free_pv_chunk_dequeued.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_free_pv_chunk_dequeued.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pv_chunk = type { i32 }
%struct.TYPE_5__ = type { i32 }

@pv_entry_spare = common dso_local global i32 0, align 4
@_NPCPV = common dso_local global i32 0, align 4
@pc_chunk_count = common dso_local global i32 0, align 4
@pc_chunk_frees = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pv_chunk*)* @free_pv_chunk_dequeued to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_pv_chunk_dequeued(%struct.pv_chunk* %0) #0 {
  %2 = alloca %struct.pv_chunk*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  store %struct.pv_chunk* %0, %struct.pv_chunk** %2, align 8
  %4 = load i32, i32* @_NPCPV, align 4
  %5 = call i32 @atomic_subtract_int(i32* @pv_entry_spare, i32 %4)
  %6 = call i32 @PV_STAT(i32 %5)
  %7 = call i32 @atomic_subtract_int(i32* @pc_chunk_count, i32 1)
  %8 = call i32 @PV_STAT(i32 %7)
  %9 = call i32 @atomic_add_int(i32* @pc_chunk_frees, i32 1)
  %10 = call i32 @PV_STAT(i32 %9)
  %11 = load %struct.pv_chunk*, %struct.pv_chunk** %2, align 8
  %12 = ptrtoint %struct.pv_chunk* %11 to i32
  %13 = call i32 @DMAP_TO_PHYS(i32 %12)
  %14 = call %struct.TYPE_5__* @PHYS_TO_VM_PAGE(i32 %13)
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %3, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dump_drop_page(i32 %17)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = call i32 @vm_page_unwire_noq(%struct.TYPE_5__* %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = call i32 @vm_page_free(%struct.TYPE_5__* %21)
  ret void
}

declare dso_local i32 @PV_STAT(i32) #1

declare dso_local i32 @atomic_subtract_int(i32*, i32) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local %struct.TYPE_5__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @DMAP_TO_PHYS(i32) #1

declare dso_local i32 @dump_drop_page(i32) #1

declare dso_local i32 @vm_page_unwire_noq(%struct.TYPE_5__*) #1

declare dso_local i32 @vm_page_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
