; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_memstream.h__citrus_memory_stream_seek.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_memstream.h__citrus_memory_stream_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_memory_stream = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._citrus_memory_stream*, i64, i32)* @_citrus_memory_stream_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_citrus_memory_stream_seek(%struct._citrus_memory_stream* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._citrus_memory_stream*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._citrus_memory_stream* %0, %struct._citrus_memory_stream** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct._citrus_memory_stream*, %struct._citrus_memory_stream** %5, align 8
  %10 = getelementptr inbounds %struct._citrus_memory_stream, %struct._citrus_memory_stream* %9, i32 0, i32 1
  %11 = call i64 @_citrus_region_size(i32* %10)
  store i64 %11, i64* %8, align 8
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %47 [
    i32 128, label %13
    i32 130, label %22
    i32 129, label %36
  ]

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp uge i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 -1, i32* %4, align 4
  br label %48

18:                                               ; preds = %13
  %19 = load i64, i64* %6, align 8
  %20 = load %struct._citrus_memory_stream*, %struct._citrus_memory_stream** %5, align 8
  %21 = getelementptr inbounds %struct._citrus_memory_stream, %struct._citrus_memory_stream* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  br label %47

22:                                               ; preds = %3
  %23 = load %struct._citrus_memory_stream*, %struct._citrus_memory_stream** %5, align 8
  %24 = getelementptr inbounds %struct._citrus_memory_stream, %struct._citrus_memory_stream* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = add i64 %26, %25
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp uge i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store i32 -1, i32* %4, align 4
  br label %48

32:                                               ; preds = %22
  %33 = load i64, i64* %6, align 8
  %34 = load %struct._citrus_memory_stream*, %struct._citrus_memory_stream** %5, align 8
  %35 = getelementptr inbounds %struct._citrus_memory_stream, %struct._citrus_memory_stream* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  br label %47

36:                                               ; preds = %3
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 -1, i32* %4, align 4
  br label %48

41:                                               ; preds = %36
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %6, align 8
  %44 = sub i64 %42, %43
  %45 = load %struct._citrus_memory_stream*, %struct._citrus_memory_stream** %5, align 8
  %46 = getelementptr inbounds %struct._citrus_memory_stream, %struct._citrus_memory_stream* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %3, %41, %32, %18
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %40, %31, %17
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i64 @_citrus_region_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
