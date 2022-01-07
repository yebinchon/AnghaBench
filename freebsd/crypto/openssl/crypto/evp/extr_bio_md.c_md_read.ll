; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_bio_md.c_md_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_bio_md.c_md_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @md_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @md_read(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %51

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = call i32* @BIO_get_data(i32* %15)
  store i32* %16, i32** %9, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32* @BIO_next(i32* %17)
  store i32* %18, i32** %10, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load i32*, i32** %10, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %14
  store i32 0, i32* %4, align 4
  br label %51

25:                                               ; preds = %21
  %26 = load i32*, i32** %10, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @BIO_read(i32* %26, i8* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = call i64 @BIO_get_init(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %25
  %34 = load i32, i32* %8, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load i32*, i32** %9, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @EVP_DigestUpdate(i32* %37, i8* %38, i32 %39)
  %41 = icmp sle i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 -1, i32* %4, align 4
  br label %51

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %33
  br label %45

45:                                               ; preds = %44, %25
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @BIO_clear_retry_flags(i32* %46)
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @BIO_copy_next_retry(i32* %48)
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %45, %42, %24, %13
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32* @BIO_get_data(i32*) #1

declare dso_local i32* @BIO_next(i32*) #1

declare dso_local i32 @BIO_read(i32*, i8*, i32) #1

declare dso_local i64 @BIO_get_init(i32*) #1

declare dso_local i64 @EVP_DigestUpdate(i32*, i8*, i32) #1

declare dso_local i32 @BIO_clear_retry_flags(i32*) #1

declare dso_local i32 @BIO_copy_next_retry(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
