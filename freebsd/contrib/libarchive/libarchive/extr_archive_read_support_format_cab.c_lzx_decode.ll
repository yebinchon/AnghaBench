; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_lzx_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_lzx_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzx_stream = type { i64, i32, i32, i32, i64, %struct.lzx_dec* }
%struct.lzx_dec = type { i32, i64, i32 }

@ST_MAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lzx_stream*, i32)* @lzx_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lzx_decode(%struct.lzx_stream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lzx_stream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lzx_dec*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.lzx_stream* %0, %struct.lzx_stream** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.lzx_stream*, %struct.lzx_stream** %4, align 8
  %11 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %10, i32 0, i32 5
  %12 = load %struct.lzx_dec*, %struct.lzx_dec** %11, align 8
  store %struct.lzx_dec* %12, %struct.lzx_dec** %6, align 8
  %13 = load %struct.lzx_dec*, %struct.lzx_dec** %6, align 8
  %14 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.lzx_dec*, %struct.lzx_dec** %6, align 8
  %19 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %3, align 4
  br label %82

21:                                               ; preds = %2
  %22 = load %struct.lzx_stream*, %struct.lzx_stream** %4, align 8
  %23 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %7, align 8
  %25 = load %struct.lzx_stream*, %struct.lzx_stream** %4, align 8
  %26 = load %struct.lzx_dec*, %struct.lzx_dec** %6, align 8
  %27 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %26, i32 0, i32 2
  %28 = call i32 @lzx_br_fixup(%struct.lzx_stream* %25, i32* %27)
  br label %29

29:                                               ; preds = %66, %21
  %30 = load %struct.lzx_dec*, %struct.lzx_dec** %6, align 8
  %31 = getelementptr inbounds %struct.lzx_dec, %struct.lzx_dec* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ST_MAIN, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.lzx_stream*, %struct.lzx_stream** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @lzx_read_blocks(%struct.lzx_stream* %36, i32 %37)
  store i32 %38, i32* %8, align 4
  br label %65

39:                                               ; preds = %29
  %40 = load %struct.lzx_stream*, %struct.lzx_stream** %4, align 8
  %41 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %9, align 8
  %43 = load %struct.lzx_stream*, %struct.lzx_stream** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @lzx_decode_blocks(%struct.lzx_stream* %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load %struct.lzx_stream*, %struct.lzx_stream** %4, align 8
  %47 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = sub nsw i64 %49, %48
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load %struct.lzx_stream*, %struct.lzx_stream** %4, align 8
  %53 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %51
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %53, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load %struct.lzx_stream*, %struct.lzx_stream** %4, align 8
  %60 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %58
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %60, align 4
  br label %65

65:                                               ; preds = %39, %35
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %8, align 4
  %68 = icmp eq i32 %67, 100
  br i1 %68, label %29, label %69

69:                                               ; preds = %66
  %70 = load i64, i64* %7, align 8
  %71 = load %struct.lzx_stream*, %struct.lzx_stream** %4, align 8
  %72 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %70, %73
  %75 = load %struct.lzx_stream*, %struct.lzx_stream** %4, align 8
  %76 = getelementptr inbounds %struct.lzx_stream, %struct.lzx_stream* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %74
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %76, align 8
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %69, %17
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @lzx_br_fixup(%struct.lzx_stream*, i32*) #1

declare dso_local i32 @lzx_read_blocks(%struct.lzx_stream*, i32) #1

declare dso_local i32 @lzx_decode_blocks(%struct.lzx_stream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
