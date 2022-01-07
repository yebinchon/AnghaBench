; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_s_cb.c_ssl_print_point_formats.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_s_cb.c_ssl_print_point_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"Supported Elliptic Curve Point Formats: \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"uncompressed\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"ansiX962_compressed_prime\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"ansiX962_compressed_char2\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"unknown(%d)\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl_print_point_formats(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @SSL_get0_ec_point_formats(i32* %9, i8** %8)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %55

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @BIO_puts(i32* %15, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %47, %14
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %52

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @BIO_puts(i32* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i8*, i8** %8, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  switch i32 %30, label %40 [
    i32 128, label %31
    i32 129, label %34
    i32 130, label %37
  ]

31:                                               ; preds = %27
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @BIO_puts(i32* %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %46

34:                                               ; preds = %27
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @BIO_puts(i32* %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %46

37:                                               ; preds = %27
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @BIO_puts(i32* %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %46

40:                                               ; preds = %27
  %41 = load i32*, i32** %4, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = call i32 @BIO_printf(i32* %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %40, %37, %34, %31
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %8, align 8
  br label %17

52:                                               ; preds = %17
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @BIO_puts(i32* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %55

55:                                               ; preds = %52, %13
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @SSL_get0_ec_point_formats(i32*, i8**) #1

declare dso_local i32 @BIO_puts(i32*, i8*) #1

declare dso_local i32 @BIO_printf(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
