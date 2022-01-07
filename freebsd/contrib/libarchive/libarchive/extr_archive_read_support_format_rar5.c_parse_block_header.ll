; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_parse_block_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_parse_block_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.compressed_block_header = type { i32, i64 }

@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Unsupported block header size (was %d, max is 2)\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Block checksum error: got 0x%x, expected 0x%x\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, i32*, i32*, %struct.compressed_block_header*)* @parse_block_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_block_header(%struct.archive_read* %0, i32* %1, i32* %2, %struct.compressed_block_header* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_read*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.compressed_block_header*, align 8
  %10 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.compressed_block_header* %3, %struct.compressed_block_header** %9, align 8
  %11 = load %struct.compressed_block_header*, %struct.compressed_block_header** %9, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @memcpy(%struct.compressed_block_header* %11, i32* %12, i32 16)
  %14 = load %struct.compressed_block_header*, %struct.compressed_block_header** %9, align 8
  %15 = call i32 @bf_byte_count(%struct.compressed_block_header* %14)
  %16 = icmp sgt i32 %15, 2
  br i1 %16, label %17, label %25

17:                                               ; preds = %4
  %18 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %19 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %18, i32 0, i32 0
  %20 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %21 = load %struct.compressed_block_header*, %struct.compressed_block_header** %9, align 8
  %22 = call i32 @bf_byte_count(%struct.compressed_block_header* %21)
  %23 = call i32 (i32*, i32, i8*, i32, ...) @archive_set_error(i32* %19, i32 %20, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %24, i32* %5, align 4
  br label %83

25:                                               ; preds = %4
  %26 = load i32*, i32** %8, align 8
  store i32 0, i32* %26, align 4
  %27 = load %struct.compressed_block_header*, %struct.compressed_block_header** %9, align 8
  %28 = call i32 @bf_byte_count(%struct.compressed_block_header* %27)
  switch i32 %28, label %47 [
    i32 0, label %29
    i32 1, label %34
    i32 2, label %39
  ]

29:                                               ; preds = %25
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %8, align 8
  store i32 %32, i32* %33, align 4
  br label %49

34:                                               ; preds = %25
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = call i32 @archive_le16dec(i32* %36)
  %38 = load i32*, i32** %8, align 8
  store i32 %37, i32* %38, align 4
  br label %49

39:                                               ; preds = %25
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = call i32 @archive_le32dec(i32* %41)
  %43 = load i32*, i32** %8, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 16777215
  store i32 %46, i32* %44, align 4
  br label %49

47:                                               ; preds = %25
  %48 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %48, i32* %5, align 4
  br label %83

49:                                               ; preds = %39, %34, %29
  %50 = load %struct.compressed_block_header*, %struct.compressed_block_header** %9, align 8
  %51 = getelementptr inbounds %struct.compressed_block_header, %struct.compressed_block_header* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = xor i32 90, %53
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %55, align 4
  %57 = xor i32 %54, %56
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %58, align 4
  %60 = ashr i32 %59, 8
  %61 = xor i32 %57, %60
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %62, align 4
  %64 = ashr i32 %63, 16
  %65 = xor i32 %61, %64
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.compressed_block_header*, %struct.compressed_block_header** %9, align 8
  %68 = getelementptr inbounds %struct.compressed_block_header, %struct.compressed_block_header* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %66, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %49
  %72 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %73 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %72, i32 0, i32 0
  %74 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %75 = load %struct.compressed_block_header*, %struct.compressed_block_header** %9, align 8
  %76 = getelementptr inbounds %struct.compressed_block_header, %struct.compressed_block_header* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 (i32*, i32, i8*, i32, ...) @archive_set_error(i32* %73, i32 %74, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %78)
  %80 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %80, i32* %5, align 4
  br label %83

81:                                               ; preds = %49
  %82 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %81, %71, %47, %17
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @memcpy(%struct.compressed_block_header*, i32*, i32) #1

declare dso_local i32 @bf_byte_count(%struct.compressed_block_header*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*, i32, ...) #1

declare dso_local i32 @archive_le16dec(i32*) #1

declare dso_local i32 @archive_le32dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
