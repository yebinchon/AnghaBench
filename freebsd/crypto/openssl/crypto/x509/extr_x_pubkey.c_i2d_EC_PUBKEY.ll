; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x_pubkey.c_i2d_EC_PUBKEY.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x_pubkey.c_i2d_EC_PUBKEY.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASN1_F_I2D_EC_PUBKEY = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2d_EC_PUBKEY(i32* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

11:                                               ; preds = %2
  %12 = call i32* (...) @EVP_PKEY_new()
  store i32* %12, i32** %6, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i32, i32* @ASN1_F_I2D_EC_PUBKEY, align 4
  %16 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %17 = call i32 @ASN1err(i32 %15, i32 %16)
  store i32 -1, i32* %3, align 4
  br label %28

18:                                               ; preds = %11
  %19 = load i32*, i32** %6, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @EVP_PKEY_set1_EC_KEY(i32* %19, i32* %20)
  %22 = load i32*, i32** %6, align 8
  %23 = load i8**, i8*** %5, align 8
  %24 = call i32 @i2d_PUBKEY(i32* %22, i8** %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @EVP_PKEY_free(i32* %25)
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %18, %14, %10
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32* @EVP_PKEY_new(...) #1

declare dso_local i32 @ASN1err(i32, i32) #1

declare dso_local i32 @EVP_PKEY_set1_EC_KEY(i32*, i32*) #1

declare dso_local i32 @i2d_PUBKEY(i32*, i8**) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
