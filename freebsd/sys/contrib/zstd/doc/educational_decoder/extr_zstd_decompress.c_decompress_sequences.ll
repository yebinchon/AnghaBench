; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/doc/educational_decoder/extr_zstd_decompress.c_decompress_sequences.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/doc/educational_decoder/extr_zstd_decompress.c_decompress_sequences.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }

@seq_literal_length = common dso_local global i32 0, align 4
@seq_offset = common dso_local global i32 0, align 4
@seq_match_length = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*, i32*, i64)* @decompress_sequences to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decompress_sequences(%struct.TYPE_6__* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @IO_read_bits(i32* %16, i32 8)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = and i32 %18, 3
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = call i32 (...) @CORRUPTION()
  br label %23

23:                                               ; preds = %21, %4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @seq_literal_length, align 4
  %28 = load i32, i32* %9, align 4
  %29 = ashr i32 %28, 6
  %30 = and i32 %29, 3
  %31 = call i32 @decode_seq_table(i32* %25, i32* %26, i32 %27, i32 %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* @seq_offset, align 4
  %36 = load i32, i32* %9, align 4
  %37 = ashr i32 %36, 4
  %38 = and i32 %37, 3
  %39 = call i32 @decode_seq_table(i32* %33, i32* %34, i32 %35, i32 %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* @seq_match_length, align 4
  %44 = load i32, i32* %9, align 4
  %45 = ashr i32 %44, 2
  %46 = and i32 %45, 3
  %47 = call i32 @decode_seq_table(i32* %41, i32* %42, i32 %43, i32 %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 5
  store i32 %50, i32* %51, align 4
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  store i32 %54, i32* %55, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  store i32 %58, i32* %59, align 4
  %60 = load i32*, i32** %6, align 8
  %61 = call i64 @IO_istream_len(i32* %60)
  store i64 %61, i64* %11, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = load i64, i64* %11, align 8
  %64 = call i32* @IO_get_read_ptr(i32* %62, i64 %63)
  store i32* %64, i32** %12, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = load i64, i64* %11, align 8
  %67 = sub i64 %66, 1
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @highest_set_bit(i32 %69)
  %71 = sub nsw i32 8, %70
  store i32 %71, i32* %13, align 4
  %72 = load i64, i64* %11, align 8
  %73 = mul i64 %72, 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = sub i64 %73, %75
  store i64 %76, i64* %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 4
  %79 = load i32*, i32** %12, align 8
  %80 = call i32 @FSE_init_state(i32* %77, i32* %78, i32* %79, i64* %14)
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %83 = load i32*, i32** %12, align 8
  %84 = call i32 @FSE_init_state(i32* %81, i32* %82, i32* %83, i64* %14)
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %87 = load i32*, i32** %12, align 8
  %88 = call i32 @FSE_init_state(i32* %85, i32* %86, i32* %87, i64* %14)
  store i64 0, i64* %15, align 8
  br label %89

89:                                               ; preds = %99, %23
  %90 = load i64, i64* %15, align 8
  %91 = load i64, i64* %8, align 8
  %92 = icmp ult i64 %90, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %89
  %94 = load i32*, i32** %12, align 8
  %95 = call i32 @decode_sequence(%struct.TYPE_5__* %10, i32* %94, i64* %14)
  %96 = load i32*, i32** %7, align 8
  %97 = load i64, i64* %15, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  store i32 %95, i32* %98, align 4
  br label %99

99:                                               ; preds = %93
  %100 = load i64, i64* %15, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %15, align 8
  br label %89

102:                                              ; preds = %89
  %103 = load i64, i64* %14, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = call i32 (...) @CORRUPTION()
  br label %107

107:                                              ; preds = %105, %102
  ret void
}

declare dso_local i32 @IO_read_bits(i32*, i32) #1

declare dso_local i32 @CORRUPTION(...) #1

declare dso_local i32 @decode_seq_table(i32*, i32*, i32, i32) #1

declare dso_local i64 @IO_istream_len(i32*) #1

declare dso_local i32* @IO_get_read_ptr(i32*, i64) #1

declare dso_local i32 @highest_set_bit(i32) #1

declare dso_local i32 @FSE_init_state(i32*, i32*, i32*, i64*) #1

declare dso_local i32 @decode_sequence(%struct.TYPE_5__*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
