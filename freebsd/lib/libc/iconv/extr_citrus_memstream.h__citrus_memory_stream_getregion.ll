; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_memstream.h__citrus_memory_stream_getregion.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_memstream.h__citrus_memory_stream_getregion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_memory_stream = type { i64, i32 }
%struct._citrus_region = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct._citrus_memory_stream*, %struct._citrus_region*, i64)* @_citrus_memory_stream_getregion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @_citrus_memory_stream_getregion(%struct._citrus_memory_stream* %0, %struct._citrus_region* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._citrus_memory_stream*, align 8
  %6 = alloca %struct._citrus_region*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct._citrus_memory_stream* %0, %struct._citrus_memory_stream** %5, align 8
  store %struct._citrus_region* %1, %struct._citrus_region** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct._citrus_memory_stream*, %struct._citrus_memory_stream** %5, align 8
  %10 = getelementptr inbounds %struct._citrus_memory_stream, %struct._citrus_memory_stream* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %7, align 8
  %13 = add i64 %11, %12
  %14 = load %struct._citrus_memory_stream*, %struct._citrus_memory_stream** %5, align 8
  %15 = getelementptr inbounds %struct._citrus_memory_stream, %struct._citrus_memory_stream* %14, i32 0, i32 1
  %16 = call i64 @_citrus_region_size(i32* %15)
  %17 = icmp ugt i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %40

19:                                               ; preds = %3
  %20 = load %struct._citrus_memory_stream*, %struct._citrus_memory_stream** %5, align 8
  %21 = getelementptr inbounds %struct._citrus_memory_stream, %struct._citrus_memory_stream* %20, i32 0, i32 1
  %22 = load %struct._citrus_memory_stream*, %struct._citrus_memory_stream** %5, align 8
  %23 = getelementptr inbounds %struct._citrus_memory_stream, %struct._citrus_memory_stream* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i8* @_citrus_region_offset(i32* %21, i64 %24)
  store i8* %25, i8** %8, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load %struct._citrus_memory_stream*, %struct._citrus_memory_stream** %5, align 8
  %28 = getelementptr inbounds %struct._citrus_memory_stream, %struct._citrus_memory_stream* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %29, %26
  store i64 %30, i64* %28, align 8
  %31 = load %struct._citrus_region*, %struct._citrus_region** %6, align 8
  %32 = icmp ne %struct._citrus_region* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %19
  %34 = load %struct._citrus_region*, %struct._citrus_region** %6, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @_citrus_region_init(%struct._citrus_region* %34, i8* %35, i64 %36)
  br label %38

38:                                               ; preds = %33, %19
  %39 = load i8*, i8** %8, align 8
  store i8* %39, i8** %4, align 8
  br label %40

40:                                               ; preds = %38, %18
  %41 = load i8*, i8** %4, align 8
  ret i8* %41
}

declare dso_local i64 @_citrus_region_size(i32*) #1

declare dso_local i8* @_citrus_region_offset(i32*, i64) #1

declare dso_local i32 @_citrus_region_init(%struct._citrus_region*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
