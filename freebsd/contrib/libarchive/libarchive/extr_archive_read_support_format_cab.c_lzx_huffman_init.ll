; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_lzx_huffman_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_lzx_huffman_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.huffman = type { i32, i32, i32*, i32* }

@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.huffman*, i64, i32)* @lzx_huffman_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lzx_huffman_init(%struct.huffman* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.huffman*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.huffman* %0, %struct.huffman** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.huffman*, %struct.huffman** %5, align 8
  %9 = getelementptr inbounds %struct.huffman, %struct.huffman* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %3
  %13 = load %struct.huffman*, %struct.huffman** %5, align 8
  %14 = getelementptr inbounds %struct.huffman, %struct.huffman* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = trunc i64 %16 to i32
  %18 = icmp ne i32 %15, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %12, %3
  %20 = load %struct.huffman*, %struct.huffman** %5, align 8
  %21 = getelementptr inbounds %struct.huffman, %struct.huffman* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @free(i32* %22)
  %24 = load i64, i64* %6, align 8
  %25 = call i32* @calloc(i64 %24, i32 4)
  %26 = load %struct.huffman*, %struct.huffman** %5, align 8
  %27 = getelementptr inbounds %struct.huffman, %struct.huffman* %26, i32 0, i32 3
  store i32* %25, i32** %27, align 8
  %28 = load %struct.huffman*, %struct.huffman** %5, align 8
  %29 = getelementptr inbounds %struct.huffman, %struct.huffman* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %19
  %33 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %33, i32* %4, align 4
  br label %71

34:                                               ; preds = %19
  %35 = load i64, i64* %6, align 8
  %36 = trunc i64 %35 to i32
  %37 = load %struct.huffman*, %struct.huffman** %5, align 8
  %38 = getelementptr inbounds %struct.huffman, %struct.huffman* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %46

39:                                               ; preds = %12
  %40 = load %struct.huffman*, %struct.huffman** %5, align 8
  %41 = getelementptr inbounds %struct.huffman, %struct.huffman* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = mul i64 %43, 4
  %45 = call i32 @memset(i32* %42, i32 0, i64 %44)
  br label %46

46:                                               ; preds = %39, %34
  %47 = load %struct.huffman*, %struct.huffman** %5, align 8
  %48 = getelementptr inbounds %struct.huffman, %struct.huffman* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %69

51:                                               ; preds = %46
  %52 = load i32, i32* %7, align 4
  %53 = zext i32 %52 to i64
  %54 = shl i64 1, %53
  %55 = mul i64 %54, 4
  %56 = call i32* @malloc(i64 %55)
  %57 = load %struct.huffman*, %struct.huffman** %5, align 8
  %58 = getelementptr inbounds %struct.huffman, %struct.huffman* %57, i32 0, i32 2
  store i32* %56, i32** %58, align 8
  %59 = load %struct.huffman*, %struct.huffman** %5, align 8
  %60 = getelementptr inbounds %struct.huffman, %struct.huffman* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %51
  %64 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %64, i32* %4, align 4
  br label %71

65:                                               ; preds = %51
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.huffman*, %struct.huffman** %5, align 8
  %68 = getelementptr inbounds %struct.huffman, %struct.huffman* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %65, %46
  %70 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %63, %32
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @calloc(i64, i32) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32* @malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
