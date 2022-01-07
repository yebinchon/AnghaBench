; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keygen.c_get_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keygen.c_get_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"input line too long.\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"unget: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64)* @get_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_line(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %9, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  store i8 0, i8* %11, align 1
  br label %12

12:                                               ; preds = %51, %3
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @fgetc(i32* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @EOF, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %61

17:                                               ; preds = %12
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* %7, align 8
  %20 = sub i64 %19, 1
  %21 = icmp uge i64 %18, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %17
  %25 = load i32, i32* %8, align 4
  switch i32 %25, label %51 [
    i32 13, label %26
    i32 10, label %48
  ]

26:                                               ; preds = %24
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @fgetc(i32* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @EOF, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 10
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = load i32, i32* %8, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @ungetc(i32 %36, i32* %37)
  %39 = load i32, i32* @EOF, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32, i32* @errno, align 4
  %43 = call i32 @strerror(i32 %42)
  %44 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %41, %35, %32, %26
  %46 = load i64, i64* %9, align 8
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %4, align 4
  br label %62

48:                                               ; preds = %24
  %49 = load i64, i64* %9, align 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %4, align 4
  br label %62

51:                                               ; preds = %24
  %52 = load i32, i32* %8, align 4
  %53 = trunc i32 %52 to i8
  %54 = load i8*, i8** %6, align 8
  %55 = load i64, i64* %9, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %9, align 8
  %57 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8 %53, i8* %57, align 1
  %58 = load i8*, i8** %6, align 8
  %59 = load i64, i64* %9, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8 0, i8* %60, align 1
  br label %12

61:                                               ; preds = %12
  store i32 -1, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %48, %45
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @fgetc(i32*) #1

declare dso_local i32 @fatal(i8*, ...) #1

declare dso_local i32 @ungetc(i32, i32*) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
