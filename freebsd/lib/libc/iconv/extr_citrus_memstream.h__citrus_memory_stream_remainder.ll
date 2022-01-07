; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_memstream.h__citrus_memory_stream_remainder.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_memstream.h__citrus_memory_stream_remainder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_memory_stream = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct._citrus_memory_stream*)* @_citrus_memory_stream_remainder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_citrus_memory_stream_remainder(%struct._citrus_memory_stream* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct._citrus_memory_stream*, align 8
  %4 = alloca i64, align 8
  store %struct._citrus_memory_stream* %0, %struct._citrus_memory_stream** %3, align 8
  %5 = load %struct._citrus_memory_stream*, %struct._citrus_memory_stream** %3, align 8
  %6 = getelementptr inbounds %struct._citrus_memory_stream, %struct._citrus_memory_stream* %5, i32 0, i32 1
  %7 = call i64 @_citrus_region_size(i32* %6)
  store i64 %7, i64* %4, align 8
  %8 = load %struct._citrus_memory_stream*, %struct._citrus_memory_stream** %3, align 8
  %9 = getelementptr inbounds %struct._citrus_memory_stream, %struct._citrus_memory_stream* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp ugt i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %20

14:                                               ; preds = %1
  %15 = load i64, i64* %4, align 8
  %16 = load %struct._citrus_memory_stream*, %struct._citrus_memory_stream** %3, align 8
  %17 = getelementptr inbounds %struct._citrus_memory_stream, %struct._citrus_memory_stream* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub i64 %15, %18
  store i64 %19, i64* %2, align 8
  br label %20

20:                                               ; preds = %14, %13
  %21 = load i64, i64* %2, align 8
  ret i64 %21
}

declare dso_local i64 @_citrus_region_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
