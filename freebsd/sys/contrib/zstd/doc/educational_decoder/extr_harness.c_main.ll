; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/doc/educational_decoder/extr_harness.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/doc/educational_decoder/extr_harness.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"usage: %s <file.zst> <out_path> [dictionary] \0A\00", align 1
@MAX_COMPRESSION_RATIO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [149 x i8] c"WARNING: Compressed data does not contain decompressed size, going to assume the compression ratio is at most %d (decompressed size of at most %u) \0A\00", align 1
@MAX_OUTPUT_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [57 x i8] c"Required output size too large for this implementation \0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to allocate memory \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 3
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i32, i32* @stderr, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %20)
  store i32 1, i32* %3, align 4
  br label %96

22:                                               ; preds = %2
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i8* @read_file(i8* %25, i32** %6)
  %27 = ptrtoint i8* %26 to i64
  store i64 %27, i64* %7, align 8
  store i32* null, i32** %8, align 8
  store i64 0, i64* %9, align 8
  %28 = load i32, i32* %4, align 4
  %29 = icmp sge i32 %28, 4
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 3
  %33 = load i8*, i8** %32, align 8
  %34 = call i8* @read_file(i8* %33, i32** %8)
  %35 = ptrtoint i8* %34 to i64
  store i64 %35, i64* %9, align 8
  br label %36

36:                                               ; preds = %30, %22
  %37 = load i32*, i32** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i64 @ZSTD_get_decompressed_size(i32* %37, i64 %38)
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = icmp eq i64 %40, -1
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load i64, i64* @MAX_COMPRESSION_RATIO, align 8
  %44 = load i64, i64* %7, align 8
  %45 = mul i64 %43, %44
  store i64 %45, i64* %10, align 8
  %46 = load i32, i32* @stderr, align 4
  %47 = load i64, i64* @MAX_COMPRESSION_RATIO, align 8
  %48 = load i64, i64* %10, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.1, i64 0, i64 0), i64 %47, i32 %49)
  br label %51

51:                                               ; preds = %42, %36
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* @MAX_OUTPUT_SIZE, align 8
  %54 = icmp ugt i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* @stderr, align 4
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %96

58:                                               ; preds = %51
  %59 = load i64, i64* %10, align 8
  %60 = call i32* @malloc(i64 %59)
  store i32* %60, i32** %11, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* @stderr, align 4
  %65 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %96

66:                                               ; preds = %58
  %67 = call i32* (...) @create_dictionary()
  store i32* %67, i32** %12, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i32*, i32** %12, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @parse_dictionary(i32* %71, i32* %72, i64 %73)
  br label %75

75:                                               ; preds = %70, %66
  %76 = load i32*, i32** %11, align 8
  %77 = load i64, i64* %10, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = load i64, i64* %7, align 8
  %80 = load i32*, i32** %12, align 8
  %81 = call i64 @ZSTD_decompress_with_dict(i32* %76, i64 %77, i32* %78, i64 %79, i32* %80)
  store i64 %81, i64* %13, align 8
  %82 = load i32*, i32** %12, align 8
  %83 = call i32 @free_dictionary(i32* %82)
  %84 = load i8**, i8*** %5, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 2
  %86 = load i8*, i8** %85, align 8
  %87 = load i32*, i32** %11, align 8
  %88 = load i64, i64* %13, align 8
  %89 = call i32 @write_file(i8* %86, i32* %87, i64 %88)
  %90 = load i32*, i32** %6, align 8
  %91 = call i32 @free(i32* %90)
  %92 = load i32*, i32** %11, align 8
  %93 = call i32 @free(i32* %92)
  %94 = load i32*, i32** %8, align 8
  %95 = call i32 @free(i32* %94)
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %75, %63, %55, %16
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @read_file(i8*, i32**) #1

declare dso_local i64 @ZSTD_get_decompressed_size(i32*, i64) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32* @create_dictionary(...) #1

declare dso_local i32 @parse_dictionary(i32*, i32*, i64) #1

declare dso_local i64 @ZSTD_decompress_with_dict(i32*, i64, i32*, i64, i32*) #1

declare dso_local i32 @free_dictionary(i32*) #1

declare dso_local i32 @write_file(i8*, i32*, i64) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
