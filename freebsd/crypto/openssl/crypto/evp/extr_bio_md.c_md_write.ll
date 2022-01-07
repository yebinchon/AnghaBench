; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_bio_md.c_md_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_bio_md.c_md_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @md_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @md_write(i32* %0, i8* %1, i32 %2) #0 {
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
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %3
  store i32 0, i32* %4, align 4
  br label %60

17:                                               ; preds = %13
  %18 = load i32*, i32** %5, align 8
  %19 = call i32* @BIO_get_data(i32* %18)
  store i32* %19, i32** %9, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32* @BIO_next(i32* %20)
  store i32* %21, i32** %10, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load i32*, i32** %10, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32*, i32** %10, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @BIO_write(i32* %28, i8* %29, i32 %30)
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %27, %24, %17
  %33 = load i32*, i32** %5, align 8
  %34 = call i64 @BIO_get_init(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = load i32, i32* %8, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load i32*, i32** %9, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @EVP_DigestUpdate(i32* %40, i8* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @BIO_clear_retry_flags(i32* %46)
  store i32 0, i32* %4, align 4
  br label %60

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %36
  br label %50

50:                                               ; preds = %49, %32
  %51 = load i32*, i32** %10, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @BIO_clear_retry_flags(i32* %54)
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @BIO_copy_next_retry(i32* %56)
  br label %58

58:                                               ; preds = %53, %50
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %58, %45, %16
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32* @BIO_get_data(i32*) #1

declare dso_local i32* @BIO_next(i32*) #1

declare dso_local i32 @BIO_write(i32*, i8*, i32) #1

declare dso_local i64 @BIO_get_init(i32*) #1

declare dso_local i32 @EVP_DigestUpdate(i32*, i8*, i32) #1

declare dso_local i32 @BIO_clear_retry_flags(i32*) #1

declare dso_local i32 @BIO_copy_next_retry(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
