; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_compress_lz4.c_svn__compress_lz4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_compress_lz4.c_svn__compress_lz4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64* }

@SVN__MAX_ENCODED_UINT_LEN = common dso_local global i32 0, align 4
@LZ4_MAX_INPUT_SIZE = common dso_local global i32 0, align 4
@SVN_ERR_LZ4_COMPRESSION_FAILED = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn__compress_lz4(i8* %0, i32 %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %15 = load i32, i32* @SVN__MAX_ENCODED_UINT_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @LZ4_MAX_INPUT_SIZE, align 4
  %21 = icmp sle i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = call i8* @svn__encode_uint(i8* %18, i32 %24)
  store i8* %25, i8** %11, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = ptrtoint i8* %26 to i64
  %28 = ptrtoint i8* %18 to i64
  %29 = sub i64 %27, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @LZ4_compressBound(i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %34 = call i32 @svn_stringbuf_setempty(%struct.TYPE_6__* %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %36, %37
  %39 = call i32 @svn_stringbuf_ensure(%struct.TYPE_6__* %35, i32 %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @svn_stringbuf_appendbytes(%struct.TYPE_6__* %40, i8* %18, i32 %41)
  %43 = load i8*, i8** %5, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %46, i64 %50
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @LZ4_compress_default(i8* %43, i64* %51, i32 %52, i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %3
  %58 = load i32, i32* @SVN_ERR_LZ4_COMPRESSION_FAILED, align 4
  %59 = call i32* @svn_error_create(i32 %58, i32* null, i32* null)
  store i32* %59, i32** %4, align 8
  store i32 1, i32* %14, align 4
  br label %85

60:                                               ; preds = %3
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @svn_stringbuf_appendbytes(%struct.TYPE_6__* %65, i8* %66, i32 %67)
  br label %83

69:                                               ; preds = %60
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i64*, i64** %76, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %77, i64 %81
  store i64 0, i64* %82, align 8
  br label %83

83:                                               ; preds = %69, %64
  %84 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %84, i32** %4, align 8
  store i32 1, i32* %14, align 4
  br label %85

85:                                               ; preds = %83, %57
  %86 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %86)
  %87 = load i32*, i32** %4, align 8
  ret i32* %87
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i8* @svn__encode_uint(i8*, i32) #2

declare dso_local i32 @LZ4_compressBound(i32) #2

declare dso_local i32 @svn_stringbuf_setempty(%struct.TYPE_6__*) #2

declare dso_local i32 @svn_stringbuf_ensure(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @svn_stringbuf_appendbytes(%struct.TYPE_6__*, i8*, i32) #2

declare dso_local i32 @LZ4_compress_default(i8*, i64*, i32, i32) #2

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
