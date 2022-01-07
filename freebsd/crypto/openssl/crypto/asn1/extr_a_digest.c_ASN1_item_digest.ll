; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_digest.c_ASN1_item_digest.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_digest.c_ASN1_item_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ASN1_item_digest(i32* %0, i32* %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store i8* null, i8** %13, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @ASN1_item_i2d(i8* %14, i8** %13, i32* %15)
  store i32 %16, i32* %12, align 4
  %17 = load i8*, i8** %13, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %34

20:                                               ; preds = %5
  %21 = load i8*, i8** %13, align 8
  %22 = load i32, i32* %12, align 4
  %23 = load i8*, i8** %10, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @EVP_Digest(i8* %21, i32 %22, i8* %23, i32* %24, i32* %25, i32* null)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i8*, i8** %13, align 8
  %30 = call i32 @OPENSSL_free(i8* %29)
  store i32 0, i32* %6, align 4
  br label %34

31:                                               ; preds = %20
  %32 = load i8*, i8** %13, align 8
  %33 = call i32 @OPENSSL_free(i8* %32)
  store i32 1, i32* %6, align 4
  br label %34

34:                                               ; preds = %31, %28, %19
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i32 @ASN1_item_i2d(i8*, i8**, i32*) #1

declare dso_local i32 @EVP_Digest(i8*, i32, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
