; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/doc/educational_decoder/extr_zstd_decompress.c_decode_literals_compressed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/doc/educational_decoder/extr_zstd_decompress.c_decode_literals_compressed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@MAX_LITERALS_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i32*, i32**, i32, i32)* @decode_literals_compressed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @decode_literals_compressed(%struct.TYPE_7__* %0, i32* %1, i32** %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 4, i32* %13, align 4
  %17 = load i32, i32* %10, align 4
  switch i32 %17, label %34 [
    i32 0, label %18
    i32 1, label %19
    i32 2, label %24
    i32 3, label %29
  ]

18:                                               ; preds = %5
  store i32 1, i32* %13, align 4
  br label %19

19:                                               ; preds = %5, %18
  %20 = load i32*, i32** %7, align 8
  %21 = call i64 @IO_read_bits(i32* %20, i32 10)
  store i64 %21, i64* %11, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i64 @IO_read_bits(i32* %22, i32 10)
  store i64 %23, i64* %12, align 8
  br label %36

24:                                               ; preds = %5
  %25 = load i32*, i32** %7, align 8
  %26 = call i64 @IO_read_bits(i32* %25, i32 14)
  store i64 %26, i64* %11, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i64 @IO_read_bits(i32* %27, i32 14)
  store i64 %28, i64* %12, align 8
  br label %36

29:                                               ; preds = %5
  %30 = load i32*, i32** %7, align 8
  %31 = call i64 @IO_read_bits(i32* %30, i32 18)
  store i64 %31, i64* %11, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i64 @IO_read_bits(i32* %32, i32 18)
  store i64 %33, i64* %12, align 8
  br label %36

34:                                               ; preds = %5
  %35 = call i32 (...) @IMPOSSIBLE()
  br label %36

36:                                               ; preds = %34, %29, %24, %19
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* @MAX_LITERALS_SIZE, align 8
  %39 = icmp ugt i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 (...) @CORRUPTION()
  br label %42

42:                                               ; preds = %40, %36
  %43 = load i64, i64* %11, align 8
  %44 = call i32* @malloc(i64 %43)
  %45 = load i32**, i32*** %8, align 8
  store i32* %44, i32** %45, align 8
  %46 = load i32**, i32*** %8, align 8
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %42
  %50 = call i32 (...) @BAD_ALLOC()
  br label %51

51:                                               ; preds = %49, %42
  %52 = load i32**, i32*** %8, align 8
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* %11, align 8
  %55 = call i32 @IO_make_ostream(i32* %53, i64 %54)
  store i32 %55, i32* %14, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = load i64, i64* %12, align 8
  %58 = call i32 @IO_make_sub_istream(i32* %56, i64 %57)
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %68

61:                                               ; preds = %51
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = call i32 @HUF_free_dtable(%struct.TYPE_8__* %63)
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = call i32 @decode_huf_table(%struct.TYPE_8__* %66, i32* %15)
  br label %77

68:                                               ; preds = %51
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %68
  %75 = call i32 (...) @CORRUPTION()
  br label %76

76:                                               ; preds = %74, %68
  br label %77

77:                                               ; preds = %76, %61
  %78 = load i32, i32* %13, align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = call i64 @HUF_decompress_1stream(%struct.TYPE_8__* %82, i32* %14, i32* %15)
  store i64 %83, i64* %16, align 8
  br label %88

84:                                               ; preds = %77
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = call i64 @HUF_decompress_4stream(%struct.TYPE_8__* %86, i32* %14, i32* %15)
  store i64 %87, i64* %16, align 8
  br label %88

88:                                               ; preds = %84, %80
  %89 = load i64, i64* %16, align 8
  %90 = load i64, i64* %11, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = call i32 (...) @CORRUPTION()
  br label %94

94:                                               ; preds = %92, %88
  %95 = load i64, i64* %11, align 8
  ret i64 %95
}

declare dso_local i64 @IO_read_bits(i32*, i32) #1

declare dso_local i32 @IMPOSSIBLE(...) #1

declare dso_local i32 @CORRUPTION(...) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @BAD_ALLOC(...) #1

declare dso_local i32 @IO_make_ostream(i32*, i64) #1

declare dso_local i32 @IO_make_sub_istream(i32*, i64) #1

declare dso_local i32 @HUF_free_dtable(%struct.TYPE_8__*) #1

declare dso_local i32 @decode_huf_table(%struct.TYPE_8__*, i32*) #1

declare dso_local i64 @HUF_decompress_1stream(%struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i64 @HUF_decompress_4stream(%struct.TYPE_8__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
