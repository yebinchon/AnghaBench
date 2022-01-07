; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_e_rc2.c_rc2_get_asn1_type_and_iv.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_e_rc2.c_rc2_get_asn1_type_and_iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_MAX_IV_LENGTH = common dso_local global i32 0, align 4
@EVP_CTRL_SET_RC2_KEY_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @rc2_get_asn1_type_and_iv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rc2_get_asn1_type_and_iv(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* @EVP_MAX_IV_LENGTH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %63

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @EVP_CIPHER_CTX_iv_length(i32* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = zext i32 %22 to i64
  %24 = icmp ule i64 %23, %14
  %25 = zext i1 %24 to i32
  %26 = call i32 @OPENSSL_assert(i32 %25)
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @ASN1_TYPE_get_int_octetstring(i32* %27, i64* %6, i8* %16, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %65

34:                                               ; preds = %19
  %35 = load i64, i64* %6, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @rc2_magic_to_meth(i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %65

41:                                               ; preds = %34
  %42 = load i32, i32* %7, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @EVP_CipherInit_ex(i32* %45, i32* null, i32* null, i32* null, i8* %16, i32 -1)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %65

49:                                               ; preds = %44, %41
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* @EVP_CTRL_SET_RC2_KEY_BITS, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i64 @EVP_CIPHER_CTX_ctrl(i32* %50, i32 %51, i32 %52, i32* null)
  %54 = icmp sle i64 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load i32*, i32** %4, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sdiv i32 %57, 8
  %59 = call i64 @EVP_CIPHER_CTX_set_key_length(i32* %56, i32 %58)
  %60 = icmp sle i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55, %49
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %65

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62, %2
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %65

65:                                               ; preds = %63, %61, %48, %40, %33
  %66 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @EVP_CIPHER_CTX_iv_length(i32*) #2

declare dso_local i32 @OPENSSL_assert(i32) #2

declare dso_local i32 @ASN1_TYPE_get_int_octetstring(i32*, i64*, i8*, i32) #2

declare dso_local i32 @rc2_magic_to_meth(i32) #2

declare dso_local i32 @EVP_CipherInit_ex(i32*, i32*, i32*, i32*, i8*, i32) #2

declare dso_local i64 @EVP_CIPHER_CTX_ctrl(i32*, i32, i32, i32*) #2

declare dso_local i64 @EVP_CIPHER_CTX_set_key_length(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
