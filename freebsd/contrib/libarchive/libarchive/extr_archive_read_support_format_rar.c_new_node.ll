; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_new_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_new_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.huffman_code = type { i32, i32, %struct.huffman_tree_node* }
%struct.huffman_tree_node = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.huffman_code*)* @new_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @new_node(%struct.huffman_code* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.huffman_code*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.huffman_code* %0, %struct.huffman_code** %3, align 8
  %6 = load %struct.huffman_code*, %struct.huffman_code** %3, align 8
  %7 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.huffman_code*, %struct.huffman_code** %3, align 8
  %10 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %8, %11
  br i1 %12, label %13, label %43

13:                                               ; preds = %1
  store i32 256, i32* %5, align 4
  %14 = load %struct.huffman_code*, %struct.huffman_code** %3, align 8
  %15 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.huffman_code*, %struct.huffman_code** %3, align 8
  %20 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %21, 2
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %18, %13
  %24 = load %struct.huffman_code*, %struct.huffman_code** %3, align 8
  %25 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %24, i32 0, i32 2
  %26 = load %struct.huffman_tree_node*, %struct.huffman_tree_node** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 8
  %30 = trunc i64 %29 to i32
  %31 = call i8* @realloc(%struct.huffman_tree_node* %26, i32 %30)
  store i8* %31, i8** %4, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  store i32 -1, i32* %2, align 4
  br label %66

35:                                               ; preds = %23
  %36 = load i8*, i8** %4, align 8
  %37 = bitcast i8* %36 to %struct.huffman_tree_node*
  %38 = load %struct.huffman_code*, %struct.huffman_code** %3, align 8
  %39 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %38, i32 0, i32 2
  store %struct.huffman_tree_node* %37, %struct.huffman_tree_node** %39, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.huffman_code*, %struct.huffman_code** %3, align 8
  %42 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %35, %1
  %44 = load %struct.huffman_code*, %struct.huffman_code** %3, align 8
  %45 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %44, i32 0, i32 2
  %46 = load %struct.huffman_tree_node*, %struct.huffman_tree_node** %45, align 8
  %47 = load %struct.huffman_code*, %struct.huffman_code** %3, align 8
  %48 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %46, i64 %50
  %52 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 -1, i32* %54, align 4
  %55 = load %struct.huffman_code*, %struct.huffman_code** %3, align 8
  %56 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %55, i32 0, i32 2
  %57 = load %struct.huffman_tree_node*, %struct.huffman_tree_node** %56, align 8
  %58 = load %struct.huffman_code*, %struct.huffman_code** %3, align 8
  %59 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %57, i64 %61
  %63 = getelementptr inbounds %struct.huffman_tree_node, %struct.huffman_tree_node* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  store i32 -2, i32* %65, align 4
  store i32 1, i32* %2, align 4
  br label %66

66:                                               ; preds = %43, %34
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i8* @realloc(%struct.huffman_tree_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
