; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_memstream.c__citrus_memory_stream_chr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_memstream.c__citrus_memory_stream_chr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_memory_stream = type { i64, i32 }
%struct._citrus_region = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_citrus_memory_stream_chr(%struct._citrus_memory_stream* %0, %struct._citrus_region* %1, i8 signext %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._citrus_memory_stream*, align 8
  %6 = alloca %struct._citrus_region*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct._citrus_memory_stream* %0, %struct._citrus_memory_stream** %5, align 8
  store %struct._citrus_region* %1, %struct._citrus_region** %6, align 8
  store i8 %2, i8* %7, align 1
  %11 = load %struct._citrus_memory_stream*, %struct._citrus_memory_stream** %5, align 8
  %12 = getelementptr inbounds %struct._citrus_memory_stream, %struct._citrus_memory_stream* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct._citrus_memory_stream*, %struct._citrus_memory_stream** %5, align 8
  %15 = getelementptr inbounds %struct._citrus_memory_stream, %struct._citrus_memory_stream* %14, i32 0, i32 1
  %16 = call i64 @_region_size(i32* %15)
  %17 = icmp sge i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %61

19:                                               ; preds = %3
  %20 = load %struct._citrus_memory_stream*, %struct._citrus_memory_stream** %5, align 8
  %21 = getelementptr inbounds %struct._citrus_memory_stream, %struct._citrus_memory_stream* %20, i32 0, i32 1
  %22 = load %struct._citrus_memory_stream*, %struct._citrus_memory_stream** %5, align 8
  %23 = getelementptr inbounds %struct._citrus_memory_stream, %struct._citrus_memory_stream* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i8* @_region_offset(i32* %21, i64 %24)
  store i8* %25, i8** %9, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load i8, i8* %7, align 1
  %28 = load %struct._citrus_memory_stream*, %struct._citrus_memory_stream** %5, align 8
  %29 = call i64 @_memstream_remainder(%struct._citrus_memory_stream* %28)
  %30 = call i8* @memchr(i8* %26, i8 signext %27, i64 %29)
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %19
  %34 = load %struct._citrus_region*, %struct._citrus_region** %6, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load %struct._citrus_memory_stream*, %struct._citrus_memory_stream** %5, align 8
  %37 = call i64 @_memstream_remainder(%struct._citrus_memory_stream* %36)
  %38 = call i32 @_region_init(%struct._citrus_region* %34, i8* %35, i64 %37)
  %39 = load %struct._citrus_memory_stream*, %struct._citrus_memory_stream** %5, align 8
  %40 = getelementptr inbounds %struct._citrus_memory_stream, %struct._citrus_memory_stream* %39, i32 0, i32 1
  %41 = call i64 @_region_size(i32* %40)
  %42 = load %struct._citrus_memory_stream*, %struct._citrus_memory_stream** %5, align 8
  %43 = getelementptr inbounds %struct._citrus_memory_stream, %struct._citrus_memory_stream* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  store i8* null, i8** %4, align 8
  br label %61

44:                                               ; preds = %19
  %45 = load i8*, i8** %8, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  store i64 %49, i64* %10, align 8
  %50 = load %struct._citrus_region*, %struct._citrus_region** %6, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load i64, i64* %10, align 8
  %53 = call i32 @_region_init(%struct._citrus_region* %50, i8* %51, i64 %52)
  %54 = load i64, i64* %10, align 8
  %55 = add i64 %54, 1
  %56 = load %struct._citrus_memory_stream*, %struct._citrus_memory_stream** %5, align 8
  %57 = getelementptr inbounds %struct._citrus_memory_stream, %struct._citrus_memory_stream* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, %55
  store i64 %59, i64* %57, align 8
  %60 = load i8*, i8** %8, align 8
  store i8* %60, i8** %4, align 8
  br label %61

61:                                               ; preds = %44, %33, %18
  %62 = load i8*, i8** %4, align 8
  ret i8* %62
}

declare dso_local i64 @_region_size(i32*) #1

declare dso_local i8* @_region_offset(i32*, i64) #1

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

declare dso_local i64 @_memstream_remainder(%struct._citrus_memory_stream*) #1

declare dso_local i32 @_region_init(%struct._citrus_region*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
