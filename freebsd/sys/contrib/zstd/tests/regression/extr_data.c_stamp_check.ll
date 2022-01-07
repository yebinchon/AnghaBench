; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/regression/extr_data.c_stamp_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/regression/extr_data.c_stamp_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@kStampName = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"stamp does not exist: recreating the data cache\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"could not open stamp: recreating the data cache\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"invalid stamp: recreating the data cache\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"stamp matches: reusing the cached data\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"stamp does not match: recreating the data cache\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32**)* @stamp_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stamp_check(i8* %0, i32** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32** %1, i32*** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = load i32, i32* @kStampName, align 4
  %13 = call i8* @cat3(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i8* %13, i8** %5, align 8
  %14 = load i32**, i32*** %4, align 8
  %15 = call i64 @stamp_hash(i32** %14)
  store i64 %15, i64* %6, align 8
  store i32* null, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %55

19:                                               ; preds = %2
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @UTIL_isRegularFile(i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @stderr, align 4
  %25 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  br label %55

26:                                               ; preds = %19
  %27 = load i8*, i8** %5, align 8
  %28 = call i32* @fopen(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %28, i32** %8, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @stderr, align 4
  %33 = call i32 @fprintf(i32 %32, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  br label %55

34:                                               ; preds = %26
  %35 = load i32*, i32** %8, align 8
  %36 = call i64 @fread(i32* %7, i32 4, i32 1, i32* %35)
  store i64 %36, i64* %10, align 8
  %37 = icmp ne i64 %36, 1
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @stderr, align 4
  %40 = call i32 @fprintf(i32 %39, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  br label %55

41:                                               ; preds = %34
  %42 = load i64, i64* %6, align 8
  %43 = call i64 @XXH64_hashFromCanonical(i32* %7)
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* @stderr, align 4
  %50 = call i32 @fprintf(i32 %49, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  br label %54

51:                                               ; preds = %41
  %52 = load i32, i32* @stderr, align 4
  %53 = call i32 @fprintf(i32 %52, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %48
  br label %55

55:                                               ; preds = %54, %38, %31, %23, %18
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @free(i8* %56)
  %58 = load i32*, i32** %8, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @fclose(i32* %61)
  br label %63

63:                                               ; preds = %60, %55
  %64 = load i32, i32* %9, align 4
  ret i32 %64
}

declare dso_local i8* @cat3(i8*, i8*, i32) #1

declare dso_local i64 @stamp_hash(i32**) #1

declare dso_local i32 @UTIL_isRegularFile(i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fread(i32*, i32, i32, i32*) #1

declare dso_local i64 @XXH64_hashFromCanonical(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
