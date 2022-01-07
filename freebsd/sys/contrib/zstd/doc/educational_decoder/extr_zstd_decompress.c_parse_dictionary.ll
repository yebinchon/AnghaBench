; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/doc/educational_decoder/extr_zstd_decompress.c_parse_dictionary.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/doc/educational_decoder/extr_zstd_decompress.c_parse_dictionary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64*, i32, i32, i32, i32, i8* }

@seq_offset = common dso_local global i32 0, align 4
@seq_fse = common dso_local global i32 0, align 4
@seq_match_length = common dso_local global i32 0, align 4
@seq_literal_length = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Dictionary corrupted\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_dictionary(%struct.TYPE_5__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %7, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = call i32 @memset(%struct.TYPE_5__* %13, i32 0, i32 32)
  %15 = load i8*, i8** %5, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = call i32 (...) @NULL_SRC()
  br label %19

19:                                               ; preds = %17, %3
  %20 = load i64, i64* %6, align 8
  %21 = icmp ult i64 %20, 8
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 (...) @DICT_SIZE_ERROR()
  br label %24

24:                                               ; preds = %22, %19
  %25 = load i32*, i32** %7, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @IO_make_istream(i32* %25, i64 %26)
  store i32 %27, i32* %8, align 4
  %28 = call i8* @IO_read_bits(i32* %8, i32 32)
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, -332356553
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = call i32 @IO_rewind_bits(i32* %8, i32 32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = call i32 @init_dictionary_content(%struct.TYPE_5__* %34, i32* %8)
  br label %98

36:                                               ; preds = %24
  %37 = call i8* @IO_read_bits(i32* %8, i32 32)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 5
  store i8* %37, i8** %39, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 4
  %42 = call i32 @decode_huf_table(i32* %41, i32* %8)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  %45 = load i32, i32* @seq_offset, align 4
  %46 = load i32, i32* @seq_fse, align 4
  %47 = call i32 @decode_seq_table(i32* %44, i32* %8, i32 %45, i32 %46)
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load i32, i32* @seq_match_length, align 4
  %51 = load i32, i32* @seq_fse, align 4
  %52 = call i32 @decode_seq_table(i32* %49, i32* %8, i32 %50, i32 %51)
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* @seq_literal_length, align 4
  %56 = load i32, i32* @seq_fse, align 4
  %57 = call i32 @decode_seq_table(i32* %54, i32* %8, i32 %55, i32 %56)
  %58 = call i8* @IO_read_bits(i32* %8, i32 32)
  %59 = ptrtoint i8* %58 to i64
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 0
  store i64 %59, i64* %63, align 8
  %64 = call i8* @IO_read_bits(i32* %8, i32 32)
  %65 = ptrtoint i8* %64 to i64
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 1
  store i64 %65, i64* %69, align 8
  %70 = call i8* @IO_read_bits(i32* %8, i32 32)
  %71 = ptrtoint i8* %70 to i64
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 2
  store i64 %71, i64* %75, align 8
  store i32 0, i32* %10, align 4
  br label %76

76:                                               ; preds = %92, %36
  %77 = load i32, i32* %10, align 4
  %78 = icmp slt i32 %77, 3
  br i1 %78, label %79, label %95

79:                                               ; preds = %76
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %6, align 8
  %88 = icmp ugt i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %79
  %90 = call i32 @ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %79
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %10, align 4
  br label %76

95:                                               ; preds = %76
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %97 = call i32 @init_dictionary_content(%struct.TYPE_5__* %96, i32* %8)
  br label %98

98:                                               ; preds = %95, %32
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @NULL_SRC(...) #1

declare dso_local i32 @DICT_SIZE_ERROR(...) #1

declare dso_local i32 @IO_make_istream(i32*, i64) #1

declare dso_local i8* @IO_read_bits(i32*, i32) #1

declare dso_local i32 @IO_rewind_bits(i32*, i32) #1

declare dso_local i32 @init_dictionary_content(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @decode_huf_table(i32*, i32*) #1

declare dso_local i32 @decode_seq_table(i32*, i32*, i32, i32) #1

declare dso_local i32 @ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
