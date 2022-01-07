; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_parse_filter_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_parse_filter_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rar5 = type { i32 }

@ARCHIVE_OK = common dso_local global i64 0, align 8
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rar5*, i32*, i32*)* @parse_filter_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_filter_data(%struct.rar5* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rar5*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.rar5* %0, %struct.rar5** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %12 = load i64, i64* @ARCHIVE_OK, align 8
  %13 = load %struct.rar5*, %struct.rar5** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i64 @read_consume_bits(%struct.rar5* %13, i32* %14, i32 2, i32* %9)
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %18, i32* %4, align 4
  br label %53

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %45, %19
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %48

26:                                               ; preds = %22
  %27 = load i64, i64* @ARCHIVE_OK, align 8
  %28 = load %struct.rar5*, %struct.rar5** %5, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i64 @read_bits_16(%struct.rar5* %28, i32* %29, i64* %11)
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %33, i32* %4, align 4
  br label %53

34:                                               ; preds = %26
  %35 = load i64, i64* %11, align 8
  %36 = trunc i64 %35 to i32
  %37 = ashr i32 %36, 8
  %38 = load i32, i32* %8, align 4
  %39 = mul nsw i32 %38, 8
  %40 = shl i32 %37, %39
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %10, align 4
  %43 = load %struct.rar5*, %struct.rar5** %5, align 8
  %44 = call i32 @skip_bits(%struct.rar5* %43, i32 8)
  br label %45

45:                                               ; preds = %34
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %22

48:                                               ; preds = %22
  %49 = load i32, i32* %10, align 4
  %50 = load i32*, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i64, i64* @ARCHIVE_OK, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %48, %32, %17
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i64 @read_consume_bits(%struct.rar5*, i32*, i32, i32*) #1

declare dso_local i64 @read_bits_16(%struct.rar5*, i32*, i64*) #1

declare dso_local i32 @skip_bits(%struct.rar5*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
