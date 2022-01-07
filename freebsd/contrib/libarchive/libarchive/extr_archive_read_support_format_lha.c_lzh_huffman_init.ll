; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_lzh_huffman_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_lzh_huffman_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.huffman = type { i32, i32, i32, i32*, i32*, i32* }

@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@HTBL_BITS = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.huffman*, i64, i32)* @lzh_huffman_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lzh_huffman_init(%struct.huffman* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.huffman*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.huffman* %0, %struct.huffman** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.huffman*, %struct.huffman** %5, align 8
  %10 = getelementptr inbounds %struct.huffman, %struct.huffman* %9, i32 0, i32 5
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = mul i64 %14, 4
  %16 = trunc i64 %15 to i32
  %17 = call i8* @malloc(i32 %16)
  %18 = bitcast i8* %17 to i32*
  %19 = load %struct.huffman*, %struct.huffman** %5, align 8
  %20 = getelementptr inbounds %struct.huffman, %struct.huffman* %19, i32 0, i32 5
  store i32* %18, i32** %20, align 8
  %21 = load %struct.huffman*, %struct.huffman** %5, align 8
  %22 = getelementptr inbounds %struct.huffman, %struct.huffman* %21, i32 0, i32 5
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %13
  %26 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %26, i32* %4, align 4
  br label %101

27:                                               ; preds = %13
  br label %28

28:                                               ; preds = %27, %3
  %29 = load %struct.huffman*, %struct.huffman** %5, align 8
  %30 = getelementptr inbounds %struct.huffman, %struct.huffman* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %58

33:                                               ; preds = %28
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @HTBL_BITS, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %8, align 4
  br label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @HTBL_BITS, align 4
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = load i32, i32* %8, align 4
  %43 = zext i32 %42 to i64
  %44 = shl i64 1, %43
  %45 = mul i64 %44, 4
  %46 = trunc i64 %45 to i32
  %47 = call i8* @malloc(i32 %46)
  %48 = bitcast i8* %47 to i32*
  %49 = load %struct.huffman*, %struct.huffman** %5, align 8
  %50 = getelementptr inbounds %struct.huffman, %struct.huffman* %49, i32 0, i32 4
  store i32* %48, i32** %50, align 8
  %51 = load %struct.huffman*, %struct.huffman** %5, align 8
  %52 = getelementptr inbounds %struct.huffman, %struct.huffman* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %41
  %56 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %56, i32* %4, align 4
  br label %101

57:                                               ; preds = %41
  br label %58

58:                                               ; preds = %57, %28
  %59 = load %struct.huffman*, %struct.huffman** %5, align 8
  %60 = getelementptr inbounds %struct.huffman, %struct.huffman* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %92

63:                                               ; preds = %58
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @HTBL_BITS, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %92

67:                                               ; preds = %63
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @HTBL_BITS, align 4
  %70 = sub nsw i32 %68, %69
  %71 = add nsw i32 %70, 4
  %72 = shl i32 1, %71
  %73 = load %struct.huffman*, %struct.huffman** %5, align 8
  %74 = getelementptr inbounds %struct.huffman, %struct.huffman* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.huffman*, %struct.huffman** %5, align 8
  %76 = getelementptr inbounds %struct.huffman, %struct.huffman* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 4
  %80 = trunc i64 %79 to i32
  %81 = call i8* @malloc(i32 %80)
  %82 = bitcast i8* %81 to i32*
  %83 = load %struct.huffman*, %struct.huffman** %5, align 8
  %84 = getelementptr inbounds %struct.huffman, %struct.huffman* %83, i32 0, i32 3
  store i32* %82, i32** %84, align 8
  %85 = load %struct.huffman*, %struct.huffman** %5, align 8
  %86 = getelementptr inbounds %struct.huffman, %struct.huffman* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %67
  %90 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %90, i32* %4, align 4
  br label %101

91:                                               ; preds = %67
  br label %92

92:                                               ; preds = %91, %63, %58
  %93 = load i64, i64* %6, align 8
  %94 = trunc i64 %93 to i32
  %95 = load %struct.huffman*, %struct.huffman** %5, align 8
  %96 = getelementptr inbounds %struct.huffman, %struct.huffman* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.huffman*, %struct.huffman** %5, align 8
  %99 = getelementptr inbounds %struct.huffman, %struct.huffman* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %92, %89, %55, %25
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i8* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
