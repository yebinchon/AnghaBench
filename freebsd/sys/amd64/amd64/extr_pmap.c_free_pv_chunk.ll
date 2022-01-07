; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_free_pv_chunk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_free_pv_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pv_chunks_list = type { i32, i32 }
%struct.pv_chunk = type { i32 }

@pv_chunks = common dso_local global %struct.pv_chunks_list* null, align 8
@pc_lru = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pv_chunk*)* @free_pv_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_pv_chunk(%struct.pv_chunk* %0) #0 {
  %2 = alloca %struct.pv_chunk*, align 8
  %3 = alloca %struct.pv_chunks_list*, align 8
  store %struct.pv_chunk* %0, %struct.pv_chunk** %2, align 8
  %4 = load %struct.pv_chunks_list*, %struct.pv_chunks_list** @pv_chunks, align 8
  %5 = load %struct.pv_chunk*, %struct.pv_chunk** %2, align 8
  %6 = call i64 @pc_to_domain(%struct.pv_chunk* %5)
  %7 = getelementptr inbounds %struct.pv_chunks_list, %struct.pv_chunks_list* %4, i64 %6
  store %struct.pv_chunks_list* %7, %struct.pv_chunks_list** %3, align 8
  %8 = load %struct.pv_chunks_list*, %struct.pv_chunks_list** %3, align 8
  %9 = getelementptr inbounds %struct.pv_chunks_list, %struct.pv_chunks_list* %8, i32 0, i32 0
  %10 = call i32 @mtx_lock(i32* %9)
  %11 = load %struct.pv_chunks_list*, %struct.pv_chunks_list** %3, align 8
  %12 = getelementptr inbounds %struct.pv_chunks_list, %struct.pv_chunks_list* %11, i32 0, i32 1
  %13 = load %struct.pv_chunk*, %struct.pv_chunk** %2, align 8
  %14 = load i32, i32* @pc_lru, align 4
  %15 = call i32 @TAILQ_REMOVE(i32* %12, %struct.pv_chunk* %13, i32 %14)
  %16 = load %struct.pv_chunks_list*, %struct.pv_chunks_list** %3, align 8
  %17 = getelementptr inbounds %struct.pv_chunks_list, %struct.pv_chunks_list* %16, i32 0, i32 0
  %18 = call i32 @mtx_unlock(i32* %17)
  %19 = load %struct.pv_chunk*, %struct.pv_chunk** %2, align 8
  %20 = call i32 @free_pv_chunk_dequeued(%struct.pv_chunk* %19)
  ret void
}

declare dso_local i64 @pc_to_domain(%struct.pv_chunk*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.pv_chunk*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @free_pv_chunk_dequeued(%struct.pv_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
