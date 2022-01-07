; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_lzx_decode_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_lzx_decode_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzx_stream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, %struct.TYPE_2__*, %struct.TYPE_2__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lzx_stream*)* @lzx_decode_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lzx_decode_free(%struct.lzx_stream* %0) #0 {
  %2 = alloca %struct.lzx_stream*, align 8
  store %struct.lzx_stream* %0, %struct.lzx_stream** %2, align 8
  %3 = load %struct.lzx_stream*, %struct.lzx_stream** %2, align 8
  %4 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = icmp eq %struct.TYPE_2__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %47

8:                                                ; preds = %1
  %9 = load %struct.lzx_stream*, %struct.lzx_stream** %2, align 8
  %10 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 5
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = call i32 @free(%struct.TYPE_2__* %13)
  %15 = load %struct.lzx_stream*, %struct.lzx_stream** %2, align 8
  %16 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = call i32 @free(%struct.TYPE_2__* %19)
  %21 = load %struct.lzx_stream*, %struct.lzx_stream** %2, align 8
  %22 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  %25 = call i32 @lzx_huffman_free(i32* %24)
  %26 = load %struct.lzx_stream*, %struct.lzx_stream** %2, align 8
  %27 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = call i32 @lzx_huffman_free(i32* %29)
  %31 = load %struct.lzx_stream*, %struct.lzx_stream** %2, align 8
  %32 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = call i32 @lzx_huffman_free(i32* %34)
  %36 = load %struct.lzx_stream*, %struct.lzx_stream** %2, align 8
  %37 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @lzx_huffman_free(i32* %39)
  %41 = load %struct.lzx_stream*, %struct.lzx_stream** %2, align 8
  %42 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = call i32 @free(%struct.TYPE_2__* %43)
  %45 = load %struct.lzx_stream*, %struct.lzx_stream** %2, align 8
  %46 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %45, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %46, align 8
  br label %47

47:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @free(%struct.TYPE_2__*) #1

declare dso_local i32 @lzx_huffman_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
