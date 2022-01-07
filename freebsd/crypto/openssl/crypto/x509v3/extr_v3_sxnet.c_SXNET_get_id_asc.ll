; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_v3_sxnet.c_SXNET_get_id_asc.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_v3_sxnet.c_SXNET_get_id_asc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X509V3_F_SXNET_GET_ID_ASC = common dso_local global i32 0, align 4
@X509V3_R_ERROR_CONVERTING_ZONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @SXNET_get_id_asc(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32* @s2i_ASN1_INTEGER(i32* null, i8* %8)
  store i32* %9, i32** %6, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @X509V3_F_SXNET_GET_ID_ASC, align 4
  %13 = load i32, i32* @X509V3_R_ERROR_CONVERTING_ZONE, align 4
  %14 = call i32 @X509V3err(i32 %12, i32 %13)
  store i32* null, i32** %3, align 8
  br label %22

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32* @SXNET_get_id_INTEGER(i32* %16, i32* %17)
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @ASN1_INTEGER_free(i32* %19)
  %21 = load i32*, i32** %7, align 8
  store i32* %21, i32** %3, align 8
  br label %22

22:                                               ; preds = %15, %11
  %23 = load i32*, i32** %3, align 8
  ret i32* %23
}

declare dso_local i32* @s2i_ASN1_INTEGER(i32*, i8*) #1

declare dso_local i32 @X509V3err(i32, i32) #1

declare dso_local i32* @SXNET_get_id_INTEGER(i32*, i32*) #1

declare dso_local i32 @ASN1_INTEGER_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
