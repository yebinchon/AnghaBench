; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/programs/extr_fileio.c_FIO_compressFilename_srcFile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/programs/extr_fileio.c_FIO_compressFilename_srcFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32*, i32* }

@.str = private unnamed_addr constant [37 x i8] c"zstd: %s is a directory -- ignored \0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"zstd: cannot use %s as an input file and dictionary \0A\00", align 1
@compressedFileExtensions = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"File is already compressed : %s \0A\00", align 1
@stdinmark = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"zstd: %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i32*, i8*, i8*, i32)* @FIO_compressFilename_srcFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FIO_compressFilename_srcFile(%struct.TYPE_8__* %0, i32* %1, i32* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = bitcast %struct.TYPE_7__* %8 to { i32*, i32* }*
  %15 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %14, i32 0, i32 0
  store i32* %1, i32** %15, align 8
  %16 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %14, i32 0, i32 1
  store i32* %2, i32** %16, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load i8*, i8** %11, align 8
  %18 = call i64 @UTIL_isDirectory(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load i8*, i8** %11, align 8
  %22 = call i32 @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %21)
  store i32 1, i32* %7, align 4
  br label %97

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load i8*, i8** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = call i64 @UTIL_isSameFile(i8* %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i8*, i8** %11, align 8
  %35 = call i32 @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  store i32 1, i32* %7, align 4
  br label %97

36:                                               ; preds = %27, %23
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load i8*, i8** %11, align 8
  %43 = load i32, i32* @compressedFileExtensions, align 4
  %44 = call i64 @UTIL_isCompressedFile(i8* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i8*, i8** %11, align 8
  %48 = call i32 @DISPLAYLEVEL(i32 4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  store i32 0, i32* %7, align 4
  br label %97

49:                                               ; preds = %41, %36
  %50 = load i8*, i8** %11, align 8
  %51 = call i32* @FIO_openSrcFile(i8* %50)
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i32* %51, i32** %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store i32 1, i32* %7, align 4
  br label %97

57:                                               ; preds = %49
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = load i32, i32* %12, align 4
  %62 = bitcast %struct.TYPE_7__* %8 to { i32*, i32* }*
  %63 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds { i32*, i32* }, { i32*, i32* }* %62, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @FIO_compressFilename_dstFile(%struct.TYPE_8__* %58, i32* %64, i32* %66, i8* %59, i8* %60, i32 %61)
  store i32 %67, i32* %13, align 4
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @fclose(i32* %69)
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i32* null, i32** %71, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %95

76:                                               ; preds = %57
  %77 = load i32, i32* %13, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %76
  %80 = load i8*, i8** %11, align 8
  %81 = load i32, i32* @stdinmark, align 4
  %82 = call i64 @strcmp(i8* %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %79
  %85 = call i32 (...) @clearHandler()
  %86 = load i8*, i8** %11, align 8
  %87 = call i64 @FIO_remove(i8* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load i8*, i8** %11, align 8
  %91 = load i32, i32* @errno, align 4
  %92 = call i32 @strerror(i32 %91)
  %93 = call i32 @EXM_THROW(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %90, i32 %92)
  br label %94

94:                                               ; preds = %89, %84
  br label %95

95:                                               ; preds = %94, %79, %76, %57
  %96 = load i32, i32* %13, align 4
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %95, %56, %46, %33, %20
  %98 = load i32, i32* %7, align 4
  ret i32 %98
}

declare dso_local i64 @UTIL_isDirectory(i8*) #1

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, i8*) #1

declare dso_local i64 @UTIL_isSameFile(i8*, i32*) #1

declare dso_local i64 @UTIL_isCompressedFile(i8*, i32) #1

declare dso_local i32* @FIO_openSrcFile(i8*) #1

declare dso_local i32 @FIO_compressFilename_dstFile(%struct.TYPE_8__*, i32*, i32*, i8*, i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @clearHandler(...) #1

declare dso_local i64 @FIO_remove(i8*) #1

declare dso_local i32 @EXM_THROW(i32, i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
