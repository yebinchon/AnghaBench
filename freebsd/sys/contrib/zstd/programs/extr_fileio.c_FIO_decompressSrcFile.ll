; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/programs/extr_fileio.c_FIO_decompressSrcFile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/programs/extr_fileio.c_FIO_decompressSrcFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [37 x i8] c"zstd: %s is a directory -- ignored \0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"zstd: %s: %s \0A\00", align 1
@errno = common dso_local global i32 0, align 4
@stdinmark = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i64, i8*, i8*)* @FIO_decompressSrcFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FIO_decompressSrcFile(%struct.TYPE_8__* %0, i64 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i64 %1, i64* %12, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = call i64 @UTIL_isDirectory(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i8*, i8** %9, align 8
  %18 = call i32 (i32, i8*, i8*, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %17)
  store i32 1, i32* %5, align 4
  br label %68

19:                                               ; preds = %4
  %20 = load i8*, i8** %9, align 8
  %21 = call i32* @FIO_openSrcFile(i8* %20)
  store i32* %21, i32** %10, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 1, i32* %5, align 4
  br label %68

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @FIO_decompressDstFile(%struct.TYPE_8__* %27, i64 %32, i32* %28, i8* %29, i8* %30)
  store i32 %33, i32* %11, align 4
  %34 = load i32*, i32** %10, align 8
  %35 = call i64 @fclose(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %25
  %38 = load i8*, i8** %9, align 8
  %39 = load i32, i32* @errno, align 4
  %40 = call i32 @strerror(i32 %39)
  %41 = call i32 (i32, i8*, i8*, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %38, i32 %40)
  store i32 1, i32* %5, align 4
  br label %68

42:                                               ; preds = %25
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %42
  %48 = load i32, i32* %11, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %47
  %51 = load i8*, i8** %9, align 8
  %52 = load i32, i32* @stdinmark, align 4
  %53 = call i64 @strcmp(i8* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = call i32 (...) @clearHandler()
  %57 = load i8*, i8** %9, align 8
  %58 = call i64 @FIO_remove(i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i8*, i8** %9, align 8
  %62 = load i32, i32* @errno, align 4
  %63 = call i32 @strerror(i32 %62)
  %64 = call i32 (i32, i8*, i8*, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %61, i32 %63)
  store i32 1, i32* %5, align 4
  br label %68

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65, %50, %47, %42
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %66, %60, %37, %24, %16
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i64 @UTIL_isDirectory(i8*) #1

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, i8*, ...) #1

declare dso_local i32* @FIO_openSrcFile(i8*) #1

declare dso_local i32 @FIO_decompressDstFile(%struct.TYPE_8__*, i64, i32*, i8*, i8*) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @clearHandler(...) #1

declare dso_local i64 @FIO_remove(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
