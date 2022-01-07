; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_lzx_br_fixup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_lzx_br_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzx_stream = type { i64, i64* }
%struct.lzx_br = type { i32, i32, i32, i64 }

@CACHE_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lzx_stream*, %struct.lzx_br*)* @lzx_br_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lzx_br_fixup(%struct.lzx_stream* %0, %struct.lzx_br* %1) #0 {
  %3 = alloca %struct.lzx_stream*, align 8
  %4 = alloca %struct.lzx_br*, align 8
  %5 = alloca i32, align 4
  store %struct.lzx_stream* %0, %struct.lzx_stream** %3, align 8
  store %struct.lzx_br* %1, %struct.lzx_br** %4, align 8
  %6 = load i32, i32* @CACHE_BITS, align 4
  %7 = load %struct.lzx_br*, %struct.lzx_br** %4, align 8
  %8 = getelementptr inbounds %struct.lzx_br, %struct.lzx_br* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sub nsw i32 %6, %9
  store i32 %10, i32* %5, align 4
  %11 = load %struct.lzx_br*, %struct.lzx_br** %4, align 8
  %12 = getelementptr inbounds %struct.lzx_br, %struct.lzx_br* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %55

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp sge i32 %16, 16
  br i1 %17, label %18, label %55

18:                                               ; preds = %15
  %19 = load %struct.lzx_stream*, %struct.lzx_stream** %3, align 8
  %20 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %55

23:                                               ; preds = %18
  %24 = load %struct.lzx_br*, %struct.lzx_br** %4, align 8
  %25 = getelementptr inbounds %struct.lzx_br, %struct.lzx_br* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 16
  %28 = load %struct.lzx_stream*, %struct.lzx_stream** %3, align 8
  %29 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = shl i32 %32, 8
  %34 = or i32 %27, %33
  %35 = load %struct.lzx_br*, %struct.lzx_br** %4, align 8
  %36 = getelementptr inbounds %struct.lzx_br, %struct.lzx_br* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %34, %37
  %39 = load %struct.lzx_br*, %struct.lzx_br** %4, align 8
  %40 = getelementptr inbounds %struct.lzx_br, %struct.lzx_br* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.lzx_stream*, %struct.lzx_stream** %3, align 8
  %42 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i32 1
  store i64* %44, i64** %42, align 8
  %45 = load %struct.lzx_stream*, %struct.lzx_stream** %3, align 8
  %46 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, -1
  store i64 %48, i64* %46, align 8
  %49 = load %struct.lzx_br*, %struct.lzx_br** %4, align 8
  %50 = getelementptr inbounds %struct.lzx_br, %struct.lzx_br* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 16
  store i32 %52, i32* %50, align 8
  %53 = load %struct.lzx_br*, %struct.lzx_br** %4, align 8
  %54 = getelementptr inbounds %struct.lzx_br, %struct.lzx_br* %53, i32 0, i32 3
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %23, %18, %15, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
