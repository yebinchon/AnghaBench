; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_make_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_make_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.huffman_code = type { i32, i32, i32, %struct.huffman_table_entry* }
%struct.huffman_table_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.huffman_code*)* @make_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_table(%struct.archive_read* %0, %struct.huffman_code* %1) #0 {
  %3 = alloca %struct.archive_read*, align 8
  %4 = alloca %struct.huffman_code*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %3, align 8
  store %struct.huffman_code* %1, %struct.huffman_code** %4, align 8
  %5 = load %struct.huffman_code*, %struct.huffman_code** %4, align 8
  %6 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.huffman_code*, %struct.huffman_code** %4, align 8
  %9 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.huffman_code*, %struct.huffman_code** %4, align 8
  %14 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sgt i32 %15, 10
  br i1 %16, label %17, label %20

17:                                               ; preds = %12, %2
  %18 = load %struct.huffman_code*, %struct.huffman_code** %4, align 8
  %19 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %18, i32 0, i32 2
  store i32 10, i32* %19, align 8
  br label %26

20:                                               ; preds = %12
  %21 = load %struct.huffman_code*, %struct.huffman_code** %4, align 8
  %22 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.huffman_code*, %struct.huffman_code** %4, align 8
  %25 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  br label %26

26:                                               ; preds = %20, %17
  %27 = load %struct.huffman_code*, %struct.huffman_code** %4, align 8
  %28 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = zext i32 %29 to i64
  %31 = shl i64 1, %30
  %32 = mul i64 4, %31
  %33 = trunc i64 %32 to i32
  %34 = call i64 @calloc(i32 1, i32 %33)
  %35 = inttoptr i64 %34 to %struct.huffman_table_entry*
  %36 = load %struct.huffman_code*, %struct.huffman_code** %4, align 8
  %37 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %36, i32 0, i32 3
  store %struct.huffman_table_entry* %35, %struct.huffman_table_entry** %37, align 8
  %38 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %39 = load %struct.huffman_code*, %struct.huffman_code** %4, align 8
  %40 = load %struct.huffman_code*, %struct.huffman_code** %4, align 8
  %41 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %40, i32 0, i32 3
  %42 = load %struct.huffman_table_entry*, %struct.huffman_table_entry** %41, align 8
  %43 = load %struct.huffman_code*, %struct.huffman_code** %4, align 8
  %44 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = call i32 @make_table_recurse(%struct.archive_read* %38, %struct.huffman_code* %39, i32 0, %struct.huffman_table_entry* %42, i32 0, i64 %46)
  ret i32 %47
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @make_table_recurse(%struct.archive_read*, %struct.huffman_code*, i32, %struct.huffman_table_entry*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
