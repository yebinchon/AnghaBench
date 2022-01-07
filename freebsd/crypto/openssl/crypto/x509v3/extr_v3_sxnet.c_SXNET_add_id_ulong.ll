; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_v3_sxnet.c_SXNET_add_id_ulong.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_v3_sxnet.c_SXNET_add_id_ulong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X509V3_F_SXNET_ADD_ID_ULONG = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SXNET_add_id_ulong(i32** %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32** %0, i32*** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = call i32* (...) @ASN1_INTEGER_new()
  store i32* %11, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %4
  %14 = load i32*, i32** %10, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @ASN1_INTEGER_set(i32* %14, i64 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %13, %4
  %19 = load i32, i32* @X509V3_F_SXNET_ADD_ID_ULONG, align 4
  %20 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %21 = call i32 @X509V3err(i32 %19, i32 %20)
  %22 = load i32*, i32** %10, align 8
  %23 = call i32 @ASN1_INTEGER_free(i32* %22)
  store i32 0, i32* %5, align 4
  br label %30

24:                                               ; preds = %13
  %25 = load i32**, i32*** %6, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @SXNET_add_id_INTEGER(i32** %25, i32* %26, i8* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %24, %18
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32* @ASN1_INTEGER_new(...) #1

declare dso_local i32 @ASN1_INTEGER_set(i32*, i64) #1

declare dso_local i32 @X509V3err(i32, i32) #1

declare dso_local i32 @ASN1_INTEGER_free(i32*) #1

declare dso_local i32 @SXNET_add_id_INTEGER(i32**, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
