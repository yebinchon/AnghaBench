; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_compress_lz4.c_svn__decompress_lz4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_compress_lz4.c_svn__decompress_lz4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64* }

@INT_MAX = common dso_local global i64 0, align 8
@SVN_ERR_SVNDIFF_INVALID_COMPRESSED_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Decompression of compressed data failed: no size\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Decompression of compressed data failed: size too large\00", align 1
@SVN_ERR_LZ4_DECOMPRESSION_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"Size of uncompressed data does not match stored original length\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn__decompress_lz4(i8* %0, i64 %1, %struct.TYPE_5__* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %14, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @INT_MAX, align 8
  %19 = icmp sle i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @INT_MAX, align 8
  %24 = icmp sle i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i8*, i8** %14, align 8
  %28 = load i8*, i8** %14, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = call i8* @svn__decode_uint(i64* %13, i8* %27, i8* %30)
  store i8* %31, i8** %14, align 8
  %32 = load i8*, i8** %14, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %4
  %35 = load i32, i32* @SVN_ERR_SVNDIFF_INVALID_COMPRESSED_DATA, align 4
  %36 = call i32* @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %37 = call i32* @svn_error_create(i32 %35, i32* null, i32* %36)
  store i32* %37, i32** %5, align 8
  br label %106

38:                                               ; preds = %4
  %39 = load i64, i64* %13, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* @SVN_ERR_SVNDIFF_INVALID_COMPRESSED_DATA, align 4
  %44 = call i32* @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %45 = call i32* @svn_error_create(i32 %43, i32* null, i32* %44)
  store i32* %45, i32** %5, align 8
  br label %106

46:                                               ; preds = %38
  %47 = load i64, i64* %13, align 8
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %12, align 4
  %49 = load i8*, i8** %14, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = ptrtoint i8* %49 to i64
  %52 = ptrtoint i8* %50 to i64
  %53 = sub i64 %51, %52
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* %10, align 8
  %56 = sub nsw i64 %54, %55
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %11, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %59 = call i32 @svn_stringbuf_setempty(%struct.TYPE_5__* %58)
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @svn_stringbuf_ensure(%struct.TYPE_5__* %60, i32 %61)
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %46
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = load i8*, i8** %14, align 8
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @memcpy(i64* %69, i8* %70, i32 %71)
  br label %95

73:                                               ; preds = %46
  %74 = load i8*, i8** %14, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @LZ4_decompress_safe(i8* %74, i64* %77, i32 %78, i32 %79)
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %73
  %84 = load i32, i32* @SVN_ERR_LZ4_DECOMPRESSION_FAILED, align 4
  %85 = call i32* @svn_error_create(i32 %84, i32* null, i32* null)
  store i32* %85, i32** %5, align 8
  br label %106

86:                                               ; preds = %73
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load i32, i32* @SVN_ERR_SVNDIFF_INVALID_COMPRESSED_DATA, align 4
  %92 = call i32* @_(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  %93 = call i32* @svn_error_create(i32 %91, i32* null, i32* %92)
  store i32* %93, i32** %5, align 8
  br label %106

94:                                               ; preds = %86
  br label %95

95:                                               ; preds = %94, %66
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i64*, i64** %97, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  store i64 0, i64* %101, align 8
  %102 = load i32, i32* %12, align 4
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %105, i32** %5, align 8
  br label %106

106:                                              ; preds = %95, %90, %83, %42, %34
  %107 = load i32*, i32** %5, align 8
  ret i32* %107
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @svn__decode_uint(i64*, i8*, i8*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #1

declare dso_local i32* @_(i8*) #1

declare dso_local i32 @svn_stringbuf_setempty(%struct.TYPE_5__*) #1

declare dso_local i32 @svn_stringbuf_ensure(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

declare dso_local i32 @LZ4_decompress_safe(i8*, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
