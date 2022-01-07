; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_os_unix.c_os_readfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_os_unix.c_os_readfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @os_readfile(i8* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32* @fopen(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %63

14:                                               ; preds = %2
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* @SEEK_END, align 4
  %17 = call i64 @fseek(i32* %15, i32 0, i32 %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load i32*, i32** %6, align 8
  %21 = call i64 @ftell(i32* %20)
  store i64 %21, i64* %8, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %14
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @fclose(i32* %24)
  store i8* null, i8** %3, align 8
  br label %63

26:                                               ; preds = %19
  %27 = load i64, i64* %8, align 8
  %28 = load i64*, i64** %5, align 8
  store i64 %27, i64* %28, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* @SEEK_SET, align 4
  %31 = call i64 @fseek(i32* %29, i32 0, i32 %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @fclose(i32* %34)
  store i8* null, i8** %3, align 8
  br label %63

36:                                               ; preds = %26
  %37 = load i64*, i64** %5, align 8
  %38 = load i64, i64* %37, align 8
  %39 = call i8* @os_malloc(i64 %38)
  store i8* %39, i8** %7, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @fclose(i32* %43)
  store i8* null, i8** %3, align 8
  br label %63

45:                                               ; preds = %36
  %46 = load i8*, i8** %7, align 8
  %47 = load i64*, i64** %5, align 8
  %48 = load i64, i64* %47, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = call i64 @fread(i8* %46, i32 1, i64 %48, i32* %49)
  %51 = load i64*, i64** %5, align 8
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %50, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %45
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @fclose(i32* %55)
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @os_free(i8* %57)
  store i8* null, i8** %3, align 8
  br label %63

59:                                               ; preds = %45
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @fclose(i32* %60)
  %62 = load i8*, i8** %7, align 8
  store i8* %62, i8** %3, align 8
  br label %63

63:                                               ; preds = %59, %54, %42, %33, %23, %13
  %64 = load i8*, i8** %3, align 8
  ret i8* %64
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fseek(i32*, i32, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i8* @os_malloc(i64) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
