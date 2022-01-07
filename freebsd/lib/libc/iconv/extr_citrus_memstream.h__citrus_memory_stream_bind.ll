; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_memstream.h__citrus_memory_stream_bind.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_memstream.h__citrus_memory_stream_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_memory_stream = type { i64, %struct._citrus_region }
%struct._citrus_region = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._citrus_memory_stream*, %struct._citrus_region*)* @_citrus_memory_stream_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_citrus_memory_stream_bind(%struct._citrus_memory_stream* noalias %0, %struct._citrus_region* noalias %1) #0 {
  %3 = alloca %struct._citrus_memory_stream*, align 8
  %4 = alloca %struct._citrus_region*, align 8
  store %struct._citrus_memory_stream* %0, %struct._citrus_memory_stream** %3, align 8
  store %struct._citrus_region* %1, %struct._citrus_region** %4, align 8
  %5 = load %struct._citrus_memory_stream*, %struct._citrus_memory_stream** %3, align 8
  %6 = getelementptr inbounds %struct._citrus_memory_stream, %struct._citrus_memory_stream* %5, i32 0, i32 1
  %7 = load %struct._citrus_region*, %struct._citrus_region** %4, align 8
  %8 = bitcast %struct._citrus_region* %6 to i8*
  %9 = bitcast %struct._citrus_region* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 4 %9, i64 4, i1 false)
  %10 = load %struct._citrus_memory_stream*, %struct._citrus_memory_stream** %3, align 8
  %11 = getelementptr inbounds %struct._citrus_memory_stream, %struct._citrus_memory_stream* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
