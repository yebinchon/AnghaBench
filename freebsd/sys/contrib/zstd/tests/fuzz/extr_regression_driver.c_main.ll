; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/fuzz/extr_regression_driver.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/fuzz/extr_regression_driver.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"WARNING: No files passed to %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Running %s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 134217728, i64* %6, align 8
  store i32 1, i32* %7, align 4
  store i8* null, i8** %8, align 8
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  store i8** %20, i8*** %9, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %10, align 4
  store i32* null, i32** %11, align 8
  store i64 0, i64* %12, align 8
  %23 = load i32, i32* %10, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load i32, i32* @stderr, align 4
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @fprintf(i32 %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %25, %2
  store i32 0, i32* %13, align 4
  br label %32

32:                                               ; preds = %92, %31
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %95

36:                                               ; preds = %32
  %37 = load i8**, i8*** %9, align 8
  %38 = load i32, i32* %13, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %15, align 8
  %42 = load i8*, i8** %15, align 8
  %43 = call i32 @DEBUGLOG(i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  %44 = load i8*, i8** %15, align 8
  %45 = call i64 @UTIL_getFileSize(i8* %44)
  store i64 %45, i64* %16, align 8
  %46 = load i8*, i8** %15, align 8
  %47 = call i32 @UTIL_isRegularFile(i8* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %36
  br label %92

50:                                               ; preds = %36
  %51 = load i64, i64* %16, align 8
  %52 = icmp ule i64 %51, 134217728
  %53 = zext i1 %52 to i32
  %54 = load i8*, i8** %15, align 8
  %55 = call i32 @FUZZ_ASSERT_MSG(i32 %53, i8* %54)
  %56 = load i64, i64* %16, align 8
  %57 = load i64, i64* %12, align 8
  %58 = icmp ugt i64 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %50
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @free(i32* %60)
  %62 = load i64, i64* %16, align 8
  %63 = call i64 @malloc(i64 %62)
  %64 = inttoptr i64 %63 to i32*
  store i32* %64, i32** %11, align 8
  %65 = load i32*, i32** %11, align 8
  %66 = ptrtoint i32* %65 to i32
  %67 = load i8*, i8** %15, align 8
  %68 = call i32 @FUZZ_ASSERT_MSG(i32 %66, i8* %67)
  %69 = load i64, i64* %16, align 8
  store i64 %69, i64* %12, align 8
  br label %70

70:                                               ; preds = %59, %50
  %71 = load i8*, i8** %15, align 8
  %72 = call i32* @fopen(i8* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %72, i32** %18, align 8
  %73 = load i32*, i32** %18, align 8
  %74 = ptrtoint i32* %73 to i32
  %75 = load i8*, i8** %15, align 8
  %76 = call i32 @FUZZ_ASSERT_MSG(i32 %74, i8* %75)
  %77 = load i32*, i32** %11, align 8
  %78 = load i64, i64* %16, align 8
  %79 = load i32*, i32** %18, align 8
  %80 = call i64 @fread(i32* %77, i32 1, i64 %78, i32* %79)
  store i64 %80, i64* %17, align 8
  %81 = load i64, i64* %17, align 8
  %82 = load i64, i64* %16, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = load i8*, i8** %15, align 8
  %86 = call i32 @FUZZ_ASSERT_MSG(i32 %84, i8* %85)
  %87 = load i32*, i32** %18, align 8
  %88 = call i32 @fclose(i32* %87)
  %89 = load i32*, i32** %11, align 8
  %90 = load i64, i64* %16, align 8
  %91 = call i32 @LLVMFuzzerTestOneInput(i32* %89, i64 %90)
  br label %92

92:                                               ; preds = %70, %49
  %93 = load i32, i32* %13, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %13, align 4
  br label %32

95:                                               ; preds = %32
  store i32 0, i32* %14, align 4
  %96 = load i32*, i32** %11, align 8
  %97 = call i32 @free(i32* %96)
  %98 = load i32, i32* %14, align 4
  ret i32 %98
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @DEBUGLOG(i32, i8*, i8*) #1

declare dso_local i64 @UTIL_getFileSize(i8*) #1

declare dso_local i32 @UTIL_isRegularFile(i8*) #1

declare dso_local i32 @FUZZ_ASSERT_MSG(i32, i8*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fread(i32*, i32, i64, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @LLVMFuzzerTestOneInput(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
