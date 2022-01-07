; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_lzx_read_pre_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_lzx_read_pre_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzx_stream = type { %struct.lzx_dec* }
%struct.lzx_dec = type { i32, %struct.TYPE_2__, %struct.lzx_br }
%struct.TYPE_2__ = type { i32, i64*, i32* }
%struct.lzx_br = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lzx_stream*)* @lzx_read_pre_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lzx_read_pre_tree(%struct.lzx_stream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lzx_stream*, align 8
  %4 = alloca %struct.lzx_dec*, align 8
  %5 = alloca %struct.lzx_br*, align 8
  %6 = alloca i32, align 4
  store %struct.lzx_stream* %0, %struct.lzx_stream** %3, align 8
  %7 = load %struct.lzx_stream*, %struct.lzx_stream** %3, align 8
  %8 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %7, i32 0, i32 0
  %9 = load %struct.lzx_dec*, %struct.lzx_dec** %8, align 8
  store %struct.lzx_dec* %9, %struct.lzx_dec** %4, align 8
  %10 = load %struct.lzx_dec*, %struct.lzx_dec** %4, align 8
  %11 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %10, i32 0, i32 2
  store %struct.lzx_br* %11, %struct.lzx_br** %5, align 8
  %12 = load %struct.lzx_dec*, %struct.lzx_dec** %4, align 8
  %13 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.lzx_dec*, %struct.lzx_dec** %4, align 8
  %18 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @memset(i32* %20, i32 0, i32 8)
  br label %22

22:                                               ; preds = %16, %1
  %23 = load %struct.lzx_dec*, %struct.lzx_dec** %4, align 8
  %24 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %69, %22
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.lzx_dec*, %struct.lzx_dec** %4, align 8
  %29 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %27, %31
  br i1 %32, label %33, label %72

33:                                               ; preds = %26
  %34 = load %struct.lzx_stream*, %struct.lzx_stream** %3, align 8
  %35 = load %struct.lzx_br*, %struct.lzx_br** %5, align 8
  %36 = call i32 @lzx_br_read_ahead(%struct.lzx_stream* %34, %struct.lzx_br* %35, i32 4)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.lzx_dec*, %struct.lzx_dec** %4, align 8
  %41 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  store i32 0, i32* %2, align 4
  br label %76

42:                                               ; preds = %33
  %43 = load %struct.lzx_br*, %struct.lzx_br** %5, align 8
  %44 = call i64 @lzx_br_bits(%struct.lzx_br* %43, i32 4)
  %45 = load %struct.lzx_dec*, %struct.lzx_dec** %4, align 8
  %46 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  store i64 %44, i64* %51, align 8
  %52 = load %struct.lzx_dec*, %struct.lzx_dec** %4, align 8
  %53 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.lzx_dec*, %struct.lzx_dec** %4, align 8
  %57 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i32, i32* %55, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = load %struct.lzx_br*, %struct.lzx_br** %5, align 8
  %68 = call i32 @lzx_br_consume(%struct.lzx_br* %67, i32 4)
  br label %69

69:                                               ; preds = %42
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %26

72:                                               ; preds = %26
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.lzx_dec*, %struct.lzx_dec** %4, align 8
  %75 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  store i32 1, i32* %2, align 4
  br label %76

76:                                               ; preds = %72, %38
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @lzx_br_read_ahead(%struct.lzx_stream*, %struct.lzx_br*, i32) #1

declare dso_local i64 @lzx_br_bits(%struct.lzx_br*, i32) #1

declare dso_local i32 @lzx_br_consume(%struct.lzx_br*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
