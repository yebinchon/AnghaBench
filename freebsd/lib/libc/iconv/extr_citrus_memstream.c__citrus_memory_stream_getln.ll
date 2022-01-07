; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_memstream.c__citrus_memory_stream_getln.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_memstream.c__citrus_memory_stream_getln.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_memory_stream = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_citrus_memory_stream_getln(%struct._citrus_memory_stream* noalias %0, i64* noalias %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._citrus_memory_stream*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct._citrus_memory_stream* %0, %struct._citrus_memory_stream** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load %struct._citrus_memory_stream*, %struct._citrus_memory_stream** %4, align 8
  %11 = getelementptr inbounds %struct._citrus_memory_stream, %struct._citrus_memory_stream* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct._citrus_memory_stream*, %struct._citrus_memory_stream** %4, align 8
  %14 = getelementptr inbounds %struct._citrus_memory_stream, %struct._citrus_memory_stream* %13, i32 0, i32 1
  %15 = call i64 @_region_size(i32* %14)
  %16 = icmp sge i64 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %60

18:                                               ; preds = %2
  %19 = load %struct._citrus_memory_stream*, %struct._citrus_memory_stream** %4, align 8
  %20 = getelementptr inbounds %struct._citrus_memory_stream, %struct._citrus_memory_stream* %19, i32 0, i32 1
  %21 = load %struct._citrus_memory_stream*, %struct._citrus_memory_stream** %4, align 8
  %22 = getelementptr inbounds %struct._citrus_memory_stream, %struct._citrus_memory_stream* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @_region_offset(i32* %20, i64 %23)
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %7, align 8
  store i32* %25, i32** %6, align 8
  store i64 0, i64* %9, align 8
  %26 = load %struct._citrus_memory_stream*, %struct._citrus_memory_stream** %4, align 8
  %27 = getelementptr inbounds %struct._citrus_memory_stream, %struct._citrus_memory_stream* %26, i32 0, i32 1
  %28 = call i64 @_region_size(i32* %27)
  %29 = load %struct._citrus_memory_stream*, %struct._citrus_memory_stream** %4, align 8
  %30 = getelementptr inbounds %struct._citrus_memory_stream, %struct._citrus_memory_stream* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %28, %31
  store i64 %32, i64* %8, align 8
  br label %33

33:                                               ; preds = %47, %18
  %34 = load i64, i64* %8, align 8
  %35 = icmp ugt i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %33
  %37 = load i64, i64* %9, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %9, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @_bcs_iseol(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %50

44:                                               ; preds = %36
  %45 = load i32*, i32** %7, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %7, align 8
  br label %47

47:                                               ; preds = %44
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %48, -1
  store i64 %49, i64* %8, align 8
  br label %33

50:                                               ; preds = %43, %33
  %51 = load i64, i64* %9, align 8
  %52 = load %struct._citrus_memory_stream*, %struct._citrus_memory_stream** %4, align 8
  %53 = getelementptr inbounds %struct._citrus_memory_stream, %struct._citrus_memory_stream* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, %51
  store i64 %55, i64* %53, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load i64*, i64** %5, align 8
  store i64 %56, i64* %57, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = bitcast i32* %58 to i8*
  store i8* %59, i8** %3, align 8
  br label %60

60:                                               ; preds = %50, %17
  %61 = load i8*, i8** %3, align 8
  ret i8* %61
}

declare dso_local i64 @_region_size(i32*) #1

declare dso_local i64 @_region_offset(i32*, i64) #1

declare dso_local i64 @_bcs_iseol(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
