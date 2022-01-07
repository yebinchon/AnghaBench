; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pkcs7/extr_pk7_doit.c_PKCS7_bio_add_digest.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pkcs7/extr_pk7_doit.c_PKCS7_bio_add_digest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@PKCS7_F_PKCS7_BIO_ADD_DIGEST = common dso_local global i32 0, align 4
@ERR_R_BIO_LIB = common dso_local global i32 0, align 4
@PKCS7_R_UNKNOWN_DIGEST_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, %struct.TYPE_3__*)* @PKCS7_bio_add_digest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PKCS7_bio_add_digest(i32** %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32** %0, i32*** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %8 = call i32 (...) @BIO_f_md()
  %9 = call i32* @BIO_new(i32 %8)
  store i32* %9, i32** %6, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @PKCS7_F_PKCS7_BIO_ADD_DIGEST, align 4
  %13 = load i32, i32* @ERR_R_BIO_LIB, align 4
  %14 = call i32 @PKCS7err(i32 %12, i32 %13)
  br label %48

15:                                               ; preds = %2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32* @EVP_get_digestbyobj(i32 %18)
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load i32, i32* @PKCS7_F_PKCS7_BIO_ADD_DIGEST, align 4
  %24 = load i32, i32* @PKCS7_R_UNKNOWN_DIGEST_TYPE, align 4
  %25 = call i32 @PKCS7err(i32 %23, i32 %24)
  br label %48

26:                                               ; preds = %15
  %27 = load i32*, i32** %6, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @BIO_set_md(i32* %27, i32* %28)
  %30 = load i32**, i32*** %4, align 8
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32*, i32** %6, align 8
  %35 = load i32**, i32*** %4, align 8
  store i32* %34, i32** %35, align 8
  br label %47

36:                                               ; preds = %26
  %37 = load i32**, i32*** %4, align 8
  %38 = load i32*, i32** %37, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @BIO_push(i32* %38, i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @PKCS7_F_PKCS7_BIO_ADD_DIGEST, align 4
  %44 = load i32, i32* @ERR_R_BIO_LIB, align 4
  %45 = call i32 @PKCS7err(i32 %43, i32 %44)
  br label %48

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46, %33
  store i32* null, i32** %6, align 8
  store i32 1, i32* %3, align 4
  br label %51

48:                                               ; preds = %42, %22, %11
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @BIO_free(i32* %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %48, %47
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_f_md(...) #1

declare dso_local i32 @PKCS7err(i32, i32) #1

declare dso_local i32* @EVP_get_digestbyobj(i32) #1

declare dso_local i32 @BIO_set_md(i32*, i32*) #1

declare dso_local i32 @BIO_push(i32*, i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
