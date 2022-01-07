; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_lzh_decode_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_lzh_decode_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzh_stream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, %struct.TYPE_2__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lzh_stream*)* @lzh_decode_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lzh_decode_free(%struct.lzh_stream* %0) #0 {
  %2 = alloca %struct.lzh_stream*, align 8
  store %struct.lzh_stream* %0, %struct.lzh_stream** %2, align 8
  %3 = load %struct.lzh_stream*, %struct.lzh_stream** %2, align 8
  %4 = getelementptr inbounds %struct.lzh_stream, %struct.lzh_stream* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = icmp eq %struct.TYPE_2__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %31

8:                                                ; preds = %1
  %9 = load %struct.lzh_stream*, %struct.lzh_stream** %2, align 8
  %10 = getelementptr inbounds %struct.lzh_stream, %struct.lzh_stream* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = call i32 @free(%struct.TYPE_2__* %13)
  %15 = load %struct.lzh_stream*, %struct.lzh_stream** %2, align 8
  %16 = getelementptr inbounds %struct.lzh_stream, %struct.lzh_stream* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = call i32 @lzh_huffman_free(i32* %18)
  %20 = load %struct.lzh_stream*, %struct.lzh_stream** %2, align 8
  %21 = getelementptr inbounds %struct.lzh_stream, %struct.lzh_stream* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @lzh_huffman_free(i32* %23)
  %25 = load %struct.lzh_stream*, %struct.lzh_stream** %2, align 8
  %26 = getelementptr inbounds %struct.lzh_stream, %struct.lzh_stream* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = call i32 @free(%struct.TYPE_2__* %27)
  %29 = load %struct.lzh_stream*, %struct.lzh_stream** %2, align 8
  %30 = getelementptr inbounds %struct.lzh_stream, %struct.lzh_stream* %29, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %30, align 8
  br label %31

31:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @free(%struct.TYPE_2__*) #1

declare dso_local i32 @lzh_huffman_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
