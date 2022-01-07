; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_lzh_decode_huffman_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_lzh_decode_huffman_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.huffman = type { i32, i32, i32, %struct.htree_t* }
%struct.htree_t = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.huffman*, i32, i32)* @lzh_decode_huffman_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lzh_decode_huffman_tree(%struct.huffman* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.huffman*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.htree_t*, align 8
  %9 = alloca i32, align 4
  store %struct.huffman* %0, %struct.huffman** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.huffman*, %struct.huffman** %5, align 8
  %11 = getelementptr inbounds %struct.huffman, %struct.huffman* %10, i32 0, i32 3
  %12 = load %struct.htree_t*, %struct.htree_t** %11, align 8
  store %struct.htree_t* %12, %struct.htree_t** %8, align 8
  %13 = load %struct.huffman*, %struct.huffman** %5, align 8
  %14 = getelementptr inbounds %struct.huffman, %struct.huffman* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  br label %16

16:                                               ; preds = %58, %3
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.huffman*, %struct.huffman** %5, align 8
  %19 = getelementptr inbounds %struct.huffman, %struct.huffman* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp sge i32 %17, %20
  br i1 %21, label %22, label %59

22:                                               ; preds = %16
  %23 = load %struct.huffman*, %struct.huffman** %5, align 8
  %24 = getelementptr inbounds %struct.huffman, %struct.huffman* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = sub nsw i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %9, align 4
  %30 = icmp sle i32 %28, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.huffman*, %struct.huffman** %5, align 8
  %34 = getelementptr inbounds %struct.huffman, %struct.huffman* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp sge i32 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31, %22
  store i32 0, i32* %4, align 4
  br label %61

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %9, align 4
  %41 = shl i32 1, %40
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load %struct.htree_t*, %struct.htree_t** %8, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.htree_t, %struct.htree_t* %45, i64 %47
  %49 = getelementptr inbounds %struct.htree_t, %struct.htree_t* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %7, align 4
  br label %58

51:                                               ; preds = %38
  %52 = load %struct.htree_t*, %struct.htree_t** %8, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.htree_t, %struct.htree_t* %52, i64 %54
  %56 = getelementptr inbounds %struct.htree_t, %struct.htree_t* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %51, %44
  br label %16

59:                                               ; preds = %16
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %37
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
