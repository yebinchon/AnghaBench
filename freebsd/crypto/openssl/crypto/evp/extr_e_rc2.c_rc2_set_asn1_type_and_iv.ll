; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_e_rc2.c_rc2_set_asn1_type_and_iv.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_e_rc2.c_rc2_set_asn1_type_and_iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @rc2_set_asn1_type_and_iv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rc2_set_asn1_type_and_iv(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load i32*, i32** %3, align 8
  %12 = call i64 @rc2_meth_to_magic(i32* %11)
  store i64 %12, i64* %5, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @EVP_CIPHER_CTX_iv_length(i32* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = call i64 @EVP_CIPHER_CTX_original_iv(i32* %17)
  %19 = inttoptr i64 %18 to i8*
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @ASN1_TYPE_set_int_octetstring(i32* %15, i64 %16, i8* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %10, %2
  %23 = load i32, i32* %6, align 4
  ret i32 %23
}

declare dso_local i64 @rc2_meth_to_magic(i32*) #1

declare dso_local i32 @EVP_CIPHER_CTX_iv_length(i32*) #1

declare dso_local i32 @ASN1_TYPE_set_int_octetstring(i32*, i64, i8*, i32) #1

declare dso_local i64 @EVP_CIPHER_CTX_original_iv(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
