; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/contrib/seekable_format/examples/extr_seekable_compression.c_compressFile_orDie.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/contrib/seekable_format/examples/extr_seekable_compression.c_compressFile_orDie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i64, i64, i64, i32 }
%struct.TYPE_6__ = type { i8*, i64, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"ZSTD_seekable_createCStream() error \0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"ZSTD_seekable_initCStream() error : %s \0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"ZSTD_seekable_compressStream() error : %s \0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"ZSTD_seekable_endStream() error : %s \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32)* @compressFile_orDie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compressFile_orDie(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_7__, align 8
  %20 = alloca %struct.TYPE_6__, align 8
  %21 = alloca %struct.TYPE_6__, align 8
  %22 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = call i32* @fopen_orDie(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %24, i32** %9, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i32* @fopen_orDie(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %26, i32** %10, align 8
  %27 = call i64 (...) @ZSTD_CStreamInSize()
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* %11, align 8
  %29 = call i8* @malloc_orDie(i64 %28)
  store i8* %29, i8** %12, align 8
  %30 = call i64 (...) @ZSTD_CStreamOutSize()
  store i64 %30, i64* %13, align 8
  %31 = load i64, i64* %13, align 8
  %32 = call i8* @malloc_orDie(i64 %31)
  store i8* %32, i8** %14, align 8
  %33 = call i32* (...) @ZSTD_seekable_createCStream()
  store i32* %33, i32** %15, align 8
  %34 = load i32*, i32** %15, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %4
  %37 = load i32, i32* @stderr, align 4
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %39 = call i32 @exit(i32 10) #3
  unreachable

40:                                               ; preds = %4
  %41 = load i32*, i32** %15, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @ZSTD_seekable_initCStream(i32* %41, i32 %42, i32 1, i32 %43)
  store i64 %44, i64* %16, align 8
  %45 = load i64, i64* %16, align 8
  %46 = call i64 @ZSTD_isError(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load i32, i32* @stderr, align 4
  %50 = load i64, i64* %16, align 8
  %51 = call i8* @ZSTD_getErrorName(i64 %50)
  %52 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %51)
  %53 = call i32 @exit(i32 11) #3
  unreachable

54:                                               ; preds = %40
  %55 = load i64, i64* %11, align 8
  store i64 %55, i64* %18, align 8
  br label %56

56:                                               ; preds = %106, %54
  %57 = load i8*, i8** %12, align 8
  %58 = load i64, i64* %18, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = call i64 @fread_orDie(i8* %57, i64 %58, i32* %59)
  store i64 %60, i64* %17, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %107

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %64 = load i8*, i8** %12, align 8
  store i8* %64, i8** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %66 = load i64, i64* %17, align 8
  store i64 %66, i64* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  store i64 0, i64* %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 3
  store i64 0, i64* %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 4
  store i32 0, i32* %69, align 8
  br label %70

70:                                               ; preds = %100, %62
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp slt i64 %72, %74
  br i1 %75, label %76, label %106

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %78 = load i8*, i8** %14, align 8
  store i8* %78, i8** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %80 = load i64, i64* %13, align 8
  store i64 %80, i64* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  store i32 0, i32* %81, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 3
  store i32 0, i32* %82, align 4
  %83 = load i32*, i32** %15, align 8
  %84 = call i64 @ZSTD_seekable_compressStream(i32* %83, %struct.TYPE_6__* %20, %struct.TYPE_7__* %19)
  store i64 %84, i64* %18, align 8
  %85 = load i64, i64* %18, align 8
  %86 = call i64 @ZSTD_isError(i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %76
  %89 = load i32, i32* @stderr, align 4
  %90 = load i64, i64* %18, align 8
  %91 = call i8* @ZSTD_getErrorName(i64 %90)
  %92 = call i32 (i32, i8*, ...) @fprintf(i32 %89, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8* %91)
  %93 = call i32 @exit(i32 12) #3
  unreachable

94:                                               ; preds = %76
  %95 = load i64, i64* %18, align 8
  %96 = load i64, i64* %11, align 8
  %97 = icmp ugt i64 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i64, i64* %11, align 8
  store i64 %99, i64* %18, align 8
  br label %100

100:                                              ; preds = %98, %94
  %101 = load i8*, i8** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32*, i32** %10, align 8
  %105 = call i32 @fwrite_orDie(i8* %101, i32 %103, i32* %104)
  br label %70

106:                                              ; preds = %70
  br label %56

107:                                              ; preds = %56
  br label %108

108:                                              ; preds = %107, %135
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %110 = load i8*, i8** %14, align 8
  store i8* %110, i8** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %112 = load i64, i64* %13, align 8
  store i64 %112, i64* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  store i32 0, i32* %113, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 3
  store i32 0, i32* %114, align 4
  %115 = load i32*, i32** %15, align 8
  %116 = call i64 @ZSTD_seekable_endStream(i32* %115, %struct.TYPE_6__* %21)
  store i64 %116, i64* %22, align 8
  %117 = load i64, i64* %22, align 8
  %118 = call i64 @ZSTD_isError(i64 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %108
  %121 = load i32, i32* @stderr, align 4
  %122 = load i64, i64* %22, align 8
  %123 = call i8* @ZSTD_getErrorName(i64 %122)
  %124 = call i32 (i32, i8*, ...) @fprintf(i32 %121, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i8* %123)
  %125 = call i32 @exit(i32 13) #3
  unreachable

126:                                              ; preds = %108
  %127 = load i8*, i8** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load i32*, i32** %10, align 8
  %131 = call i32 @fwrite_orDie(i8* %127, i32 %129, i32* %130)
  %132 = load i64, i64* %22, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %126
  br label %136

135:                                              ; preds = %126
  br label %108

136:                                              ; preds = %134
  %137 = load i32*, i32** %15, align 8
  %138 = call i32 @ZSTD_seekable_freeCStream(i32* %137)
  %139 = load i32*, i32** %10, align 8
  %140 = call i32 @fclose_orDie(i32* %139)
  %141 = load i32*, i32** %9, align 8
  %142 = call i32 @fclose_orDie(i32* %141)
  %143 = load i8*, i8** %12, align 8
  %144 = call i32 @free(i8* %143)
  %145 = load i8*, i8** %14, align 8
  %146 = call i32 @free(i8* %145)
  ret void
}

declare dso_local i32* @fopen_orDie(i8*, i8*) #1

declare dso_local i64 @ZSTD_CStreamInSize(...) #1

declare dso_local i8* @malloc_orDie(i64) #1

declare dso_local i64 @ZSTD_CStreamOutSize(...) #1

declare dso_local i32* @ZSTD_seekable_createCStream(...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @ZSTD_seekable_initCStream(i32*, i32, i32, i32) #1

declare dso_local i64 @ZSTD_isError(i64) #1

declare dso_local i8* @ZSTD_getErrorName(i64) #1

declare dso_local i64 @fread_orDie(i8*, i64, i32*) #1

declare dso_local i64 @ZSTD_seekable_compressStream(i32*, %struct.TYPE_6__*, %struct.TYPE_7__*) #1

declare dso_local i32 @fwrite_orDie(i8*, i32, i32*) #1

declare dso_local i64 @ZSTD_seekable_endStream(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @ZSTD_seekable_freeCStream(i32*) #1

declare dso_local i32 @fclose_orDie(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
